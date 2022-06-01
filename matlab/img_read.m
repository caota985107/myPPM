clear all;
A = imread("Anya Forger600.jpg");
TMP = A(:,:,1).';
R = TMP(:);
TMP = A(:,:,2).';
G = TMP(:);
TMP = A(:,:,3).';
B = TMP(:);

RGB = [R;G;B];
writematrix(RGB);
type 'RGB.txt';

writematrix(R);
type 'R.txt';
writematrix(G);
type 'G.txt';
writematrix(B);
type 'B.txt';