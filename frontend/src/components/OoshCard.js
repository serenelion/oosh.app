import React from 'react';

const OoshCard = ({ activity }) => {
    // Dummy activity for testing
    const dummyActivity = {
        actor: 'Eduardo',
        object: 'Farm Land for Sale',
        foreign_id: 'oosh:123',
        location: 'Montana',
    };

    // Use dummy activity if no activity is provided
    const { name = dummyActivity.object, description = 'No description available', location = dummyActivity.location } = activity || dummyActivity;

    return (
        <div className="oosh-card">
            <h2>{name}</h2>
            <p>{description}</p>
            <p><strong>Location:</strong> {location}</p>
        </div>
    );
};

export default OoshCard;
