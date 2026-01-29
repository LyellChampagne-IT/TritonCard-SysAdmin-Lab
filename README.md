# TritonCard Systems Administration Lab 🖥️

## Project Overview
This project simulates the identity management architecture of a campus card system (TritonCard). The goal was to build a resilient, automated environment for provisioning student access and securing endpoints.

## 🛠️ Technical Stack
*   **OS:** Windows Server 2022 (Domain Controller)
*   **Identity:** Active Directory Domain Services (AD DS)
*   **Automation:** PowerShell (Custom scripting for bulk user provisioning)
*   **Security:** Group Policy Objects (GPO) for kiosk hardening

## 📂 Key Artifacts
### 1. Automated Provisioning Script
I developed a PowerShell script (`New-StudentOnboarding.ps1`) to ingest CSV-style student data and automatically provision AD accounts with:
*   Standardized Naming Conventions
*   Secure Default Passwords
*   Organizational Unit (OU) Routing
*   Error Handling (Try/Catch blocks)

### 2. Security Implementation
*   **GPO Lockdown:** Implemented `Lockdown_Student_Kiosks` policy to disable Control Panel and critical settings on student-facing hardware.
*   **Execution Policy:** Managed script security via `Set-ExecutionPolicy` during deployment.

## 📸 Proof of Concept
*(Click the images in the file list above to see the deployment in action)*
