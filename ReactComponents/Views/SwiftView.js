'use strict';

import React from 'react-native';

const {
	StyleSheet,
	Text,
	View
} = React;

// component with just a render function can be expressed as

export default (props) => (
	<View style={styles.container}>
		<Text style={styles.text}>
			Welcome to react native
		</Text>
		<Text style={styles.text}>
			Here we could so something with the id passed to us from the native view controller: {props.someFakeId}
		</Text>
	</View>
);

const styles = StyleSheet.create({
	container: {
		flex: 1,
	},
	text: {
		margin: 20,
		textAlign: 'center'
	}
});