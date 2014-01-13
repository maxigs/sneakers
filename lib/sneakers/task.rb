module Sneakers
  module Task

    attr_reader :status, :error_message, :logger

    def initialize(args = {})
      @hdr    = args[:hdr]
      @props  = args[:props]
      @msg    = args[:msg]
      @logger = args[:logger]

      @status = :new
    end

    def ack!
      @status = :ack
    end

    def requeue!
      @status = :requeue
    end

    def reject!
      @status = :reject
    end

    def timeout!
      @status = :timeout
    end

    def error!(error_message)
      @status = :error
      @error_message = error_message
    end

  end
end
