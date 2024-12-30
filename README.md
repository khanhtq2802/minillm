**Bài tập lớn môn LLMs**

**Chủ đề: Knowledge Distillation of Large Language Models**

Thành viên nhóm:

- Lý Văn Hiếu

- Ngô Quốc Hiếu

- Trần Quốc Khánh

Paper tham khảo chính: [MiniLLM: Knowledge Distillation of Large Language Models](https://arxiv.org/abs/2306.08543)

**Các kịch bản thử nghiệm**

- SFT: Supervised fine-tuning, huấn luyện mô hình student bình thường, không sử dụng Knowledge Distillation

- SeqKD: lấy dữ liệu được sinh từ mô hình teacher để huấn luyện student

- KD: huấn luyện mô hình student bằng phương pháp Knowledge Distillation phổ biến (sử dụng hàm objective forward KLD)

- MiniLLM: huấn luyện mô hình bằng phương pháp đề xuất trong bài báo (sử dụng hàm object reverse KLD)

**Dataset**

- train dataset: dolly/train

- validation dataset: dolly/validation

- test datasets: dolly/test, self-inst, vicuna, sinst, uinst

**Các mô hình được sử dụng**

Mô hình teacher: GPT-xlarge (1.5B tham số) SFT trên tập dữ liệu Dolly

Mô hình student: GPT-base (120M tham số), GPT-medium (340M tham số)

