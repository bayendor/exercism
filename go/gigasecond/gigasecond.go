// Package gigasecond adds one gigasecond to Time.
package gigasecond

import "time"

// AddGigasecond adds 1 Gigasecond to Time
func AddGigasecond(t time.Time) time.Time {
	const gigasecond = 1e9
	return t.Add(time.Second * gigasecond)
}
