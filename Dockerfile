FROM python:3.9

WORKDIR /app

COPY Libraries /app/Libraries
COPY Resources /app/Resources
COPY Tests /app/Tests
COPY Results /app/Results

RUN pip install --upgrade pip && \
    pip install robotframework && \
    pip install robotframework-robocop

ENV ALUSTA=1

#RUN sh "python3 -m robot -d Results -v id:$value Tests/example.robot"
#CMD ["robot", "-d", "Results", "Tests"]
#CMD ["robot", "-d", "Results", "--variable", "id:${vari}", "Tests"]
CMD robot -d Results -v id:${ALUSTA} Tests