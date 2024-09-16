# HxReact Setup Script

Welcome to **HxReact**, Hippy's Hardcore React Setup! This script automates the creation of a React application with customizable configurations tailored to your needs. It simplifies the setup process by allowing you to choose your preferred technologies and tools interactively.

## Table of Contents

- [Features](#features)
- [Prerequisites](#prerequisites)
- [Installation](#installation)
- [Usage](#usage)
  - [Step-by-Step Guide](#step-by-step-guide)
- [Options and Customizations](#options-and-customizations)
  - [Framework Selection](#framework-selection)
  - [TypeScript Support](#typescript-support)
  - [UI Framework](#ui-framework)
  - [State Management](#state-management)
  - [Database/ORM](#databaseorm)
  - [GraphQL Setup](#graphql-setup)
  - [Authentication](#authentication)
  - [Testing Framework](#testing-framework)
  - [Additional Packages](#additional-packages)
  - [Development Tools](#development-tools)
  - [Storybook](#storybook)
  - [Internationalization (i18n)](#internationalization-i18n)
  - [Progressive Web App (PWA)](#progressive-web-app-pwa)
  - [Continuous Integration/Continuous Deployment (CI/CD)](#continuous-integrationcontinuous-deployment-cicd)
- [Generated Project Structure](#generated-project-structure)
- [Troubleshooting](#troubleshooting)
- [Contributing](#contributing)
- [License](#license)
- [Acknowledgements](#acknowledgements)

---

## Features

- **Interactive Setup**: Guides you through setting up a React project with options tailored to your experience level.
- **Customizable Configuration**: Choose your preferred frameworks, libraries, and tools.
- **Automated Installation**: Installs all necessary dependencies and sets up configurations.
- **Beginner-Friendly Explanations**: Provides detailed explanations for newcomers to React and coding.
- **Advanced Tooling**: Optionally includes advanced tools like TypeScript, ESLint, Prettier, Husky, and more.

## Prerequisites

- **Operating System**: Unix-like systems (Linux, macOS). May require adjustments for Windows environments.
- **Node.js**: Version 14.x or higher.
- **npm**: Version 6.x or higher.
- **Git**: Required for initializing the repository and setting up Husky.

Ensure you have Node.js and npm installed. You can download them from the [official website](https://nodejs.org/).

## Installation

1. **Clone the Repository** (if applicable):

   ```bash
   git clone https://github.com/yourusername/hxreact-setup.git
   cd hxreact-setup
   ```

2. **Make the Script Executable**:

   ```bash
   chmod +x hxreact.sh
   ```

3. **Install Necessary Global Packages** (if not already installed):

   ```bash
   npm install -g npx
   ```

## Usage

Run the script using the following command:

```bash
./hxreact.sh
```

### Step-by-Step Guide

1. **Welcome Message**: The script displays an ASCII art logo and welcomes you to HxReact.

2. **Experience Level**: You'll be asked if you're new to React and coding in general. If you answer "yes," the script will provide detailed explanations throughout the setup.

3. **Project Name**: Enter a name for your project. This will be the folder where your project files are stored.

4. **Framework Selection**: Choose from popular React frameworks:

   - Next.js
   - Remix
   - Gatsby
   - Vite + React
   - Create React App

5. **TypeScript Support**: Decide whether to use TypeScript in your project.

6. **UI Framework**: Select a UI framework:

   - Tailwind CSS
   - Chakra UI
   - Material-UI
   - Ant Design
   - styled-components

7. **State Management**: Choose a state management library:

   - Redux Toolkit
   - Zustand
   - Jotai
   - Recoil
   - MobX
   - XState
   - None

8. **Database/ORM**: Optionally set up a database or ORM tool:

   - Prisma
   - Firebase
   - MongoDB with Mongoose
   - SQLite
   - None

9. **GraphQL Setup**: Decide whether to set up GraphQL and select a client:

   - Apollo Client
   - Relay
   - urql
   - None

10. **Authentication**: Optionally set up an authentication provider:

    - Auth0
    - Firebase Authentication
    - NextAuth.js
    - None

11. **Testing Framework**: Choose a testing framework:

    - Jest + React Testing Library
    - Vitest
    - Cypress
    - None

12. **Additional Packages**: The script will automatically install useful packages like Axios, React Hook Form, Zod, React Query, Date-fns, React Icons, and Lodash.

13. **Development Tools**: ESLint, Prettier, Husky, and lint-staged will be set up for code quality and consistency.

14. **Optional Tools**:

    - **Storybook**: For building UI components in isolation.
    - **Internationalization (i18n)**: Using react-i18next.
    - **Progressive Web App (PWA)**: PWA capabilities.
    - **Continuous Integration/Continuous Deployment (CI/CD)**: Basic CI/CD configuration with GitHub Actions.

15. **README Generation**: A `README.md` file will be generated with details about your project.

16. **Start Development Server**: Optionally start the development server immediately.

17. **TRaViS Advertisement**: A friendly reminder about TRaViS EASM tool.

---

## Options and Customizations

### Framework Selection

- **Next.js**: Ideal for server-side rendering and SEO.
- **Remix**
- **Gatsby**
- **Vite + React**: Offers a fast development experience.
- **Create React App**: Standard way to create a new React application.

### TypeScript Support

- **Yes**: Adds TypeScript support to your project.
- **No**: Uses plain JavaScript.

### UI Framework

- **Tailwind CSS**
- **Chakra UI**
- **Material-UI**
- **Ant Design**
- **styled-components**

### State Management

- **Redux Toolkit**: For complex state management needs.
- **Zustand**: Lightweight and easy to use.
- **Jotai**
- **Recoil**
- **MobX**
- **XState**
- **None**

### Database/ORM

- **Prisma**
- **Firebase**
- **Mongoose**
- **SQLite**
- **None**

### GraphQL Setup

- **Yes**: Choose a client:

  - **Apollo Client**
  - **Relay**
  - **urql**

- **No**

### Authentication

- **Auth0**
- **Firebase Authentication**
- **NextAuth.js**
- **None**

### Testing Framework

- **Jest + React Testing Library**: Recommended for beginners.
- **Vitest**
- **Cypress**
- **None**

### Additional Packages

The script automatically installs:

- **axios**: Promise-based HTTP client.
- **react-hook-form**: Forms in React.
- **zod**: TypeScript-first schema validation.
- **@tanstack/react-query**: Data fetching library.
- **date-fns**: Modern JavaScript date utility library.
- **react-icons**: Popular icons as React components.
- **lodash**: Utility library.

### Development Tools

- **ESLint**: Linting utility.
- **Prettier**: Code formatter.
- **Husky**: Git hooks.
- **lint-staged**: Run linters on Git staged files.

### Storybook

- **Yes**: Sets up Storybook for UI component development.
- **No**

### Internationalization (i18n)

- **Yes**: Sets up react-i18next for i18n support.
- **No**

### Progressive Web App (PWA)

- **Yes**: Adds PWA capabilities.
- **No**

### Continuous Integration/Continuous Deployment (CI/CD)

- **Yes**: Sets up GitHub Actions for CI/CD.
- **No**

---

## Generated Project Structure

Your project will have a structure similar to:

```
your-project-name/
├── node_modules/
├── public/
├── src/
│   ├── components/
│   ├── styles/
│   │   └── globals.css
│   ├── App.js / App.tsx
│   ├── index.js / index.tsx
│   └── ...
├── .env
├── .gitignore
├── package.json
├── README.md
└── ...
```

---

## Troubleshooting

- **Version Conflicts**: If you encounter dependency conflicts, ensure you're using compatible versions of Node.js and npm. The script attempts to install the latest versions, but some libraries may have peer dependency requirements.
- **Permission Issues**: If you face permission errors, try running the script with `sudo`, but it's generally better to adjust your user permissions.
- **Missing Global Packages**: Ensure that `npx` and `git` are installed and available in your PATH.

---

## Contributing

Contributions are welcome! Please follow these steps:

1. Fork the repository.
2. Create a new branch:

   ```bash
   git checkout -b feature/your-feature-name
   ```

3. Commit your changes:

   ```bash
   git commit -m "Add your message here"
   ```

4. Push to the branch:

   ```bash
   git push origin feature/your-feature-name
   ```

5. Open a pull request.

Please ensure your code adheres to the existing coding conventions and passes all tests.

---

## License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.

**Attribution Notice**: Users of this software must preserve the [NOTICE](NOTICE) file, which includes attribution to the original author and associated entities.


---

## Acknowledgements

- **HxHippy**: For creating this comprehensive setup script.
- **Open-Source Community**: For the amazing tools and libraries utilized in this project.

---

**Happy Coding!** 🚀

If you have any questions or need further assistance, feel free to reach out or open an issue.
