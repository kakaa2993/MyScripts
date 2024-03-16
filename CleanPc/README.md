# CleanPc
This script cleans Windows OS junk and temp files and makes more space for you by deleting these files.
it also deletes the Recycle bin 🚮 in all disk drives.

![Made By](https://img.shields.io/badge/made%20by-ZakaryaBelamiri-%234d41c0)
<br>

## What This Script Made For?
- This code was created by [Belamiri Zakarya](https://github.com/kakaa2993) to  clean Windows OS for junk files, and temp files and makes more space for you by deleting these files, also deletes the Recycle bin 🚮 in all disk drives automatically without the user needing to do it manually.
- This script can work automatically with a double click.

<br>

## The Requirement?
- This script doesn't need any external libraries to run, it's just a batch file using the cmd command that's baked in CMD Windows.

<br>

## How To Use This Script?
- Just run the script ``as administrator``.

and voila! That is all that you need.

<br>

## Can I Use The Script Automatically?
You can make the script run automatically using ``Task Scheduler`` from Windows, here is a video showing you how you can use it manually [on YouTube](https://youtu.be/RSwOrK4m82U?si=PzW9tNA-4Gh97k0e).

Or you can also with ``cmd``:
- To create a task that runs a batch script "at log in" for any user and "as administrator" using the command line:
```batch
schtasks /create /tn "Name_of_Task" /sc onlogon /ru SYSTEM /rl HIGHEST /tr "C:\path\to\your\batch\Clean.bat"
```

Explanation of the command:

- `/sc onlogon`: the task should run when any user logs on.
- `/ru SYSTEM`: The task should run under the `SYSTEM` account, which has administrative privileges.
- `/rl HIGHEST`: Sets the privilege level to the highest available, effectively running the task as an administrator.
- `/tr "C:\path\to\your\batch\Clean.bat"`: Specifies the path to the batch script that you want to run.

Replace `"Name_of_Task"` with the desired name for your task and `"C:\path\to\your\batch\Clean.bat"` with the actual path to your batch script.

After running this command, the task will be created in Task Scheduler, and it will execute the specified batch script whenever any user logs on, running with administrative privileges.
Here's a table summarizing the available options for the `schtasks /create` command in Windows:

| Option           | Description                                                                                                  |
|------------------|--------------------------------------------------------------------------------------------------------------|
| `/tn`            | Specifies the name of the task.                                                                              |
| `/sc`            | Specifies the schedule type (e.g., `ONLOGON`, `DAILY`, `WEEKLY`, `MONTHLY`, etc.).                           |
| `/ru`            | Specifies the user account to run the task under. Use `SYSTEM` for the highest privileges.                   |
| `/rl`            | Specifies the logon type (e.g., `HIGHEST`, `LIMITED`).                                                        |
| `/tr`            | Specifies the path to the program or script to be run by the task.                                           |
| `/st`            | Specifies the start time for the task (if applicable, based on the chosen schedule).                          |
| `/sd`            | Specifies the start date for the task.                                                                      |
| `/ed`            | Specifies the end date for the task.                                                                        |
| `/et`            | Specifies the end time for the task.                                                                        |
| `/mo`            | Specifies the modifier for recurrence (e.g., `1`, `2`, ..., `365`).                                          |
| `/i`             | Specifies the idle time to wait before running the task (only for `ONIDLE` trigger).                         |
| `/c`             | Specifies the comment for the task.                                                                         |
| `/f`             | Forces the creation of the task even if errors occur.                                                        |
| `/it`            | Sets the task to be interactive (must only be used with `/sc ONLOGON`).                                      |
| `/s`             | Specifies the remote server to connect to for creating the task.                                             |
| `/u`             | Specifies the user context under which the task should run.                                                  |
| `/p`             | Specifies the password for the user specified with `/u`.                                                     |
| `/triggers`      | Specifies one or more triggers for the task.                                                                |
| `/xml`           | Specifies the XML file containing the task definition.                                                       |

These are the main options for the `schtasks /create` command. You can combine them to customize the task according to your requirements.

<br>

Made by Belamiri Zakarya  :wave: [Get in touch!](https://github.com/kakaa2993)

