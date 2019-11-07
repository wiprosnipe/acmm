- dashboard: Manufacturing Work Orders
  title: Manufacturing Work Orders
  layout: newspaper
  tile_size: 150
  elements:
  - name: Manufacturing Work Order
    type: text
    title_text: Manufacturing Work Order
    height: 1
    width: 24
    row: 0
    col: 0
  - title: Planned vs Actual Cost of Manufacture
    name: Planned vs Actual Cost of Manufacture
    height: 1
    width: 24
    row: 1
    col: 0
    model: AW_Cycles_Manufacture_Metrics
    explore: Product
    type: looker_column
    fields: [Product.ProductName,WorkOrderRouting.PlannedCost,WorkOrderRouting.ActualCost]
    sorts: [Product.ProductName]
    series_colors: 
      WorkOrderRouting.PlannedCost: "#3a6598"
    listen:
      ProductSubCategoryName: ProductSubcategory.ProductSubCategoryName
      OnOrderQty: ProductVendor.OnOrderQty
  - title: Product Manufacture Hours
    name: Product Manufacture Hours
    height: 1
    width: 24
    row: 2
    col: 0
    model: AW_Cycles_Manufacture_Metrics
    explore: Product
    type: looker_pie
    fields: [Product.ProductName,WorkOrderRouting.ManufactureHrs]
    sorts: [Product.ProductName]
    series_colors: 
      WorkOrderRouting.ManufactureHrs: "#3a6598"
    listen:
      ProductSubCategoryName: ProductSubcategory.ProductSubCategoryName
      OnOrderQty: ProductVendor.OnOrderQty
  - title: Manufacture Budget/Effort Utilization
    name: Manufacture Budget/Effort Utilization
    height: 5
    width: 24
    row: 3
    col: 0
    model: AW_Cycles_Manufacture_Metrics
    explore: Product
    type: table
    fields: [Product.ProductName,WorkOrderRouting.PlannedCost,WorkOrderRouting.ActualCost,WorkOrderRouting.ManufactureHrs]
    sorts: [Product.ProductName]
    listen:
      ProductSubCategoryName: ProductSubcategory.ProductSubCategoryName
      OnOrderQty: ProductVendor.OnOrderQty
  - name: Manufacturing Location
    type: text
    title_text: Manufacturing Location
    height: 4
    width: 24
    row: 8
    col: 0
  - title: Work Capacity (in hours)
    name: Work Capacity (in hours)
    height: 4
    width: 24
    row: 12
    col: 0
    model: AW_Cycles_Manufacture_Metrics
    explore: Location
    type: looker_area
    fields: [Location.LocationName,Location.Availability]
    sorts: [Location.LocationName]
    series_colors: 
      Location.Availability: "#3a6598"
    listen:
  - title: Locations List
    name: Locations List
    height: 1
    width: 24
    row: 16
    col: 0
    model: AW_Cycles_Manufacture_Metrics
    explore: Location
    type: table
    fields: [Location.LocationName,Location.Availability,Location.CostRate]
    sorts: [Location.LocationName]
    listen:
  - title: Standard Hourly Cost
    name: Standard Hourly Cost
    height: 1
    width: 24
    row: 17
    col: 0
    model: AW_Cycles_Manufacture_Metrics
    explore: Location
    type: looker_line
    fields: [Location.LocationName,Location.CostRate]
    sorts: [Location.LocationName]
    series_colors: 
      Location.CostRate: "#00b104"
    listen:
  - name: Goods Vendor (Current Order more than 1000)
    type: text
    title_text: Goods Vendor (Current Order more than 1000)
    height: 1
    width: 24
    row: 18
    col: 0
  - title: Order Limits
    name: Order Limits
    height: 4
    width: 16
    row: 19
    col: 0
    model: AW_Cycles_Manufacture_Metrics
    explore: ProductVendor
    type: looker_column
    fields: [Vendor.Vendor_Name,ProductVendor.MinOrderQty,ProductVendor.MaxOrderQty]
    sorts: [Vendor.Vendor_Name]
    series_colors: 
      ProductVendor.MinOrderQty: "#017bbb"
    listen:
      OnOrderQty: ProductVendor.OnOrderQty
  - title: Current Order Quantity
    name: Current Order Quantity
    height: 4
    width: 8
    row: 19
    col: 16
    model: AW_Cycles_Manufacture_Metrics
    explore: ProductVendor
    type: looker_column
    fields: [Vendor.Vendor_Name,ProductVendor.OnOrderQty]
    sorts: [Vendor.Vendor_Name]
    series_colors: 
      ProductVendor.OnOrderQty: "#33cbc2"
    listen:
      OnOrderQty: ProductVendor.OnOrderQty
  - title: Vendors Ususal Selling Price
    name: Vendors Ususal Selling Price
    height: 4
    width: 24
    row: 23
    col: 0
    model: AW_Cycles_Manufacture_Metrics
    explore: ProductVendor
    type: looker_pie
    fields: [Vendor.Vendor_Name,ProductVendor.StandardPrice]
    sorts: [Vendor.Vendor_Name]
    series_colors: 
      ProductVendor.StandardPrice: "#3a6598"
    listen:
      OnOrderQty: ProductVendor.OnOrderQty
  - title: Selling Price of Last Purchase
    name: Selling Price of Last Purchase
    height: 1
    width: 24
    row: 27
    col: 0
    model: AW_Cycles_Manufacture_Metrics
    explore: ProductVendor
    type: looker_pie
    fields: [Vendor.Vendor_Name,ProductVendor.LastReceiptCost]
    sorts: [Vendor.Vendor_Name]
    series_colors: 
      ProductVendor.LastReceiptCost: "#3a6598"
    listen:
      OnOrderQty: ProductVendor.OnOrderQty
  - title: Vendor Rating & Preference
    name: Vendor Rating & Preference
    height: 1
    width: 24
    row: 28
    col: 0
    model: AW_Cycles_Manufacture_Metrics
    explore: Vendor
    type: table
    fields: [Vendor.Vendor_Name,Vendor.VendorPreferred,Vendor.VendorActive,Vendor.VendorRating]
    sorts: [Vendor.Vendor_Name]
    listen:
  filters:
  - name: ProductSubCategoryName
    title: ProductSubCategoryName
    type: field_filter
    default_value: 'Road Bikes'
    allow_multiple_values: true
    required: false
    model: AW_Cycles_Manufacture_Metrics
    explore: ProductSubcategory
    field: ProductSubcategory.ProductSubCategoryName
  - name: OnOrderQty
    title: OnOrderQty
    type: field_filter
    default_value: '>1000'
    allow_multiple_values: true
    required: false
    model: AW_Cycles_Manufacture_Metrics
    explore: ProductVendor
    field: ProductVendor.OnOrderQty
