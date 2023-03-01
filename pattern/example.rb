# frozen_string_literal: true
require_relative 'simple_youtube_channel'
require_relative 'simple_youtube_subscriber'

# subject
simple_subject = SimpleYoutubeChannel.new
simple_observer = SimpleYoutubeSubscriber.new(simple_subject)
simple_subject.set_value(80)
simple_subject.remove_observer(simple_observer)

