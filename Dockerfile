FROM python:3.7

COPY ./app /app/app

copy ./requirements.txt/ /app

WORKDIR /app

RUN pip3 install -r requirements.txt

EXPOSE -p

CMD ["uvicorn", "app.main:app", "--host=0.0.0.0","--reload"]