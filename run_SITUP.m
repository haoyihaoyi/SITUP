function results = run_SITUP(seq, res_path, bSaveImage)
%The evaluation code compatiable with OTB toolkit 

	%default settings
    kernel_type = 'linear';
    feature_type = 'hogcolor';
    kernel.type = kernel_type;
    features.gray = false;
    features.hog =false;
    features.hogcolor = true;
    
	padding = 1.5;  %extra area surrounding the target
    lambda =3e-4;  %regularization
	output_sigma_factor = 0.1;  %spatial bandwidth (proportional to target)
    search_size = [1 0.995 1.005 0.985 0.99 1.01 1.015];
	switch feature_type
	case 'hogcolor'
		interp_factor = 0.004;
		kernel.sigma = 0.5;
		features.hogcolor = true;
		features.hog_orientations = 9;
		cell_size = 4;
	otherwise
		error('Unknown feature.')
	end

		target_sz = seq.init_rect(1,[4,3]);
		pos = seq.init_rect(1,[2,1]) + floor(target_sz/2);
		img_files = seq.s_frames;
		video_path = [];
		
		%call tracker function with all the relevant parameters
		[rect_results, t]= tracker(video_path, img_files, pos, target_sz, ...
			padding, kernel, lambda, output_sigma_factor, interp_factor, cell_size, ...
			search_size, features, 0);
		
		%return results to benchmark, in a workspace variable
        fps = numel(seq.s_frames) / t;
        disp(['fps: ' num2str(fps)])    
        disp(['time: ' num2str(t)])
		results.type = 'rect';
		results.res = rect_results;
        results.fps = fps;
        results.time = t;
end