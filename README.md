# Accenture-Social_Buzz

![download (3)](https://github.com/Olauryn/Accenture-Social_Buzz/assets/118401566/6e3391e1-c696-433d-a4a4-f3a27aba8bf3)

## CLIENT'S BACKGROUND
Social Buzz was founded by two former engineers from a large social media conglomerate, one from London and the other from San Francisco. They left in 2008 and both met in 
San Francisco to start their business. They started Social Buzz because they saw an opportunity to build on the foundation that their previous company started by creating a new platform where content took center stage. Social Buzz emphasizes content by keeping all users anonymous,
only tracking user reactions on every piece of content. There are over 100 ways that users can
react to content, spanning beyond the traditional reactions of likes, dislikes, and comments.
This ensures that trending content, as opposed to individual users, is at the forefront of user
feeds.
Over the past 5 years, Social Buzz has reached over 500 million active users each month.
They have scaled quicker than anticipated and need the help of an advisory firm to oversee
their scaling process effectively.
Due to their rapid growth and digital nature of their core product, the amount of data that they
create, collect and must analyze is huge. Every day over 100,000 pieces of content, ranging
from text, images, videos and GIFs are posted. All of this data is highly unstructured and
requires extremely sophisticated and expensive technology to manage and maintain. Out of the
250 people working at Social Buzz, 200 of them are technical staff working on maintaining this
highly complex technology. 

They want to learn data best practices from a large corporation. Due to the nature of
their business, they have a massive amount of data so they are keen on
understanding how the world's biggest companies manage the challenges of big
data. 

They are expecting an analysis of their **content categories** that highlights the **top 5 categories** with the
largest aggregate popularity.

## TOOLS USED FOR ANALYSIS

Microsoft Excel, Power BI, SQL

## DATA MODEL
<img width="568" alt="Screenshot 2023-07-12 121705" src="https://github.com/Olauryn/Accenture-Social_Buzz/assets/118401566/49b9e724-4cab-48ef-b715-b216af74730e">


## DATA EXPLORATION
7 datasets were given, **Profile, location, User, Reaction, ReactionType, Content, Sessions**, but for the question we want to answer, I used 3 datasets, **Reaction, Content, ReactionTypes** datasets. 

The ReactionType dataset contained three columns **Type,	Sentiment and	Score**, and a total of 16 rows. No data cleaning was carried out as the dataset was ready for use.

The Reaction dataset contained 4 colummns **Content ID,	User ID,	Type and	Datetime** and a total of 25553 rows, blank rows were removed from the datasets leaving us with a total of 24574 rows. The User ID column was also removed.

The content dataset  contained 5 columns, **ContentID, User ID,	Type,	Category and	URL**. Carrying out data cleaning process, the URL and User ID column were removed as they contained information not relevant for the analysis. On the Category column, some values contained quotaion marks and this was rectified by removing the quotation marks from them to match the actual values of what we need. The Type column was renamed to ContentType. 

Data cleaning and joining was perfomed using Excel and SQL.



## DATA VISUALIZATION AND INSIGHTS

<img width="685" alt="Screenshot 2023-07-12 160930" src="https://github.com/Olauryn/Accenture-Social_Buzz/assets/118401566/8d7d9944-3a61-4278-ad7d-26c81f6bac8b">

From the data we found out that there were a total of 16 unique categories of posts
across the sample dataset. This includes things such as Food, Science and
Animals.
As well as this, there were 1897 reactions from just the animal category alone!
indicating people obviously really like animals!
And also the most common month for users to post within was May, followed by January which could be somewhat tied as a result of seasonal trends of social media users that feel the need toreconnect with people after calendar events such as Christmas.

To answer the question that show the **top 5 categories**, the analysis shows that the top 5 most popular categories of posts
were **animals, science, healthy eating, food and technology** in descending
order.
Animals had an aggregate popularity score of around **73724**. And it was very
interesting to see both food and healthy eating within the top 5, it really shows
that food is a highly engaging content category, but with **Healthy eating** ranking slightly
higher than food, so perhaps users base may be skewed towards healthy
eaters and health-conscious people or users are getting intrested in Healthy Eating as a results of several researches that shows the great importance of healthy Eating, and this insight can be used to boost engagement even further. For example, you could run a campaign with content focused on this category or work with healthy eating brands to promote content.
Finally, its also interesting to see science and technology too. This may suggest
that people enjoy consuming factual content and snippets of content that they
can learn something from.

