-- Drop the database if it exists
DROP DATABASE IF EXISTS `Digital_Marketing`;
CREATE DATABASE `Digital_Marketing`;
USE `Digital_Marketing`;

-- Create the campaigns table
CREATE TABLE campaigns (
  campaign_id VARCHAR(50) NOT NULL,
  campaign_name VARCHAR(50),
  start_date DATE,
  end_date DATE,
  budget DECIMAL(10,2),
  objective VARCHAR(50),
  PRIMARY KEY (campaign_id)
);

-- Create the ad_performance table
CREATE TABLE ad_performance (
  performance_id INT AUTO_INCREMENT,
  campaign_id VARCHAR(50),
  _date_ DATE,
  platform VARCHAR(50),
  impressions INT,
  clicks INT,
  cost DECIMAL(10,2),
  revenue DECIMAL(10,2),
  conversions INT,
  PRIMARY KEY (performance_id),
  FOREIGN KEY (campaign_id) REFERENCES campaigns(campaign_id)
);

-- Create the platforms table
CREATE TABLE platforms (
  platform_id INT AUTO_INCREMENT,
  platform_name VARCHAR(50) NOT NULL,
  monthly_active_users BIGINT,
  PRIMARY KEY (platform_id)
);

-- Insert 20 rows into campaigns
INSERT INTO campaigns (campaign_id, campaign_name, start_date, end_date, budget, objective)
VALUES 
('1', 'Holiday Sales 2024', '2024-11-01', '2024-12-31', 5000.00, 'Increase Sales'),
('2', 'Brand Awareness Q4', '2024-10-01', '2024-12-31', 3000.00, 'Brand Awareness'),
('3', 'Back to School Promo', '2024-08-01', '2024-09-15', 4000.00, 'Increase Sales'),
('4', 'Product Launch', '2024-05-01', '2024-05-31', 7000.00, 'Generate Leads'),
('5', 'Black Friday Deals', '2024-11-20', '2024-11-30', 10000.00, 'Increase Sales'),
('6', 'Spring Clearance', '2024-03-01', '2024-03-31', 3500.00, 'Increase Sales'),
('7', 'Summer Discounts', '2024-06-01', '2024-06-30', 6000.00, 'Increase Sales'),
('8', 'New Year Campaign', '2024-12-15', '2025-01-15', 8000.00, 'Increase Sales'),
('9', 'Social Media Drive', '2024-09-01', '2024-09-30', 2500.00, 'Engagement'),
('10', 'SEO Boost', '2024-07-01', '2024-07-31', 4000.00, 'Brand Awareness'),
('11', 'Flash Sale', '2024-02-01', '2024-02-05', 1500.00, 'Increase Sales'),
('12', 'Valentine Promo', '2024-02-10', '2024-02-15', 2000.00, 'Increase Sales'),
('13', 'Charity Event Drive', '2024-04-01', '2024-04-30', 5000.00, 'Community Engagement'),
('14', 'Easter Sale', '2024-03-20', '2024-04-01', 3000.00, 'Increase Sales'),
('15', 'Halloween Specials', '2024-10-15', '2024-10-31', 2500.00, 'Increase Sales'),
('16', 'Corporate Discounts', '2024-08-01', '2024-08-31', 4500.00, 'B2B Sales'),
('17', 'Gaming Promo', '2024-09-15', '2024-10-15', 5000.00, 'Increase Sales'),
('18', 'Health Awareness', '2024-06-01', '2024-06-15', 2000.00, 'Engagement'),
('19', 'Cyber Monday Deals', '2024-11-30', '2024-12-05', 9000.00, 'Increase Sales'),
('20', 'Loyalty Program Promo', '2024-07-15', '2024-07-31', 4000.00, 'Retention');

-- Insert 20 rows into ad_performance
INSERT INTO ad_performance (campaign_id, _date_, platform, impressions, clicks, cost, revenue, conversions)
VALUES 
('1', '2024-11-01', 'Facebook', 5000, 250, 150.00, 500.00, 30),
('2', '2024-10-02', 'Instagram', 3200, 120, 95.00, 300.00, 15),
('3', '2024-08-03', 'Google Ads', 1500, 80, 50.00, 150.00, 10),
('4', '2024-05-04', 'Twitter', 1800, 90, 60.00, 200.00, 12),
('5', '2024-11-21', 'Facebook', 8000, 400, 250.00, 1000.00, 50),
('6', '2024-03-05', 'LinkedIn', 1200, 50, 70.00, 100.00, 5),
('7', '2024-06-06', 'Instagram', 2200, 110, 80.00, 220.00, 15),
('8', '2024-12-16', 'Google Ads', 4500, 300, 200.00, 700.00, 35),
('9', '2024-09-07', 'Facebook', 3300, 150, 130.00, 400.00, 20),
('10', '2024-07-08', 'Instagram', 2900, 140, 100.00, 350.00, 18),
('11', '2024-02-02', 'Twitter', 500, 30, 25.00, 50.00, 3),
('12', '2024-02-10', 'Google Ads', 800, 40, 35.00, 80.00, 5),
('13', '2024-04-15', 'Facebook', 2700, 120, 110.00, 300.00, 15),
('14', '2024-03-21', 'Instagram', 2500, 100, 90.00, 280.00, 12),
('15', '2024-10-16', 'Google Ads', 3500, 200, 180.00, 550.00, 25),
('16', '2024-08-10', 'LinkedIn', 1600, 70, 50.00, 150.00, 8),
('17', '2024-09-20', 'Instagram', 1900, 95, 70.00, 230.00, 12),
('18', '2024-06-02', 'Twitter', 1000, 50, 40.00, 120.00, 6),
('19', '2024-11-30', 'Facebook', 7000, 380, 240.00, 900.00, 45),
('20', '2024-07-15', 'Google Ads', 3100, 160, 120.00, 400.00, 20);

-- Insert 20 rows into platforms
INSERT INTO platforms (platform_name, monthly_active_users)
VALUES 
('Facebook', 2900000000),
('Instagram', 2000000000),
('Google Ads', 3500000000),
('Twitter', 500000000),
('LinkedIn', 900000000),
('Snapchat', 700000000),
('Pinterest', 450000000),
('TikTok', 1000000000),
('YouTube', 2300000000),
('Reddit', 430000000),
('WhatsApp', 2000000000),
('WeChat', 1300000000),
('Telegram', 700000000),
('Discord', 400000000),
('Quora', 300000000),
('Tumblr', 200000000),
('Bing Ads', 300000000),
('Amazon Ads', 150000000),
('Yahoo Ads', 100000000),
('Apple Ads', 200000000)
;
