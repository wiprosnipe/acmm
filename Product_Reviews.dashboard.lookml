- dashboard: Product Reviews
  title: Product Reviews
  layout: newspaper
  tile_size: 150
  elements:
  - name: Product Reviews
    type: text
    title_text: Product Reviews
    height: 1
    width: 24
    row: 0
    col: 0
  - title: Product Reviews/Ratings
    name: Product Reviews/Ratings
    height: 8
    width: 24
    row: 1
    col: 0
    model: AW_Cycles_Manufacture_Metrics
    explore: Product
    type: table
    fields: [Product.ProductName,ProductReview.PrductReviewer,ProductReview.ReviewerEmail,ProductReview.ReviewDate,ProductReview.Rating,ProductReview.Comments]
    sorts: [Product.ProductName]
