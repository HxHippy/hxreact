#!/usr/bin/env bash

# Function to display animated text
animate_text() {
    text=$(echo -e "$1")  # This will interpret escape characters
    for (( i=0; i<${#text}; i++ )); do
        echo -n "${text:$i:1}"
        sleep 0.02
    done
    echo
}

# Function to display a loading spinner
show_spinner() {
    local pid=$1
    local delay=0.1
    local spinstr='|/-\'
    while kill -0 $pid 2>/dev/null; do
        for (( i=0; i<${#spinstr}; i++ )); do
            printf " [%c]  " "${spinstr:$i:1}"
            sleep $delay
            printf "\b\b\b\b\b\b"
        done
    done
    printf "    \b\b\b\b"
}

# ASCII Art Logo
logo() {
cat << "EOF"

██╗  ██╗██╗  ██╗██████╗ ███████╗ █████╗  ██████╗████████╗
██║  ██║╚██╗██╔╝██╔══██╗██╔════╝██╔══██╗██╔════╝╚══██╔══╝
███████║ ╚███╔╝ ██████╔╝█████╗  ███████║██║        ██║
██╔══██║ ██╔██╗ ██╔══██╗██╔══╝  ██╔══██║██║        ██║
██║  ██║██╔╝ ██╗██║  ██║███████╗██║  ██║╚██████╗   ██║
╚═╝  ╚═╝╚═╝  ╚═╝╚═╝  ╚═╝╚══════╝╚═╝  ╚═╝ ╚═════╝   ╚═╝


            @HxHippy on X | hxhippy.com
EOF
}

# TRaViS Advertisement
travis_ad() {
cat << "EOF"

Hey friend! 🚀 Before you dive into your awesome project, I wanted to share something that might help you out.

████████ ██████   █████  ██    ██ ██ ███████
   ██    ██   ██ ██   ██ ██    ██ ██ ██
   ██    ██████  ███████ ██    ██ ██ ███████
   ██    ██   ██ ██   ██  ██  ██  ██      ██
   ██    ██   ██ ██   ██   ████   ██ ███████


Ever heard of TRaViS? It's the Threat Reconnaissance and Vulnerability Intelligence System—a next-gen External Attack Surface Management (EASM) tool.

Imagine having a personal security assistant watching over your projects, helping you find vulnerabilities before the bad guys do. Sounds cool, right?

Check it out here: https://travisasm.com

Oh, and if you're interested in sharing TRaViS with others (and earning some cash while you're at it), they have an affiliate program too: https://travisasm.com/affiliate-marketing-program

Stay safe and happy coding! 💻

EOF
}

# Function to display detailed explanations for beginners
explain() {
    if [ "$is_beginner" = "yes" ]; then
        echo -e "$1"
    fi
}

# Main setup function
hxreact() {
    clear
    logo
    animate_text "Welcome to HxReact - Hippy's Hardcore React Setup!"
    echo

    # Initial question
    read -p "Are you new to React and coding in general? (y/n): " know_react
    if [[ "$know_react" =~ ^[Yy](es)?$ ]]; then
        is_beginner="yes"
        echo
        echo "No worries! We'll guide you through setting up your React project step by step."
    else
        is_beginner="no"
    fi

    # Project Name
    explain "\nFirst, let's give your project a name. This will be the folder where your project files will be stored."
    read -p "Enter your project name (default: awesome-react-app): " project_name
    project_name=${project_name:-awesome-react-app}
    explain "Great! Your project will be called '$project_name'."

    # Framework Selection
    explain "\nNext, we'll choose a React framework. A framework provides a foundation for your app and comes with various features to help you build it."
    explain "\nHere are some popular options:\n"
    explain "1) Next.js - Great for building web applications with server-side rendering and excellent SEO support."
    explain "2) Remix - A full-stack web framework that lets you focus on user interface and work back through web fundamentals."
    explain "3) Gatsby - Ideal for creating static websites with fast performance."
    explain "4) Vite + React - A build tool that offers a fast development experience."
    explain "5) Create React App - The standard way to create a new single-page React application."
    echo -e "\nChoose your React framework:"
    echo "1) Next.js"
    echo "2) Remix"
    echo "3) Gatsby"
    echo "4) Vite + React"
    echo "5) Create React App"
    read -p "Enter your choice (1-5): " framework_choice

    case $framework_choice in
        1) framework="next";;
        2) framework="remix";;
        3) framework="gatsby";;
        4) framework="vite";;
        5) framework="cra";;
        *) echo "Invalid choice. Defaulting to Next.js."; framework="next";;
    esac

    # Set up the project creation command
    if [ "$framework" == "next" ]; then
        command="npx create-next-app@latest $project_name"
        # Capture Next.js specific options
        echo
        explain "Next.js offers several options to customize your project."
        explain "1) Use TypeScript"
        explain "2) Use Tailwind CSS"
        explain "3) Use App Router"
        explain "Select the options you want by entering their numbers separated by spaces (e.g., '1 2'): "
        echo "Available options:"
        echo "1) Use TypeScript"
        echo "2) Use Tailwind CSS"
        echo "3) Use App Router"
        read -p "Enter your choices (e.g., '1 2'): " -a next_options

        for option in "${next_options[@]}"; do
            case $option in
                1) command+=" --typescript"; typescript_setup="yes";;
                2) command+=" --tailwind"; ui="tailwind";;
                3) command+=" --app";;
                *) echo "Invalid option: $option";;
            esac
        done

    elif [ "$framework" == "remix" ]; then
        command="npx create-remix@latest $project_name"
    elif [ "$framework" == "gatsby" ]; then
        command="npx gatsby new $project_name"
    elif [ "$framework" == "vite" ]; then
        command="npm create vite@latest $project_name -- --template react"
    elif [ "$framework" == "cra" ]; then
        # Ask if the user wants TypeScript
        explain "\nDo you want to use TypeScript in your project? (TypeScript is recommended)"
        read -p "Use TypeScript? (y/n): " use_typescript
        if [[ "$use_typescript" =~ ^[Yy](es)?$ ]]; then
            command="npx create-react-app@latest $project_name --template typescript"
            typescript_setup="yes"
        else
            command="npx create-react-app@latest $project_name"
        fi
    fi

    # Project Creation
    animate_text "\nCreating your $framework app called $project_name..."
    $command
    if [ $? -ne 0 ]; then
        echo "Project creation failed. Exiting."
        exit 1
    fi

    cd "$project_name" || { echo "Failed to enter project directory. Exiting."; exit 1; }

    # Initialize Git repository early to fix Husky issues
    git init
    echo "node_modules" > .gitignore

    # Check if TypeScript is already set up
    if [ -f "tsconfig.json" ]; then
        typescript_setup="yes"
    fi

    # TypeScript
    if [ "$typescript_setup" != "yes" ]; then
        explain "\nTypeScript is a programming language that builds on JavaScript by adding syntax for types."
        explain "It can help catch errors early and improve code quality, especially in larger projects."
        read -p "Do you want to use TypeScript? (y/n): " use_typescript
        if [[ "$use_typescript" =~ ^[Yy](es)?$ ]]; then
            if [ "$framework" == "cra" ]; then
                # Install a compatible version of TypeScript with CRA
                npm install -D typescript@4.9.5 @types/react @types/react-dom
            else
                npm install -D typescript @types/react @types/react-dom
            fi
            explain "TypeScript has been set up for your project."
            typescript_setup="yes"
        fi
    else
        explain "\nTypeScript was already set up during project creation."
    fi

    # UI Framework
    if [ "$ui" != "tailwind" ]; then
        explain "\nNow, let's choose a UI framework. This will help you style your app quickly and efficiently."
        explain "\nHere are some options:\n"
        explain "1) Tailwind CSS - A utility-first CSS framework for rapidly building custom designs."
        explain "2) Chakra UI - A simple, modular, and accessible component library."
        explain "3) Material-UI - React components for faster and easier web development, following Material Design."
        explain "4) Ant Design - A design system with values of Nature and Determinacy for enterprise-level products."
        explain "5) styled-components - Allows you to write CSS in your JavaScript components."
        echo -e "\nChoose your UI framework:"
        echo "1) Tailwind CSS"
        echo "2) Chakra UI"
        echo "3) Material-UI"
        echo "4) Ant Design"
        echo "5) styled-components"
        read -p "Enter your choice (1-5): " ui_choice

        case $ui_choice in
            1) ui="tailwind"; npm install -D tailwindcss@latest postcss@latest autoprefixer@latest && npx tailwindcss init -p;;
            2) ui="chakra"; npm install @chakra-ui/react@latest @emotion/react@latest @emotion/styled@latest framer-motion@latest;;
            3) ui="mui"; npm install @mui/material@latest @emotion/react@latest @emotion/styled@latest;;
            4) ui="antd"; npm install antd@latest;;
            5) ui="styled"; npm install styled-components@latest;;
            *) echo "Invalid choice. Defaulting to Tailwind CSS."; ui="tailwind"; npm install -D tailwindcss@latest postcss@latest autoprefixer@latest && npx tailwindcss init -p;;
        esac

        animate_text "Setting up $ui..."
        if [ "$ui" = "tailwind" ]; then
            cat > tailwind.config.js <<EOL
module.exports = {
  content: ['./src/**/*.{js,jsx,ts,tsx}'],
  theme: { extend: {} },
  plugins: [require('@tailwindcss/forms'), require('@tailwindcss/typography')],
}
EOL
            mkdir -p src/styles
            echo -e "@tailwind base;\n@tailwind components;\n@tailwind utilities;" > src/styles/globals.css
            npm install -D @tailwindcss/forms@latest @tailwindcss/typography@latest
            explain "Tailwind CSS is set up and ready to use."
        fi
    else
        explain "\nUI framework (Tailwind CSS) was already set up during project creation."
    fi

    # State Management
    explain "\nState management libraries help you manage the data (state) in your application."
    explain "They are especially useful as your application grows in complexity."
    if [ "$is_beginner" = "yes" ]; then
        read -p "Do you expect your app to have complex state management needs? (y/n): " complex_state
        if [[ "$complex_state" =~ ^[Yy](es)?$ ]]; then
            explain "\nFor complex state management, we recommend Redux Toolkit."
            state_choice=1
        else
            explain "\nFor simpler state management, we recommend Zustand."
            state_choice=2
        fi
    else
        echo -e "\nChoose your state management library:"
        echo "1) Redux Toolkit"
        echo "2) Zustand"
        echo "3) Jotai"
        echo "4) Recoil"
        echo "5) MobX"
        echo "6) XState"
        echo "7) None"
        read -p "Enter your choice (1-7): " state_choice
    fi

    case $state_choice in
        1) npm install @reduxjs/toolkit@latest react-redux@latest; explain "Redux Toolkit has been installed."; state_lib="Redux Toolkit";;
        2) npm install zustand@latest; explain "Zustand has been installed."; state_lib="Zustand";;
        3) npm install jotai@latest; explain "Jotai has been installed."; state_lib="Jotai";;
        4) npm install recoil@latest; explain "Recoil has been installed."; state_lib="Recoil";;
        5) npm install mobx@latest mobx-react-lite@latest; explain "MobX has been installed."; state_lib="MobX";;
        6) npm install xstate@latest @xstate/react@latest; explain "XState has been installed."; state_lib="XState";;
        7) echo "No state management library selected."; state_lib="None";;
        *) echo "Invalid choice. No state management library will be installed."; state_lib="None";;
    esac

    # Database
    explain "\nDoes your app need to store data persistently, like user accounts or posts?"
    explain "\nHere are some options for databases and ORM tools:\n"
    explain "1) Prisma - Next-generation Node.js and TypeScript ORM."
    explain "2) Firebase - A Backend-as-a-Service platform by Google."
    explain "3) MongoDB with Mongoose - A NoSQL database with an elegant object modeling tool."
    explain "4) SQLite - A lightweight, file-based SQL database."
    explain "5) None - If you're not sure, you can skip this for now."
    echo "Enter your choice (1-5): "
    read -p "1) Prisma, 2) Firebase, 3) Mongoose, 4) SQLite, 5) None: " db_choice

    case $db_choice in
        1) db="Prisma"; npm install prisma@latest @prisma/client@latest && npx prisma init; explain "Prisma has been set up.";;
        2) db="Firebase"; npm install firebase@latest; explain "Firebase has been installed.";;
        3) db="Mongoose"; npm install mongoose@latest; explain "Mongoose has been installed.";;
        4) db="SQLite"; npm install sqlite3@latest; explain "SQLite has been installed.";;
        5) echo "No database/ORM selected."; db="None";;
        *) echo "Invalid choice. No database/ORM will be installed."; db="None";;
    esac

    # Security Considerations
    explain "\nSecurity is crucial for any application."
    explain "We recommend using environment variables to store sensitive data like API keys."
    explain "We'll set up a .env file and ensure it's ignored by Git to keep your secrets safe."
    touch .env
    echo ".env" >> .gitignore
    explain "Security measures have been put in place to protect your sensitive data."

    # GraphQL and Authentication
    explain "\nGraphQL is a query language for APIs, and authentication allows users to sign in securely."
    read -p "Do you want to set up GraphQL? (y/n): " want_graphql
    read -p "Do you need user authentication in your app? (y/n): " need_auth

    if [[ "$want_graphql" =~ ^[Yy](es)?$ ]]; then
        explain "Which GraphQL client would you like to use?"
        echo "1) Apollo Client"
        echo "2) Relay"
        echo "3) urql"
        read -p "Enter your choice (1-3): " graphql_choice
        case $graphql_choice in
            1) npm install @apollo/client@latest graphql@latest; explain "Apollo Client has been installed."; graphql_client="Apollo Client";;
            2) npm install react-relay@latest relay-runtime@latest; explain "Relay has been installed."; graphql_client="Relay";;
            3) npm install urql@latest graphql@latest; explain "urql has been installed."; graphql_client="urql";;
            *) echo "Invalid choice. No GraphQL setup selected."; graphql_client="None";;
        esac
    else
        graphql_client="None"
    fi

    if [[ "$need_auth" =~ ^[Yy](es)?$ ]]; then
        explain "Which authentication provider would you like to use?"
        echo "1) Auth0"
        echo "2) Firebase Authentication"
        echo "3) NextAuth.js"
        read -p "Enter your choice (1-3): " auth_choice
        case $auth_choice in
            1) npm install @auth0/auth0-react@latest; explain "Auth0 has been installed."; auth_provider="Auth0";;
            2) npm install firebase@latest; explain "Firebase Authentication has been installed."; auth_provider="Firebase Authentication";;
            3) npm install next-auth@latest; explain "NextAuth.js has been installed."; auth_provider="NextAuth.js";;
            *) echo "Invalid choice. No authentication setup selected."; auth_provider="None";;
        esac
    else
        auth_provider="None"
    fi

    # Testing
    explain "\nTesting ensures your app works as expected and helps prevent future bugs."
    explain "We recommend setting up a testing framework."
    if [ "$is_beginner" = "yes" ]; then
        explain "\nFor beginners, we recommend Jest + React Testing Library for unit and integration testing."
        test_choice=1
    else
        echo -e "\nChoose your testing framework:"
        echo "1) Jest + React Testing Library"
        echo "2) Vitest"
        echo "3) Cypress"
        echo "4) None"
        read -p "Enter your choice (1-4): " test_choice
    fi

    case $test_choice in
        1)
            npm install -D jest@latest @testing-library/react@latest @testing-library/jest-dom@latest jest-environment-jsdom@latest
            echo "module.exports = { testEnvironment: 'jsdom' };" > jest.config.js
            explain "Jest and React Testing Library have been set up."
            testing="Jest + React Testing Library";;
        2)
            npm install -D vitest@latest @testing-library/react@latest @testing-library/jest-dom@latest jsdom@latest
            echo '/// <reference types="vitest" />' > vite.config.ts
            echo "export default { test: { environment: 'jsdom' } }" >> vite.config.ts
            explain "Vitest has been set up."
            testing="Vitest";;
        3)
            npm install -D cypress@latest @testing-library/cypress@latest
            npx cypress open
            explain "Cypress has been set up."
            testing="Cypress";;
        4)
            echo "No testing framework selected."
            testing="None";;
        *) echo "Invalid choice. No testing framework will be installed."
           testing="None";;
    esac

    # Additional useful packages
    animate_text "\nInstalling additional useful packages..."
    npm install axios@latest react-hook-form@latest zod@latest @tanstack/react-query@latest date-fns@latest react-icons@latest lodash@latest
    explain "These packages will help with forms, data fetching, validation, dates, icons, and more."

    # Dev dependencies
    animate_text "\nInstalling development dependencies..."
    npm install -D eslint@latest @typescript-eslint/parser@latest @typescript-eslint/eslint-plugin@latest prettier@latest eslint-config-prettier@latest husky@latest lint-staged@latest
    explain "Development tools for code linting and formatting have been set up."

    # ESLint and Prettier setup
    npx eslint --init
    echo '{"semi": false, "singleQuote": true, "trailingComma": "es5"}' > .prettierrc
    explain "ESLint and Prettier have been configured for code quality and consistency."

    # Husky and lint-staged
    npx husky install
    npx husky add .husky/pre-commit "npx lint-staged"
    echo '{"*.{js,jsx,ts,tsx}": ["eslint --fix", "prettier --write"]}' > .lintstagedrc
    explain "Husky and lint-staged have been set up to format code before commits."

    # Storybook
    explain "\nStorybook is a tool for building UI components and pages in isolation."
    read -p "Would you like to install Storybook for component development? (y/n): " install_storybook
    if [[ "$install_storybook" =~ ^[Yy](es)?$ ]]; then
        npx sb init
        explain "Storybook has been set up. You can start it with 'npm run storybook'."
    fi

    # Internationalization
    explain "\nInternationalization (i18n) allows your app to support multiple languages."
    read -p "Would you like to set up internationalization with react-i18next? (y/n): " setup_i18n
    if [[ "$setup_i18n" =~ ^[Yy](es)?$ ]]; then
        npm install react-i18next@latest i18next@latest
        mkdir -p public/locales/en
        echo '{"greeting": "Hello, World!"}' > public/locales/en/translation.json
        explain "Internationalization has been set up with a default English translation."
    fi

    # PWA
    explain "\nProgressive Web Apps (PWA) make your app feel like a native app on mobile devices."
    read -p "Would you like to set up Progressive Web App (PWA) capabilities? (y/n): " setup_pwa
    if [[ "$setup_pwa" =~ ^[Yy](es)?$ ]]; then
        if [ "$framework" = "next" ]; then
            npm install next-pwa@latest
        else
            npm install workbox-webpack-plugin@latest
        fi
        explain "PWA capabilities have been added to your app."
    fi

    # CI/CD
    explain "\nContinuous Integration/Continuous Deployment (CI/CD) automates testing and deployment."
    read -p "Would you like to set up a basic CI/CD configuration with GitHub Actions? (y/n): " setup_cicd
    if [[ "$setup_cicd" =~ ^[Yy](es)?$ ]]; then
        mkdir -p .github/workflows
        cat > .github/workflows/ci.yml <<EOL
name: CI
on: [push, pull_request]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@v3
    - name: Use Node.js
      uses: actions/setup-node@v3
      with:
        node-version: '16.x'
    - run: npm ci
    - run: npm run build --if-present
    - run: npm test
EOL
        explain "CI/CD configuration with GitHub Actions has been set up."
    fi

    # README generation
    animate_text "\nGenerating README.md..."
    cat > README.md <<EOL
# $project_name

This project was created with HxReact - Hippy's Extreme React Setup.

## Technologies Used

- Framework: $framework
- UI Library: $ui
- State Management: ${state_lib:-None}
- Database/ORM: ${db:-None}
- Testing: ${testing:-None}
- GraphQL: ${graphql_client:-None}
- Authentication: ${auth_provider:-None}

## Getting Started

1. Clone this repository
2. Run \`npm install\` to install dependencies
3. Run \`npm run dev\` to start the development server

## Available Scripts

- \`npm run dev\`: Start the development server
- \`npm run build\`: Build the production-ready app
- \`npm start\`: Start the production server
- \`npm test\`: Run tests

## Project Structure

[Add your project structure here]

## Contributing

[Add contributing guidelines here]

## License

[Add your license here]
EOL
    explain "A README.md file has been generated to help you understand your project."

    animate_text "\nSetup complete! Your $framework app with $ui UI is ready for development."
    echo "Check the README.md for more information about your project setup."

    read -p "Would you like to start the development server now? (y/n): " start_server
    if [[ "$start_server" =~ ^[Yy](es)?$ ]]; then
        if [ "$framework" == "next" ] || [ "$framework" == "vite" ] || [ "$framework" == "remix" ]; then
            npm run dev || echo "Failed to start the development server. Please check for errors."
        elif [ "$framework" == "gatsby" ]; then
            npm run develop || echo "Failed to start the development server. Please check for errors."
        else
            npm start || echo "Failed to start the development server. Please check for errors."
        fi
    else
        echo "You can start the server anytime by running 'npm run dev' inside your project directory."
    fi

    # Display TRaViS advertisement
    travis_ad
}

# Run the setup function
hxreact
