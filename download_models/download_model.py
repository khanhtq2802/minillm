import sys
import os
from transformers import AutoModel, AutoTokenizer

def download_model(name, save_path):
    try:
        # Create the directory if it doesn't exist
        os.makedirs(save_path, exist_ok=True)
        
        # Download and save the model
        print(f"Downloading model: {name}...")
        model = AutoModel.from_pretrained(name)
        tokenizer = AutoTokenizer.from_pretrained(name)

        print(f"Saving model to {save_path}...")
        model.save_pretrained(save_path)
        tokenizer.save_pretrained(save_path)

        print(f"Model {name} has been saved to {save_path}")
    except Exception as e:
        print(f"Error downloading or saving the model: {e}")

if __name__ == "__main__":
    if len(sys.argv) != 3:
        print("Usage: python download_model.py <name> <save_path>")
        sys.exit(1)

    name = sys.argv[1]
    save_path = sys.argv[2]

    download_model(name, save_path)