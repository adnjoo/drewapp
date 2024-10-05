require "openai"

class OpenaiService
  def initialize
    @client = OpenAI::Client.new(api_key: Rails.application.credentials.dig(:openai, :api_key))
  end

  def chat(prompt, model = "gpt-4o")
    response = @client.chat(
      parameters: {
        model: model,
        messages: [ { role: "user", content: prompt } ],
        max_tokens: 150
      }
    )
    response.dig("choices", 0, "message", "content").strip
  rescue StandardError => e
    "An error occurred: #{e.message}"
  end
end
