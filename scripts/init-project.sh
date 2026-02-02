#!/bin/bash

# Multi-Agent Development Workflow - Project Initialization Script
# This script sets up the complete directory structure for a new project

set -e  # Exit on error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Print colored message
print_message() {
    local color=$1
    local message=$2
    echo -e "${color}${message}${NC}"
}

print_header() {
    echo ""
    print_message "$BLUE" "════════════════════════════════════════════════════════════"
    print_message "$BLUE" "  Multi-Agent Development Workflow - Project Initialization"
    print_message "$BLUE" "════════════════════════════════════════════════════════════"
    echo ""
}

print_success() {
    print_message "$GREEN" "✓ $1"
}

print_warning() {
    print_message "$YELLOW" "⚠ $1"
}

print_error() {
    print_message "$RED" "✗ $1"
}

# Check if directory exists
check_directory() {
    if [ -d "$1" ]; then
        print_warning "Directory '$1' already exists"
        return 1
    fi
    return 0
}

# Create directory structure
create_directories() {
    print_message "$BLUE" "Creating directory structure..."
    
    # Main directories
    mkdir -p .github/prompts
    mkdir -p .vscode
    mkdir -p docs/{requirements,architecture,project-plan,api}
    mkdir -p output/{01-requirements-analysis,02-architecture-design,03-task-breakdown,04-implementation,05-database-design,06-test-cases,07-code-review,08-security-report,09-performance-report,10-cicd-pipeline,11-documentation}
    mkdir -p src
    mkdir -p tests
    mkdir -p scripts
    
    print_success "Directory structure created"
}

# Create .gitkeep files
create_gitkeep_files() {
    print_message "$BLUE" "Creating .gitkeep files..."
    
    find . -type d -empty -exec touch {}/.gitkeep \;
    
    print_success ".gitkeep files created"
}

# Create initial documentation files
create_initial_docs() {
    print_message "$BLUE" "Creating initial documentation..."
    
    # Create requirements template
    if [ ! -f "docs/requirements/README.md" ]; then
        cat > docs/requirements/README.md << 'EOF'
# Project Requirements

## Overview
[Describe your project here]

## Functional Requirements
1. Requirement 1
2. Requirement 2
3. Requirement 3

## Non-Functional Requirements
- Performance
- Security
- Scalability
- Usability

## Constraints
- Technical constraints
- Budget constraints
- Timeline constraints

## Assumptions
- List your assumptions here
EOF
        print_success "Created docs/requirements/README.md"
    fi
    
    # Create .env.example
    if [ ! -f ".env.example" ]; then
        cat > .env.example << 'EOF'
# Application
NODE_ENV=development
PORT=3000

# Database
DATABASE_URL=postgresql://user:password@localhost:5432/mydb

# Redis (Optional)
REDIS_URL=redis://localhost:6379

# JWT
JWT_SECRET=your-secret-key-change-this-in-production
JWT_EXPIRES_IN=24h

# Logging
LOG_LEVEL=debug
EOF
        print_success "Created .env.example"
    fi
}

# Create .gitignore
create_gitignore() {
    if [ ! -f ".gitignore" ]; then
        print_message "$BLUE" "Creating .gitignore..."
        
        cat > .gitignore << 'EOF'
# Dependencies
node_modules/
vendor/
venv/
.venv/
__pycache__/
*.pyc
*.pyo
*.egg-info/

# Environment variables
.env
.env.local
.env.*.local

# IDE
.vscode/*
!.vscode/settings.json
.idea/
*.swp
*.swo
*~

# OS
.DS_Store
Thumbs.db

# Build outputs
dist/
build/
*.log
*.pid
*.seed
*.pid.lock

# Test coverage
coverage/
.nyc_output/
.coverage
htmlcov/

# Docker
docker-compose.override.yml

# Temporary files
tmp/
temp/
*.tmp
EOF
        print_success "Created .gitignore"
    fi
}

# Initialize git repository
init_git() {
    if [ ! -d ".git" ]; then
        print_message "$BLUE" "Initializing git repository..."
        git init
        print_success "Git repository initialized"
    else
        print_warning "Git repository already initialized"
    fi
}

# Create initial commit
initial_commit() {
    if [ -d ".git" ]; then
        print_message "$BLUE" "Creating initial commit..."
        git add .
        git commit -m "Initial commit: Multi-Agent Development Workflow structure" || print_warning "No changes to commit"
        print_success "Initial commit created"
    fi
}

# Print next steps
print_next_steps() {
    echo ""
    print_message "$GREEN" "════════════════════════════════════════════════════════════"
    print_message "$GREEN" "  Setup Complete! 🎉"
    print_message "$GREEN" "════════════════════════════════════════════════════════════"
    echo ""
    print_message "$YELLOW" "Next Steps:"
    echo ""
    echo "1. 📝 Add your requirements to:"
    echo "   docs/requirements/README.md"
    echo ""
    echo "2. 🤖 Open VS Code and start with GitHub Copilot:"
    echo "   code ."
    echo ""
    echo "3. 🚀 Begin the workflow with Role 1 (PM/BA):"
    echo "   @workspace Act as PM/BA and analyze requirements"
    echo ""
    echo "4. 📚 Read the workflow guide:"
    echo "   cat WORKFLOW.md"
    echo ""
    print_message "$BLUE" "For detailed instructions, see WORKFLOW.md"
    echo ""
}

# Main execution
main() {
    print_header
    
    # Check if script is run in a template directory
    if [ ! -f "WORKFLOW.md" ]; then
        print_error "This script should be run from the copilot-workflow-template directory"
        exit 1
    fi
    
    # Create directory structure
    create_directories
    
    # Create .gitkeep files
    create_gitkeep_files
    
    # Create initial documentation
    create_initial_docs
    
    # Create .gitignore
    create_gitignore
    
    # Initialize git (optional)
    read -p "Initialize git repository? (y/n) " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        init_git
        
        read -p "Create initial commit? (y/n) " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            initial_commit
        fi
    fi
    
    # Print next steps
    print_next_steps
}

# Run main function
main
