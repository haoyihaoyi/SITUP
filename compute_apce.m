function APCE = compute_apce(response_map,w,h)
    % Compute the average peak-to-correlation energy (APCE) value of the
    % response maps 
    Fmax = max(max(response_map));
    Fmin = min(min(response_map));
    Diff_avg = sum(sum((response_map-Fmin).^2))/(w*h);
    APCE = ((Fmax-Fmin).^2)./Diff_avg;
end