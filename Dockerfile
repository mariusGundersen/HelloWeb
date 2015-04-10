FROM microsoft/aspnet:nightly

COPY . /app
WORKDIR /app
RUN bash -c "source $DNX_USER_HOME/dnvm/dnvm.sh && dnu restore"

EXPOSE 5004
ENTRYPOINT ["dnx", "kestrel"]