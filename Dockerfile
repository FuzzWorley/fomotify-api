FROM udacity/ruby:2.2.4
RUN apk-install make gcc musl-dev
RUN bundle install --jobs 20 --retry 5 --without development test
ADD . /app
ENV RACK_ENV production
CMD ["ruby", "fomotograph.rb", "-p", "4567"]
