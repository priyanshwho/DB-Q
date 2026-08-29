-- /178. Rank Scores

-- # Write your MySQL query statement below
-- high to low order by desc
-- tie=same rank = dense rank or rank
-- after tie next rank is consecutive (no gap) dense rank


select score , dense_rank() over(
    order by score desc
) as 'rank' from Scores