{% set topics = ["tesla", "coin", "spacex"] %}
select {{ find_topic(topics, 'text') }}  from {{ref('stg_tweets')}}