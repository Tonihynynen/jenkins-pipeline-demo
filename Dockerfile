FROM python:3.9

WORKDIR /app

COPY Libraries /app/Libraries
COPY Resources /app/Resources
COPY Tests /app/Tests

RUN pip install --upgrade pip && \
    pip install robotframework && \
    pip install robotframework-robocop

CMD ["robot", "-d", "Results", "Tests"]