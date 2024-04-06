%dw 2.0
import some from dw::core::Arrays

fun appendResults(scores, newResults, leaderboardId) = do {
	var maxRank = max(scores map $.rank) default 0
	var unranked = newResults filter (result) ->
		not (scores some (score) -> score.racerId == result.racerId)
	var newScores = unranked map (result, index) -> 
		{
			tier: leaderboardId,
			name: result.name,
			racerId: result.racerId,
			rank: maxRank + index + 1,
			time: result.time
		}
	---
	scores ++ newScores
}