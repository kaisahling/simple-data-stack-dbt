{% macro find_topic(topics) %}
    {% for topic in topics %}
    sum(case when REGEXP_CONTAINS(LOWER(content), r'{{ceo}}') THEN 1
     when REGEXP_CONTAINS(LOWER(title), r'{{ceo}}') THEN 1
    ELSE 0 END) as {{topic.replace(" ","_")}}_mentioned,
   {% endfor %}
{% endmacro %}