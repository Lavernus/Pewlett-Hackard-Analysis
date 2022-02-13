# Analysis of Pewlitt Hackard Retirement
## Overview
The client has provided multiple csv files containing data pertaining to the employees in their company. Using this data, they plan to prepare for the future retirements of their employees.
### Purpose
Utilizing SQL, I will create two tables containing the count of each position in the company that will be lost and the employees that will be eligible for a mentorship program. These tables can be used to prepare for the loss and replacement of the retiring employees.
## Results
- Staff Loss                                    
    ![Staff_Count.png](https://github.com/Lavernus/Pewlett-Hackard-Analysis/blob/main/Additional_Resources/Staff_Count.png)

   - Overwhelmingly, the titles of the staff that will be lost fall under the "Senior" level, with 25,916 Senior Engineers, 24,926 Senior Staff, and 2 Managers leaving the company. This will cause a ripple effect in the employment of lower level employees, since the best option for the replacement of higher level employees is to train current, lower level employees to take their place. Those lower positions must be replaced by new people, which means that recruitment for the company will not be centered around the senior level positions being lost in the company, but lower level positions to replace those being promoted.
    - The mid-tier positions that will need to be filled are 9,285 Engineers and 3,603 Technique Leaders. These positions are unique since there is an option to promote from below employees to take their place, but it is also feasible to recruit from outside the company. If there is not enough qualified candidates in the lower level employees, it would not be difficult to find people with the qualifications to replace these positions who would also leave their current company. 
    - There will be some loss for lower level positions, albeit much less than the senior positions being lost. 7,636 Staff and 1,090 Assistant Engineers will be lost in this wave of retirement. For these postitions, you must recruit outside of the company since there are no levels lower than those positions to promote. This means that at least 8,726 positions will need to be hired in without counting however many positions will open after promotions. 
- Mentorship Program
    - Most important to the mentorship of lower level staff in taking over higher level positions is the number of mentors qualified to teach. Only 1,549 current employees have the amount of experience needed to teach lower level employees their new role.
## Summary
Overall, 72,458 positions will need to be filled as this wave of retirement hits. Of these positions, 50,844 will be high-level employees, 12,888 will be mid-level employees, and 8,726 will be low-level employees. High-level employees would be best replaced by promoting from within, which means that at least 50,844 positions will open up in lower bracket positions. Due to promotions opening up the positions those employees are leaving, 72,458 people will need to be hired, mostly focused on the lower and mid-level positions. 

Concerningly, if the company wishes to utilize a one-on-one mentorship program in order to replace the high-level positions opening up over the next three years, they will have to realize that there is nowhere near enough people to mentor the next generation. If the same amount of employees retired each year, that would mean that around 16,948 lower-level employees would have to be trained by only 1,549 higher-level employees. This would mean that it would be 11 to 1, employees to mentors. If this was accomplished by assigning teams to these mentors, it could be doable, but it may require the restructuring of some departments. This would also require the employees to be trained within a year for the next cohort to come along, which may be too little time. 

There are some points that were neglected in this analysis that could benefit from further study. Knowing exactly how many employees are retiring each year could greatly help in cycling employees through promotion training. Creating a table for each year with the count of the titles retiring would provide insight into how many employees will need to be replaced on a yearly schedule and whether training new employees would be doable with the amount of mentors there currently are. 

Another area that is neglected is determining the count of the titles that the mentors have. As of right now, it is unknown whether the spread of the employees qualified to be mentors even reflects what positions will be lost. If there are only Staff or Engineer mentors, for example, there won't even be any mentors able to teach the higher-level positions that actually need to be replaced. This isn't likely, of course, but a table showing the count of each title applied to the mentorship_eligibility.csv would provide solid data for how many mentors could actually teach the promotion positions. 
