FROM python:3-alpine
RUN apk update
RUN apk add git
RUN git clone https://github.com/vbcrr4/TINY.git
WORKDIR /TINY
RUN pip install -r requirements.txt

CMD [ "sh", "-c", "coverage run -m unittest && coverage report -m && python -m app.suma " ]