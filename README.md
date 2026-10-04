# StepDb - MS SQL Server Database Setup

---

## 🚀 Quick Start

### 1. Docker კონტეინერის გაშვება

პროექტის ძირითად დირექტორიაში ტერმინალიდან გავუშვათ შემდეგი ბრძანება MSSQL სერვერის ფონურ რეჟიმში გასაშვებად:

```bash
docker compose up -d
```

## 🔌 ბაზასთან დაკავშირება

---

Docker კონტეინერის გაშვების შემდეგ, დავუკავშირდეთ SQL სერვერს ჩვენი IDE-დან (DataGrip, SSMS) შემდეგი პარამეტრებით:

* **Host:** `localhost`
* **Port:** `1433`
* **Username:** `sa` *(MS SQL-ის ნაგულისხმევი მომხმარებელი)*
* **Password:** მითითებულია უშუალოდ `docker-compose.yaml` ფაილში (`MSSQL_SA_PASSWORD` ცვლადში)