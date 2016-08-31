module Exchange
  module ExternalAPI

    class ValutaKg < XML

      API_URL = "http://m.valuta.kg/api/"

      CURRENCIES = %I(kgs usd eur rub kzt uzs cny gbp)

      def update opts={}
        time = helper.assure_time(opts[:at], default: :now)

        Call.new(API_URL, at: time, format: :xml) do |result|
          @base = :kgs

          @rates = result.search('currency').map do |c|
            [
              c.at("title_alias").text.downcase.to_sym,
              (1 / BigDecimal.new(c.at('buy_rate').text.sub(',', '.')))
            ]
          end.to_h.merge({ kgs: 1 })

          @timestamp = Date.today.to_time.to_i
        end
      end

    end
  end
end
