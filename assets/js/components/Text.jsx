import React, {Component, createElement} from 'react'

class Text extends Component {
  render() {
    const {title, subtitle} = this.props

    return (
      <div className="text-component">
        <h3>{title}</h3>
        <p>{subtitle}</p>
      </div>
    );
  }
}

export default Text
