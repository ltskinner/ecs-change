
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	pylint --disable=R,C,W1203,W0702 app.py

test:
	python -m pytest -vv --cov=app test_app.py


docker-build:
	docker build -t ecs-change:latest .

docker-run-it-rm:
	docker run -it -p 80:8080 --rm ecs-change
