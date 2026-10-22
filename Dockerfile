# استخدام خادم Nginx الخفيف والكفء لتشغيل صفحات الويب الثابتة
FROM nginx:alpine

# نسخ ملف المتجر الرئيسي للزبائن إلى مسار العرض في الخادم
COPY index.html /usr/share/nginx/html/index.html

# نسخ ملف لوحة التحكم المحمية
COPY my-secret-admin.html /usr/share/nginx/html/my-secret-admin.html

# إذا قمت برفع ملف اللوغو المحلي (logo.jpg) قم بإلغاء التفعيل عن السطر التالي:
# COPY logo.jpg /usr/share/nginx/html/logo.jpg

# فتح المنفذ 80 ليعمل الموقع بشكل طبيعي
EXPOSE 80
