FROM httpd:2.4.23-alpine

RUN apk add --update \
            make \
            python \
            py-pip \
            git \
        && pip install pyyaml sphinx \
        && cd / \
        && git clone https://github.com/ansible/ansible --recursive \
        && cd /ansible \
        && make webdocs \
        && rm -rf /usr/local/apache2/htdocs \
        && ln -s /ansible/docsite/htmlout /usr/local/apache2/htdocs

