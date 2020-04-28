% cspinf17 -- Cycle-Spinning Fourier De-Noising
%
global RatSine IrrSine yRatSine yIrrSine
global tsine nsine
%
	nspin = 16;
%
	for jsig=1:2,
		if jsig==1,
			yLoSine = yRatSine;
		else
			yLoSine = yIrrSine;
		end
		cLoSine = zeros(1,nsine);
	%
		for i=0:(nspin-1),
			y  = Modulate(yLoSine,2*pi/(nsine*nspin)*i);
			hy = FourierDeNoise(y);
			my = Modulate(hy,-2*pi/(nsine*nspin)*i);
			cLoSine = cLoSine + my;
			if i==0,
			   typical = real(my);
			end
		end
	%
		cLoSine = real(cLoSine ./nspin);
		if jsig==1,
			cRatSine = cLoSine;
		else
			cIrrSine = cLoSine;
		end
	end
%
	figure;
	subplot(221); plot(cRatSine); title(' 17(a) CycleSpin Fourier DeNoise[yRatSine] ');
	subplot(222); plot(cIrrSine); title(' 17(b) CycleSpin Fourier DeNoise[yIrrSine] ');
%
global fRatSine fIrrSine
%
	cRatErr = norm(RatSine-cRatSine);
	cIrrErr = norm(IrrSine-cIrrSine);
	fRatErr = norm(RatSine-fRatSine);	
	fIrrErr = norm(IrrSine-fIrrSine);
	fprintf('cycle spin errors: %g,%g\n', cRatErr, cIrrErr);	
	fprintf('   usual   errors: %g,%g\n', fRatErr, fIrrErr);
    
    
%   
% Part of WaveLab Version 802
% Built Sunday, October 3, 1999 8:52:27 AM
% This is Copyrighted Material
% For Copying permissions see COPYING.m
% Comments? e-mail wavelab@stat.stanford.edu
%   
    
