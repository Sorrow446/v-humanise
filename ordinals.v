module vhumanise

pub fn ordinal(n int) string {
	mut suffix := 'th'
	match n % 10 {
		1 {
			if n % 100 != 11 {
				suffix = 'st'
			}
		}
		2 {
			if n % 100 != 12 {
				suffix = 'nd'
			}
		}
		3 {
			if n % 100 != 13 {
				suffix = 'rd'
			}
		}
		else {}
	}
	return n.str() + suffix
}