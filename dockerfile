FROM tomcat:9.0.98

MAINTAINER "Armel"; "armeldjongo@outlook.com"

COPY check_java.sh /usr/local/bin

RUN echo "verify if wget is isntalled" && \

if [command -v wget &> /dev/null]; then \

        echo "wget is installed"; \

else \

        apt-get update && apt-get install -y wget; \

fi

# Check if Java is installed by checking the command's existence

RUN #!/bin/bash && \

if type -p java; then\

        echo "Java is installed."\

# Get the Java version

        java_version=$(java -version 2>&1 | awk -F '"' '/version/ {print $2}') \

        echo "Java version installed: $java_version"\

else\

        echo "Java is not installed on this system."\

# install Java

     if [ $answer = y* ] || [ $answer = Y* ]; then\

        echo "Installing Java..."\

        apt update && sudo apt install default-jdk -y\

        echo "Java has been installed."\

     else\

        echo "Java installation aborted."\

     fi \

fi > /usr/local/bin/check_java.sh && chmod +x /usr/local/bin/check_java.sh && /bin/bash -c '/usr/local/bin/check_java.sh'

EXPOSE 8080

CMD [run, check_java.sh]


