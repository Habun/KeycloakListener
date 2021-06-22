FROM jboss/keycloak:12.0.4
COPY ./target/keycloak-to-rabbit-1.0.jar /opt/jboss/keycloak/standalone/deployments/

ENTRYPOINT ["/opt/jboss/tools/docker-entrypoint.sh"]

CMD ["-b", "0.0.0.0"]