# ree_cat_house

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

---
การสร้างแอปพลิเคชัน E-Commerce ด้วย Flutter ครับ โดยเพลย์ลิสต์นี้แบ่งเนื้อหาออกเป็น 5 ส่วนหลักๆ ได้แก่
#App Configuration: การตั้งค่าแอปพลิเคชัน 
1. การสร้างโปรเจกต์ใหม่และตั้งค่าโครงสร้างโฟลเดอร์แบบมืออาชีพ (Create new Project, Setup Professional Folder Structure) ซึ่งเป็นขั้นตอนแรกที่สำคัญในการวางรากฐานของแอปพลิเคชัน
2. การตั้งค่าธีมสว่างและมืด (Light & Dark Theme Setup) ที่รวมถึงการตั้งค่าปุ่ม, ช่องกรอกข้อความ, แถบแอป, ชิป และอื่นๆ เพื่อให้แอปพลิเคชันมีหน้าตาที่สวยงามและรองรับความชอบของผู้ใช้
3. การสร้าง Helper Functions, Constants และ Utility Classes ซึ่งเป็นโค้ดส่วนช่วยที่ใช้ซ้ำๆ เพื่อลดความซ้ำซ้อนและทำให้การพัฒนาแอปพลิเคชันมีประสิทธิภาพมากขึ้น
---
#Login Design: การออกแบบหน้าจอเข้าสู่ระบบ
1. Native Splash Screen: หน้าจอเริ่มต้น (splash screen) ที่จะแสดงขึ้นมาก่อนที่แอปจะโหลดเสร็จ
2. 3 Onboarding Screens: หน้าจอแนะนำแอปพลิเคชัน 3 หน้า ที่จะช่วยให้ผู้ใช้ใหม่เข้าใจคุณสมบัติหลักของแอป
3. Register Screen with Email Verification & Success Screen: หน้าจอสำหรับลงทะเบียน พร้อมระบบยืนยันอีเมลและหน้าจอแจ้งผลสำเร็จ
4. Login Screen: หน้าจอสำหรับเข้าสู่ระบบ
5. Forget Password & Reset Password: ระบบสำหรับกรณีที่ผู้ใช้ลืมรหัสผ่านและต้องการตั้งรหัสผ่านใหม่
---
#E-Store Design: การออกแบบหน้าจอร้านค้า E-Commerce
1. แถบนำทางด้านล่าง (Bottom Navigation)
2. การออกแบบแถบแอปแบบโค้งและแบบกำหนดเอง (Curved Design Challenge with Background, Custom AppBar)
3. วิดเจ็ตสำหรับค้นหาและหมวดหมู่ที่เลื่อนได้ (Search Widget & Scrolling Categories)
4. แบนเนอร์แบบสไลด์ (Banners with Sliders)
5. การออกแบบหน้าจอสินค้า (Product Design & Grid Layout)
6. การจัดหน้าจอด้วย Tab, AppBar, Search และแบรนด์แนะนำ (Tab Layout, AppBar, Search & Featured Brands)
7. เนื้อหาหมวดหมู่แบบ TabBar (TabBar Categories Content)
8. หน้าจอรายการสินค้าที่อยากได้ (Wishlist Screen)
9. หน้าจอการตั้งค่า (Settings Screen)
10. หน้าจอโปรไฟล์ผู้ใช้ (Profile Screen)
11. หน้าจอรายละเอียดสินค้า (Product Details) ทั้งในส่วนของรูปภาพและข้อความ รวมถึงรายละเอียดคุณสมบัติและตัวเลือกต่างๆ
12. ระบบให้คะแนนและรีวิว (Ratings & Reviews)
13. หน้าจอที่อยู่สำหรับจัดส่ง (Addresses)
14. หน้าจอรถเข็นสินค้า (Cart)
15. หน้าจอชำระเงิน (Checkout)
16. หน้าจอคำสั่งซื้อ (Orders Screen)
17. หน้าจอแสดงหมวดหมู่ย่อยและสินค้าที่เลื่อนได้แนวนอน (Sub-Categories with Horizontal Product Scroll)
18. หน้าจอแสดงสินค้าและแบรนด์ทั้งหมด (View All Products, View All Brands & Brand Specific Products)
---
#Login Backend: การสร้างระบบหลังบ้านสำหรับการเข้าสู่ระบบ
1. การตั้งค่า Firebase (Firebase Setup)
2. การตั้งค่าหน้าจอ Onboarding ให้แสดงเพียงครั้งเดียว โดยใช้ Local Storage
3. การลงทะเบียนผู้ใช้และการยืนยันอีเมล (Register User & Email Verification) ซึ่งใช้ระบบ Email & Password 
4. Authentication และเก็บข้อมูลไว้ใน Firestore
5. การเข้าสู่ระบบด้วยอีเมลและรหัสผ่าน (Login using Email & Password)
6. การลงชื่อเข้าใช้ด้วย Google (GOOGLE SIGN-IN)
7. การลงชื่อเข้าใช้ด้วย Facebook (FACEBOOK SIGN-IN)
8. ระบบลืมรหัสผ่านและตั้งรหัสผ่านใหม่ (Forget Password & Reset Password)
---
#E-Store Backend: การสร้างระบบหลังบ้านสำหรับร้านค้า E-Commerce
1. การดึงข้อมูลหมวดหมู่ (Fetch Categories)
2. การดึงข้อมูลแบรนด์ (Fetch Brands)
3. การดึงข้อมูลสินค้า (Fetch Products) โดยมีการระบุเทคนิคการใช้ Create Stream เพื่อลดการอ่านและเขียนข้อมูลบน Firestore
4. การเพิ่มและลบรายการสินค้าที่อยากได้ (Wishlist) ของผู้ใช้แต่ละคน
5. การเพิ่ม, แก้ไข หรือลบที่อยู่ของผู้ใช้ (User Addresses)
6. การเพิ่มสินค้าลงในรถเข็น (Add to Cart) ซึ่งสามารถทำได้จากหน้าจอแสดงสินค้า (Product Card), 
7. หน้าจอรายละเอียดสินค้าเดี่ยว (Single Product) และสินค้าที่มีหลายตัวเลือก (Variation Product)
8. การชำระเงินและสร้างคำสั่งซื้อ (Checkout & Create Orders)
---

##  ปัญหาที่เจอ

* การ **ขับรถไปหน้าร้านไม่สะดวก** (เสียเวลา, หาที่จอดลำบาก, ไม่สะดวกช่วงฝนตกหรือดึกดื่น)
* ร้านแมว/เพ็ทช็อปใกล้บ้านอาจมีสินค้าไม่ครบ ต้องไปหลายที่
* บางครั้งผู้ใช้ต้องการของใช้แมวแบบเร่งด่วน (อาหารหมด, ทรายหมด, ยา, ของเล่น) แต่ไปซื้อเองไม่ทัน

---

##  ผู้ใช้เป้าหมาย (Target Users)

* **คนเลี้ยงแมว** (Cat Owners)

  * ต้องการความสะดวกในการซื้ออาหาร, ทราย, ของใช้, ของเล่น, หรือยาสำหรับแมว
  * ต้องการเลือกหลายยี่ห้อ เปรียบเทียบราคา รีวิว ได้ในที่เดียว
  * ต้องการบริการจัดส่งถึงบ้านอย่างรวดเร็ว

---

## โฟลว์หลักของแอป (Main User Flow)

1. **เริ่มต้นใช้งาน**

   * ผู้ใช้เปิดแอป → เห็น **Splash Screen** → **Onboarding** แนะนำฟีเจอร์ → เลือกสมัครหรือล็อกอิน
   * สมัครสมาชิกผ่าน Email/Google/Facebook → ยืนยันอีเมล → เข้าสู่ระบบ

2. **เลือกสินค้า**

   * เข้า **หน้าร้านค้า (E-Store)**
   * ใช้ **Search/หมวดหมู่/แบรนด์** เพื่อหาสินค้าแมว
   * ดู **รายละเอียดสินค้า + รีวิวจากผู้ใช้**
   * เพิ่มลง **Wishlist** (อยากได้) หรือ **Cart (รถเข็น)**

3. **ทำคำสั่งซื้อ**

   * เข้า **Cart** → เลือกสินค้าที่ต้องการ → กรอก/เลือกที่อยู่จัดส่ง
   * ดำเนินการ **Checkout** → เลือกวิธีจ่ายเงิน (เช่น โอน, บัตร, เก็บปลายทาง)
   * สร้าง **Order** และรอการจัดส่ง

4. **หลังการซื้อ**

   * ผู้ใช้สามารถดู **ประวัติคำสั่งซื้อ (Orders Screen)**
   * ให้ **รีวิวสินค้า + ให้คะแนน**
   * อัปเดต **โปรไฟล์, ที่อยู่** หรือ **ตั้งค่าแอป** ได้

---

## ✨ จุดขายของแอป

* ไม่ต้องเสียเวลาเดินทาง → ซื้อออนไลน์ ส่งถึงบ้าน
* มี **หมวดสินค้าแมวครบ** (อาหาร, ทราย, ยา, ของใช้, ของเล่น, กรง/บ้านแมว ฯลฯ)
* เลือกแบรนด์ดัง + มีโปรโมชั่น
* มีรีวิว/คะแนนจากผู้ใช้แมวจริง → ช่วยตัดสินใจง่าย
* รองรับการเก็บที่อยู่หลายที่ (บ้าน/หอ/ที่ทำงาน)

---


