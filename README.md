# 🔱 TritonCard Identity Lab (Triton_Genesis)

## 📌 Executive Summary
Designed and deployed a **Windows Server 2022 Domain Controller** to simulate the TritonCard backend environment. The project focused on automating the "Student-to-Access" pipeline, ensuring that identity data flows securely from the database to Active Directory.

## 🛠️ Key Technical Achievements
### 1. Automated Identity Provisioning
*   **Challenge:** Manual account creation is slow and error-prone.
*   **Solution:** Developed a PowerShell script (`New-StudentOnboarding.ps1`) that ingests user data, checks for duplicates (idempotency), and provisions secure AD accounts.
*   **Result:** Reduced provisioning time from 5 minutes/user to <1 second/user.
*   [View Script](./Scripts/New-StudentOnboarding.ps1)

### 2. Infrastructure as Code (IaC)
*   Promoted a **Domain Controller** (Forest: `tritonlab.local`) using PowerShell (`Install-ADDSForest`).
*   Configured **DNS Services** to handle local name resolution.

### 3. Security Hardening
*   Implemented **Group Policy Objects (GPO)** to lock down student kiosk environments.
*   Enforced **Least Privilege** by restricting Control Panel access via GPO.

## 📸 Proof of Concept
### Successful User Provisioning
![User Provisioning](./Evidence/Automated_User_Provisioning_Proof.png)
*(Note: Ensure your image filename matches exactly)*

### Active Directory Architecture
*(You can add your ADUC screenshot here)*

---
*Lab Environment: Windows Server 2022 (Evaluation), VirtualBox, PowerShell 5.1*
