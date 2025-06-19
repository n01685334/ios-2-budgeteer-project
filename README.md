# Budgeteer iOS App

A simple budgeting app built with SwiftUI and designed for Firebase integration. Created as a school project to demonstrate iOS development fundamentals and collaborative expense management.

## Features

- **Monthly Budget Management** - Set and track monthly spending limits
- **Expense Tracking** - Record and categorize personal expenses
- **Bill Splitting** - Share expenses with others through temporary sessions
- **Dashboard Analytics** - Visual breakdown of spending patterns
- **Search & Filter** - Find expenses by category, date, or keyword

## Project Structure

### Main App Files

| File               | Description                         |
| ------------------ | ----------------------------------- |
| BudgeteerApp.swift | App entry point                     |
| ContentView.swift  | Root view with authentication state |

### Views

| File                    | Description                             |
| ----------------------- | --------------------------------------- |
| LoginSignupView.swift   | Authentication screen                   |
| MainTabView.swift       | Bottom tab navigation container         |
| DashboardView.swift     | Home dashboard with charts/summary      |
| CreateExpenseView.swift | Add new expense form                    |
| ExpenseListView.swift   | List of all expenses with search/filter |
| ExpenseDetailView.swift | Individual expense details              |
| EditExpenseView.swift   | Edit existing expense                   |
| SettingsView.swift      | User and budget settings                |
| SharedExpenseView.swift | Bill splitting interface                |
| ErrorView.swift         | Invalid/expired link handling           |

### Data Models

| File                | Description                       |
| ------------------- | --------------------------------- |
| User.swift          | User profile and budget settings  |
| Expense.swift       | Individual expense records        |
| SharedExpense.swift | Temporary bill splitting sessions |
| Category.swift      | Fixed expense categories enum     |
| DummyData.swift     | Mock data for UI development      |

## Architecture

### Navigation Flow

1. **Login/Signup** → **Tab Navigation**
2. **Four Main Tabs:**
   - Dashboard (home/analytics)
   - Add Expense (create new expenses)
   - Expense List (view/search all expenses)
   - Settings (user/budget configuration)
