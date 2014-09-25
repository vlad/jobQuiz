#useful if rendering a quiz using client-side javascript
json.extract! @quiz, :id
json.question_count @quiz.question_count
json.seconds_remaining @quiz.seconds_remaining
json.next_question_number @quiz.next_question_number
json.blank_responses @quiz.blank_responses do |response|
  json.response_id response.id
  json.question response.question.text

  json.answers response.question.answers do |answer|
    json.answer_id answer.id
    json.image_url answer.image_url
  end
end