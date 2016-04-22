FROM centos:6

MAINTAINER "Lee LI" "jw@leezypig.com"

ADD epel-release-6-8.noarch.rpm epel-release-6-8.noarch.rpm
RUN rpm -Uvh epel-release-6*.rpm; \
    yum -y update; \
    yum -y upgrade; \
    yum -y install ppp pptpd; \
    yum clean all

ADD ./etc/ppp/options.pptpd /etc/ppp/options.pptpd                                                                                                                                                                                       
ADD ./etc/pptpd.conf /etc/pptpd.conf                                                                                                                                                                                                     
ADD ./etc/ppp/chap-secrets /etc/ppp/chap-secrets
ADD ./run /usr/sbin/run                                                                                                                                                                                                                  
                                                                                                                                                                                                                                         
EXPOSE 47                                                                                                                                                                                                                                
EXPOSE 1723                                                                                                                                                                                                                              
                                                                                                                                                                                                                                         
ENTRYPOINT /usr/sbin/run                        
