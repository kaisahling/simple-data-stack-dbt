{% set topics = ["Tesla", "Dogecoin", "SpaceX"] %}
select {{ find_topic('{{topics}}') }},  from {{ref(stg_tweets)}}