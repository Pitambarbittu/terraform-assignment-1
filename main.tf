resource "local_file" "foo" {
  content  = "hello world "
  filename = "file3.text"

}

resource "local_file" "bar" {
  content  = "this is my second file"
  filename = var.var_filename

}

resource "local_file" "bittu" {
  content  = "for random id"
  filename = "${random_id.random-file-name.hex}.js"

}


resource "random_id" "random-file-name" {
  byte_length = 8
}

variable "var_filename" {
  type = string
  description = "Enter filename"
  default = "myfile.txt"
}



