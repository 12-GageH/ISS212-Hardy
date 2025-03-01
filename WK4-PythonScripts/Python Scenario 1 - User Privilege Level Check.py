# ISS 212 CS Scripting - WK 4 - Scenario 1 User Privilege Level Check
# Reference: ISS 212 WK4-Walkthrough

#prompt user for input
role = input("Enter you role (admin, user, guest): ").strip().lower()

#Determines access level based on the role provided by the user
if role=="admin":
    print("Access Level: Full Privileges granted.")
elif role=="user":
    print("Access Level: Limited Privileges granted.")
elif role=="guest":
    print("Access Level: Read-only access granted.")
else:
    print("Invalid role entered. Please select from admin, user, or guest")
