{% set price = 50 %}
{% set quantity = 5 %}

SELECT
    {{ price }} AS price,
    {{ quantity }} AS quantity,
    {{ price * quantity }} AS total



{#

{% set first_name = 'Mohamed' %}
{% set last_name = 'Khaled' %}

SELECT
    '{{ first_name }} {{ last_name }}' AS full_name


#}