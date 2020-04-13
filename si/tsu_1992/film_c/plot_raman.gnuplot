set terminal pngcairo size 647,540 enhanced font 'Helvetica,16' linewidth 2

set output "raman_spectrum_fit.png"

set datafile separator comma

set xlabel "Raman Shift (cm^{-1})"
set ylabel "Intensity (arb. units)"

set mxtics 5
set mytics 5

set key top left

plot "raman_peaks.csv" title "extracted" with points,\
"curve_1_fit.dat" title "curve 1" with lines lw 1.5,\
"curve_2_fit.dat" title "curve 2" with lines lw 1.5,\
"curve_total_fit.dat" title "over-all fit" with lines lw 1,\
