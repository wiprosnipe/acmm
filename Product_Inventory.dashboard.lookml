- dashboard: Product Inventory
  title: Product Inventory
  layout: newspaper
  tile_size: 150
  elements:
  - name: Product Inventory Management
    type: text
    title_text: Product Inventory Management
    height: 1
    width: 24
    row: 0
    col: 0
  - title: Minimum Inventory Quantity
    name: Minimum Inventory Quantity
    height: 5
    width: 24
    row: 1
    col: 0
    model: AW_Cycles_Manufacture_Metrics
    explore: Product
    type: looker_column
    fields: [Product.ProductName,Product.SafetyStockLevel]
    sorts: [Product.ProductName]
    series_colors: 
      Product.SafetyStockLevel: "#33cbc2"
    listen:
      ProductFinished: Product.ProductFinished
      Purchased_Manufactured: Product.Purchased_Manufactured
      ProductColor: Product.ProductColor
  - title: Reorder Quantity of Products
    name: Reorder Quantity of Products
    height: 12
    width: 12
    row: 6
    col: 0
    model: AW_Cycles_Manufacture_Metrics
    explore: Product
    type: looker_bar
    fields: [Product.ProductName,Product.ReorderPoint]
    sorts: [Product.ProductName]
    series_colors: 
      Product.ReorderPoint: "#fa7645"
    listen:
      ProductFinished: Product.ProductFinished
      Purchased_Manufactured: Product.Purchased_Manufactured
      ProductColor: Product.ProductColor
  - title: Product Manufacture Days
    name: Product Manufacture Days
    height: 12
    width: 12
    row: 6
    col: 12
    model: AW_Cycles_Manufacture_Metrics
    explore: Product
    type: looker_pie
    fields: [Product.ProductName,Product.DaysToManufacture]
    sorts: [Product.ProductName]
    series_colors: 
      Product.DaysToManufacture: "#3a6598"
    listen:
      ProductFinished: Product.ProductFinished
      Purchased_Manufactured: Product.Purchased_Manufactured
      ProductColor: Product.ProductColor
  - name: Cost/Selling Price of Products
    type: text
    title_text: Cost/Selling Price of Products
    height: 1
    width: 24
    row: 18
    col: 0
  - title: Product Category - Cost Price
    name: Product Category - Cost Price
    height: 5
    width: 13
    row: 19
    col: 0
    model: AW_Cycles_Manufacture_Metrics
    explore: Product
    type: table
    fields: [ProductCategory.ProductCategoryName,Product.StandardCost]
    sorts: [ProductCategory.ProductCategoryName]
    listen:
      ProductFinished: Product.ProductFinished
      Purchased_Manufactured: Product.Purchased_Manufactured
      ProductColor: Product.ProductColor
  - title: Product Category - Selling Price
    name: Product Category - Selling Price
    height: 5
    width: 11
    row: 19
    col: 13
    model: AW_Cycles_Manufacture_Metrics
    explore: Product
    type: looker_area
    fields: [ProductCategory.ProductCategoryName,Product.ListPrice]
    sorts: [ProductCategory.ProductCategoryName]
    series_colors: 
      Product.ListPrice: "#3a6598"
    listen:
      ProductFinished: Product.ProductFinished
      Purchased_Manufactured: Product.Purchased_Manufactured
      ProductColor: Product.ProductColor
  - title: Product Subcategory - Cost Price
    name: Product Subcategory - Cost Price
    height: 5
    width: 12
    row: 24
    col: 0
    model: AW_Cycles_Manufacture_Metrics
    explore: Product
    type: table
    fields: [ProductSubcategory.ProductSubCategoryName,Product.StandardCost]
    sorts: [ProductSubcategory.ProductSubCategoryName]
    listen:
      ProductFinished: Product.ProductFinished
      Purchased_Manufactured: Product.Purchased_Manufactured
      ProductColor: Product.ProductColor
  - title: Product Subcategory - Selling Price
    name: Product Subcategory - Selling Price
    height: 5
    width: 12
    row: 24
    col: 12
    model: AW_Cycles_Manufacture_Metrics
    explore: Product
    type: looker_area
    fields: [ProductSubcategory.ProductSubCategoryName,Product.ListPrice]
    sorts: [ProductSubcategory.ProductSubCategoryName]
    series_colors: 
      Product.ListPrice: "#3a6598"
    listen:
      ProductFinished: Product.ProductFinished
      Purchased_Manufactured: Product.Purchased_Manufactured
      ProductColor: Product.ProductColor
  - name: Product Description
    type: text
    title_text: Product Description
    height: 1
    width: 24
    row: 29
    col: 0
  - title: Product Description Table
    name: Product Description Table
    height: 5
    width: 24
    row: 30
    col: 0
    model: AW_Cycles_Manufacture_Metrics
    explore: Product
    type: table
    fields: [Product.ProductName,ProductSubcategory.ProductSubCategoryName,ProductCategory.ProductCategoryName,Product.ProductColor,Product.Purchased_Manufactured,Product.ProductFinished]
    sorts: [Product.ProductName]
    listen:
      ProductFinished: Product.ProductFinished
      Purchased_Manufactured: Product.Purchased_Manufactured
      ProductColor: Product.ProductColor
  filters:
  - name: ProductFinished
    title: ProductFinished
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: AW_Cycles_Manufacture_Metrics
    explore: Product
    field: Product.ProductFinished
  - name: Purchased_Manufactured
    title: Purchased_Manufactured
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: AW_Cycles_Manufacture_Metrics
    explore: Product
    field: Product.Purchased_Manufactured
  - name: ProductColor
    title: ProductColor
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    model: AW_Cycles_Manufacture_Metrics
    explore: Product
    field: Product.ProductColor
