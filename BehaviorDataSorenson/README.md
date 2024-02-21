Data for: Anthropogenic noise impairs cooperation in bottlenose dolphins
Authors: Pernille M. Sørensen Abigail Haddock, Emily Guarino, Kelly Jaakkola, 
Christina McMullen, Frants H. Jensen, Peter L. Tyack and Stephanie L. King

The data deposited here includes R scripts, example experimental task videos and data sheets that have been used in this study to investigate the following:

(i)   How noise impacts the success rate of two dolphins performing a cooperative task.
(ii)  If the dolphins adjusted their vocal behaviour in response to noise.
(iii) If the dolphins changed their general behaviour in response to noise.

The following data is available through the Dryad Digital Repository: 

##### SUPPLEMENTAL VIDEOS ##### 
(1) Video S1. Successful experimental trial performed by the dyad during the very high noise exposure. Related to Figure 1 and 2 and STAR methods in the main paper.
(2) Video S2. Unsuccessful experimental trial performed by the dyad during the very high noise exposure. Related to Figure 1 and 2 and STAR methods in the main paper.

##### R SCRIPTS FOR STATISTICAL MODELLING #####

(3) Model_Successrate.R. R script containing code for modelling the dyad’s success rate as a function of increasing noise. 
Related to datasheet Data_successrate.csv, figure 1B, results and STAR methods in the main paper.

(4) Model_whistles_AOL_and_duration.R. R script containing code for the models we built investigating whistle apparent output level and 
whistle duration as a function of increasing noise. 
Related to the data sheet Data_whistle_AOL_and_duration.csv, figures 2C-F, results and STAR methods in the main paper.

(5) Model_Behaviour.R. R script containing code for the models we built to investigate how the dyad’s behaviour may have changed in response
to increasing noise. 
Related to datasheet Data_behaviour.csv, results and STAR methods in the main paper. 

(6) Model_Echolocation.R. R script containing code for the models we built to investigate how the dyad may change the proportion of time 
spent echolocating as a response to increasing noise. 
Related to datasheet Data_Echolocation.csv, results and STAR methods in the main paper.

##### RAW DATA ##### 

(7) Data_successrate.csv: Data for model investigating the dyad's success rate as a function of increasing noise. 
Related to figure 2B, table 1, results, Model_Successrate.R script and STAR methods.

This datasheet contains the following variables:
- session: Session number (1-20).
- day: Session day (1-8; data was collected over 8 days, hence 1-8).
- trial number: The trial number within each session. 
- treatment: Treatment type (1-5); ambient noise control (1), low noise (2), medium noise (3), high noise (4), very high noise (5). 
- outcome: outcome of the experimental trial; success (1) or failure (0).
- EFD_combined: The noise level per trial as measured on the tags and quantied as energy flux density (dB re 1 uPa^2*s) equal to the sum of the pressure squared
                across the duration of the noise. The final EFD noise level measures are averaged across the values for each dolphin. 

(8) Data_whistle_AOL_and_duration.csv: Data for models investigating the dyad members increase in whistle apparent output level and duration 
as a function of increasing noise. 
Related to figure 2C-2F, table 1, results, Model_whistles_AOL_and_duration.R script and STAR methods.

This datasheet contains the following variables:
- animal: The individual; 1 = Reese, 2 = Delta.
- session: Session number (1-20).
- day: Session day (1-8; data was collected over 8 days, hence 1-8).
- treatment: Treatment type (1-5); ambient noise control (1), low noise (2), medium noise (3), high noise (4), very high noise (5).
- trial: Absolute trial number that a whistle was produced in accounting for the fact that some whistles were produced in the same trials.
- whistle_dur: The whistle duration in seconds
- AOL_across_harmonics: Whistle apparent output level (dB re 1 uPa, rms) measured as the Sound pressure level (SPLrms) within a 95% energy window of each marked whistle. We used a method
			of filtering around the whistle fundamental and the first and second harmonic, before summing these values and calculating the apparent output level 
			(See STAR methods in the main paper and Figure S1 in the Supplemental material for more information). 
- NL: The noise level quantified as the root-mean-square (rms) SPLrms and measured on the tags in a 100 ms ending 50ms prior to the start of each whistle. 


(9) Data_behaviour.csv: Data for models investigating behavioural changes as a function of increasing noise. 
Related to results, Model_Behaviour.R script and STAR methods. 

This datasheet contains the following variables:
- session: Session number (1-20).
- trial number: The trial number within each session. 
- day: Session day (1-8; data was collected over 8 days, hence 1-8).
- treatment: Treatment type (1-5); ambient noise control (1), low noise (2), medium noise (3), high noise (4), very high noise (5).
- Look_combined_binary: binary measure for the presence or abscence of the behaviour "time oriented towards the other dolphin" for any given trial (1 = present, 0 = absent)
- Swim_together: binary measure for the presence or abscence of the behaviour "swimming together" for any given trial (1 = present, 0 = absent)
- Other_half_combined_binary: binary measure for the presence or abscence of the behaviour "time spent in the other half of the lagoon" for any given trial (1 = present, 0 = absent)
- EFD_combined: The noise level per trial as measured on the tags and quantied as energy flux density (dB re 1 uPa^2*s) equal to the sum of the pressure squared
                across the duration of the noise. The final EFD noise level measures are averaged across the values for each dolphin. 

(10) Data_echolocation.csv: Data for models investigating changes in the proportion of time spent echolocating as a function of increasing noise. 
Related to results, Model_Echolocation.R script and STAR methods. 

This datasheet contains the following variables:
- proportion_clicking: the proportion of time spent clicking for each male in each individual trial.
- session: Session number (1-20).
- day: Session day (1-8; data was collected over 8 days, hence 1-8).
- trial number: The trial number within each session. 
- treatment: Treatment type (1-5); ambient noise control (1), low noise (2), medium noise (3), high noise (4), very high noise (5).
- animal: The individual; 1 = Reese, 2 = Delta.
- EFD: The noise level per trial as measured on the tags and quantied as energy flux density (dB re 1 uPa^2*s) equal to the sum of the pressure squared
                across the duration of the noise. This EFD measure represent the noise level measured on the tags of the two individuals separately. 


