# GĐ 1: BUILD (Dùng Maven đóng gói ứng dụng)
FROM maven:3.9.11-eclipse-temurin-21 AS builder
WORKDIR /app
COPY . .
# Chạy script build file .jar, bỏ qua unit test cho nhanh
RUN mvn package -DskipTests

# GĐ 2: RUN (Chỉ lấy file chạy cuối cùng cho nhẹ)
FROM eclipse-temurin:21-jre-jammy
WORKDIR /app
# Copy file .jar từ giai đoạn builder sang
COPY --from=builder /app/target/*.jar app.jar
EXPOSE 8080
# Lệnh khởi chạy ứng dụng
ENTRYPOINT ["java", "-jar", "app.jar"]