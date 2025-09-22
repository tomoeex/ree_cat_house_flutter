// LIST OF Enums = รายการของ Enum
// They cannot be created inside a class. = ไม่สามารถสร้างได้ภายในคลาส

enum TextSizes { small, medium, large } // ขนาดข้อความ { เล็ก, กลาง, ใหญ่ }

enum OrderStatus { processing, shipped, delivered } // สถานะคำสั่งซื้อ { กำลังดำเนินการ, จัดส่งแล้ว, ส่งมอบแล้ว }

enum PaymentMethods { paypal, googlePay, applePay, visa, masterCard, creditCard, paystack, razorPay, paytm } 
// วิธีการชำระเงิน { PayPal, Google Pay, Apple Pay, Visa, MasterCard, บัตรเครดิต, Paystack, RazorPay, Paytm }