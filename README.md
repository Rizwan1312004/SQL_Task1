# Schema Summary
In this schema the Authors Stores author details,
the Books Stores book details with a link to its author,
the Members Stores member details
and the BorrowRecords Tracks borrowing transactions linking books and members.

# Entities & Relationships
Authors (author_id) ───< Books (book_id)
Books (book_id) ───< BorrowRecords (borrow_id) >─── Members (member_id)

# Workbench
this task is done using MYSQL Workbench
