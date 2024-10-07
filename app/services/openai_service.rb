require "openai"

class OpenaiService
  attr_accessor :model

  def initialize(model = "gpt-4o-mini")
    @client = OpenAI::Client.new(access_token: ENV["OPENAI_KEY"])
    @model = model
  end

  def chat(prompt)
    response = @client.chat(
      parameters: {
        model: @model,
        messages: [ { role: "user", content: prompt } ],
        max_tokens: 150
      }
    )
    response.dig("choices", 0, "message", "content").strip
  rescue StandardError => e
    "An error occurred: #{e.message}"
  end
end
