# fedmatch 2.0.3

- Fixed STATE_FIPS to actually include FIPS codes
- Changed the output column from 'multivar' matching to be called 'multivar_score' rather than 'matchscore', so as not to conflict with score_settings in `merge_plus`
- Fixed bug in Weighted Jaccard scoring that would allow scores > 1 if the two names shared multiples of the same word


# fedmatch 2.0.2

- Fixed bugs in Weighted Jaccard code to run on MacOS environments

# fedmatch 2.0.1

- Fixed bugs in Makevars so that C++ code runs in parallel
- Fixed bugs in `tier_match` that stopped matches from being removed in between tiers
- Fixed bugs preventing the successful build on other platforms besides native linux

# fedmatch 2.0.0

- Added full data.table functionality to dramatically increase speed
- Added 'multivar' matching to match on multiple variables
  - Added capability to train a logit model and use the output
- Added 'Weighted Jaccard' match to get better matches
