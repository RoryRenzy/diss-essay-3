* Creating Figures 7 and 8

gen mdate = ym(year, month)  
format mdate %tm            

twoway (line hhi_total_assoc mdate) (line hhi_lv_assoc mdate) (line hhi_reno_assoc mdate) (line hhi_other_assoc mdate) // with other

twoway (line hhi_total_assoc mdate) (line hhi_lv_assoc mdate) (line hhi_reno_assoc mdate) // without other

twoway (line hhi_total_units mdate) (line hhi_lv_units mdate) (line hhi_reno_units mdate) (line hhi_other_units mdate) // with other

twoway (line hhi_total_units mdate) (line hhi_lv_units mdate) (line hhi_reno_units mdate) // without other 