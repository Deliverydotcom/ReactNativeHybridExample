'use strict';

import React from 'react-native';

var {
	Text,
	View,
	StyleSheet,
	Navigator,
	AppRegistry,
} = React;



// The Router wrapper
// var RouteStack = {
// 	'Order Details': {
// 		component: OrderDetails,
// 	},
// 	'Merchant Info': {
// 		component: MerchantInfo,
// 	},
// 	'Merchant Reviews': {
// 		component: MerchantReviews,
// 	}
// }

class ReactNativeExample extends React.Component {
	
	constructor(props) {
		super(props);
		console.log(props);
	}

	render() {
		return (
			<View style={styles.container}>
				<Text>We made it!</Text>
			</View>
		);
	}
}

var styles = StyleSheet.create({
	container: {
		flex: 1,
		backgroundColor: 'red'
	}
});

AppRegistry.registerComponent('ReactNativeExample', () => ReactNativeExample);
