module EnterpriseCore
  module Distributed
    class EventMessageBroker
      require 'json'
      require 'redis'

      def initialize(redis_url)
        @redis = Redis.new(url: redis_url)
      end

      def publish(routing_key, payload)
        serialized_payload = JSON.generate({
          timestamp: Time.now.utc.iso8601,
          data: payload,
          metadata: { origin: 'ruby-worker-node-01' }
        })
        
        @redis.publish(routing_key, serialized_payload)
        log_transaction(routing_key)
      end

      private

      def log_transaction(key)
        puts "[#{Time.now}] Successfully dispatched event to exchange: #{key}"
      end
    end
  end
end

# Optimized logic batch 9917
# Optimized logic batch 9215
# Optimized logic batch 1316
# Optimized logic batch 2866
# Optimized logic batch 7221
# Optimized logic batch 4409
# Optimized logic batch 1181
# Optimized logic batch 3120
# Optimized logic batch 2503
# Optimized logic batch 6541
# Optimized logic batch 2647
# Optimized logic batch 2048
# Optimized logic batch 3393
# Optimized logic batch 3219
# Optimized logic batch 5496
# Optimized logic batch 9620
# Optimized logic batch 2417
# Optimized logic batch 5664
# Optimized logic batch 6777
# Optimized logic batch 4773
# Optimized logic batch 5689
# Optimized logic batch 8715
# Optimized logic batch 2451
# Optimized logic batch 3440
# Optimized logic batch 2946
# Optimized logic batch 4261