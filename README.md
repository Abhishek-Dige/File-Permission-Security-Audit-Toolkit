# File-Permission-Security-Audit-Toolkit
📌 File Permission & Security Audit Toolkit

A shell-based toolkit that audits a Linux system for:

Insecure file permissions

World-writable files

Weak or unsafe scripts

Broken symbolic links

Security recommendations

Final audit report generation

🧰 Technologies Used

Bash shell scripting

Linux file permission commands

Git & GitHub workflow

Terminal-based automation

## REPO STRUCTURE
├── README.md

├── main.sh

├── .gitignore

│
├── modules/

│   ├── insecure_permissions.sh

│   ├── world_writable.sh

│   ├── weak_scripts.sh

│   ├── broken_links.sh

│   ├── recommendations.sh

│   ├── report_generator.sh

│

├── output/

│   ├── insecure_permissions.txt

│   ├── world_writable.txt

│   ├── weak_scripts.txt

│   ├── broken_links.txt

│   ├── recommendations.txt

│   ├── audit_report.txt

│

├── tests/

│   ├── sample_test_files/

│   └── test_script.sh

│

└── docs/
    ├── architecture_diagram.png
    ├── project_flow.txt    
    ├── module_mapping.txt    
    └── report_template.pdf

### MEMBER ROLES
## TEAM MEMBER TASK ASSIGNMENTS (7 MEMBERS)

Member 1 — Insecure Permission Scanner
-


File: modules/insecure_permissions.sh
Tasks:

Detect 777 files

Detect directories with insecure permissions

Save report into /output/insecure_permissions.txt

Member 2 — World Writable File Detector
-

File: modules/world_writable.sh
Tasks:

Find world-writable files

List them in detail

Save report into /output/world_writable.txt

Member 3 — Weak Script Analyzer
-

File: modules/weak_scripts.sh
Tasks:

Detect scripts missing shebang

Detect scripts writable by others

Identify risky patterns (rm -rf, sudo, chmod 777)

Save into /output/weak_scripts.txt

Member 4 — Broken Link Checker
-

File: modules/broken_links.sh
Tasks:

Detect symbolic links (-type l)

Check if they point to valid targets

Identify broken links (-xtype l)

Save into /output/broken_links.txt

Member 5 — Recommendations Engine
-

File: modules/recommendations.sh
Tasks:

Generate suggestions based on findings

Example: “Change permissions from 777 to 755”

Save into /output/recommendations.txt

Member 6 — Report Generator
-

File: modules/report_generator.sh
Tasks:

Combine all module outputs

Format into a single audit_report.txt

Add timestamps, summary, counts

Create a clean final report

Member 7 — Project Integrator + GitHub Manager
-

File: main.sh
Tasks:

Create CLI interface

Connect all modules

Add help menu

Handle arguments

Ensure all scripts run in sequence

Manage branches, pull requests, mergers

### GITHUB CHEATSHEET FOR TERMINAL
# 🧑‍💻 How to Contribute (5 Easy Steps)

Follow these 5 simple steps to safely contribute to the project.  
You will work from your own fork → then submit a Pull Request (PR).

---

## ✅ Step 1 — Fork the Repository

1. Open the main project GitHub page  
2. Click the **Fork** button (top-right)  
3. This creates **your own copy** of the project

Your fork looks like this:

github.com/YOUR-USERNAME/File-Permission-Security-Audit-Toolkit

---

## ✅ Step 2 — Clone YOUR Fork to Your Laptop

Run this in Ubuntu:

git clone https://github.com/YOUR-USERNAME/File-Permission-Security-Audit-Toolkit.git
cd File-Permission-Security-Audit-Toolkit

---

## ✅ Step 3 — Create a New Branch for Your Work

git checkout -b your-feature-branch

Examples:

git checkout -b world-writable
git checkout -b weak-scripts
git checkout -b broken-links

---

## ✅ Step 4 — Make Changes → Commit → Push

After editing your module:

git add .
git commit -m "Added my module"
git push -u origin your-feature-branch

This pushes **only to your fork**, so nothing breaks in the main repo.

---

## ✅ Step 5 — Create a Pull Request (PR) to the Main Repo

1. Go to your fork on GitHub  
2. Switch to your branch  
3. Click **Compare & Pull Request**  
4. Target branch must be: `main` of the original repo  
5. Submit PR  

The project owner will review and merge your changes.

---

# 🎉 Done!
You have safely contributed without needing collaborator access or risking the main project.  
Follow these same 5 steps for every update.

    


