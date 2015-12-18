'use strict';

import React from 'react-native';
import ChangeBackground from '../Components/ChangeBackground';

const {
	StyleSheet,
	Text,
	View
} = React;

export default class ObjectiveCView extends React.Component {

	render() {
		return (
			<View style={styles.container}>
				<Text style={styles.text}>Welcome to react native</Text>
				<ChangeBackground />
			</View>
		);
	}
}

const styles = StyleSheet.create({
	container: {
		flex: 1,
	},
	text: {
		margin: 20,
		textAlign: 'center'
	}
});