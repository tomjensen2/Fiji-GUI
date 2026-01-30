% Reconstruct linescan (±1 μm) and show pre-image with scanline overlay.
% Set these variables (you already provided most):
preImg = Data.bkgUG;
scanXY = cat(2,Data.predScX(:,1),Data.predScY(:,1));
pixelSizeUm = Data.bkgx_pixel_size;
nSamples = 21;

% If your scanXY are in microns set to true, otherwise false.
coordsInMicron = true;

% ------------------ prepare coordinates ------------------
preImg = double(preImg);
imgH = size(preImg,1);
imgW = size(preImg,2);

% Convert scan coords to pixel units if necessary
if coordsInMicron
    scanXY_px = scanXY ./ pixelSizeUm;
else
    scanXY_px = scanXY;
end

% If coordinates are given relative (e.g. starting at 0) shift so min >= 1
minXY = min(scanXY_px,[],1);
if minXY(1) < 1 || minXY(2) < 1
    scanXY_px = scanXY_px - (minXY - 1);
end

% Clip to image bounds for safety (keeps visualization inside)
scanXY_px(:,1) = min(max(scanXY_px(:,1),1), imgW);
scanXY_px(:,2) = min(max(scanXY_px(:,2),1), imgH);

% ------------------ visualize image + scan line ------------------
figure('Name','Pre-image with scan line','NumberTitle','off');
imagesc(preImg,'XData',Data.bkgXData,'YData',Data.bkgYData); hold on;
plot(scanXY(:,1), scanXY(:,2), '-y','LineWidth',1.5);       % path
plot(scanXY(:,1), scanXY(:,2), '.g','MarkerSize',10);       % points

% show ±1 μm perpendicular bars every K points
K = max(1,round(size(scanXY_px,1)/30));  % ~30 bars max
% estimate directions
dirs = diff(scanXY_px); dirs = [dirs; dirs(end,:)]; 
dirNorm = sqrt(sum(dirs.^2,2)); dirUnit = dirs ./ max(dirNorm, eps);
perp = [-dirUnit(:,2), dirUnit(:,1)];
halfWidthPx = 1 / pixelSizeUm;
idx = 1:K:size(scanXY_px,1);
for i = idx
    c = scanXY_px(i,:);
    p1 = c + perp(i,:)*(-halfWidthPx);
    p2 = c + perp(i,:)*( halfWidthPx);
    plot([p1(1) p2(1)],[p1(2) p2(2)],'-c','LineWidth',1.2);
end
title('Pre-image with scan line and ±1 μm sampling bars');
hold off;

% ------------------ reconstruct sampled image (scan index x offsets) ------------------
halfWidthPx = 1 / pixelSizeUm;
offsetsPx = linspace(-halfWidthPx, halfWidthPx, nSamples);
N = size(scanXY_px,1);
recon = nan(N, nSamples);

% prepare grid for interp2
[cols, rows] = meshgrid(1:imgW, 1:imgH);

% directions (again) and perpendiculars
dirs = diff(scanXY_px); dirs = [dirs; dirs(end,:)];
dirNorm = sqrt(sum(dirs.^2,2)); dirUnit = dirs ./ max(dirNorm, eps);
perp = [-dirUnit(:,2), dirUnit(:,1)];

for i = 1:N
    center = scanXY_px(i,:);
    sampleX = center(1) + perp(i,1) * offsetsPx;
    sampleY = center(2) + perp(i,2) * offsetsPx;
    recon(i,:) = interp2(cols, rows, preImg, sampleX, sampleY, 'linear', NaN);
end

% optional: fill edge NaNs by nearest along columns
recon = fillmissing(recon,'nearest',2);

% ------------------ show reconstructed linescan ------------------
figure('Name','Reconstructed linescan (scan index vs offset)','NumberTitle','off');
imagesc(offsetsPx * pixelSizeUm, (1:N), recon);
axis image xy;
xlabel('Offset from line (μm)');
ylabel('Scan index');
colormap hot; colorbar;
title('Reconstructed linescan (±1 μm)');

% ------------------ optional: reproject samples back to image coordinates (splat) ------------------
% If you want a spatially-registered map, uncomment below.
%{
outImg = zeros(imgH,imgW);
count  = zeros(imgH,imgW);
for i = 1:N
    center = scanXY_px(i,:);
    sampleX = center(1) + perp(i,1) * offsetsPx;
    sampleY = center(2) + perp(i,2) * offsetsPx;
    % round to nearest pixel and accumulate
    xi = round(sampleX); yi = round(sampleY);
    valid = xi>=1 & xi<=imgW & yi>=1 & yi<=imgH;
    linIdx = sub2ind([imgH imgW], yi(valid), xi(valid));
    outImg(linIdx) = outImg(linIdx) + recon(i,valid);
    count(linIdx)  = count(linIdx)  + 1;
end
count(count==0)=1;
outImg = outImg ./ count;
figure('Name','Splat reconstructed samples onto image grid','NumberTitle','off');
imshow(outImg,[]); title('Splat of sampled values onto image grid');
%}

% End
