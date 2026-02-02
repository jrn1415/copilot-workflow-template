# Multi-Agent Development Workflow - GitHub Copilot Instructions

## Project Overview

This is a Multi-Agent Development Workflow template for GitHub Copilot in VS Code. โปรเจคนี้ใช้ระบบ multi-agent ที่แบ่งหน้าที่การพัฒนาซอฟต์แวร์เป็น 11 roles ที่ทำงานร่วมกันแบบ sequential workflow.

## Workflow ทั้ง 11 ขั้นตอน

```
User Requirements
    ↓
1. PM/BA → Requirements Analysis
    ↓
2. Solution Architect → Architecture Design
    ↓
3. Team Lead → Task Breakdown
    ↓
4. Developer → Implementation
    ↓
5. Database Engineer → Database Design
    ↓
6. Tester → Test Cases & Testing
    ↓
7. Code Reviewer → Code Review
    ↓
8. IT Security → Security Audit
    ↓
9. Performance Engineer → Performance Analysis
    ↓
10. DevOps → CI/CD Pipeline
    ↓
11. Technical Writer → Documentation
    ↓
Production Ready
```

## How to Use Custom Prompts

### วิธีเรียกใช้ Prompt แต่ละ Role

ใน GitHub Copilot Chat ใน VS Code, ใช้คำสั่ง `@workspace` และอ้างอิง prompt file:

```
@workspace /agent use .github/prompts/01-pm-ba.prompt.md
```

หรือใช้คำสั่งสั้นๆ:

```
Act as PM/BA and analyze the requirements in docs/requirements/
```

### ลำดับการทำงาน

1. **PM/BA**: วิเคราะห์ requirements
   ```
   @workspace Act as PM/BA, analyze requirements from docs/requirements/ and create output in output/01-requirements-analysis/
   ```

2. **Solution Architect**: ออกแบบ architecture
   ```
   @workspace Act as Solution Architect, review output/01-requirements-analysis/ and create architecture design in output/02-architecture-design/
   ```

3. **Team Lead**: แบ่ง tasks
   ```
   @workspace Act as Team Lead, review architecture and create task breakdown in output/03-task-breakdown/
   ```

4. **Developer**: พัฒนาโปรแกรม
   ```
   @workspace Act as Developer, implement features based on tasks in output/03-task-breakdown/
   ```

5. **Database Engineer**: ออกแบบ database
   ```
   @workspace Act as Database Engineer, create database schema in output/05-database-design/
   ```

6. **Tester**: เขียน test cases
   ```
   @workspace Act as QA Tester, create test cases in output/06-test-cases/
   ```

7. **Code Reviewer**: review code
   ```
   @workspace Act as Code Reviewer, review code in src/ and create report in output/07-code-review/
   ```

8. **IT Security**: security audit
   ```
   @workspace Act as IT Security Engineer, audit security and create report in output/08-security-report/
   ```

9. **Performance Engineer**: analyze performance
   ```
   @workspace Act as Performance Engineer, analyze performance and create report in output/09-performance-report/
   ```

10. **DevOps**: setup CI/CD
    ```
    @workspace Act as DevOps Engineer, create CI/CD pipelines in output/10-cicd-pipeline/
    ```

11. **Technical Writer**: เขียน documentation
    ```
    @workspace Act as Technical Writer, create documentation in output/11-documentation/
    ```

## Output Locations

| Role | Output Directory | Key Files |
|------|-----------------|-----------|
| PM/BA | `output/01-requirements-analysis/` | requirements-summary.md, questions-clarifications.md, project-timeline.md |
| Solution Architect | `output/02-architecture-design/` | architecture-overview.md, tech-stack.md, system-components.md |
| Team Lead | `output/03-task-breakdown/` | project-structure.md, task-breakdown.md, coding-standards.md |
| Developer | `output/04-implementation/` + `src/` | implementation-notes.md, code files |
| Database Engineer | `output/05-database-design/` | erd.md, migrations/, indexes.md |
| Tester | `output/06-test-cases/` + `tests/` | test-plan.md, test cases |
| Code Reviewer | `output/07-code-review/` | review-report.md, feedback.md |
| IT Security | `output/08-security-report/` | security-audit.md, vulnerabilities.md |
| Performance Engineer | `output/09-performance-report/` | performance-analysis.md, recommendations.md |
| DevOps | `output/10-cicd-pipeline/` + root | Jenkinsfile, .gitlab-ci.yml, Dockerfile |
| Technical Writer | `output/11-documentation/` + `docs/` | README.md, API docs, guides |

## Best Practices

### สำหรับ Developers ที่ใช้ Template นี้

1. **เริ่มต้นด้วย Requirements**: วาง requirements ของคุณใน `docs/requirements/`
2. **ทำตาม Workflow**: ทำงานตามลำดับ 11 ขั้นตอน
3. **Review Outputs**: ตรวจสอบ output จากแต่ละ role ก่อนไปต่อ
4. **Iterate**: วน loop ได้ถ้าต้องปรับปรุง
5. **Documentation**: เก็บ output ทุกขั้นตอนเป็น documentation

### การใช้งานกับ GitHub Copilot

- ใช้ `@workspace` เพื่อให้ Copilot เข้าถึง context ของ project
- อ้างอิง prompt files เพื่อให้ Copilot รู้ว่าต้อง act เป็น role ไหน
- Review และปรับแต่ง output ที่ Copilot generate มาให้เหมาะสม

## Repository Structure

```
copilot-workflow-template/
├── .github/
│   ├── copilot-instructions.md          # This file
│   └── prompts/                          # 11 role prompts
├── .vscode/
│   └── settings.json                     # VS Code Copilot settings
├── docs/                                 # Input documentation
│   ├── requirements/
│   ├── architecture/
│   ├── project-plan/
│   └── api/
├── output/                               # Output from each role
│   ├── 01-requirements-analysis/
│   ├── 02-architecture-design/
│   ├── ... (11 directories total)
│   └── 11-documentation/
├── src/                                  # Source code
├── tests/                                # Test files
├── scripts/
│   └── init-project.sh                   # Project initialization
├── WORKFLOW.md                           # Detailed workflow guide
├── CONTRIBUTING.md
├── LICENSE
└── README.md
```

## Support

สำหรับข้อมูลเพิ่มเติม:
- อ่าน `WORKFLOW.md` สำหรับ detailed workflow guide
- อ่าน `README.md` สำหรับ quick start guide
- ดู prompt files ใน `.github/prompts/` สำหรับแต่ละ role
