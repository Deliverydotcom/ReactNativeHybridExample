'use strict';

import React from 'react-native';

const {
	StyleSheet,
	Text,
	View
} = React;

export default (props) => (
	<View style={styles.container}>
		<Text style={styles.text}>
			{props.content}
		</Text>
	</View>
);

const styles = StyleSheet.create({
	container: {
		flex: 1,
		justifyContent: 'center',
		alignItems: 'center'
	},
	text: {
		fontSize: 24
	}
});