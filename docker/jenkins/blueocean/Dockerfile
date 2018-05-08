from jenkinsci/blueocean:1.5.0

# RUN /usr/local/bin/install-plugins.sh dashboard-view cloudbees-folder antisamy-markup-formatter build-name-setter build-timeout config-file-provider credentials-binding embeddable-build-status rebuild ssh-agent throttle-concurrents timestamper ws-cleanup ant gradle msbuild nodejs checkstyle cobertura warnings xunit workflow-aggregator github-organization-folder pipeline-stage-view build-pipeline-plugin conditional-buildstep jenkins-multijob-plugin parameterized-trigger copyartifact repo matrix-project ssh-slaves windows-slaves matrix-auth pam-auth ldap role-strategy active-directory email-ext emailext-template mailer publish-over-ssh ssh bitbucket github gitlab-plugin subversion job-dsl authorize-project htmlpublisher greenballs git git-parameter junit sonar mask-passwords pipeline-utility-steps docker-workflow blueocean

RUN /usr/local/bin/install-plugins.sh job-dsl pipeline-utility-steps greenballs authorize-project timestamper rebuild build-name-setter build-timeout embeddable-build-status ws-cleanup git-parameter sonar copyartifact workflow-cps:2.53

USER root
# Add Maven
RUN apk -U add maven
# Add docker
RUN apk -U add docker
# Add kubectrl
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.9.0/bin/linux/amd64/kubectl
RUN chmod +x ./kubectl
RUN mv ./kubectl /usr/local/bin/kubectl
USER jenkins
