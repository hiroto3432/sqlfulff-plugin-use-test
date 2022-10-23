.PHONY: run-sqlfluff-lint
run-sqlfluff-lint:
	pip install sqlfluff
	sqlfluff lint ./sql
