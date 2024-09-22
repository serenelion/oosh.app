import React, { useEffect, useState } from 'react';
import { StreamChat } from 'stream-chat';
import Stream from '../components/Stream'; // Adjust the import path as necessary

const OoshStreamPage = () => {
    const [activities, setActivities] = useState([]);
    const client = StreamChat.getInstance(process.env.REACT_APP_STREAM_API_KEY);

    useEffect(() => {
        const fetchActivities = async () => {
            try {
                // Initialize the client and fetch activities (Ooshes)
                const response = await client.queryChannels({}); // Adjust query as needed
                const activitiesData = response.map(channel => channel.state.messages);
                setActivities(activitiesData);
            } catch (error) {
                console.error('Error fetching activities:', error);
            }
        };

        fetchActivities();
    }, [client]);

    return (
        <div>
            <h1>Oosh Stream</h1>
            <Stream activities={activities} />
        </div>
    );
};

export default OoshStreamPage;
