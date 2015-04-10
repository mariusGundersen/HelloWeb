FROM microsoft/aspnet:nightly

COPY . /app
WORKDIR /app
RUN ["dnvm", "restore"]

EXPOSE 5004
ENTRYPOINT ["k", "kestrel"]