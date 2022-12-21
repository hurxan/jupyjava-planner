#!/usr/bin/julia

using Pkg
Pkg.add("PyCall")

using PDDL, SymbolicPlanners

# Auxiliary function for printing to file
function teeprint(io1::IO, io2::IO, xs...)
	print(io1, xs...)
	print(io2, xs...)
end

function solve(planner, file, level)
	
	# Load domain
	domain = load_domain("examples/blocksworld/domain.pddl")
	problem = load_problem("examples/blocksworld/problem-"*string(level)*".pddl")
	state = initstate(domain, problem)
	goal = PDDL.get_goal(problem)

	# Solve the problem using the planner
	sol = planner(domain, state, goal)

	# Save formatted solution
	lines = collect(sol)

	# Open file
	fp = open(file, "w")

	# Print solution to file
	for line in lines
		teeprint(fp, stdout, line)
		teeprint(fp, stdout, "\n")
	end

	# Close file
	close(fp)

	return
end

# Running example on all Blocksworld problems (1 to 9)
for level in 1:9
	file = "./output/blocksworld_problem-"*string(level)*"_greedyplanner_hmax.txt"
	solve(GreedyPlanner(HMax()), file, level)
end

# for level in 1:9
# 	file = "./output/blocksworld_problem-"*string(level)*"_greedyplanner_hadd.txt"
# 	solve(GreedyPlanner(HAdd()), file, level)
# end

# for level in 1:9
# 	file = "./output/blocksworld_problem-"*string(level)*"_astarplanner_hmax.txt"
# 	solve(AStarPlanner(HMax()), file, level)
# end

# for level in 1:9
# 	file = "./output/blocksworld_problem-"*string(level)*"_astarplanner_hadd.txt"
# 	solve(AStarPlanner(HAdd()), file, level)
# end
