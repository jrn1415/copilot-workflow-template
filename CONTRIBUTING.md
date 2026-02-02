# Contributing to Multi-Agent Development Workflow Template

Thank you for your interest in contributing! This document provides guidelines for contributing to this project.

## 🌟 How to Contribute

### Reporting Issues

If you find bugs or have feature requests:

1. **Search existing issues** to avoid duplicates
2. **Create a new issue** with:
   - Clear, descriptive title
   - Detailed description
   - Steps to reproduce (for bugs)
   - Expected vs actual behavior
   - Environment details (OS, VS Code version, etc.)

### Suggesting Enhancements

For feature requests or enhancements:

1. **Check existing issues** for similar suggestions
2. **Create an issue** describing:
   - The problem you're trying to solve
   - Your proposed solution
   - Why this enhancement would be useful
   - Examples of how it would work

## 🔧 Development Process

### Setting Up Development Environment

```bash
# Fork the repository
git clone https://github.com/yourusername/copilot-workflow-template.git
cd copilot-workflow-template

# Create a new branch
git checkout -b feature/your-feature-name
```

### Making Changes

1. **Make your changes** in your feature branch
2. **Test your changes** thoroughly
3. **Update documentation** if needed
4. **Follow coding standards** (see below)

### Coding Standards

#### Markdown Files
- Use clear, concise language
- Include code examples where appropriate
- Use proper heading hierarchy (H1 → H2 → H3)
- Include language tags for code blocks
- Keep line length reasonable (80-120 characters)

#### Prompt Files
- Include YAML frontmatter
- Use Thai for descriptions, English for technical terms
- Provide clear examples
- Include expected output format
- Add checklist for completeness

#### File Structure
- Maintain existing directory structure
- Place files in appropriate directories
- Use descriptive file names (kebab-case)
- Include .gitkeep in empty directories

### Commit Messages

Follow [Conventional Commits](https://www.conventionalcommits.org/) format:

```
<type>(<scope>): <subject>

<body>

<footer>
```

**Types:**
- `feat`: New feature
- `fix`: Bug fix
- `docs`: Documentation changes
- `style`: Formatting, missing semicolons, etc.
- `refactor`: Code restructuring
- `test`: Adding tests
- `chore`: Maintenance tasks

**Examples:**
```
feat(prompts): add new data scientist role prompt

docs(readme): update installation instructions

fix(workflow): correct step numbering in workflow guide
```

### Pull Request Process

1. **Update documentation** for any changed functionality
2. **Ensure all tests pass** (if applicable)
3. **Update the CHANGELOG.md** with notable changes
4. **Request review** from maintainers

#### Pull Request Guidelines

Your PR should:
- Have a clear, descriptive title
- Reference related issues (e.g., "Fixes #123")
- Include a description of changes
- Explain WHY the change is needed
- List any breaking changes
- Include screenshots for UI changes

**PR Template:**
```markdown
## Description
[Clear description of what this PR does]

## Related Issues
Fixes #[issue number]

## Type of Change
- [ ] Bug fix
- [ ] New feature
- [ ] Documentation update
- [ ] Refactoring
- [ ] Other (please describe)

## Changes Made
- [Change 1]
- [Change 2]
- [Change 3]

## Testing
- [ ] I have tested these changes
- [ ] I have updated documentation
- [ ] All existing tests pass

## Screenshots (if applicable)
[Add screenshots here]

## Additional Notes
[Any additional information]
```

## 📋 Contribution Areas

### High Priority
- **Bug fixes** in existing prompts
- **Documentation improvements**
- **Example projects** using the template
- **Translations** to other languages

### Medium Priority
- **New role prompts** for specialized positions
- **Integration guides** for different tech stacks
- **Video tutorials**
- **Tool integrations**

### Ideas Welcome
- **Alternative CI/CD** configurations
- **Cloud platform** specific guides
- **Best practices** and tips
- **Case studies** of template usage

## 🎨 Prompt Development Guidelines

When creating or modifying prompts:

### 1. Clear Role Definition
```markdown
## Your Identity
คุณคือ [Role] ที่มีประสบการณ์ X+ ปี เชี่ยวชาญในการ:
- [Skill 1]
- [Skill 2]
- [Skill 3]
```

### 2. Step-by-Step Instructions
```markdown
## Instructions
1. [Clear step 1]
2. [Clear step 2]
3. [Clear step 3]
```

### 3. Output Templates
Provide clear templates with examples:
```markdown
### Output File: `filename.md`
\`\`\`markdown
# Template structure
...
\`\`\`
```

### 4. Checklist
Always include a completeness checklist:
```markdown
## Checklist
- [ ] Item 1
- [ ] Item 2
- [ ] Item 3
```

### 5. Handoff
Clear handoff message to next role:
```markdown
## Handoff
เมื่อเสร็จแล้ว แจ้งว่า:
\`\`\`
✅ [Role] Complete!
Files Created: [list]
Next Step: [instruction]
\`\`\`
```

## 🧪 Testing

### For Prompt Changes
- Test with GitHub Copilot in VS Code
- Verify output format
- Check completeness
- Test with different scenarios

### For Documentation Changes
- Check all links
- Verify code examples
- Ensure formatting is correct
- Test commands if applicable

## 📚 Documentation Standards

### README Files
- Start with clear title and description
- Include badges (if applicable)
- Provide quick start guide
- Link to detailed documentation
- Include examples
- Keep updated with code changes

### Code Examples
- Use realistic examples
- Include comments
- Show both input and output
- Cover common use cases
- Demonstrate best practices

### Diagrams
- Use Mermaid for diagrams
- Keep diagrams simple and clear
- Include diagram source in markdown
- Update diagrams when structure changes

## 🏗️ Project Structure

When adding new files, maintain this structure:

```
copilot-workflow-template/
├── .github/
│   ├── prompts/          # Role prompt files
│   └── copilot-instructions.md
├── .vscode/              # VS Code settings
├── docs/                 # Documentation
│   ├── requirements/
│   ├── architecture/
│   ├── project-plan/
│   └── api/
├── output/               # Role outputs (11 dirs)
├── src/                  # Source code
├── tests/                # Test files
├── scripts/              # Utility scripts
├── WORKFLOW.md
├── CONTRIBUTING.md
└── README.md
```

## ❓ Questions?

If you have questions:
- **Check existing documentation** first
- **Search closed issues** for similar questions
- **Open a discussion** for general questions
- **Create an issue** for specific problems

## 🙏 Recognition

Contributors will be:
- Listed in CONTRIBUTORS.md
- Mentioned in release notes
- Credited in the repository

Thank you for contributing to make this template better! 🎉

## 📄 License

By contributing, you agree that your contributions will be licensed under the MIT License.
