## Authentication and Authorization Documentation for Course Management System

The goal is to define:

- How users prove their identity (Authentication)
- How the system controls access (Authorization)



## What is Authentication?

Authentication is the process of verifying who the user is.



## Authentication Approach

The system will use Token-Based Authentication (JWT Concept).

## Authentication Steps

- User registers in the system

 User Registration :
    - When an user come:
        
            - It will ask for  registration page. Then
                User provides the details that are :
                    - First Name
                    -Middle Name
                    -Last name
                    - Email
                    - Phone
                    - dob
                    -age
                    

                    Sample Input:
                        {
                            "full_name": "string",
                            "email": "string",
                            "password": "string",
                            "phone": "string",
                            }

- User enters in using email, phone number lsd other details
- System verifies credentials
- System generates an authentication token
- User sends token in future requests
- Server validates token and allows access



## What is Authorization?

Authorization decides what the authenticated user is allowed to do.

Even if a user is logged in, they cannot access everything.





## Authorization Approach

- The system will use Role-Based Access Control (RBAC).

- Each user is assigned a role that defines permissions.