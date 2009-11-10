function [C] = matrix_align_and_glue(A,B)
%Denne funksjonen tar inn matrisene A og B, fjerner overlap, og limer dem
%sammen

k2=0;
diff1 = 1;
for k=1:length(A),
    diff2 = abs(A(k,1)-B(1,1));
    if diff2<diff1
        diff1=diff2;
        k2=k;
    end
end
C = zeros([(k2+length(B)) 2]);
for k3=1:k2,
    C(k3,1) = A(k3,1);
    C(k3,2) = A(k3,2);
end
for k4=1:length(B),
    C(k2+k4,1) = B(k4,1);
    C(k2+k4,2) = B(k4,2);
end