from transformers.models.clip.configuration_clip import CLIPVisionConfig
from mm_interleaved.models.encoders.vit_adapter.vit_adapter_hf import CLIPVisionTransformerAdapter

if __name__ == "__main__":
    clip_path = "/data/jdsu/ckpts/models/clip-vit-large-patch14"
    config = CLIPVisionConfig.from_pretrained(clip_path)
    adapter = CLIPVisionTransformerAdapter(config)
    print(adapter)
    