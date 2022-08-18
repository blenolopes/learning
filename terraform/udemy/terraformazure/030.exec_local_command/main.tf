resource "null_resource" "listDirectory" {

  provisioner "local-exec" {
    command     = "tree /home/blenolopes/Git/learning/terraform/ > output.txt"
    # interpreter = ["/usr/bin/bash"]
  }
}