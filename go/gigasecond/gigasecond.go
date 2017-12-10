package gigasecond

// import path for the time package from the standard library
import "time"

// Return Time + 1 Gigasecond
func AddGigasecond(t time.Time) time.Time {
	const gigasecond = 1e9
	return t.Add(time.Second * gigasecond)
}
