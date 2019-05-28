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
        axios.get("http://localhost:3001/teams", { withCredentials: true }).then(results => {
            return results;
        }).then(data => {
            console.log(data.data.manager);
            var teams = data.data.manager.map((team, index) => {
                return (<div key={index}>
                    <h1 >{team.name_manager} {team.team_name} </h1>
                    <h3 >{team.full_name}</h3>
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