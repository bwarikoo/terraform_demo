resource "local_file" "samplefile" {
	filename = "/home/ubuntu/terraform_handson/tf-local/sample_file.txt"
	content = "This is my first local file created via Terraform"
}

resource "random_string" "randstr" {
	length = 5
}

output randst {
	value = random_string.randstr.result
}
