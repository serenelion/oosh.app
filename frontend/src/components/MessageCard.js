import React from 'react';

const MessageCard = ({ message }) => {
    return (
        <div className="message-card">
            <div className="message-header">
                <strong>{message.user.name}</strong> {/* Display the sender's name */}
                <span>{new Date(message.created_at).toLocaleTimeString()}</span> {/* Display the message time */}
            </div>
            <div className="message-body">
                <p>{message.text}</p> {/* Display the message text */}
            </div>
        </div>
    );
};

export default MessageCard;
