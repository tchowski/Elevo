import React, { Component } from 'react';
import axios from 'axios'

export default class Home extends Component {
    constructor() {
        super()
        this.state = {
            teams: [],
        };
    }
    componentDidMount() {
        axios.get("http://localhost:3001/teams.json", { withCredentials: true }).then(results => {
            console.log(results);
            return results;
        }).then(data => {
            var teams = data.data["teams"].map((team, index) => {
                return (<div key={index}>
                    <h2 >Managed by {team.manager}</h2>
                    <h3 >{team.name}</h3>
                    {team.members.map((members, index) => {
                        return <li key={index}>{members}</li>
                    })}
                </div>)
            });
            this.setState({ teams: teams });
            console.log(this.state.teams);
        });
    }
    render() {
        return (
            <div>
                <h1>Teams</h1>
                <br />
                <div>
                    <h1>Manager and their teams</h1>
                    <br />
                    {this.state.teams}
                </div>
            </div>
        );
    }
}