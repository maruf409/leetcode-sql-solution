# leetcode-sql-solution
Write an SQL query to find the daily active user count for a period of 30 days ending 2019-07-27 inclusively. A user was active on someday if they made at least one activity on that day.
+---------------+---------+
| Column Name   | Type    |
+---------------+---------+
| user_id       | int     |
| session_id    | int     |
| activity_date | date    |
| activity_type | enum    |
+---------------+---------+
There is no primary key for this table, it may have duplicate rows.
The activity_type column is an ENUM of type ('open_session', 'end_session', 'scroll_down', 'send_message').
The table shows the user activities for a social media website. 
Note that each session belongs to exactly one user.

Sample
                                                                  1	1	2019-07-20	open_session
                                                                  1	1	2019-07-20	scroll_down
                                                                  1	1	2019-07-20	end_session
                                                                  2	4	2019-07-20	open_session
                                                                  2	4	2019-07-21	send_massage
                                                                  2	4	2019-07-21	end_session
                                                                  3	2	2019-07-21	open_session
                                                                  3	2	2019-07-21	send_massage
                                                                  3	2	2019-07-21	end_session
                                                                  4	3	2019-06-25	open_session
                                                                  4	3	2019-06-25	end_session
