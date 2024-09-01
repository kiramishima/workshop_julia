FROM julia:alpine

WORKDIR /app

COPY app.jl /app
COPY lr_anemia.jls /app

RUN julia -e 'using Pkg; Pkg.add("Genie"); Pkg.add("ScikitLearn"); Pkg.add("Serialization");'

EXPOSE 5000

ENTRYPOINT [ "julia", "app.jl" ]