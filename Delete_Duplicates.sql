delete from employee where row_id in 
(select row_id from (select rowid row_id, 
                     dense_rank() over(partition by empid order by rowid) r from employee ) 
 where r > 1;
