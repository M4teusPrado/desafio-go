# Use a imagem oficial do Golang como base
FROM golang:latest

# Configure o diretório de trabalho
WORKDIR /app

# Copie o código fonte para o diretório de trabalho
COPY . .

# Compile o código fonte
RUN go build -o hello .

# Comando para executar o aplicativo quando o contêiner for iniciado
CMD ["./hello"]