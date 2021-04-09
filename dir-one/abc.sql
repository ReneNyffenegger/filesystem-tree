select
  cus.name,
  sal.item
  sal.amount
from
  sales    sal                            join
  customer cus on sal.cust_id = cus.id;
