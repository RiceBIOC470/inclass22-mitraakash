% Akash Mitra
% am132

%Inclass 22

%1. Consider the case of the auto-activating gene that we discussed in class
%today. Make a bifurcation diagram for this system by varying the
%activated transcription rate for three cases - in which 1, 4, or 8 copies of the
%transcripton factor are necessary to activate transciption. Comment on your
%results. 

 %x^2 -kb*x - ku = 0
figure; 
hold on; 
ku = 0;
for kb = 0:0.1:10
    polycoeff = [1 -kb -ku]; 
    rts1 = roots(polycoeff);
    rts1 = rts1(imag(rts1) == 0);
    plot (kb*ones(length(rts1),1),rts1,'b.');
end

%x^5 -kb*x^4 + x - ku = 0
figure; 
hold on; 
ku = 0;
for kb = 0:0.1:10
    polycoeff = [1 -kb 0 0 1 -ku]; 
    rts2 = roots(polycoeff);
    rts2 = rts2(imag(rts2) == 0);
    plot (kb*ones(length(rts2),1),rts2,'b.');
end

%x^9 -kb*x^8 + x - ku = 0
figure;
hold on;
ku = 0;
for kb = 0:0.1:10
    polycoeff = [1 -kb 0 0 0 0 0 0 1 -ku]; 
    rts3 = roots(polycoeff);
    rts3 = rts3(imag(rts3) == 0);
    plot (kb*ones(length(rts3),1),rts3,'b.');
end

% higher number of copies of transcription factors do not necessarliy mean
% higher gene product



% 2. Make a similar diagram for the case of an autorepressing gene in the
% case that 2 copies are need to turn off the gene.

figure;
hold on; 
ku = 0;
for kb = 0:0.1:10
    polycoeff = [1 kb 1 -ku];
    rts4 = roots(polycoeff);
    rts4 = rts4(imag(rts4) == 0);
    plot (kb*ones(length(rts4),1),rts4,'b.');
end