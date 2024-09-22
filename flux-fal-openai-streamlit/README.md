# Flux + Fal + OpenAI + Streamlit

The code to accompany the [Unlocking Image Creation with Flux and GPT-4o](https://www.russ.cloud/2024/08/11/unlocking-image-creation-with-flux-and-gpt-4o/) blog post.

## The Idea
Use Streamlit to build an interface to interact with the fal.ai API and the Flux family of models. It should also use GPT4o to help tune the prompt to give us the best shot at getting a good result from Flux.

## API
- Fal.ai API key is required to generate images. Get your own on [Fal.ai](https://fal.ai/dashboard/keys) website.
- Open AI API key is required to use GPT4o to help tune the prompt. Get your own on [OpenAI Platform](https://platform.openai.com/api-keys) website.

Open AI key is not required to generate images.

Use your API keys as the environment in the [deploy.yaml](deploy.yaml) file.

## Running the application
Deploy on [Akash Console](https://console.akash.network/) with the configured [deploy.yaml](deploy.yaml) file.

## Documentation
[Source code on GitHub](https://github.com/russmckendrick/flux-fal-openai-streamlit)
