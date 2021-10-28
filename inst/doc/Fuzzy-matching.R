## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(fedmatch)

## -----------------------------------------------------------------------------
fuzzy_result <- merge_plus(data1 = corp_data1, 
                          data2 = corp_data2,
                          by.x = "Company",
                          by.y = "Name", match_type = "fuzzy", 
                          unique_key_1 = "unique_key_1",
                          unique_key_2 = "unique_key_2")
print(fuzzy_result$matches)

## -----------------------------------------------------------------------------
wgt_jaccard_match <- merge_plus(data1 = corp_data1, 
                          data2 = corp_data2,
                          by.x = "Company",
                          by.y = "Name", match_type = "fuzzy", 
                          fuzzy_settings = build_fuzzy_settings(method = "wgt_jaccard", nthread = 2,
                                                                maxDist = .5),
                          unique_key_1 = "unique_key_1",
                          unique_key_2 = "unique_key_2")
print(wgt_jaccard_match)

