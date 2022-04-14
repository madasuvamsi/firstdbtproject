{%set paymentmethods=['creditcard','debitcard']%}

select storeid,
{%for paymentmethod in paymentmethods %}
    sum(case when payment_method='{{paymentmethod}}' then OrderAmount end) as {{paymentmethod}}_totalpayment,
{% endfor %}
sum(OrderAmount) as total_amount
from Raw.CustomerPayments
group by 1