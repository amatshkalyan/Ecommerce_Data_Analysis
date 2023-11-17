# Ecommerce_Data_Analysis
In this project, I'm analyzing BigQuery public dataset called theLook eCommerce. 
The data source you can find [here](https://console.cloud.google.com/marketplace/product/bigquery-public-data/thelook-ecommerce?project=bitly-dashboards)


## Question 1

1.	Calculate the number of events per event type per month.

   [Detailed SQL query](https://github.com/amatshkalyan/Ecommerce_Data_Analysis/blob/main/question_1.sql)

## Question 2

2.	Calculate the percentage of the number of events per event type over the total number of events by month.

[Detailed SQL query](https://github.com/amatshkalyan/Ecommerce_Data_Analysis/blob/main/question_2.sql)


## Question 3

3.	How would you analyze the trend of cancel events from January 2022 to September 2023? Is it positive, negative, or neutral? Please include how you would present your findings. You can use Google Sheets or Looker Studio but you don’t have to. You can also just explain what visualization you would use and why.

[Detailed SQL query](https://github.com/amatshkalyan/Ecommerce_Data_Analysis/blob/main/question_3.sql)

[Published Results visualization](https://lookerstudio.google.com/reporting/89ded0b3-6db0-4a15-88cc-6b95b8d7b627)

<img width="1075" alt="image" src="https://github.com/amatshkalyan/Ecommerce_Data_Analysis/assets/149266119/3e62716c-344a-44e6-8543-4db999ce03af">

### Analysis:

* **Overview:**
I used Looker Studio to make a simple visualization for further analysis. 
The line chart provides a visual representation of the monthly canceled events over time.
The inclusion of a trendline helps to identify the overall pattern and direction of the trend.

* **Trendline Observation:**
A declining trendline suggests that there is a slight decrease in the number of cancel events over the chosen period.
This means that, on average, the monthly cancel events are showing a tendency to decrease.

* **Implications:**
The declining trend may indicate potential positive changes, such as improvements in customer satisfaction, better service quality, or changes in user behavior.
It could also be a result of operational improvements, optimization of processes, or successful retention strategies.

* **Considerations:**
While a declining trend may generally be positive, it's important to consider external factors or events that might influence the trend.
Seasonal variations, marketing campaigns, or changes in business policies could contribute to fluctuations.

* **Further Investigation:**
If the decline is significant, you might want to investigate the specific months or periods where the decline is most pronounced.
Look for correlations with any changes in business strategies, customer engagement initiatives, or external events.

## Question 4

4.	Management would like to compare month-over-month growth of purchase events vs month-over-month growth of the number of orders shipped. They would like to understand how aligned or not these 2 trends are for the period of January 2022 to September 2023.

[Published Results visualization]( https://github.com/amatshkalyan/Ecommerce_Data_Analysis/blob/main/question_4.sql)


  

