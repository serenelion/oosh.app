import React from 'react';
import { FlatFeed, Feed } from 'react-activity-feed'; // Adjust import based on your package
import { StreamChat } from 'stream-chat';

const Stream = ({ activities }) => {
    return (
        <div>
            <FlatFeed
                feedGroup="oosh" // Adjust feedGroup as necessary
                options={{ limit: 10 }} // Adjust options as needed
                Activity={Feed} // Customize the activity item rendering
                activities={activities} // Pass the activities fetched
            />
        </div>
    );
};

export default Stream;
