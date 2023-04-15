FROM python:3.9

WORKDIR /app

COPY Libraries /app/Libraries
COPY Resources /app/Resources
COPY Tests /app/Tests
COPY Results /app/Results

RUN pip install --upgrade pip && \
    pip install robotframework && \
    pip install robotframework-robocop

ENV PLATFORM_ID=1

CMD robot -d Results -v id:${PLATFORM_ID} Tests/string.robot