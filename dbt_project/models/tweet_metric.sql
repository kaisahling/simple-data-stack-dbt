{% set topics = ["Tesla", "Dogecoin", "SpaceX"] %}
select *  from {{ref(stg_tweets)}}