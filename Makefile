.PHONY: run-sqlfluff-lint
run-sqlfluff-lint:
	pip install sqlfluff
	pip install git+https://github.com/hiroto3432/sqlfluff-plugin-custom.git
	sqlfluff lint ./sql
