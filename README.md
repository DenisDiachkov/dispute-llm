# LLM Instruct Microservice

## Installation

### Install docker
https://docs.docker.com/engine/install/ubuntu/

### Clone repo
```
git clone https://github.com/DenisDiachkov/dispute-llm
cd dispute-llm
```

### Build 
docker build -f dockerfile.prod -t dispute_llm .

### Run
docker compose up

### Inference
#### GUI
Access GUI by 127.0.0.1:8000
![image](docs/gui.png)
#### HTTP Request
##### Endpoint
GET 127.0.0.1:8000/generate
##### Parameters
prompt: str
system_prompt: str
reply_prefix: str
image: str  - base64 format
max_new_tokens: int
temperature: float
top_p: float
repetition_penalty: float
frequency_penalty: float
presence_penalty: float
##### Response
The server will respond with a JSON object containing:

status: str - "error" or "finished"
content: str - LLMs response

#### WebSocket
##### Send parameters
prompt: str
system_prompt: str
reply_prefix: str
image: str  - base64 format
max_new_tokens: int
temperature: float
top_p: float
repetition_penalty: float
frequency_penalty: float
presence_penalty: float
##### Receive JSON
The server will send a JSON object containing:

status: str - "error" or "finished"
content: str - LLMs streaming response
**other_stuff, depending on the status. See more here:  [asyncio_queue_manager](https://github.com/AGISwarm/asyncio-queue-manager/blob/dev/src/AGISwarm/asyncio_queue_manager/core.py)
