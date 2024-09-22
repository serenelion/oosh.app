import React, { useEffect, useState } from 'react';
import { StreamChat } from 'stream-chat';
import { ChannelList, ChannelListMessenger } from 'stream-chat-react';
import 'stream-chat-react/dist/css/index.css';

const MailboxPage = ({ client }) => {
    const [channels, setChannels] = useState([]);

    useEffect(() => {
        const fetchChannels = async () => {
            try {
                const response = await client.queryChannels({}); // Adjust query as needed
                setChannels(response);
            } catch (error) {
                console.error('Error fetching channels:', error);
            }
        };

        if (client) {
            fetchChannels();
        }
    }, [client]);

    return (
        <div>
            <h1>Mailbox</h1>
            <ChannelList
                channels={channels}
                ChannelPreview={(channel) => (
                    <div>
                        <h2>{channel.data.name}</h2>
                        <p>{channel.data.last_message?.text || 'No messages yet'}</p>
                    </div>
                )}
            />
        </div>
    );
};

export default MailboxPage;
