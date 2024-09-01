using Genie, Serialization, ScikitLearn
using Genie.Renderer.Json, Genie.Requests
using HTTP

model = deserialize("lr_anemia.jls")

Genie.config.run_as_server = true

# red, green, blue, hb
route("/predict", method = POST) do
    data = postpayload()
    red = parse(Float16, data[:red])
    green = parse(Float16, data[:green])
    blue = parse(Float16, data[:blue])
    hb = parse(Float16, data[:hb])

    result = predict(model, [red green blue hb])
    (:prediction => result[1] == 1 ? "ANEMIA" : "NO ANEMIA") |> json
end

# Start the app!
up(5000)