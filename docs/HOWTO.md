# Create GitHub Repository

## Create Repository on GitHub

1. Go to GitHub.com and sign in to your account
2. Click "Create repository" or "New" in the top-left
3. Fill in the repository details:
    - Repository name: "myproj"
    - Description: "My project"
    - Choose visibility: "Private"
    - Add README: "On"
    - Add .gitignore: "Python"
    - Add license: Choose appropriate license (e.g., "MIT License")
4. Click "Create repository"

## Create Branch Protection Rule

1. Go to the repository view for "myproj"
2. Click "Settings" in the top-right
3. Click "Branches" in the left panel
4. Click "Add branch ruleset"
5. Configure the ruleset:
    - Ruleset Name: "main"
    - Enforcement status: "Active"
    - Branch targeting criteria:
        - Click "Add target"
        - Click "Include by pattern"
        - Type "main"
        - Click "Add Inclusion pattern"
    - Select the following options:
        - [x] Restrict deletions
        - [x] Require a pull request before merging
            - Required approvals: "1"
            - [x] Automatically request Copilot code review
            - Allowed merge methods: "Merge"
        - [x] Block force pushes
6. Click "Create" to save the rule

## Enable Auto-Delete Branch Feature

1. In repository Settings, scroll down to "Pull Requests" section
2. Check the following option:
    - [x] "Automatically delete head branches"

