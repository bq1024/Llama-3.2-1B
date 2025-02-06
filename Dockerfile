FROM  vllm/vllm-openai:latest
ENV HUGGING_FACE_HUB_TOKEN=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
EXPOSE 8000
CMD ["--host", "0.0.0.0",\
     "--model", "Qwen/Qwen2.5-0.5B", \
     "--dtype", "bfloat16", \
     "--enforce-eager", \
     "--gpu-memory-utilization", "0.95", \
     "--max-model-len", "8128"]
