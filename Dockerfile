FROM python:3.7.2-alpine3.9

COPY requirements.txt /requirements.txt

RUN /usr/local/bin/pip install --no-cache-dir --requirement /requirements.txt

RUN mkdir /pelican-site
WORKDIR /pelican-site

ENTRYPOINT ["/usr/local/bin/pelican"]
CMD ["content"]

LABEL maintainer=william@subtlecoolness.com
