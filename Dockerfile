FROM microsoft/aspnet:nightly

COPY . /app
WORKDIR /app
RUN ["kpm", "restore"]

EXPOSE 5004
ENTRYPOINT ["k", "kestrel"]