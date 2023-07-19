-- all quanities of tickets sold should be a positive value of 1 or greater
-- there should be no credits (negative values)
select median_tickets_per_event
from {{ ref('fct_sales') }}
group by median_tickets_per_event
having not (median_tickets_per_event >= 1)