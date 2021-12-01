FROM squidfunk/mkdocs-material:8.0.2

RUN apk update && apk upgrade
RUN /usr/local/bin/python -m pip install --upgrade pip

COPY requirements.txt /docs/requirements.txt
RUN pip install -U -r /docs/requirements.txt

ENTRYPOINT ["ash", "-c"]
CMD ["mkdocs serve --dev-addr=0.0.0.0:8000"]
