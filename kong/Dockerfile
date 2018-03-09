FROM kong:latest

RUN yum install unzip git -y
# add some plugin or custom plugin
RUN luarocks install kong-plugin-extend-headers
RUN luarocks install kong-plugin-key-secret

COPY plugins /opt/plugins
RUN cd /opt/plugins && luarocks make

ENV KONG_CUSTOM_PLUGINS="extend-headers, key-secret, helloworld"
