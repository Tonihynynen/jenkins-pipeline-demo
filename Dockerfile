FROM python:3.9

WORKDIR /app

COPY Libraries /app/Libraries
COPY Resources /app/Resources
COPY Tests /app/Tests

RUN pip install --upgrade pip && \
    pip install robotframework && \
    pip install robotframework-robocop

ARG id
ENV env_variable_name=$id
#RUN sh "python3 -m robot -d Results -v id:$value Tests/example.robot"
#CMD ["robot", "-d", "Results", "Tests"]
CMD ["robot", "-d", "Results", "--variable", "id:${env_variable_name}", "Tests"]