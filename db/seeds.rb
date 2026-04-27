Task.destroy_all
Story.destroy_all
Feature.destroy_all

missed_calls = Feature.create!(
  title: "Missed Call Automation",
  description: "Automatically respond to missed customer calls with an SMS and booking link.",
  priority: "P0",
  status: "In Progress"
)

lead_capture = Feature.create!(
  title: "Lead Capture System",
  description: "Capture inbound leads from forms and organize them for follow-up.",
  priority: "P1",
  status: "Planned"
)

analytics = Feature.create!(
  title: "Analytics Dashboard",
  description: "Track product execution and business performance metrics in one dashboard.",
  priority: "P2",
  status: "Planned"
)

story1 = Story.create!(
  title: "Send SMS after missed call",
  description: "As a business owner, I want missed calls to trigger an automatic SMS so I do not lose potential customers.",
  acceptance_criteria: "SMS sends within 60 seconds; message includes booking link; interaction is logged; failed sends are visible.",
  feature: missed_calls
)

story2 = Story.create!(
  title: "Log missed call interactions",
  description: "As a business owner, I want every missed call and follow-up message stored so I can review customer activity.",
  acceptance_criteria: "Missed call is stored; timestamp is recorded; customer phone number is attached; status is visible.",
  feature: missed_calls
)

story3 = Story.create!(
  title: "Capture website leads",
  description: "As a business owner, I want website form submissions stored as leads so I can follow up quickly.",
  acceptance_criteria: "Lead name, phone, email, and source are stored; duplicate submissions are flagged; lead appears in dashboard.",
  feature: lead_capture
)

story4 = Story.create!(
  title: "Notify owner of new lead",
  description: "As a business owner, I want to be notified when a high-value lead submits a form.",
  acceptance_criteria: "Notification is triggered for new leads; notification includes contact details; notification failure is logged.",
  feature: lead_capture
)

story5 = Story.create!(
  title: "Track conversion metrics",
  description: "As a business owner, I want to see how many missed calls turn into booked appointments.",
  acceptance_criteria: "Dashboard shows missed calls, messages sent, bookings, and conversion rate.",
  feature: analytics
)

story6 = Story.create!(
  title: "Show delivery health",
  description: "As a product owner, I want to see task status and delivery confidence so I can identify blockers.",
  acceptance_criteria: "Dashboard shows total tasks, completed tasks, blocked tasks, and delivery confidence.",
  feature: analytics
)

Task.create!(title: "Define webhook payload", status: "Done", story: story1)
Task.create!(title: "Build SMS trigger logic", status: "In Progress", story: story1)
Task.create!(title: "Create booking link template", status: "To Do", story: story1)

Task.create!(title: "Create missed interaction model", status: "Done", story: story2)
Task.create!(title: "Add interaction status field", status: "In Progress", story: story2)

Task.create!(title: "Design lead form schema", status: "Done", story: story3)
Task.create!(title: "Build lead creation endpoint", status: "To Do", story: story3)

Task.create!(title: "Define high-value lead rules", status: "To Do", story: story4)
Task.create!(title: "Create notification service", status: "Blocked", story: story4)

Task.create!(title: "Define conversion metrics", status: "Done", story: story5)
Task.create!(title: "Build dashboard cards", status: "In Progress", story: story5)

Task.create!(title: "Calculate delivery confidence", status: "To Do", story: story6)
