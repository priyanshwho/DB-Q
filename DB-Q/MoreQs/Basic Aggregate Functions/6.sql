-- 1193. Monthly Transactions I

-- Write your PostgreSQL query statement below
-- gorup by month and country
-- sum trans grp by
-- state approved case when approved 1 else 0 
-- total trans sum grp by cntry and month 
-- approved total amou group by cntry and month having state approved

select
    TO_CHAR(trans_date, 'YYYY-MM') as month,
    country,
    count(*) as trans_count,
    SUM(
        CASE
            WHEN state = 'approved' THEN 1
            ELSE 0
        END
    ) AS approved_count,
    SUM(amount) AS trans_total_amount,
    SUM(
        CASE
            WHEN state = 'approved' THEN amount
            ELSE 0
        END
    ) AS approved_total_amount    
    from Transactions 
    group by month , country;
