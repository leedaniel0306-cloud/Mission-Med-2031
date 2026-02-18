/* PROJECT: Orthopedic Cohort Identification
GOAL: Identify elderly patients (65+) with hip fractures for recovery analysis.
*/

SELECT 
    PatientID, 
    Age, 
    AdmissionDate, 
    Diagnosis,
    DATEDIFF(day, AdmissionDate, SurgeryDate) AS DaysToSurgery
FROM 
    Hospital_Admissions
WHERE 
    Diagnosis = 'Hip Fracture' 
    AND Age >= 65
    AND SurgeryDate IS NOT NULL
ORDER BY 
    DaysToSurgery DESC;
