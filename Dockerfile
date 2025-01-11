FROM rabbitmq:3.9.12-management
RUN rabbitmq-plugins enable rabbitmq_mqtt
