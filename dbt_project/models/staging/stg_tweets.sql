WITH source_data AS (
  SELECT
    public_metrics,
    context_annotations,
    referenced_tweets,
    in_reply_to_user_id,
    author_id,
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
