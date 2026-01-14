* Creating Figure 1

import delimited "D:\OneDrive - Georgia State University\Documents\Dissertation\Essay 3\diss-essay-3\Data\Misc\HOA_summary_monthly_for_stata.csv", clear

gen mdate = ym(year, month)

format mdate %tmMon_CCYY

twoway ///
    (bar total_hoas mdate) ///
    (bar professional_hoas mdate), ///
    yscale(range(0 4000)) ///
    ylabel(0(1000)4000) // change colors and labels by hand



