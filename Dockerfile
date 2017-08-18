FROM ubuntu:16.04
RUN apt-get update && apt-get install ca-certificates iptables -y

ADD build/bin/linux/kube2iam /bin/kube2iam

ENTRYPOINT ["kube2iam"]
