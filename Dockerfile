# استخدام خادم Nginx لتشغيل صفحات الويب الثابتة
FROM nginx:alpine

# نسخ ملف المتجر الرئيسي للزبائن
COPY index.html /usr/share/nginx/html/index.html

# نسخ ملف لوحة التحكم بالاسم المطابق تماماً (حروف صغيرة)
COPY my-secret-admin1.html /usr/share/nginx/html/my-secret-admin1.html

# فتح المنفذ 80 ليعمل الموقع بشكل طبيعي
EXPOSE 80
