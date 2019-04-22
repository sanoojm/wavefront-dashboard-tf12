
variable "sections" {
  type = map(list(object({
    name        = string
    description = string
    source      = string
  query = string })))


  default = {
    "Section 1" = [
      { name = "chart 1", description = "chart number 1", source = "source name", query = "ts(~http.api.extlink.simple.GET.200.count)" },
      { name = "chart 2", description = "chart number 2", source = "source name", query = "ts(~http.api.extlink.simple.GET.404.count)" }
    ],
    "Section 2" = [
      { name = "chart 1", description = "chart number 1", source = "source name", query = "ts(~http.api.extlink.simple.GET.500.count)" }
    ],
  }
}

