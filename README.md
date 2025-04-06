# 👗 Virtual Closet Platform: A Cloud-Based, Data-Driven Solution for Sustainable Fashion

Welcome to the GitHub repository for my final project in ITC6000: Database Management Systems at Northeastern University. This project demonstrates the end-to-end design of a relational database application built around sustainable fashion, AI recommendations, and social commerce.

## 📌 Project Overview

The Virtual Closet Platform is a mobile and web-based application that allows users to:
- Upload and organize their wardrobe
- Create and share outfits (Looks)
- Try on clothes virtually using Augmented Reality (AR)
- Buy, sell, or swap second-hand clothing
- Get personalized AI-powered fashion recommendations

The goal is to promote sustainability by extending the lifecycle of clothing through peer-to-peer exchange and digital wardrobe management.

## 🧑‍💻 Author

**Jose De Leon**  
College of Professional Studies  
Northeastern University  
Course: ITC6000 – Database Management Systems  
Instructor: Professor Andy Chen  
Date: March 30, 2025

## 📚 Features & Technologies

| Feature                     | Technology                          |
|----------------------------|--------------------------------------|
| Frontend (Presentation)    | HTML, CSS, JavaScript                |
| Backend (Application)      | Node.js or Python (API layer)        |
| Database (Data Layer)      | PostgreSQL (Relational DBMS)         |
| Hosting & Architecture     | AWS / Azure / Google Cloud (3-tier) |
| Analytics & Reporting      | SQL queries with filtering and joins |
| Virtual Try-On (AR)        | Google ARCore or WebAR (conceptual)  |

## 🧑‍🎓 Learning Outcomes

This project demonstrates proficiency in:
- Database modeling and normalization
- SQL query design for CRUD operations and analytics
- Entity-Relationship Diagrams (ERDs)
- Implementing bridge tables for many-to-many relationships
- Understanding cloud-based architecture and data privacy

## 🧩 Project Structure
📁 virtual-closet-platform/ ├── 📄 README.md ├── 📁 erd/ │ └── ER diagram.jpg ├── 📁 sql/ │ ├── Final project SQL FILE.sql │ ├── analytics_reports_queries.sql ├── 📁 presentation/ │ └── Virtual-Closet-Platform.pdf ├── 📁 assets/ │ ├── seller_dashboard_mockup.png │ ├── 📄 .gitignore └── 📄 LICENSE


## 💡 SQL Highlights

Example SQL queries used in the project:
- **Resale tracking per item**
- **Revenue summaries by seller**
- **Top resold clothing categories**
- **Versatility of clothing in different Looks**
- **Pricing insights based on item condition**

Each query supports a real feature or metric in the app.

## 📁 Repository Structure

- [README.md](README.md): Project overview and documentation  
- [SQL FILE](sql/Final%20project%20SQL%20FILE.sql): SQL scripts used for database creation, business logic, and analytics  
- [ER diagram](erd/ER%20diagram.jpg): Entity-Relationship diagram visualizing the database schema  
- [Virtual Closet Presentation](presentation/Virtual-Closet-Platform.pdf): Final presentation for the project  
- [Seller dashboard mockup](assets/Taylor_Seller_Dashboard_Mockup.pdf): Sample mockup of seller dashboard  
- `.gitignore`: Files/folders excluded from version control  
- `LICENSE`: Open-source license information


## 🔐 Security & Compliance

The database stores:
- Personally Identifiable Information (PII)
- User preferences and body measurements
- Transaction metadata

Precautions include:
- Role-based access control
- SQL injection prevention
- GDPR-aligned privacy practices

## 🌐 Architecture

The platform uses a **cloud-based 3-tier architecture**:
- Presentation Layer: Web & mobile interface
- Application Layer: API logic and AI/AR modules
- Data Layer: PostgreSQL on cloud infrastructure

See [ER diagram](https://github.com/josedeleon-analytics/virtual-closet-platform/blob/main/erd/ER%20diagram.jpg) for data structure.

## 🎯 Future Improvements

- Integrate machine learning for better recommendations
- Add user authentication and OAuth 2.0
- Expand AR capabilities for virtual try-ons
- Implement marketplace logistics (e.g., shipping options)

## 📑 References

- Chen, A. (2025). *ITC6000: Module 5 – Common Database Architectures* [PDF file]. Northeastern University.
- Google. (n.d.). [How Augmented Reality (AR) Works](https://arvr.google.com)
- Amazon Web Services. (n.d.). [AWS Well-Architected Framework](https://docs.aws.amazon.com/wellarchitected/latest/framework/)
- PostgreSQL Global Development Group. (n.d.). [PostgreSQL Documentation](https://www.postgresql.org/docs/)

---

## 📸 Screenshots

| Feature             | Screenshot Example                      |
|---------------------|------------------------------------------|
| Seller Dashboard    | [seller dashboard mockup](https://github.com/josedeleon-analytics/virtual-closet-platform/blob/main/assets/Taylor_Seller_Dashboard_Mockup.pdf)    |

---

## 👤 Author
Jose De Leon Master’s in Analytics Candidate, Northeastern University 📬 Email: j.angel2294@gmail.com 🔗 LinkedIn: https://www.linkedin.com/in/jose-de-leon-analytics/


---

