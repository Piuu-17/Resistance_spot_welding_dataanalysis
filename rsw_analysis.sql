CREATE TABLE weld_data (
    sample_id INT PRIMARY KEY,
    current_ka NUMERIC(4,1),
    weld_time_cycles INT,
    electrode_force_kn NUMERIC(3,1),
    resistance_mohm NUMERIC(4,3),
    heat_input NUMERIC(8,2),
    nugget_diameter_mm NUMERIC(4,2),
    tensile_strength_kn NUMERIC(4,2),
    failure_mode VARCHAR(5),
    expulsion VARCHAR(5)
);

select * from weld_data;

--ANALYSIS 1- AVERAGE STRENGTH BY CURRENT-:

SELECT
Current_kA,
AVG(Tensile_Strength_kN)
FROM weld_data
GROUP BY Current_kA
ORDER BY Current_kA;

--ANALYSIS 2- FAILURE MODE ANALYSIS-:

SELECT
Failure_Mode,
COUNT(*)
FROM weld_data
GROUP BY Failure_Mode;

--ANALYSIS 3-BEST WELD-:

SELECT *
FROM weld_data
WHERE Failure_Mode='PF'
AND Expulsion='No'
ORDER BY Tensile_Strength_kN DESC;

--ANALYSIS 4-What is the average tensile strength for PF vs IF welds?

SELECT AVG(tensile_strength_kn),failure_mode
FROM weld_data 
group by failure_mode

--ANALYSIS 5-What percentage of welds are acceptable?

SELECT
100.0*SUM(CASE WHEN Failure_Mode='PF' THEN 1 ELSE 0 END)/COUNT(*) AS PF_Percentage
FROM weld_data;

--ANALYSIS 6-What welding schedule minimizes expulsion while maximizing strength?

SELECT *
FROM weld_data
WHERE Expulsion='No'
ORDER BY Tensile_Strength_kN DESC;

--ANALYSIS 7-Optimal welding window

SELECT *
FROM weld_data
WHERE failure_mode='PF'
AND expulsion='No'
ORDER BY tensile_strength_kn DESC;

--ANALYSIS 8-Which parameter most strongly affects weld strength?

SELECT
    CORR(Current_kA, Tensile_Strength_kn) AS Current_Corr,
    CORR(Weld_Time_cycles, Tensile_Strength_kn) AS Time_Corr,
    CORR(Electrode_Force_kn, Tensile_Strength_kn) AS Force_Corr
FROM weld_data;

--ANALYSIS 9-Pareto Analysis-:

SELECT Failure_mode,
       COUNT(*) AS Frequency
FROM weld_data
GROUP BY Failure_mode
ORDER BY Frequency DESC;