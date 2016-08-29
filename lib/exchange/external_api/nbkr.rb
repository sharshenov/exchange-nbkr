module Exchange
  module ExternalAPI

    class Nbkr < XML

      API_URL = "http://nbkr.kg/XML/daily.xml"

      CURRENCIES = %I(kgs usd eur kzt rub)

      def update opts={}
        time = helper.assure_time(opts[:at], default: :now)

        Call.new(API_URL, at: time, format: :xml) do |result|
          @base = :kgs

          @rates = result.search('Currency').map do |c|
            [
              c.attr("ISOCode").downcase.to_sym,
              (1 / BigDecimal.new(c.at('Value').text.sub(',', '.')))
            ]
          end.to_h.merge({ kgs: 1 })

          @timestamp = Date.today.to_time.to_i
        end
      end

    end
  end
end
