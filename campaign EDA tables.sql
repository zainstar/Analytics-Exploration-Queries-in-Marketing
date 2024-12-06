SELECT * 
FROM digital_marketing.campaigns;

SELECT SUM(budget) AS total_budget
FROM campaigns;

SELECT objective, SUM(budget) AS total_budget
FROM campaigns
GROUP BY objective
ORDER BY total_budget DESC;
platforms