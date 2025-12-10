# 🚀 SRMS - Complete Setup and Running Guide

## Prerequisites Check
Before starting, ensure you have:
- ✅ MinGW-w64 (GCC compiler) installed
- ✅ Modern web browser (Chrome, Firefox, Edge)
- ✅ Command Prompt or PowerShell access

### Verify MinGW Installation
Open PowerShell and run:
```powershell
g++ --version
```
If you see version information, you're ready! If not, install MinGW-w64 from: https://www.mingw-w64.org/

---

## 🎯 Quick Start (Easiest Method)

### Step 1: Open PowerShell in Project Directory
```powershell
cd "c:\Users\rkros\Programing\cc project"
```

### Step 2: Run the Interactive Launcher
```powershell
.\start.bat
```

### Step 3: Choose Your Option
You'll see a menu:
```
1. Build and run Console Application
2. Build and run Web Server
3. Open Web Frontend
4. Exit
```

**For Console Application**: Press `1`
**For Web Application**: Press `2`, then press `3` in a new window

---

## 📱 Running the Console Application

### Method 1: Using the Launcher
```powershell
.\start.bat
```
- Press `1` to build and run
- Press `Y` to start after compilation

### Method 2: Manual Steps
```powershell
# Step 1: Build the application
.\build-console.bat

# If you chose 'N' when asked to run, start it manually:
cd backend
.\srms.exe
```

### Using the Console Application
Once running, you'll see a menu:
```
========== MAIN MENU ==========
1. Add New Student
2. View All Students
3. Search Student
4. Update Student
5. Delete Student
6. Exit
===============================
```

**Example Workflow:**
1. Press `1` to add a student
   - Enter name: `John Doe`
   - Enter age: `20`
   - Enter course: `Computer Science`
   - Enter email: `john@example.com`
   - Enter GPA: `8.5`

2. Press `2` to view all students

3. Press `3` to search
   - Choose option `1` for ID search or `2` for name search

4. Press `4` to update (need student ID)

5. Press `5` to delete (need student ID)

6. Press `6` to exit

---

## 🌐 Running the Web Application

### Step 1: Start the Backend Server

#### Option A: Using the Launcher
```powershell
# Open PowerShell in project directory
cd "c:\Users\rkros\Programing\cc project"

# Run launcher
.\start.bat

# Press 2 to build and run server
# Press Y when asked to start
```

#### Option B: Manual Build and Run
```powershell
# Build the server
.\build-server.bat

# When compilation completes, press Y to start
# OR start manually:
.\run-server.bat
```

You should see:
```
========================================
  SRMS Backend Server Running
  Port: 8080
========================================

Waiting for connections...
```

**Keep this terminal window open!** The server must stay running.

### Step 2: Open the Frontend

#### Option A: Using the Launcher (Recommended)
```powershell
# Open a NEW PowerShell window
cd "c:\Users\rkros\Programing\cc project"

# Run launcher
.\start.bat

# Press 3 to open web frontend
```

#### Option B: Manual Method
```powershell
# Navigate to frontend folder
cd "c:\Users\rkros\Programing\cc project\frontend"

# Open in default browser
start index.html
```

Or simply double-click `index.html` in File Explorer.

### Step 3: Use the Web Interface

1. **Home Page** (`index.html`)
   - Overview of features
   - Quick statistics
   - Navigation to all pages

2. **Add Student** (`add-student.html`)
   - Fill in the form fields
   - Click "Add Student"
   - See success message

3. **View Students** (`view-students.html`)
   - See all students in a table
   - Click "Edit" to update a student
   - Click "Delete" to remove a student
   - Click "🔄 Refresh" to reload data

4. **Search Student** (`search-student.html`)
   - Enter student ID
   - Click "🔍 Search"
   - View student details

---

## 🔄 Complete Workflow Example

### Starting Fresh

**Terminal 1 (Server):**
```powershell
cd "c:\Users\rkros\Programing\cc project"
.\build-server.bat
# Press Y to start server
# Server is now running on port 8080
```

**Browser:**
```powershell
# Open new terminal or use File Explorer
cd "c:\Users\rkros\Programing\cc project\frontend"
start index.html
```

### Adding Your First Student

1. In browser, click **"Add Student"** in navigation
2. Fill in the form:
   ```
   Name: Alice Johnson
   Age: 21
   Course: Data Science
   Email: alice@university.edu
   GPA: 8.5
   ```
3. Click **"Add Student"** button
4. You'll see: "Student added successfully! ID: 1001"

### Viewing Students

1. Click **"View Students"** in navigation
2. You'll see Alice in the table
3. Click **"Edit"** to modify her information
4. Click **"Delete"** to remove (with confirmation)

### Searching for a Student

1. Click **"Search Student"** in navigation
2. Enter ID: `1001`
3. Click **"🔍 Search"**
4. View complete student details

---

## 🛠️ Troubleshooting

### Server Won't Start

**Error: "Port already in use"**
```powershell
# Find process using port 8080
netstat -ano | findstr :8080

# Kill the process (replace PID with actual number)
taskkill /PID <PID> /F

# Restart server
.\run-server.bat
```

**Error: "g++ is not recognized"**
```powershell
# Install MinGW-w64 or add to PATH
# Verify installation
g++ --version
```

### Frontend Issues

**Error: "Failed to fetch students"**
- ✅ Check server is running (Terminal 1 should be active)
- ✅ Verify URL is `http://localhost:8080`
- ✅ Check browser console (F12) for errors

**No students showing:**
- Click "🔄 Refresh" button
- Check backend server terminal for request logs
- Add a student first using "Add Student" page

### Data File Issues

**Students not persisting:**
- Check if `backend/students.txt` exists
- Verify write permissions in backend folder
- Server creates the file automatically on first add

---

## 📂 File Locations

- **Server executable**: `backend/server.exe`
- **Console app**: `backend/srms.exe`
- **Data file**: `backend/students.txt`
- **Frontend entry**: `frontend/index.html`

---

## 🎓 Tips for Best Experience

1. **Always start the server first** before opening frontend
2. **Keep server terminal open** - don't close it while using web app
3. **Use Chrome/Edge DevTools** (F12) to debug API issues
4. **Check server logs** in terminal for request tracking
5. **Data persists** in `students.txt` - your records are saved!

---

## 🔄 Stopping the Application

### Stop Web Server
In the server terminal:
- Press `Ctrl + C`
- Type `Y` to confirm termination

### Stop Console Application
- Choose option `6` (Exit) from menu
- Or press `Ctrl + C`

### Close Browser
- Simply close the browser tab/window

---

## 🎉 You're All Set!

Your SRMS is now running. Start by adding some students and exploring all the features!

**Need help?** Check the main README.md or review the troubleshooting section above.
