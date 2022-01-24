install:
	pip install --upgrade pip
	pip install -r requirements.txt

run:
	uvicorn app:app --app-dir src