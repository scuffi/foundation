setup-env:
	@echo "Setting up environment..."
	@echo "Installing requirements..."
	@pip install -r requirements.txt
	@echo "Installing pre-commit hooks..."
	pre-commit install