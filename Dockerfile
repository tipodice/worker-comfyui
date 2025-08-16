# start from a clean base image (replace <version> with the desired release)
FROM runpod/worker-comfyui:5.1.0-base

# install custom nodes using comfy-cli
RUN comfy-node-install ComfyLiterals ComfyUI-GGUF ComfyUI-Manager ComfyUI-to-Python-Extension RES4LYF comfyui-easy-use rgthree-comfy was-node-suite-comfyui 

wget -P comfyui/models/unet https://huggingface.co/QuantStack/Wan2.2-T2V-A14B-GGUF/resolve/main/LowNoise/Wan2.2-T2V-A14B-LowNoise-Q6_K.gguf &&

wget -P comfyui/models/unet https://huggingface.co/QuantStack/Wan2.2-T2V-A14B-GGUF/resolve/main/HighNoise/Wan2.2-T2V-A14B-HighNoise-Q6_K.gguf &&

wget -P comfyui/models/loras https://huggingface.co/Kijai/WanVideo_comfy/resolve/main/Wan21_T2V_14B_lightx2v_cfg_step_distill_lora_rank32.safetensors &&

wget -P comfyui/models/clip https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/text_encoders/umt5_xxl_fp8_e4m3fn_scaled.safetensors && 

wget -P comfyui/models/vae https://huggingface.co/Comfy-Org/Wan_2.1_ComfyUI_repackaged/resolve/main/split_files/vae/wan_2.1_vae.safetensors &&

wget -P comfyui/models/loras "https://civitai.com/api/download/models/2075971?type=Model&format=SafeTensor" --content-disposition &&

wget -P comfyui/models/loras "https://civitai.com/api/download/models/2075810?type=Model&format=SafeTensor" --content-disposition
