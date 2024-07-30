## Pull Request Description

[Provide a brief, clear description of the changes in this PR]

### Changes Made
- [List the main changes or features implemented]
-
-

### Related Issue
[Link to the related issue, if applicable]

### Type of Change
- [ ] Bug fix (non-breaking change which fixes an issue)
- [ ] New feature (non-breaking change which adds functionality)
- [ ] Breaking change (fix or feature that would cause existing functionality to not work as expected)
- [ ] This change requires a documentation update

### How Has This Been Tested?
[Describe the tests you ran to verify your changes]

### Checklist:
- [ ] My code follows the style guidelines of this project
- [ ] I have performed a self-review of my own code
- [ ] I have commented my code, particularly in hard-to-understand areas
- [ ] I have made corresponding changes to the documentation
- [ ] My changes generate no new warnings
- [ ] I have added tests that prove my fix is effective or that my feature works
- [ ] New and existing unit tests pass locally with my changes

## Commit Message Guidelines

Please follow these guidelines for your commit messages:

1. Use the Conventional Commits specification:
   `<type>(<scope>): <subject>`

2. Types:
   - feat: A new feature
   - fix: A bug fix
   - docs: Documentation only changes
   - style: Changes that do not affect the meaning of the code
   - refactor: A code change that neither fixes a bug nor adds a feature
   - test: Adding missing tests or correcting existing tests
   - chore: Changes to the build process or auxiliary tools and libraries

3. Scope: Optional, can be anything specifying the place of the commit change (e.g., ui, api)

4. Subject:
   - Use the imperative, present tense: "change" not "changed" nor "changes"
   - Don't capitalize the first letter
   - No dot (.) at the end

5. Body (optional):
   - Use the imperative, present tense
   - Include motivation for the change and contrast with previous behavior

6. Footer (optional):
   - Reference issues the commit closes
   - Mention breaking changes, if any

Example of a good commit message:

feat(auth): add login functionality
Implement user authentication using JWT tokens.
This allows users to log in and access protected routes.
Closes #123



Remember to keep your commits atomic (one logical change per commit) and your PR focused on a single feature or fix.
