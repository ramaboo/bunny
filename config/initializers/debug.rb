def d(*args)
  puts ('-' * 80).white # rubocop:disable Lint/ParenthesesAsGroupedExpression

  nice = args.map do |arg|
    "#{arg.class.name.to_s.white} #{arg.ai}"
  end

  puts nice.join("\n#{'-' * 80}\n".gray)
  puts ('-' * 80).white # rubocop:disable Lint/ParenthesesAsGroupedExpression
end
