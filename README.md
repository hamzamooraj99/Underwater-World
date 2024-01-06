# Underwater World Automated Planning
This is a automated planning project for an underwater exploration world. The plan consists of a domain explaining the world, and all the possible actions, along with 4 different problems for the planner to solve.

## Domain - underwater_world.pddl
This file is the domain and has all the information regarding the underwater world. The personnel, submarines, resources, locations, bases, obstacles etc. 
It also defines all possible actions that can take place in the world, such as: loading personnel on or off submarines, moving submarines, constructing bases and resources, scanning locations, etc.

## Problems - problem_.pddl
These files define the initial state of the world, and then the desired state. The planner uses this to formulate a plan to reach said desired state from the defined initial state.
All 4 files make use of each action defined in the domain.
