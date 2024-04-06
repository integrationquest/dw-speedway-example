%dw 2.0
output application/json

import * from dw::iq::speedway::Leaderboard

var newResults = readUrl("classpath://examples/leaderboard-new-results.json", "application/json")
var scores = readUrl("classpath://examples/leaderboard-scores.json", "application/json")
---
//scores
//newResults
appendResults(scores, newResults, "tier2")
