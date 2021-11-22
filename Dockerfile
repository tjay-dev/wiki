FROM squidfunk/mkdocs-material:7.3.6

RUN apk update && apk upgrade

COPY requirements.txt /docs/requirements.txt
RUN pip install -U -r /docs/requirements.txt
