FROM python:3.8-alpine

ENV PYTHONUNBUFFEREED 1

RUN mkdir -p app 

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

EXPOSE 5000

CMD [ "python3", "-m" , "flask", "run", "--host=http://flask-introduction-git-madjelly8504-dev.apps.sandbox.x8i5.p1.openshiftapps.com/"]
