build:
	poetry build
	pip install dist/*.tar.gz

create-dev:
	pre-commit install
	pre-commit autoupdate
	rm -rf env
	python3.10 -m venv env
	( \
		. env/bin/activate; \
		pip install -r requirements.txt; \
		poetry install; \
		deactivate; \
	)
