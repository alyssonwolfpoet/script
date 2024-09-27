#!/bin/bash

docker system prune --all --force --volumes
#docker run -d --gpus=all -v ollama:/root/.ollama -p 11434:11434 --name ollama ollama/ollama
docker exec -it ollama ollama pull nomic-embed-text
docker exec -it ollama ollama pull llama3
docker exec -it ollama ollama pull llama3.1
docker exec -it ollama ollama pull falcon2
docker exec -it ollama ollama pull gemma2
docker exec -it ollama ollama pull llama3.1:8b-instruct-fp16
docker exec -it ollama ollama pull ollama pull llama3.1:70b
docker exec -it ollama ollama pull ollama pull llama3.1:405b

