%dw 2.0
import * from dw::test::Tests
import * from dw::test::Asserts

import * from dw::iq::speedway::Leaderboard
---
"Leaderboard" describedBy [
    "appendResults" describedBy [
        "Append empty to empty" in do {
            appendResults([], [], "tier5") must equalTo([])
        },
    ],
]
