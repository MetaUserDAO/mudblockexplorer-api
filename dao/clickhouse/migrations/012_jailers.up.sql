create table jailers
(
    jlr_id         FixedString(42),
    jlr_address    String,
    jlr_created_at DateTime
) ENGINE ReplacingMergeTree()
      PARTITION BY toYYYYMMDD(jlr_created_at)
      ORDER BY (jlr_id);
