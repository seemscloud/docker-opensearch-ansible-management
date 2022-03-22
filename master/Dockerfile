FROM ubuntu:focal

ARG APP_USER="master"
ARG APP_GROUP="${APP_USER}"
ARG APP_UID="1000"
ARG APP_GID="${APP_UID}"
ARG APP_DIR="/app"

ARG DEBIAN_FRONTEND=noninteractive

SHELL ["/bin/bash", "-c"]

RUN apt-get update && \
    apt-get install python3-pip openssh-client sshpass -y

RUN groupadd -g "${APP_GID}" "${APP_GROUP}" && \
    useradd -g "${APP_GID}" -u "${APP_UID}" -s /bin/bash -m -d "${APP_DIR}" "${APP_USER}"

RUN pip3 install ansible

WORKDIR "${APP_DIR}"

COPY --chown="${APP_USER}":"${APP_GROUP}" ./entrypoint.sh .
COPY --chown="${APP_USER}":"${APP_GROUP}" ./files/ .

USER "${APP_USER}"

ENTRYPOINT ["/bin/bash", "./entrypoint.sh"]

CMD ["tail", "-f", "/dev/null"]