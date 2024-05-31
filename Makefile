docs:
	# install via
	# go install github.com/terraform-docs/terraform-docs@v0.17.0
	terraform-docs markdown table --output-file README.md --output-mode inject modules/apex-aws-account/
	terraform-docs markdown table --output-file README.md --output-mode inject examples/apex-aws-account/
	
	