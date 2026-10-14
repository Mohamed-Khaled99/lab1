{% set columns = ['CustomerID', 'FirstName','LastName'] %}

SELECT

{% for column in columns %}

    {{ column }}

    {% if not loop.last %}
        ,
    {% endif %}

{% endfor %}

FROM {{ ref('stg_customer') }}