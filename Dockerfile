FROM mongoose/ruby2.1
MAINTAINER Ryan Bird <Ryan.Bird@emc.com>

# Copy Gems
COPY gem_dependencies /gems/
COPY phred*.gem /phred/

# Install Gems
RUN gem install --local /gems/*
RUN gem install --local /phred/phred*.gem

# Cleanup Gems
RUN rm -r /gems
RUN rm -r /phred

CMD [ "gem", "list", "phred" ]