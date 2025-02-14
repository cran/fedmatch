## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup, include = F-------------------------------------------------------
library(fedmatch)
library(data.table)
data("corp_data1", package = "fedmatch")
data("corp_data2", package = "fedmatch")
data.table::setDT(corp_data1)
data.table::setDT(corp_data2)

## -----------------------------------------------------------------------------
tier_list <- list(
  a = build_tier(match_type = "exact"),
  b = build_tier(match_type = "fuzzy", fuzzy_settings = build_fuzzy_settings(nthread = 1)),
  c = build_tier(match_type = "multivar", multivar_settings = build_multivar_settings(
    logit = NULL, missing = FALSE, wgts = 1,
    compare_type = "stringdist", blocks = NULL, blocks.x = NULL, blocks.y = NULL,
    top = 1, threshold = NULL, nthread = 1
  ))

)
# tier_list

## -----------------------------------------------------------------------------
tier_list_v2 <- list(
  a = build_tier(match_type = "exact", clean = TRUE),
  b = build_tier(match_type = "fuzzy", clean = TRUE,
           fuzzy_settings = build_fuzzy_settings(method = "wgt_jaccard",
                                 maxDist = .7,
                                 nthread = 1),
           clean_settings = build_clean_settings(remove_words = TRUE)),
  c = build_tier(match_type = "multivar", 
                 multivar_settings = build_multivar_settings(
    logit = NULL, missing = FALSE, wgts = 1,
    compare_type = "stringdist", blocks = NULL, blocks.x = NULL, blocks.y = NULL,
    top = 1, threshold = NULL, nthread = 1
  ))
)

## -----------------------------------------------------------------------------
result <- tier_match(corp_data1, corp_data2,
  by.x = "Company", by.y = "Name",
  unique_key_1 = "unique_key_1", unique_key_2 = "unique_key_2",
  tiers = tier_list_v2, takeout = "neither", verbose = TRUE,
  score_settings = build_score_settings(score_var_x = "Company",
                                        score_var_y = "Name",
                                        wgts = 1,
                                        score_type = "stringdist")
)

## -----------------------------------------------------------------------------
result$matches[1:5]

## -----------------------------------------------------------------------------
result$match_evaluation

