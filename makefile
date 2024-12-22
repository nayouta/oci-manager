fmt: ## terraform fmt -recursive
	@terraform fmt -recursive

validate: fmt ## terraform validate
	@terraform validate && printf "\e[32m***** validated ******\e[m\n"

plan: validate ## terraform plan
	@terraform plan

apply: validate ## terraform apply
	@terraform apply

show: ## terraform show
	@terraform show

refresh: ## terraform refresh
	@terraform refresh
