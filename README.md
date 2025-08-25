# 👗 Virtual Closet Platform: A Cloud-Based, Data-Driven Solution for Sustainable Fashion

![License](https://img.shields.io/github/license/josedeleon-analytics/virtual-closet-platform)
![GitHub last commit](https://img.shields.io/github/last-commit/josedeleon-analytics/virtual-closet-platform)
![SQLite](https://img.shields.io/badge/SQL-SQLite-blue?logo=sqlite&logoColor=white)

Welcome to the GitHub repository for my final project in ITC6000: Database Management Systems at Northeastern University. This project demonstrates the end-to-end design of a relational database application built around sustainable fashion, AI recommendations, and social commerce.

---

## 📌 Project Overview

The **Virtual Closet Platform** is a mobile and web-based application that enables users to:

- Upload and organize their wardrobe
- Create and share outfits ("Looks")
- Try on clothes virtually using Augmented Reality (AR)
- Buy, sell, or swap second-hand clothing
- Receive personalized AI-powered fashion recommendations

The goal is to promote **sustainability** by extending the lifecycle of clothing through peer-to-peer exchange and digital wardrobe management.

---

## 🧑‍💻 Author

**Jose De Leon**  
College of Professional Studies  
Northeastern University  
Course: *ITC6000 – Database Management Systems*  
Instructor: *Professor Andy Chen*  
📅 March 30, 2025  

---

## 📚 Features & Technologies

| Feature                  | Technology                                |
|--------------------------|--------------------------------------------|
| Frontend (Presentation)  | HTML, CSS, JavaScript                      |
| Backend (Application)    | Node.js or Python (API Layer)              |
| Database (Data Layer)    | PostgreSQL (Relational DBMS)               |
| Hosting & Architecture   | AWS / Azure / Google Cloud (3-tier)        |
| Analytics & Reporting    | SQL queries with filtering and joins       |
| Virtual Try-On (AR)      | Google ARCore or WebAR (conceptual)        |

---

## 🧑‍🎓 Learning Outcomes

This project demonstrates proficiency in:

- Database modeling and normalization  
- SQL query design for CRUD operations and analytics  
- Entity-Relationship Diagrams (ERDs)  
- Implementing bridge tables for many-to-many relationships  
- Understanding cloud-based architecture and data privacy  

---

## 💡 SQL Highlights

Key queries implemented:

- Resale tracking per item
- Revenue summaries by seller
- Top resold clothing categories
- Versatility of clothing in different Looks
- Pricing insights based on item condition

Each query supports a real feature or metric in the app.

---

## 🔎 Example SQL Analytics Query
```bash
SELECT Users.username, SUM(Transactions.total_amount) AS total_revenue
FROM Users
JOIN User_Transactions ON Users.user_id = User_Transactions.user_id
JOIN Transactions ON User_Transactions.transaction_id = Transactions.transaction_id
WHERE User_Transactions.role = 'seller'
GROUP BY Users.username
ORDER BY total_revenue DESC
LIMIT 10;
```

---

## 📁 Repository Structure

- [`Final Project SQL script`](sql/Final%20project%20SQL%20FILE.sql): SQL scripts for schema creation, CRUD, and analytics  
- [`ER diagram`](erd/ER%20diagram.jpg): Entity-Relationship diagram  
- [`Virtual Closet Platform PDF`](presentation/Virtual-Closet-Platform.pdf): Final presentation slides  
- [`Seller Dashboard Mockup`](assets/Taylor_Seller_Dashboard_Mockup.pdf): Seller dashboard mockup  

---

## 🔐 Security & Compliance

The platform handles sensitive data, including:

- Personally Identifiable Information (PII)
- Body measurements and style preferences
- Transaction metadata

Precautions taken:

- Role-based access control  
- SQL injection prevention  
- GDPR-aligned privacy practices  

---

## 🌐 Architecture

The application is built on a cloud-based **3-tier architecture**:

- **Presentation Layer**: Web and mobile interface  
- **Application Layer**: Business logic, APIs, AI/AR modules  
- **Data Layer**: PostgreSQL deployed on cloud infrastructure  

📌 Refer to the [ER diagram](erd/ER%20diagram.jpg) for the schema overview.

---

## 🎯 Future Improvements

- Integrate machine learning for enhanced recommendations  
- Implement OAuth 2.0 and advanced user authentication  
- Expand AR try-on features  
- Add logistics modules for shipping and returns  

---

## 📑 References

- Chen, A. (2025). *ITC6000: Module 5 – Common Database Architectures*. Northeastern University.  
- Google. (n.d.). [How Augmented Reality Works](https://arvr.google.com)  
- Amazon Web Services. (n.d.). [AWS Well-Architected Framework](https://docs.aws.amazon.com/wellarchitected/latest/framework/welcome.html)  
- PostgreSQL Global Development Group. (n.d.). [PostgreSQL Documentation](https://www.postgresql.org/docs/)  

---

## 📸 Screenshots

**1) Entity–Relationship Diagram (ERD)**  
*Core database schema used by the app.*
  
![ER Diagram](erd/ER%20diagram.jpg)

**2) Seller Dashboard (Mockup)**  
*Product analytics & resale metrics concept UI.*  
[Open the PDF](assets/Taylor_Seller_Dashboard_Mockup.pdf)

---

## 👤 Contact

**Jose De Leon**  
🎓 Master’s in Analytics Candidate, Northeastern University  
📬 [Email me](mailto:j.angel2294@gmail.com)  
🔗 [LinkedIn](https://www.linkedin.com/in/jose-de-leon-analytics/)
