FROM kong:latest

RUN yum install unzip git -y
# add some plugin or custom plugin
RUN luarocks install kong-plugin-extend-headers

ENV KONG_CUSTOM_PLUGINS=extend-headers
