select
   t1.col_1,
   t1.col_2,
   t1.col_3,
   t2.foo,
   t2.bar,
   t2.baz
from
   t1                    left join
   t2 on t1.id = t2.id_1;
