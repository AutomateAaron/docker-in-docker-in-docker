FROM docker:dind

# Because I'm not brave enough to write vanilla /bin/sh
RUN apk add bash

# Copy in entrypoint-wrapper.sh
COPY entrypoint-wrapper.sh /usr/local/bin/

ENTRYPOINT [ "entrypoint-wrapper.sh" ]