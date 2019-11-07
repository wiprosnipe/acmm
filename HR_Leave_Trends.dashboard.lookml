- dashboard: HR Leave Trends
  title: HR Leave Trends
  layout: newspaper
  tile_size: 150
  elements:
  - name: HR Leave Trends
    type: text
    title_text: HR Leave Trends
    height: 1
    width: 24
    row: 0
    col: 0
  - title: Marketing Employees - Vacation/Sick Leave Hours
    name: Marketing Employees - Vacation/Sick Leave Hours
    height: 11
    width: 24
    row: 1
    col: 0
    model: AW_Cycles_Manufacture_Metrics
    explore: Employee
    type: looker_column
    fields: [Contact.Name,Employee.VacationHrs,Employee.SickLeaveHrs]
    sorts: [Contact.Name]
    series_colors: 
      Employee.VacationHrs: "#33cbc2"
    listen:
      Ttile: Employee.Ttile
  - title: Marketing Team Leave Hours
    name: Marketing Team Leave Hours
    height: 10
    width: 24
    row: 12
    col: 0
    model: AW_Cycles_Manufacture_Metrics
    explore: Employee
    type: looker_line
    fields: [Employee.Ttile,Employee.VacationHrs,Employee.SickLeaveHrs]
    sorts: [Employee.Ttile]
    stacking: normal
    series_colors: 
      Employee.VacationHrs: "#4453c9"
    listen:
      Ttile: Employee.Ttile
  filters:
  - name: Ttile
    title: Ttile
    type: field_filter
    default_value: 'Marketing Assistant,Marketing Manager,Marketing Specialist'
    allow_multiple_values: true
    required: false
    model: AW_Cycles_Manufacture_Metrics
    explore: Employee
    field: Employee.Ttile
