This DATSETNAMEreadme.txt file was generated on 2022-02-02 by Austin Allen


GENERAL INFORMATION

1. Title of Dataset: Data from: Dynamic body acceleration as a proxy to predict the cost of locomotion in bottlenose dolphins

2. Author Information
	Corresponding Investigator 
		Name: Dr. Austin S. Allen	
		Institution: Duke University Marine Laboratory
		Address: 135 Duke Marine Lab Rd. Beaufort, NC 28516, USA
		Email: astoneallen@gmail.com OR austin.allen@duke.edu

	Co-investigator 1
		Name: Dr. Andrew J. Read
		Institution: Duke University Marine Laboratory

	Co-investigator 2
		Name: Dr. K. Alex Shorter
		Institution: Mechanical Engineering, University of Michigan, Ann Arbor, MI 48109, USA

	Co-investigator 3
		Name: Dr. Joaquin Gabaldon
		Institution: Robotics Institute, University of Michigan, Ann Arbor, MI 48109, USA

	Co-investigator 4
		Name: Ashley M. Blawas
		Institution: Duke University Marine Laboratory

	Co-investigator 5
		Name: Julie Rocho-Levine
		Institution: Dolphin Quest Oahu, Honolulu, HI 96816, USA

	Co-investigator 6
		Name: Dr. Andreas Fahlman
		Institution: Fundación Oceanograf̀ic de la Comunitat Valenciana, Research Department, Valencia 46005, Spain
		             Kolmården wildlife park, Kolmården, SE-618 92, Sweden


3. Date of data collection (May-June 2017, 2018, 2019)

4. Geographic location of data collection : Honolulu, HI, USA 

5. Information about funding sources that supported the collection of the data: Grants received from Dolphin Quest, Duke University, and the Office of Naval Research


SHARING/ACCESS INFORMATION

1. Links to publications that cite or use the data: Allen et al., (2022), Dynamic body acceleration as a proxy to predict the cost of locomotion in bottlenose dolphins, The Journal of Experimental Biology

2. Recommended citation for this dataset: Allen et al. (2022), Data from: Dynamic body acceleration as a proxy to predict the cost of locomotion in bottlenose dolphins


DATA & FILE OVERVIEW

1. Description of dataset

These data were generated to investigate the energetic cost of locomotion in common bottlenose dolphins (Tursiops truncatus). We quantified energy expenditure (i.e., metabolic rate) by measuring oxygen consumption via a pneumotachometer (a breath-by-breath respirometry device). The dolphins breathed into the pneumotachometer while at station (stationary next to the side of the lagoon). We integrated flow rate (milliliters per second) and oxygen concentration (%) to obtain oxygen consumption rate. We measured resting metabolic rate (RMR) for several minutes before a swim trial. We then asked the dolphins to swim multiple laps, breathing into the pneumotachometer several times at station in between each lap. The dolphins were post-prandial (i.e., no food consumed for > 12 hrs) during all measurements. 

The dolphins also wore a suction-cup-attached tag (which included a trial-axial accelerometer), placed dorsally mid-way between the blowhole and the dorsal fin. We calculated mean overall dynamic body acceleration (ODBA) from the accelerometer signals. ODBA gave us a proxy for how active the dolphins were during a trial, to compare with energy expenditure measured via respirometry.

For further detail, see the Journal of Experimental Biology article.


2.  File List: 
	File 1 Name: Fig_3.csv
	File 1 Description: Includes data used to make Fig. 3. The primary data are energy expenditure (watts per kg) and ODBA (g). Values below an ODBA of 0.1 represent 
	resting values, while values above ODBA of 0.1 represent steady-state energy expenditure. Importantly, both the energy expenditure values and the ODBA values 	
	represent means during the entire (lap + station) steady-state portion of a trial.

	File 2 Name: Fig_4.csv 
	File 2 Description: Includes data used to make Fig. 4. The primary data are the cost of locomotion (COL; watts per kg) and ODBA (g). These values differ from those in 			  	
	Fig_3 because the COL values represent energy expenditure with resting metabolic rate subtracted and the remaining value divided by the time spent swimming during 
	steady-state laps, to try to isolate only the COL. The ODBA values are mean ODBA during only the swimming portion of a trial (i.e., excluding the station portion).

	File 3 Name: Fig_6A-C.csv.
	File 3 Description: Includes data used to make Fig. 6A-C. Includes data used to calculate power and cost of transport using two different methods described in the 	
	paper. Uses a subset of swim trials: only the 12 trials where speed data exists due to sensors used on some tags. Rows containing 'RMR' for 'TrialID' represent 
	individual average resting values, so therefore contain 'N/A' for all variables associated with the swimming portion of a trial. 

	File 4 Name: Fig_6D.csv
	File 4 Description: Includes data used to make Fig. 6D. Includes data used to plot energy expenditure (Oxygen consumption rate) against fluke stroke frequency. 

	File 5 Name: Fig_A2.csv
	File 5 Description: Includes data used to make Fig. A2. Includes per-lap data used to run segmented regression, and to calculate the per-trial data used elsewhere. 	  
	The oxygen consumption rate data are averaged across the entire lap (lap + station), while the ODBA are averaged using only the lap (e.g., swimming) portion. 
	Importantly, the last lap was removed prior, due to it being impossible to compare oxygen consumption during the last lap with other laps, because per-lap oxygen 
	consumption was measured until the start of the next lap. Therefore, in this dataset, all laps from and including lap 5, until the last lap in this dataset, were 
	considered steady-state laps (except for four trials where due to a missed breath in lap 5, steady-state laps started at lap 6, not lap 5: Trial 17_39, 18_05, 18_34, 	
	and 17_70). 


METHODOLOGICAL INFORMATION

1. Description of methods used for collection/processing of data: 
Per-lap oxygen consumption and ODBA data are included in File 5, but the study primarily focuses on resting metabolic rate (RMR) calculated before the start of the first lap, and steady-state oxygen consumption measured during the last several laps of a trial. Steady-state was defined as the start of swimming for lap 5, to the start of swimming of the last lap (except for three trials listed in the description of File 5). Different parts of the analysis either looked at the average oxygen consumption and ODBA across the entire steady-state period (Fig._3.csv), or during just the swimming portion of steady-state (Fig._4.csv). In the swimming portion analysis, RMR was subtracted from the entire steady-state period, the remaining oxygen consumption was divided by the sum of swimming duration during steady-state, and the mean ODBA calculated during the sum of swimming duration during steady-state.

For further detail on methods and to see the figures the data files refer to, see the Journal of Experimental Biology article. Each variable below details how oxygen consumption or ODBA were calculated. 


2. People involved with sample collection, processing, analysis and/or submission: Primarily Austin Allen, Andreas Fahlman, and Joaquin Gabaldon.


DATA-SPECIFIC INFORMATION FOR: Fig_3.csv

1. Number of variables: 6

2. Number of cases/rows: 93

3. Variable List: 
	TrialID: The unique trial number. The first two digits represent the year (e.g., trial Trial17_08 was the eighth trial collected in 2017).

	Animal_ID: The unique dolphin ID. 
	
	State: Determines whether a given row's 'ODBA_g', 'O2_ml_per_kg_min', and 'W_per_kg' values represent the mean steady-state (as defined in the manuscript) values, or 	
	the mean values during the resting period of the trial (before the first lap). 

	ODBA_g: The mean ODBA in units of g for a given section of a trial (i.e., the steady-state or resting period). 

	O2_ml_per_kg_min: A trial section's mean rate of oxygen consumption (millimeters of O2 per kg body mass per minute). 

	W_per_kg: 'O2_ml_per_kg_min' converted to watts per kilogram, by first converting to Jules per kg per min by multiplying by 20.1, and then dividing by 60. 

4. Missing data codes:
	None

5. Abbreviations used:
	ODBA; overall dynamic body acceleration
	g; unit of acceleration
	O2; oxygen
	ml; milliliter
	kg; kilogram
	min; minute
	W; watt (joule per second)


DATA-SPECIFIC INFORMATION FOR: Fig_4.csv

1. Number of variables: 12

2. Number of cases/rows: 35

3. Variable List: 
	TrialID: The unique trial number. The first two digits represent the year (e.g., trial Trial17_08 was the eighth trial collected in 2017).

	Animal_ID: The unique dolphin ID. 

	Mass_kg: Body mass in kilograms.

	ODBA_g: The mean ODBA during the swimming portion of the steady-state section of the trial, in units of g. 

	SS_dur_min: The total steady-state duration of each trial, in minutes.

	SS_lap_dur_min: The sum of swimming time of the stead-state duration (e.g., time at station subtracted), in minutes.

	SS_laps_num: The number of steady-state laps per trial. 

	O2_total_ml: The total milliliters of oxygen consumed during steady-state.

	O2_RMR_ml_per_min: The individual mean resting metabolic rate, in milliliters of oxygen per minute. 

	O2_RMR_ml: The estimated resting metabolic oxygen consumption during steady-state, in milliliters of oxygen.

	O2_COL_ml_per_min: The estimated cost of locomotion oxygen consumption rate, defined by taking the total oxygen consumed during steady-state, subtracting estimated 
	RMR during the same period, and dividing the remaining volume by 'SS_lap_dur_min'.

	COL_W_per_kg: 'O2_COL_ml_per_min' converted to watts per kg. 

4. Missing data codes:
	None

5. Abbreviations used:
	kg; kilogram
	ODBA; overall dynamic body acceleration
	g; unit of acceleration	
	SS: steady-state
	dur; duration
	min; minute	
	O2; oxygen
	ml; milliliter
	RMR; resting metabolic rate
	COL; cost of locomotion	
	W; watt (joule per second)


DATA-SPECIFIC INFORMATION FOR: Fig_6A-C.csv

1. Number of variables: 11

2. Number of cases/rows: 17

3. Variable List: 
	TrialID: The unique trial number. Several are listed as 'RMR', those rows instead represent the resting metabolic rate power values in Fig. 6A and 6B.

	Animal_ID: The unique dolphin ID. 

	Mass_kg: Body mass in kilograms.

	SS_dur_min: The total steady-state duration of each trial, in minutes.

	SS_lap_dur_min: The sum of swimming time of the stead-state duration (e.g., time at station subtracted), in minutes.

	SS_laps_num: The number of steady-state laps per trial. 

	TDT_m: The total distance traveled during steady-state laps, in meters.

	Speed_m_s: 'TDT_m' divided by the number of seconds in 'SS_lap_dur_min'.

	Fig_6A_y: Power (watts per kg) in panel A, calculated using the 'average power' method described in the paper.

	Fig_6B_y: Power (watts per kg) in panel B, calculated using the 'station RMR subtracted' method described in the paper.

	Fig_6C_y: Cost of transport (jules per kg per min) in panel C. 

4. Missing data codes:
	N/A; not applicable

5. Abbreviations used:
	kg; kilogram
	SS: steady-state
	dur; duration
	min; minute	
	TDT; total distance traveled
	m; meter
	s; second


DATA-SPECIFIC INFORMATION FOR: Fig_6D.csv

1. Number of variables: 11

2. Number of cases/rows: 35

3. Variable List: 
	TrialID: The unique trial number. 

	Animal_ID: The unique dolphin ID. 

	Mass_kg: Body mass in kilograms.

	SS_dur_min: The total steady-state duration of each trial, in minutes.

	SS_lap_dur_min: The sum of swimming time of the stead-state duration (e.g., time at station subtracted), in minutes.

	SS_laps_num: The number of steady-state laps per trial. 

	O2_total_ml: The total milliliters of oxygen consumed during steady-state.

	O2_RMR_ml: The estimated resting metabolic oxygen consumption during steady-state, in milliliters of oxygen.

	O2_COL_ml: The estimated cost of locomotion, in milliliters of oxygen.  consumption rate, defined by taking the total oxygen consumed during steady-state, subtracting 
	estimated RMR during the same period, and dividing the remaining volume by 'SS_lap_dur_min' and by 'Mass_kg'.

	O2_COL_ml_per_min_kg: The estimated cost of locomotion, in milliliters of oxygen consumed per minute per kg. This is calculated by dividing 'O2_COL_ml' by 
	'SS_lap_dur_min' and 'Mass_kg'.

	Ffreq_min: Fluking frequency, defined by the number of fluke strokes taken during steady-state laps, divided by 'SS_lap_dur_min'.

4. Missing data codes:
	None

5. Abbreviations used:
	kg; kilogram
	SS: steady-state
	dur; duration
	min; minute	
	O2; oxygen
	ml; milliliter
	RMR; resting metabolic rate
	COL; cost of locomotion	
	Ffreq; fluking frequency


DATA-SPECIFIC INFORMATION FOR: Fig_A2.csv

1. Number of variables: 14

2. Number of cases/rows: 299

3. Variable List: 
	TrialID: The unique trial number. 

	Animal_ID: The unique dolphin ID. 

	Mass_kg: Body mass in kilograms.

	LapNum: The number of laps per trial (excluding the last lap, which was removed prior). 

	T_Start_s: The time index (in seconds) that the lap started (when the dolphin left station and started swimming a lap). 

	T_End_s: The time index (in seconds) when the dolphin left station for the next lap.

	Seg_Dur_s: The segment duration (lap + time at station), in seconds. 

	Breaths_In_Seg: The number of breaths taken at station after swimming a lap. 

	First_Breath_In_Station_s: The time index (in seconds) of the first breath at station after swimming a lap, used to delineate the lap portion from the station 
	portion. 

	Lap_Time_s: The duration (in seconds) spent swimming. 

	Station_Time_s: The duration (in seconds) at station.

	CO2_ml_per_kg_min: Carbon dioxide production rate, in milliliters CO2 per kg per min. Calculated by dividing the total CO2 production measured at station by the 
	entire segment duration ('Seg_Dur_s'/60) and by kg. 

	O2_ml_per_kg_min: Oxygen consumption rate, in milliliters O2 per kg per min. Calculated by dividing the total O2 consumed during the lap by the swimming duration of 
	the lap ('Lap_Time_s'/60) and by kg. 

	ODBA_g: The mean ODBA for the swimming portion of the lap (i.e., does not include the minimal ODBA values measured at station).

4. Missing data codes:
	None

5. Abbreviations used:
	T: time
	s: second
	Seg: segment
	dur; duration
	CO2; carbon dioxide	
	min; minute
	O2; oxygen
	ml; milliliter
	ODBA; overall dynamic body acceleration
	g; unit of acceleration

