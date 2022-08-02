{% macro find_topic(topics, value_column) %}
    {% for topic in topics %}
    sum(CASE WHEN REGEXP_CONTAINS(LOWER({{value_column}}), r'{{topic}}') THEN 1
    ELSE 0 END) AS {{topic.replace(" ","_")}}_mentioned,
   {% endfor %}
{% endmacro %}