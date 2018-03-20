FROM kong:latest

RUN yum install unzip git -y
# add some plugin or custom plugin
RUN luarocks install kong-plugin-rewrite

COPY plugins /opt/plugins
RUN cd /opt/plugins && luarocks make

RUN git clone https://github.com/ttyS15/kong-dynamic-upstream.git
RUN cd kong-dynamic-upstream && make install

ENV KONG_CUSTOM_PLUGINS="rewrite, helloworld, dynamic-upstream"