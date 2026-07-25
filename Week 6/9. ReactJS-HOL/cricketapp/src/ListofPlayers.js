import React from "react";

export default function ListofPlayers({ players }) {
    return (
        <div>
            <ul>
                {players.map((item) => (
                    <li key={item.name}>
                        Mr. {item.name} <span>{item.score}</span>
                    </li>
                ))}
            </ul>
        </div>
    );
}