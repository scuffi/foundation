setup-env:
	@echo "Setting up environment..."
	@echo "Installing requirements..."
	@pip install -r requirements.txt
	@echo "Installing pre-commit hooks..."
	pre-commit install

lint:
	@echo "Linting..."
	@pre-commit run --all-files

test:
	@echo "Testing..."
	@pytest

format:
	@echo "Formatting..."
	@pre-commit run --all-files

compile-requirements:
	@echo "Compiling requirements..."
	@pip freeze > requirements.in
	@pip-compile --output-file=requirements.txt requirements.in