module CoreExtensions
  module String
    DOWNCASE_WORDS = %w[a an and as at but by for in nor of on or the to up].freeze
    UPCASE_WORDS = %w[api html id sms].freeze

    def human_titleize
      humanize.capitalize.split(' ').map do |word|
        next word.downcase if DOWNCASE_WORDS.include?(word)

        next word.upcase if UPCASE_WORDS.include?(word.downcase)

        word.capitalize
      end.join(' ')
    end

    def human_downcase
      humanize.downcase.split(' ').map do |word|
        next word.upcase if UPCASE_WORDS.include?(word.downcase)

        word
      end.join(' ')
    end
  end
end

String.include CoreExtensions::String
