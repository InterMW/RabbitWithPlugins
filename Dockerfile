FROM rabbitmq:4.2.3-management
RUN apt update -y
RUN apt-get install -y erlang-eldap
RUN rabbitmq-plugins enable rabbitmq_auth_backend_ldap 
COPY advanced.config /etc/rabbitmq/advanced.config
COPY rabbitmq.config /etc/rabbitmq/conf.d/11-conf.conf
