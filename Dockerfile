FROM ruby

RUN useradd -s /bin/bash app

RUN mkdir /app && \
    mkdir /app/code

COPY ./ /app/code
RUN chown app: /app/code -R

WORKDIR /app/code
USER app
CMD ["ruby", "prxy.rb"]
