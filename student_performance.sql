USE student_performance;
SELECT * FROM student_performance.studentsperformance;
-- 1  : List top 5 students with highest average scores

SELECT 
    `gender`, 
    `race/ethnicity`, 
    `math score`, 
    `reading score`, 
    `writing score`,
    ROUND((`math score` + `reading score` + `writing score`) / 3.0, 2) AS average_score
FROM studentsperformance
ORDER BY average_score DESC
LIMIT 5;

-- 2  :  Find the average math, reading, and writing scores by gender. 
SELECT 
    `gender`,
    ROUND(AVG(`math score`), 2) AS avg_math,
    ROUND(AVG(`reading score`), 2) AS avg_reading,
    ROUND(AVG(`writing score`), 2) AS avg_writing
FROM studentsperformance
GROUP BY `gender`;

-- 3  : Compare average scores of students who completed test prep vs. those who didn’t
 SELECT 
    `test preparation course`,
    ROUND(AVG(`math score`), 2) AS avg_math,
    ROUND(AVG(`reading score`), 2) AS avg_reading,
    ROUND(AVG(`writing score`), 2) AS avg_writing
FROM studentsperformance
GROUP BY `test preparation course`;


-- 4  :  Count how many students fall into each performance category

SELECT 
    performance_category,
    COUNT(*) AS student_count
FROM (
    SELECT
        CASE 
            WHEN (`math score` + `reading score` + `writing score`) / 3.0 >= 90 THEN 'Excellent'
            WHEN (`math score` + `reading score` + `writing score`) / 3.0 >= 75 THEN 'Good'
            WHEN (`math score` + `reading score` + `writing score`) / 3.0 >= 60 THEN 'Average'
            ELSE 'Poor'
        END AS performance_category
    FROM studentsperformance
) AS categorized
GROUP BY performance_category;


-- 5  : Identify which ethnic group has the highest average total score.
SELECT 
    `race/ethnicity`,
    ROUND(AVG(`math score` + `reading score` + `writing score`), 2) AS avg_total_score
FROM studentsperformance
GROUP BY `race/ethnicity`
ORDER BY avg_total_score DESC
LIMIT 1;
