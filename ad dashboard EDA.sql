SELECT * 
FROM digital_marketing.ad_performance;

SELECT SUM(revenue) AS total_revenue
FROM ad_performance;

SELECT SUM(cost) AS total_cost
FROM ad_performance;

SELECT platform, SUM(cost) AS total_cost
FROM ad_performance
GROUP BY platform
ORDER BY total_cost DESC;

SELECT platform, SUM(revenue) AS total_revenue
FROM ad_performance
GROUP BY platform
ORDER BY total_revenue DESC;
