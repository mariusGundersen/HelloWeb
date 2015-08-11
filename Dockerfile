FROM microsoft/aspnet

COPY . /app
WORKDIR /app
RUN ["dnx", "restore"]

EXPOSE 5004
ENTRYPOINT ["dnx", "kestrel"]
