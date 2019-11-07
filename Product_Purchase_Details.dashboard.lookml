- dashboard: Product Purchase Details
  title: Product Purchase Details
  layout: newspaper
  tile_size: 150
  elements:
  - name: PURCHASE ORDERS
    type: text
    title_text: PURCHASE ORDERS
    height: 1
    width: 24
    row: 0
    col: 0
  - title: Product Purchase Order Summary
    name: Product Purchase Order Summary
    height: 1
    width: 24
    row: 1
    col: 0
    model: AW_Cycles_Manufacture_Metrics
    explore: PurchaseOrderHeader
    type: table
    fields: [Product.ProductName,PurchaseOrderHeader.OrderDate,PurchaseOrderHeader.ShipDate,PurchaseOrderDetail.DueDate,PurchaseOrderDetail.OrderQty,PurchaseOrderDetail.ReceivedQty,PurchaseOrderDetail.RejectedQty,PurchaseOrderDetail.StockedQty,PurchaseOrderHeader.TotalDue]
    sorts: [Product.ProductName]
    listen:
      OrderDate: PurchaseOrderHeader.OrderDate
  - title: Product - Order/Received Quantity
    name: Product - Order/Received Quantity
    height: 1
    width: 24
    row: 2
    col: 0
    model: AW_Cycles_Manufacture_Metrics
    explore: PurchaseOrderDetail
    type: looker_column
    fields: [Product.ProductName,PurchaseOrderDetail.OrderQty,PurchaseOrderDetail.ReceivedQty]
    sorts: [Product.ProductName]
    series_colors: 
      PurchaseOrderDetail.OrderQty: "#3a6598"
    listen:
  - title: Product Subcategory - Order Quantity
    name: Product Subcategory - Order Quantity
    height: 3
    width: 24
    row: 3
    col: 0
    model: AW_Cycles_Manufacture_Metrics
    explore: PurchaseOrderDetail
    type: looker_pie
    fields: [ProductSubcategory.ProductSubCategoryName,PurchaseOrderDetail.OrderQty]
    sorts: [ProductSubcategory.ProductSubCategoryName]
    series_colors: 
      PurchaseOrderDetail.OrderQty: "#3a6598"
    listen:
  - title: Product Category - Order Quantity
    name: Product Category - Order Quantity
    height: 4
    width: 24
    row: 6
    col: 0
    model: AW_Cycles_Manufacture_Metrics
    explore: PurchaseOrderDetail
    type: looker_pie
    fields: [ProductCategory.ProductCategoryName,PurchaseOrderDetail.OrderQty]
    sorts: [ProductCategory.ProductCategoryName]
    series_colors: 
      PurchaseOrderDetail.OrderQty: "#3a6598"
    listen:
  - name: PRODUCT PRICING
    type: text
    title_text: PRODUCT PRICING
    height: 4
    width: 12
    row: 10
    col: 0
  - title: Purchase Total Dues
    name: Purchase Total Dues
    height: 4
    width: 12
    row: 10
    col: 12
    model: AW_Cycles_Manufacture_Metrics
    explore: PurchaseOrderHeader
    type: table
    fields: [Product.ProductName,PurchaseOrderDetail.OrderQty,PurchaseOrderDetail.UnitPrice,PurchaseOrderHeader.SubTotal,PurchaseOrderHeader.TaxAmt,PurchaseOrderHeader.Freight,PurchaseOrderHeader.TotalDue]
    sorts: [Product.ProductName]
    listen:
      OrderDate: PurchaseOrderHeader.OrderDate
  - title: Price Composition
    name: Price Composition
    height: 1
    width: 24
    row: 14
    col: 0
    model: AW_Cycles_Manufacture_Metrics
    explore: PurchaseOrderHeader
    type: looker_area
    fields: [Product.ProductName,PurchaseOrderHeader.SubTotal,PurchaseOrderHeader.TaxAmt,PurchaseOrderHeader.Freight,PurchaseOrderHeader.TotalDue]
    sorts: [Product.ProductName]
    series_colors: 
      PurchaseOrderHeader.SubTotal: "#3a6598"
    listen:
      OrderDate: PurchaseOrderHeader.OrderDate
  - title: Product Order Price - Category wise
    name: Product Order Price - Category wise
    height: 1
    width: 24
    row: 15
    col: 0
    model: AW_Cycles_Manufacture_Metrics
    explore: PurchaseOrderHeader
    type: table
    fields: [Product.ProductName,PurchaseOrderHeader.SubTotal,PurchaseOrderHeader.TaxAmt,PurchaseOrderHeader.Freight,PurchaseOrderHeader.TotalDue]
    sorts: [Product.ProductName]
    listen:
      OrderDate: PurchaseOrderHeader.OrderDate
  - name: VENDOR COMPANY
    type: text
    title_text: VENDOR COMPANY
    height: 1
    width: 24
    row: 16
    col: 0
  - title: Dues to Vendor
    name: Dues to Vendor
    height: 3
    width: 24
    row: 17
    col: 0
    model: AW_Cycles_Manufacture_Metrics
    explore: 
    type: looker_line
    fields: [Vendor.Vendor_Name,PurchaseOrderDetail.OrderQty,PurchaseOrderHeader.TotalDue]
    sorts: [Vendor.Vendor_Name]
    stacking: normal
    series_colors: 
      PurchaseOrderDetail.OrderQty: "#3a6598"
    listen:
  - title: Vendor Review
    name: Vendor Review
    height: 4
    width: 24
    row: 20
    col: 0
    model: AW_Cycles_Manufacture_Metrics
    explore: Vendor
    type: table
    fields: [Vendor.Vendor_Name,Vendor.VendorPreferred,Vendor.VendorActive,Vendor.VendorRating]
    sorts: [Vendor.Vendor_Name]
    listen:
  - title: Order per Vendor
    name: Order per Vendor
    height: 3
    width: 24
    row: 24
    col: 0
    model: AW_Cycles_Manufacture_Metrics
    explore: PurchaseOrderHeader
    type: table
    fields: [ProductCategory.ProductCategoryName,ProductSubcategory.ProductSubCategoryName,Product.ProductName,PurchaseOrderDetail.OrderQty,PurchaseOrderHeader.TotalDue]
    sorts: [ProductCategory.ProductCategoryName]
    listen:
      OrderDate: PurchaseOrderHeader.OrderDate
  - name: ORDER BY EMPLOYEES
    type: text
    title_text: ORDER BY EMPLOYEES
    height: 1
    width: 24
    row: 27
    col: 0
  - title: Purchase Orders placed by Employees
    name: Purchase Orders placed by Employees
    height: 1
    width: 24
    row: 28
    col: 0
    model: AW_Cycles_Manufacture_Metrics
    explore: PurchaseOrderHeader
    type: table
    fields: [Contact.Name,PurchaseOrderHeader.OrderDate,Product.ProductName]
    sorts: [Contact.Name]
    listen:
      OrderDate: PurchaseOrderHeader.OrderDate
  filters:
  - name: OrderDate
    title: OrderDate
    type: field_filter
    default_value: '<1/1/2002 12:00:00 AM'
    allow_multiple_values: true
    required: false
    model: AW_Cycles_Manufacture_Metrics
    explore: PurchaseOrderHeader
    field: PurchaseOrderHeader.OrderDate
