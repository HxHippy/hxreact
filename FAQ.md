# Frequently Asked Questions (FAQ)

Welcome to the **HxReact** FAQ section! Here you'll find answers to common questions about the HxReact setup script. If you have a question that's not covered here, feel free to [contact us](#📬-contact).

---

## Table of Contents

- [General Questions](#general-questions)
  - [What is HxReact?](#what-is-hxreact)
  - [Who is HxHippy?](#who-is-hxhippy)
  - [Why should I use HxReact over other setup tools?](#why-should-i-use-hxreact-over-other-setup-tools)
  - [Is HxReact suitable for beginners?](#is-hxreact-suitable-for-beginners)
- [Installation and Usage](#installation-and-usage)
  - [How do I install HxReact?](#how-do-i-install-hxreact)
  - [What are the prerequisites for using HxReact?](#what-are-the-prerequisites-for-using-hxreact)
  - [How do I run the script?](#how-do-i-run-the-script)
  - [Does HxReact work on Windows?](#does-hxreact-work-on-windows)
- [Features and Options](#features-and-options)
  - [What frameworks can I choose from?](#what-frameworks-can-i-choose-from)
  - [Can I use TypeScript with HxReact?](#can-i-use-typescript-with-hxreact)
  - [What UI libraries are supported?](#what-ui-libraries-are-supported)
  - [Does HxReact support state management libraries?](#does-hxreact-support-state-management-libraries)
  - [Can I set up a database or ORM with HxReact?](#can-i-set-up-a-database-or-orm-with-hxreact)
  - [Does HxReact support GraphQL?](#does-hxreact-support-graphql)
  - [What testing frameworks are available?](#what-testing-frameworks-are-available)
  - [Can I include Storybook in my project?](#can-i-include-storybook-in-my-project)
  - [Does HxReact support internationalization (i18n)?](#does-hxreact-support-internationalization-i18n)
  - [Can I set up a Progressive Web App (PWA) with HxReact?](#can-i-set-up-a-progressive-web-app-pwa-with-hxreact)
- [Customization and Configuration](#customization-and-configuration)
  - [How customizable is the generated project?](#how-customizable-is-the-generated-project)
  - [Can I modify the generated configurations?](#can-i-modify-the-generated-configurations)
  - [How do I add additional packages after setup?](#how-do-i-add-additional-packages-after-setup)
- [Troubleshooting](#troubleshooting)
  - [I encountered an error during setup. What should I do?](#i-encountered-an-error-during-setup-what-should-i-do)
  - [The script doesn't run on my system. How can I fix it?](#the-script-doesnt-run-on-my-system-how-can-i-fix-it)
  - [I get version conflicts when installing packages. How can I resolve this?](#i-get-version-conflicts-when-installing-packages-how-can-i-resolve-this)
- [Contribution and Support](#contribution-and-support)
  - [How can I contribute to HxReact?](#how-can-i-contribute-to-hxreact)
  - [Where can I report bugs or request features?](#where-can-i-report-bugs-or-request-features)
  - [How can I contact the maintainer?](#how-can-i-contact-the-maintainer)
- [Licensing and Attribution](#licensing-and-attribution)
  - [What is the license for HxReact?](#what-is-the-license-for-hxreact)
  - [Are there any attribution requirements?](#are-there-any-attribution-requirements)
- [Miscellaneous](#miscellaneous)
  - [What is TRaViS?](#what-is-travis)
  - [How is HxReact affiliated with TRaViS?](#how-is-hxreact-affiliated-with-travis)
  - [Is there any way to support the development of HxReact?](#is-there-any-way-to-support-the-development-of-hxreact)
- [Contact](#📬-contact)

---

## General Questions

### What is HxReact?

**HxReact** is an automated, interactive script designed to simplify and accelerate the setup of a customized React application. It allows you to choose your preferred frameworks, libraries, and tools through an intuitive command-line interface, tailoring the project to your specific needs.

### Who is HxHippy?

**HxHippy** is the creator and maintainer of HxReact. An experienced developer passionate about simplifying development workflows and contributing to the open-source community.

- **Twitter**: [@HxHippy](https://twitter.com/HxHippy)
- **Website**: [hxhippy.com](https://hxhippy.com)

### Why should I use HxReact over other setup tools?

HxReact offers several advantages:

- **Interactive Setup**: Tailors the project to your preferences through an interactive CLI.
- **Beginner-Friendly**: Provides explanations for each option, making it suitable for newcomers.
- **Customization**: Offers a wide range of choices for frameworks, libraries, and tools.
- **Time-Saving**: Automates the setup process, allowing you to focus on development.
- **Best Practices**: Ensures configurations follow industry best practices.

### Is HxReact suitable for beginners?

Absolutely! HxReact is designed to be beginner-friendly. If you're new to React or coding in general, the script provides detailed explanations for each choice, guiding you through the setup process step by step.

---

## Installation and Usage

### How do I install HxReact?

You don't need to install HxReact. Simply clone the repository and run the script:

```bash
# Clone the repository
git clone https://github.com/hxhippy/hxreact.git

# Navigate into the directory
cd hxreact-setup

# Make the script executable
chmod +x hxreact.sh

# Run the script
./hxreact.sh
```

### What are the prerequisites for using HxReact?

- **Operating System**: Unix-like systems (Linux, macOS). Windows users can use Git Bash or WSL.
- **Node.js**: Version 14.x or higher.
- **npm**: Comes bundled with Node.js.
- **Git**: Required for initializing the repository and setting up Husky.

### How do I run the script?

After making the script executable, run it using:

```bash
./hxreact.sh
```

Follow the interactive prompts to set up your React application.

### Does HxReact work on Windows?

While HxReact is designed for Unix-like systems, Windows users can run it using:

- **Git Bash**: Comes with Git for Windows.
- **Windows Subsystem for Linux (WSL)**: Provides a Linux environment on Windows.

Ensure that you have Node.js, npm, and Git installed in your environment.

---

## Features and Options

### What frameworks can I choose from?

HxReact supports the following React frameworks:

- **Next.js**
- **Remix**
- **Gatsby**
- **Vite + React**
- **Create React App**

### Can I use TypeScript with HxReact?

Yes, you have the option to include TypeScript support during setup. TypeScript helps catch errors early and improves code quality.

### What UI libraries are supported?

You can choose from the following UI libraries:

- **Tailwind CSS**
- **Chakra UI**
- **Material-UI**
- **Ant Design**
- **styled-components**

### Does HxReact support state management libraries?

Yes, HxReact allows you to include state management libraries:

- **Redux Toolkit**
- **Zustand**
- **Jotai**
- **Recoil**
- **MobX**
- **XState**
- **None** (if you prefer to skip this step)

### Can I set up a database or ORM with HxReact?

Absolutely! You can choose to set up:

- **Prisma**
- **Firebase**
- **Mongoose**
- **SQLite**
- **None** (if you prefer to skip this step)

### Does HxReact support GraphQL?

Yes, you can set up GraphQL with your choice of client:

- **Apollo Client**
- **Relay**
- **urql**
- **None** (if you prefer to skip this step)

### What testing frameworks are available?

You can include one of the following testing frameworks:

- **Jest + React Testing Library** (recommended for beginners)
- **Vitest**
- **Cypress**
- **None** (if you prefer to skip this step)

### Can I include Storybook in my project?

Yes, HxReact gives you the option to set up **Storybook** for building UI components in isolation.

### Does HxReact support internationalization (i18n)?

Yes, you can set up internationalization using **react-i18next** during the setup process.

### Can I set up a Progressive Web App (PWA) with HxReact?

Yes, HxReact allows you to add PWA capabilities to your project, making your app feel like a native app on mobile devices.

---

## Customization and Configuration

### How customizable is the generated project?

The generated project is highly customizable. HxReact sets up a standard project structure with configurations based on your choices. You can further customize and extend your project as needed.

### Can I modify the generated configurations?

Yes, all configurations are accessible within your project directory. You can modify ESLint rules, Prettier settings, Webpack configurations, etc., to suit your preferences.

### How do I add additional packages after setup?

You can install additional packages using npm or yarn:

```bash
# Using npm
npm install package-name

# Using yarn
yarn add package-name
```

---

## Troubleshooting

### I encountered an error during setup. What should I do?

- **Check Error Messages**: Read the error output carefully; it often contains clues.
- **Node.js and npm Versions**: Ensure you have the required versions of Node.js and npm.
- **Dependency Conflicts**: Sometimes, package versions can conflict. Try deleting `node_modules` and running `npm install` again.
- **Internet Connection**: Ensure you have a stable internet connection during the setup.
- **Permissions**: Make sure you have the necessary permissions to execute scripts and write files.

If the issue persists, [contact us](#📬-contact) or open an issue on GitHub.

### The script doesn't run on my system. How can I fix it?

- **Execution Permission**: Ensure the script is executable:

  ```bash
  chmod +x hxreact.sh
  ```

- **Correct Shell**: The script uses bash. Make sure you're running it in a bash-compatible shell.
- **Windows Users**: Use Git Bash or WSL to run the script.

### I get version conflicts when installing packages. How can I resolve this?

- **Clear Cache**: Run `npm cache clean --force` to clear npm cache.
- **Use Compatible Versions**: Ensure that package versions are compatible. You might need to install specific versions of some packages.
- **Delete node_modules and package-lock.json**: Then run `npm install` to reinstall dependencies.

---

## Contribution and Support

### How can I contribute to HxReact?

We welcome contributions! Here’s how you can help:

1. **Fork the Repository**:

   ```bash
   git clone https://github.com/hxhippy/hxreact.git
   ```

2. **Create a New Branch**:

   ```bash
   git checkout -b feature/your-feature-name
   ```

3. **Make Changes and Commit**:

   ```bash
   git commit -m "Add your message here"
   ```

4. **Push to the Branch**:

   ```bash
   git push origin feature/your-feature-name
   ```

5. **Open a Pull Request**: Go to the GitHub repository and open a pull request.

Please ensure your code adheres to the existing coding conventions and passes all tests.

### Where can I report bugs or request features?

- **GitHub Issues**: Open an issue in the [GitHub repository](https://github.com/hxhippy/hxreact-setup/issues) for bugs or feature requests.
- **Contact Us**: For direct communication, see the [Contact](#📬-contact) section.

### How can I contact the maintainer?

You can reach out to HxHippy via:

- **Email**: [contact@hxhippy.com](mailto:contact@hxhippy.com)
- **X**: [@HxHippy](https://x.com/HxHippy)
- **Website**: [hxhippy.com](https://hxhippy.com)

---

## Licensing and Attribution

### What is the license for HxReact?

HxReact is licensed under the **Apache License 2.0**. You can find the full text in the [LICENSE](LICENSE) file.

### Are there any attribution requirements?

Yes, users of this software must preserve the [NOTICE](NOTICE) file, which includes attribution to the original author and associated entities.

---

## Miscellaneous

### What is TRaViS?

**TRaViS** stands for **Threat Reconnaissance and Vulnerability Intelligence System**. It's a next-generation External Attack Surface Management (EASM) tool that helps organizations identify and mitigate security vulnerabilities.

- **Website**: [travisasm.com](https://travisasm.com?ref=hxreact)

### How is HxReact affiliated with TRaViS?

HxHippy, the creator of HxReact, is affiliated with TRaViS as an advisor. HxReact includes an affiliate link to TRaViS to help promote this valuable security tool.

### Is there any way to support the development of HxReact?

Yes! You can support us by:

- **Donations**: [Buy Me a Coffee](https://www.buymeacoffee.com/hxhippy)
- **Star the Repository**: Click the ⭐️ button on GitHub.
- **Spread the Word**: Share HxReact with your network.
- **Contribute**: See the [Contribution](#how-can-i-contribute-to-hxreact) section.

---

## 📬 Contact

If you have any questions, suggestions, or need assistance, feel free to reach out:

- **Email**: [contact@hxhippy.com](mailto:contact@hxhippy.com)
- **X**: [@HxHippy](https://x.com/HxHippy)
- **Website**: [hxhippy.com](https://hxhippy.com)
- **GitHub Issues**: [Submit an Issue](https://github.com/yourusername/hxreact-setup/issues)

---

**Thank you for using HxReact!** If you have any other questions, don't hesitate to ask. Happy coding! 🎉
