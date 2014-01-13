module Sneakers
  module Task

    def initialize(hdr, props, msg)
      @hdr = hdr
      @props = props
      @msg = msg

      @status = :new
    end

    def ack!
      @status = :ack
    end

    def status
      @status
    end

  end
end
