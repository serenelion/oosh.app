import React, { useEffect } from 'react';
import { Chat, Channel, ChannelHeader, MessageList, MessageInput, Window } from 'stream-chat-react';
import 'stream-chat-react/dist/css/index.css';

const ChatComponent = ({ client, channel }) => {
    useEffect(() => {
        if (client) {
            client.connectUser(
                {
                    id: 'user-id', // Replace with actual user ID
                    name: 'User Name', // Replace with actual user name
                    image: 'https://getstream.io/random_png/?id=user-id&name=User', // Replace with actual user image
                },
                client.devToken('user-id') // Replace with actual token generation logic
            );
        }

        return () => {
            if (client) {
                client.disconnectUser();
            }
        };
    }, [client]);

    return (
        <Chat client={client} theme="messaging light">
            <Channel channel={channel}>
                <Window>
                    <ChannelHeader />
                    <MessageList />
                    <MessageInput />
                </Window>
            </Channel>
        </Chat>
    );
};

export default ChatComponent;
