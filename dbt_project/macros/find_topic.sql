{% macro find_topic(topics, value_column) %}
    {% for topic in topics %}
    sum(case when REGEXP_CONTAINS(LOWER({{value_column}}), r'{{topic}}') THEN 1
    ELSE 0 END) as {{topic.replace(" ","_")}}_mentioned,
   {% endfor %}
{% endmacro %}