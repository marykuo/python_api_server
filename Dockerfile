# 使用官方的 Python 3.9 基礎映像檔
FROM python:3.9-slim

# 設定工作目錄
WORKDIR /app

# 複製 requirements.txt 並安裝依賴
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# 複製應用程式代碼
COPY app.py .

# 暴露應用程式埠
EXPOSE 8088

# 定義環境變數
ENV FLASK_APP=app.py

# 啟動應用程式
CMD ["flask", "run", "--host=0.0.0.0", "--port=8088"]
