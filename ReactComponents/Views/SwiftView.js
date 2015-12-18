'use strict';

import React from 'react-native';

const {
	StyleSheet,
	Text,
	View
} = React;

// component with just a render function
export default (props) => (
	<View style={styles.container}>
		<Text>I'm in swift view.</Text>
		<Text>{props.someFakeId}</Text>
	</View>
);

const styles = StyleSheet.create({
	container: {
		flex: 1,
		backgroundColor: 'blue'
	}
});