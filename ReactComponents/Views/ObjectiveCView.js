'use strict';

import React from 'react-native';

const {
	ScrollView,
	StyleSheet,
	Text,
	View
} = React;

// component with more than just a render function
export default class ObjectiveCView extends React.Component {
	render() {
		return (
			<ScrollView style={styles.container}>
				<View>
					<Text>Im in objc in a scrollview.</Text>
				</View>
			</ScrollView>
		);
	}
}

const styles = StyleSheet.create({
	container: {
		flex: 1,
		backgroundColor: 'red'
	}
});