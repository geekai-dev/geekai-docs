FROM node:22

# 安装git和npm
RUN apt-get update && apt-get install -y git

# 设置工作目录
WORKDIR /app

# 安装Mintlify CLI
RUN npm install -g mintlify

# 复制项目文件
COPY . .

# 暴露端口
EXPOSE 3000

# 设置环境变量
ENV NODE_ENV=development

# 启动命令
CMD ["mintlify", "dev"]