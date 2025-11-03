# local-ai-lab-setup  

Đây là dự án thiết lập một phòng thí nghiệm AI cục bộ trên MacBook Pro M3 Max, sử dụng Ollama và LM Studio để chạy các mô hình mã nguồn mở như Qwen/GLM. Kho lưu trữ này bao gồm:  

- `setup.sh`: script cài đặt sử dụng Homebrew để cài Ollama và LM Studio, khởi động dịch vụ Ollama, cài thư viện Python và tải mô hình Qwen.  
- `one_click_install.command`: tiện ích dành cho macOS cho phép nhấn đúp để chạy `setup.sh`.  
- `run_model.py`: ví dụ Python đơn giản gọi thư viện `ollama` để trò chuyện với mô hình Qwen (thay đổi mô hình tùy theo nhu cầu). Comment trong mã được viết bằng tiếng Nhật như yêu cầu.  
- Tập README này cung cấp hướng dẫn sử dụng.  

## Yêu cầu hệ thống  

- macOS trên máy Apple Silicon (M3) với quyền cài đặt phần mềm.  
- Đã cài đặt Homebrew (script sẽ tự cài nếu chưa có).  

## Hướng dẫn cài đặt  

Bạn có thể cài đặt môi trường bằng một trong hai cách:  

1. **Chạy script bằng Terminal**  
   Mở Terminal và chạy các lệnh:  
   ```  
   cd đường/dẫn/tới/kho-lưu-trữ  
   bash setup.sh  
   ```  
   Script sẽ tự kiểm tra và cài đặt Homebrew nếu cần thiết, sau đó cài `ollama` và `lm-studio` thông qua Homebrew. Sau khi cài xong, script khởi động dịch vụ Ollama bằng `brew services start ollama`, cài thư viện Python cần thiết và tải một mô hình Qwen nhỏ bằng lệnh `ollama pull qwen`.  

2. **Cài đặt một lần bằng double‑click**  
   Trên Finder, nhấn đúp vào `one_click_install.command`. Tập lệnh này sẽ làm cho `setup.sh` có thể thực thi và chạy nó, vì vậy bạn không cần dùng Terminal.  

## Sử dụng script Python  

Sau khi cài đặt xong, bạn có thể chạy ví dụ Python bằng lệnh:  

```
python3 run_model.py
```  

Script này sử dụng thư viện `ollama` để gửi một đoạn hội thoại đơn giản đến mô hình Qwen và in ra câu trả lời. Bạn có thể sửa phần `messages` trong script để thử các câu lệnh khác.  

## Ghi chú sử dụng LM Studio  

- LM Studio là một giao diện đồ họa giúp bạn tải và chạy nhiều mô hình LLM. Sau khi cài đặt, bạn có thể mở LM Studio từ thư mục Applications và tải các mô hình Qwen hoặc GLM tùy thích.  
- Ollama chạy như một dịch vụ tại địa chỉ `http://localhost:11434` sau khi được khởi động. Bạn có thể sử dụng API của Ollama hoặc thư viện Python để tương tác với các mô hình.  

## Starter coding task  

Ví dụ `run_model.py` là điểm khởi đầu để bạn làm việc với mô hình ngôn ngữ cục bộ. Bạn có thể phát triển thêm các ứng dụng như chatbot nội bộ, xử lý văn bản hay nghiên cứu mô hình bằng cách thay đổi mô hình (`model='qwen'` hoặc `model='glm'`) và nội dung hội thoại.
