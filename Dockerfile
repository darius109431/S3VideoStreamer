FROM python:3

RUN mkdir /flask
WORKDIR /flask
COPY requirements.txt /flask
RUN pip install -r requirements.txt
COPY . /flask
EXPOSE 5000
CMD ["python", "./app.py"]