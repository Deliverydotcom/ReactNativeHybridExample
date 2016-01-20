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
	routeNameObjectiveCView : ObjectiveCView,
	routeNameSwiftView      : SwiftView
};

class ReactNativeExample extends React.Component {

	renderScene(route, navigator) {
		const Component = route.component;
		return <Component navigator={navigator} {...route.props} />;
	}

	render() {
		const component = RouteStack[this.props.route];
		const props     = this.props;

		return (
			<View style={styles.container}>
				<Navigator
					ref='navigator'
					initialRoute={{component, props}}
					renderScene={this.renderScene.bind(this)}
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
