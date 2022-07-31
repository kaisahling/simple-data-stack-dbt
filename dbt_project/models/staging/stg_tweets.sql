WITH source_data AS (
  SELECT
    DISTINCT
    text,
    created_at,
    tweet_id
  FROM
    data_warehouse.src_tweets
)
SELECT
*
FROM
source_data
