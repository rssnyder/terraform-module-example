resource "null_resource" "previous" {}

resource "time_sleep" "wait_30_seconds" {
  depends_on = [null_resource.previous]

  create_duration = "${var.wait_duration_seconds}s"
}

resource "null_resource" "next" {
  depends_on = [time_sleep.wait_30_seconds]
}
