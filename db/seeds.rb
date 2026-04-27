Task.destroy_all
Story.destroy_all
Feature.destroy_all

feature = Feature.create!(
  title: "Missed Call Automation",
  description: "Automatically respond to missed customer calls with a follow-up SMS and booking link.",
  priority: "P0",
  status: "In Progress"
)

story = Story.create!(
  title: "Send SMS after missed call",
  description: "As a business owner, I want missed calls to trigger an automatic SMS so I do not lose potential customers.",
  acceptance_criteria: "SMS is sent within 60 seconds; message includes booking link; interaction is logged in the system.",
  feature: feature
)

Task.create!(title: "Build SMS trigger logic", status: "In Progress", story: story)
Task.create!(title: "Create booking link flow", status: "To Do", story: story)
Task.create!(title: "Store conversation data", status: "Done", story: story)
