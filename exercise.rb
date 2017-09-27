project = {
  committee: ["Stella", "Salma", "Kai"],
  title: "Very Important Project",
  due_date: "December 1, 2019",
  id: "3284",
  steps: [
    {
      description: "conduct interviews",
      due_date: "August 1, 2018"
    },
    {
      description: "code of conduct",
      due_date: "January 1, 2018"
    },
    {
      description: "compile results",
      due_date: "November 10, 2018"
    },
    {
      description: "version 1",
      due_date: "January 15, 2019"
    },
    {
      description: "revisions",
      due_date: "March 30, 2019"
    },
    {
      description: "version 2",
      due_date: "July 12, 2019"
    },
    {
      description: "final edit",
      due_date: "October 1, 2019"
    },
    {
      description: "final version",
      due_date: "November 20, 2019"
    }
  ]
}

# update each step to have committee member name associated
# each committee member has the same number of steps/tasks

# iterate through project
# iterate through steps to add a key and value
# divide steps by the number of people
# assign equal number of steps to each person
tasks_per_person = (project[:steps].length / project[:committee].length).to_i
puts tasks_per_person

current_step = 0

project[:committee].each do |committee_member|
  tasks_per_person.times do |tasks|
    project[:steps][current_step][:person] = committee_member
    puts "Current step is #{current_step} and this is the name #{committee_member}"
    current_step += 1
  end
end

project[:steps].each do |step|
  puts step
end
