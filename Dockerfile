FROM logimethods/jenkins

USER root

RUN usermod -a -G staff,daemon jenkins

USER jenkins