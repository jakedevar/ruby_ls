birds = %w(raven finch hawk eagle)

def splat(birds)
	yield(birds)
end

splat(birds) {|_, _, *raptors| puts raptors}