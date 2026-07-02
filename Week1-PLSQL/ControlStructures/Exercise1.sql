-- Exercise 1: Control Structures

-- Scenario 1: Apply 1% discount to senior citizens

DECLARE
    v_age NUMBER;
BEGIN
    FOR c IN (SELECT CustomerID, DOB FROM Customers) LOOP
        v_age := TRUNC(MONTHS_BETWEEN(SYSDATE, c.DOB)/12);

        IF v_age > 60 THEN
            UPDATE Loans
            SET InterestRate = InterestRate - 1
            WHERE CustomerID = c.CustomerID;

            DBMS_OUTPUT.PUT_LINE('Discount applied to Customer ID: ' || c.CustomerID);
        END IF;
    END LOOP;

    COMMIT;
END;
/

---------------------------------------------------------

-- Scenario 2: Set VIP status

ALTER TABLE Customers ADD IsVIP VARCHAR2(5);

BEGIN
    FOR c IN (SELECT CustomerID, Balance FROM Customers) LOOP
        IF c.Balance > 10000 THEN
            UPDATE Customers
            SET IsVIP = 'TRUE'
            WHERE CustomerID = c.CustomerID;

            DBMS_OUTPUT.PUT_LINE('VIP Customer: ' || c.CustomerID);
        ELSE
            UPDATE Customers
            SET IsVIP = 'FALSE'
            WHERE CustomerID = c.CustomerID;
        END IF;
    END LOOP;

    COMMIT;
END;
/

---------------------------------------------------------

-- Scenario 3: Loan Reminder

BEGIN
    FOR l IN (
        SELECT CustomerID, LoanID, EndDate
        FROM Loans
        WHERE EndDate BETWEEN SYSDATE AND SYSDATE + 30
    ) LOOP
        DBMS_OUTPUT.PUT_LINE(
            'Reminder: Customer ' || l.CustomerID ||
            ' Loan ID ' || l.LoanID ||
            ' is due on ' || TO_CHAR(l.EndDate,'DD-MON-YYYY')
        );
    END LOOP;
END;
/
