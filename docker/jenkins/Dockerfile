from jenkins/jenkins:2.120

RUN /usr/local/bin/install-plugins.sh dashboard-view cloudbees-folder antisamy-markup-formatter build-name-setter build-timeout config-file-provider credentials-binding embeddable-build-status rebuild ssh-agent throttle-concurrents timestamper ws-cleanup ant gradle msbuild nodejs checkstyle cobertura warnings xunit workflow-aggregator github-organization-folder pipeline-stage-view build-pipeline-plugin conditional-buildstep jenkins-multijob-plugin parameterized-trigger copyartifact repo matrix-project ssh-slaves windows-slaves matrix-auth pam-auth ldap role-strategy active-directory email-ext emailext-template mailer publish-over-ssh ssh bitbucket github gitlab-plugin subversion job-dsl authorize-project htmlpublisher greenballs git git-parameter junit sonar mask-passwords pipeline-utility-steps docker-workflow blueocean

USER root
# Add Maven
RUN apt-get update && apt-get install -y maven
# Add Docker
RUN apt-get update && apt-get install -y apt-transport-https ca-certificates curl gnupg2 software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN apt-key fingerprint 0EBFCD88
RUN add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/debian $(lsb_release -cs) stable edge"
RUN apt-get update && apt-get install -y docker-ce
RUN usermod -aG docker jenkins
RUN echo "\njenkins ALL=NOPASSWD:/usr/bin/docker,/usr/local/bin/kubectl" >> /etc/sudoers
RUN systemctl enable docker
RUN service docker start
# Add kubectrl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.9.0/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl
USER jenkins
