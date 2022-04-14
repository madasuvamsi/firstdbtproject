

select storeid,

    sum(case when payment_method='creditcard' then OrderAmount end) as creditcard_totalpayment,

    sum(case when payment_method='debitcard' then OrderAmount end) as debitcard_totalpayment,

sum(OrderAmount) as total_amount
from Raw.CustomerPayments
group by 1