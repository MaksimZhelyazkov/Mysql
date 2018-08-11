-- CREATE TABLE users (
--     username VARCHAR(100),
--     age INT
-- );


-- \\\\\\\\\\\\\\\ EXAMPLE TRIGGER 1 //////////////////////
-- DELIMITER $$

-- CREATE TRIGGER must_be_adult
--      BEFORE INSERT ON users FOR EACH ROW
--      BEGIN
--           IF NEW.age < 18
--           THEN
--               SIGNAL SQLSTATE '45000'
--                     SET MESSAGE_TEXT = 'Must be an adult!';
--           END IF;
--      END;
-- $$

-- DELIMITER ;

-- \\\\\\\\\\\\\ TEMPLATE TRIGGER /////////////

-- DELIMITER $$

-- CREATE TRIGGER trigger_name
--      trigger_time trigger_event ON table_name FOR EACH ROW
--      BEGIN
--      END;
-- $$

-- DELIMITER ;

-- \\\\\\\\\\\\\\\\\\\\\\\ EXAMPLE TRIGGER 2 ///////////////

DELIMITER $$

CREATE TRIGGER prevent_self_follows
     BEFORE INSERT ON follows FOR EACH ROW
     BEGIN
        IF NEW.follower_id = NEW.followee_id
        THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'You cannot follow yourself!';
        END IF;
     END;
$$

DELIMITER ;

-- \\\\\\\\\\\\\\ MANAGING TRIGGER COMMANDS //////////////////

SHOW TRIGGERS - shows all triggers on the current database;
DROP TRIGGER [name] - deletes a trigger;