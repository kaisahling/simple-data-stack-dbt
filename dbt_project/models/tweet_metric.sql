{% set topics = ["Tesla", "Dogecoin", "SpaceX"] %}
select {{ find_topic(topics, 'text') }}  from {{ref('stg_tweets')}}