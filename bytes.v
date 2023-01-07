module humanise

import math

fn logn(n f64, b f64) f64 {
	return math.log(n) / math.log(b)
}

fn humanate_bytes(s u64, base f64, sizes []string) string {
	if s < 10 {
		return "{s} B"
	}
	e := math.floor(logn(f64(s), base))
	suffix := sizes[int(e)]
	val := math.floor(f64(s)/math.pow(base, e)*10+0.5) / 10
	mut f := "${val:.0f}"
	if val < 10 {
		f = "${val:.1f}"
	}
	return f + " " + suffix
}

pub fn bytes(s u64) string {
	sizes := ['B', 'kB', 'MB', 'GB', 'TB', 'PB', 'EB']
	return humanate_bytes(s, 1000, sizes)
}