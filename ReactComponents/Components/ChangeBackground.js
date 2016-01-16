'use strict';

import React from 'react-native';

const {
	ScrollView,
	StyleSheet,
	Text,
	TouchableOpacity,
	View
} = React;

const colors = ['red', 'orange', 'yellow', 'green', 'blue', 'purple', 'white', 'grey', 'pink'];

export default class ChangeBackground extends React.Component {
	
	constructor(props) {
		super(props);
		this.state = {
			bgColor: 'white'
		}
	}

	renderColorButtons() {
		let i = 0;
		return colors.map( c => {
			return (
				<TouchableOpacity
					key={i++}
					onPress={() => { this.setState({bgColor: c}) }}
					style={styles.button}
				>
					<Text style={styles.buttonText}>Turn background {c}</Text>
				</TouchableOpacity>
			);
		});
	}

	render() {
		return (
			<ScrollView style={styles.container}>
				<View style={[
					styles.buttonContainer,
					{backgroundColor: this.state.bgColor}
				]}>
					{this.renderColorButtons()}
				</View>
			</ScrollView>
		);
	}
}

const styles = StyleSheet.create({
	container: {
		flex: 1,
	},
	buttonContainer: {
		alignItems: 'center',
		flex: 1,
		flexDirection: 'column',
	},
	button: {
		borderColor: 'black',
		borderRadius: 4,
		borderWidth: 1,
		margin: 20,
		padding: 10,
		width: 200,
	},
	buttonText: {
		textAlign: 'center',
	}
});