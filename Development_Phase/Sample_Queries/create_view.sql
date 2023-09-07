CREATE OR REPLACE VIEW sender_receiver_message AS
SELECT 
    CONCAT(sender_user.first_name, ' ', sender_user.last_name) AS sender_name,
    CONCAT(receiver_user.first_name, ' ', receiver_user.last_name) AS receiver_name,
    messages.content,
    messages.messages_id
FROM Airbnb.messages messages
JOIN Airbnb.user sender_user ON messages.sender = sender_user.user_id
JOIN Airbnb.user receiver_user ON messages.receiver = receiver_user.user_id;

--
SELECT * FROM sender_receiver_message;

--
SELECT *
FROM sender_receiver_message
WHERE sender_name = 'Sarah Too';
