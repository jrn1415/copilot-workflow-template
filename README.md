# 🤖 Multi-Agent Development Workflow Template

> A comprehensive GitHub Copilot template for VS Code that transforms software development into an 11-role collaborative workflow

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](LICENSE)
[![GitHub Copilot](https://img.shields.io/badge/GitHub%20Copilot-Enabled-blue.svg)](https://github.com/features/copilot)
[![VS Code](https://img.shields.io/badge/VS%20Code-Compatible-green.svg)](https://code.visualstudio.com/)

## 🎯 Overview

This template provides a **structured, multi-agent approach** to software development using GitHub Copilot. It breaks down the development process into **11 specialized roles**, each with custom prompts and workflows, enabling you to leverage Copilot's AI capabilities at every stage of your project.

### Why This Template?

- ✅ **Structured Development**: Clear workflow with 11 defined roles
- ✅ **Generic & Flexible**: Works with any tech stack (Node.js, Python, Java, Go, etc.)
- ✅ **CI/CD Ready**: Includes Jenkins and GitLab CI configurations
- ✅ **Security First**: OWASP Top 10 compliance checks built-in
- ✅ **Quality Focused**: Code review, testing, and performance analysis included
- ✅ **Production Ready**: Complete DevOps and documentation workflows

## ✨ Features

### 11 Specialized Roles

| # | Role | Purpose | Output |
|---|------|---------|--------|
| 1 | **PM/BA** | Requirements analysis | Requirements summary, timeline, clarifications |
| 2 | **Solution Architect** | Architecture design | Architecture diagrams, tech stack decisions |
| 3 | **Team Lead** | Task breakdown | Project structure, task list, coding standards |
| 4 | **Developer** | Implementation | Source code, implementation notes |
| 5 | **Database Engineer** | Database design | ERD, migrations, indexes |
| 6 | **QA Tester** | Testing | Test cases, unit/integration tests |
| 7 | **Code Reviewer** | Code review | Review report, feedback |
| 8 | **IT Security** | Security audit | Security report, vulnerabilities |
| 9 | **Performance Engineer** | Performance analysis | Performance report, optimization guide |
| 10 | **DevOps** | CI/CD setup | Pipeline configs, Docker files |
| 11 | **Technical Writer** | Documentation | README, API docs, user guides |

### Key Capabilities

- 🔄 **Sequential Workflow**: Each role builds upon the previous
- 📝 **Custom Prompts**: Tailored prompts for each role in Thai/English
- 🎨 **Mermaid Diagrams**: Architecture and ERD diagrams
- 🐳 **Docker Ready**: Complete containerization setup
- 🔒 **Security Scanning**: OWASP Top 10 compliance checks
- 📊 **Performance Testing**: Load testing plans and optimization
- 🚀 **CI/CD Pipelines**: Jenkins and GitLab CI configurations
- 📚 **Comprehensive Docs**: Auto-generated documentation

## 🚀 Quick Start

### Prerequisites

- [VS Code](https://code.visualstudio.com/) with [GitHub Copilot](https://github.com/features/copilot) extension
- Git
- Your project requirements

### Installation

#### Option 1: Use as GitHub Template (Recommended)

1. Click the **"Use this template"** button at the top of this repository
2. Create your new repository
3. Clone it to your local machine:
   ```bash
   git clone https://github.com/yourusername/your-project-name.git
   cd your-project-name
   ```

#### Option 2: Clone Directly

```bash
git clone https://github.com/jrn1415/copilot-workflow-template.git my-project
cd my-project
rm -rf .git
git init
git add .
git commit -m "Initial commit from template"
```

### Initial Setup

1. **Prepare Your Requirements**
   
   Create a requirements document in `docs/requirements/`:
   ```bash
   echo "# Project Requirements" > docs/requirements/requirements.md
   # Edit with your requirements
   ```

2. **Configure VS Code**
   
   The template includes `.vscode/settings.json` which automatically configures GitHub Copilot to use the custom instructions.

3. **Start the Workflow**
   
   Open GitHub Copilot Chat in VS Code and begin with Role 1:
   ```
   @workspace Act as PM/BA, analyze requirements from docs/requirements/ 
   and create output in output/01-requirements-analysis/
   ```

## 💻 Usage

### Basic Workflow

Each role follows this pattern:

1. **Invoke the Role** using `@workspace` in Copilot Chat
2. **Review the Output** generated in the corresponding output directory
3. **Iterate if Needed** - refine and re-run if necessary
4. **Move to Next Role** when satisfied with the output

### Example: Complete Flow

```bash
# Step 1: Requirements Analysis
@workspace Act as PM/BA and analyze requirements

# Step 2: Architecture Design
@workspace Act as Solution Architect and design architecture

# Step 3: Task Breakdown
@workspace Act as Team Lead and break down tasks

# Step 4: Implementation
@workspace Act as Developer and implement features

# ... continue through all 11 roles
```

### Detailed Commands

See [WORKFLOW.md](WORKFLOW.md) for:
- Complete command reference for each role
- Expected inputs and outputs
- Duration estimates
- Tips and best practices

## 📊 Workflow Visualization

```
User Requirements → PM/BA → Solution Architect → Team Lead → Developer
                                                                ↓
Technical Writer ← DevOps ← Performance Eng. ← IT Security ← Code Reviewer
                                                                ↓
                                                             QA Tester
                                                                ↓
                                                         Database Engineer
                                                                ↓
                                                         Production Ready 🚀
```

## 📁 Project Structure

```
copilot-workflow-template/
├── .github/
│   ├── copilot-instructions.md          # Main Copilot instructions
│   └── prompts/                          # 11 role-specific prompts
│       ├── 01-pm-ba.prompt.md
│       ├── 02-solution-architect.prompt.md
│       ├── ... (11 total)
│       └── 11-technical-writer.prompt.md
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
│   ├── ... (11 total)
│   └── 11-documentation/
├── src/                                  # Source code
├── tests/                                # Test files
├── scripts/
│   └── init-project.sh                   # Project initialization script
├── WORKFLOW.md                           # Detailed workflow guide
├── CONTRIBUTING.md                       # Contribution guidelines
├── LICENSE                               # MIT License
└── README.md                             # This file
```

## 🛠️ Customization

### Adapting to Your Tech Stack

This template is designed to be generic, but you can customize it:

1. **Edit Role Prompts** in `.github/prompts/` to match your stack
2. **Update Coding Standards** in the Team Lead prompt
3. **Modify CI/CD Configs** for your platform
4. **Adjust Templates** in each role for your conventions

### Adding New Roles

You can add specialized roles:

1. Create a new prompt file in `.github/prompts/`
2. Add corresponding output directory in `output/`
3. Update workflow documentation

## 📚 Documentation

- **[WORKFLOW.md](WORKFLOW.md)** - Complete workflow guide with all 11 steps
- **[CONTRIBUTING.md](CONTRIBUTING.md)** - How to contribute
- **[LICENSE](LICENSE)** - MIT License
- **[.github/copilot-instructions.md](.github/copilot-instructions.md)** - Copilot configuration

## 🤝 Contributing

We welcome contributions! Please see [CONTRIBUTING.md](CONTRIBUTING.md) for:
- How to report issues
- Development setup
- Coding standards
- Pull request process

## 🐛 Troubleshooting

### Common Issues

**Copilot doesn't recognize the prompts**
- Ensure `.vscode/settings.json` is properly configured
- Reload VS Code window (`Cmd/Ctrl + Shift + P` → "Reload Window")
- Check that GitHub Copilot extension is active

**Output is not what expected**
- Review and adjust the specific role prompt
- Provide more context in your command
- Try rephrasing your request

**Getting stuck on a specific role**
- Skip to another role and come back later
- Ask for human input when needed
- Check the role's prompt file for examples

See [WORKFLOW.md](WORKFLOW.md) for more troubleshooting tips.

## 🌟 Examples

Check out these example projects built with this template:

- [Example E-commerce API](https://github.com/example/ecommerce-api) (Node.js)
- [Example Blog Platform](https://github.com/example/blog-platform) (Python)
- [Example Task Manager](https://github.com/example/task-manager) (Java)

*Note: Add your own examples by contributing!*

## 📊 Tech Stack Support

This template supports multiple technology stacks:

| Language | Framework | Database | Status |
|----------|-----------|----------|--------|
| Node.js | Express, Fastify, NestJS | PostgreSQL, MongoDB | ✅ Tested |
| Python | FastAPI, Django, Flask | PostgreSQL, MySQL | ✅ Tested |
| Java | Spring Boot | PostgreSQL, Oracle | ✅ Tested |
| Go | Gin, Echo | PostgreSQL, MySQL | ✅ Tested |
| .NET | ASP.NET Core | SQL Server, PostgreSQL | 🧪 Community |

## 🔧 CI/CD Support

Includes ready-to-use configurations for:

- ✅ **Jenkins** - Complete Jenkinsfile with all stages
- ✅ **GitLab CI** - `.gitlab-ci.yml` with pipelines
- 🔜 **GitHub Actions** - Coming soon
- 🔜 **Azure DevOps** - Coming soon

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- GitHub Copilot team for the amazing AI pair programmer
- VS Code team for the excellent editor
- All contributors who help improve this template

## 📞 Support

- **Documentation**: Start with [WORKFLOW.md](WORKFLOW.md)
- **Issues**: [GitHub Issues](https://github.com/jrn1415/copilot-workflow-template/issues)
- **Discussions**: [GitHub Discussions](https://github.com/jrn1415/copilot-workflow-template/discussions)

## ⭐ Star This Repository

If you find this template helpful, please consider giving it a star! It helps others discover it.

---

**Happy Coding with AI! 🚀✨**
