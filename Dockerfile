
FROM python:3

WORKDIR /usr/src/app

COPY Pipfile.lock ./
COPY Pipfile ./

RUN pip install pipenv

RUN pipenv install --system --dev

COPY manage.py ./
COPY pytest.ini ./
COPY api ./api
CMD [ "python", "./manage.py", "runserver"]
