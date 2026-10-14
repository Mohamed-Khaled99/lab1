{% macro sales_category(column_name) %}

    CASE

        WHEN {{ column_name }} >= 1000 THEN 'High'

        WHEN {{ column_name }} >= 500 THEN 'Medium'

        ELSE 'Low'

    END

{% endmacro %}