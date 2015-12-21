'use strict';

import React from 'react-native';

// Views
import SwiftView      from './Views/SwiftView';
import ObjectiveCView from './Views/ObjectiveCView';

const {
	AppRegistry,
	Navigator,
	StyleSheet,
	Text,
	View
} = React;

const RouteStack = {
	swift: {
		component: SwiftView,
	},
	objectivec: {
		component: ObjectiveCView
	}
};

class ReactNativeExample extends React.Component {

	getRouteWithProps(route, props) {
		return {
			...RouteStack[route],
			props: props || {}
		};
	}

	goToRoute(route, props) {
		this.refs.navigator.push(this.getRouteWithProps(route, props));
	}

	renderScene(route, navigator) {
		var Component = route.component;
		return <Component goToRoute={this.goToRoute} {...route.props} />;
	}

	getInitialRoute() {
		return {
			...RouteStack[this.props.route],
			props: this.props
		};
	}

	render() {
		return (
			<View style={styles.container}>
				<Navigator
					ref='navigator'
					initialRoute={this.getInitialRoute()}
					renderScene={this.renderScene}
				/>
			</View>
		);
	}
}

var styles = StyleSheet.create({
	container: {
		flex: 1
	}
});

AppRegistry.registerComponent('ReactNativeExample', () => ReactNativeExample);
