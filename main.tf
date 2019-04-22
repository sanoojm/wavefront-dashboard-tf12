terraform {
  required_version = ">= 0.12.0"
}

provider "wavefront" {
  address = "try.wavefront.com"
  token   = "f98ec612-d9a0-48a5-bdab-99417dd547d6"
}

resource "wavefront_dashboard" "test_dashboard" {
  name        = "Terraform 12 Dashboard"
  description = "Testing Terraform 12 Dashboard"
  url         = "tf12-test"
  #[SECTION STARTS]
  dynamic "section" {
    for_each = var.sections
    content {
      name = section.key
      #[ROW STARTS]
      dynamic "row" {
        iterator = rows
        for_each = section.value
        content {
          #[CHART STARTS]
          chart {
            name        = rows.value.name
            description = rows.value.description
            units       = "unit"
            source {
              name  = rows.value.source
              query = rows.value.query
            }
            chart_setting {
              type = "line"
            }
            summarization = "MEAN"
          }
          #[CHART ENDS]
        }
        #[ROW ENDS]
      }
      #[SECTION ENDS]
    }
  }

  tags = [
    "terraform",
    "test"
  ]
}
