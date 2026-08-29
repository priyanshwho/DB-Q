--197. Rising Temperature--

-- Write your PostgreSQL query statement below
select v.customer_id, count(*) as count_no_trans from Visits v left join Transactions as t on v.visit_id=t.visit_id WHERE t.transaction_id IS NULL group by v.customer_id;