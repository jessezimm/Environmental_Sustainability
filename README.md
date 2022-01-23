![alt text](https://github.com/jessezimm/Environmental_Sustainability/blob/main/Pictures/WaterQuality.jpg)
# Environmental Sustainability
Environmental sustainability is one of the most pressing issues of our century. From climate change to pollution, major ills to the environment affect humanity and the biosphere. Given the urgency of action on environmental sustainability our group saw it fit to tackle a challenge using technology, particularly machine learning, to bring about insights in the  area of environmental sustainability. Our insights will inform the world on water pollution and the suitability of drinking water. 

# Team Communication Protocols
Although each member will contribute to the overall flow of the machine learning exercise, our team assigned focused roles for the smooth completion of this project.
 - Elizaveta L. : Presentation and Github
 - Jessica Z. : Machine Learning and Github
 - Mohamad K.: Database and Machine Learning
 - Beruchya D.: Database and Presentation

Our team will be communicating regularly through Slack and Zoom to ensure that our project respects the prescribed deadlines and requirements. Our team members have agreed to inform fellow team members on major changes before commiting these changes to the main branch. Consequently, our team has reserved branches for individual work related to the project.

# Selected Topic & Reasoning
This project will seek to assess the potability of water resources samples conducted at over 3000 sites. This will contribute to an overall effort to encourage high standard drinking water for the health of people. This will also serve to ensure that water resources are safe for biodiversity such as plants and wildlife. All in all, this project will use a water quality lens to assess the health of water resources for public and environmental health purposes. 

# Questions to Answer through Model

We are going to implement a water quality prediction model using machine learning techniques. In this technique, our model will predict that the water is safe to drink or not.

# Description of Source Data

We are using a water potability database consisting of two tables joined on the index number. The two tables (water_table_1.csv and water_table_2.csv) were processed to form a single file,  the water_potability.csv file, that contains water quality metrics for 3276 different water bodies:

1. pH value;
2. Hardness;
3. Solids (Total dissolved solids - TDS);
4. Chloramines;
5. Sulfate;
6. Conductivity;
7. Organic_carbon;
8. Trihalomethanes;
9. Turbidity;
10. Potability.

The database was created with Postgres using SQL to create a left join for the two initial tables. With an engine created in Jupyter notebook to access Postgres, our data can be accessed and modeled as needed.  

# Machine Learning Model

Using the Balanced Random Forests Classifier Model, we will predict if water is safe to drink or not from feature variables including pH value, conductivity, hardness, etc. This model creates smaller, simpler decision trees based on a random subset of features. These smaller trees can be combined to make a strong learner with better decision-making power. This model is robust against overfitting because the smaller decision trees are trained on different pieces of data. However, all features are displaying similar importance in the model and thus it is difficult to eliminate features. Currently, the accuracy score of the model is 0.65, which is modestly better than flipping a coin. We hope to improve this score. 

To clean the data, we filled any entries that were left as null with the mean of that column. After testing feature importance, we decided to use all features (ph, hardness, etc.) to determine if water is potable. All features will relatively close in importance so feature reduction did not seem reasonable. We used the train test split from the SK Learn Model Selection package. By stratifying on "y", it will preserve the proportion of the target potability as in the original dataset for the train and test datasets as well. 

# Dashboard
Our dashboard outline can be found below:
https://docs.google.com/presentation/d/1_37S769MIizYbzhzG8-pPeNbNSt5uGwYbGbQyf8t9hw/edit?usp=sharing
Our final Tableau story containing interactive graphs can be found below:
https://public.tableau.com/app/profile/jessica.zimmerman/viz/DissectingPotability/DissectingPotability?publish=yes

# Presentation

Our final presentation can be found below:
https://docs.google.com/presentation/d/1xWa6ygRF0Y8xlHQtO98mYD8q430M-nWSCejxq5FyqlU/edit#slide=id.p


