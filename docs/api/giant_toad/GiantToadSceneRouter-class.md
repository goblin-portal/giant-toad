<div>

<div>

# <span class="kind-class">GiantToadSceneRouter</span> class

</div>

<div>

Small naming convenience over Flame's standard [RouterComponent](https://pub.dev/documentation/flame/1.38.0/game/RouterComponent-class.md).

</div>

<div>

Inheritance  
- [Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)
- [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)
- [RouterComponent](https://pub.dev/documentation/flame/1.38.0/game/RouterComponent-class.md)
- GiantToadSceneRouter

Available extensions  
- [PostProcessingContextFinder](https://pub.dev/documentation/flame/1.38.0/post_process/PostProcessingContextFinder.md)

</div>

<div>

## Constructors

<span class="name">[GiantToadSceneRouter](../giant_toad/GiantToadSceneRouter/GiantToadSceneRouter.md)</span><span class="signature">({<span id="param-initialRoute" class="parameter">required <span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">initialRoute</span>, </span><span id="param-scenes" class="parameter">required <span class="type-annotation">[Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[GiantToadSceneRoute](../giant_toad/GiantToadSceneRoute-class.md)</span>\></span></span> <span class="parameter-name">scenes</span></span>})</span>  

</div>

<div>

## Properties

<span class="name">[children](https://pub.dev/documentation/flame/1.38.0/components/Component/children.md)</span> <span class="signature">→ [ReadOnlyOrderedSet](https://pub.dev/documentation/ordered_set/8.0.0/read_only_ordered_set/ReadOnlyOrderedSet-class.md)<span class="signature">\<<span class="type-parameter">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span></span>  
The children components of this component.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[currentName](../giant_toad/GiantToadSceneRouter/currentName.md)</span> <span class="signature">→ [String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>  
<div>

<span class="feature">no setter</span>

</div>

<span class="name">[currentRoute](https://pub.dev/documentation/flame/1.38.0/game/RouterComponent/currentRoute.md)</span> <span class="signature">→ [Route](https://pub.dev/documentation/flame/1.38.0/game/Route-class.md)</span>  
Returns the route that is currently at the top of the stack.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[debugColor](https://pub.dev/documentation/flame/1.38.0/components/Component/debugColor.md)</span> <span class="signature">↔ [Color](https://api.flutter.dev/flutter/dart-ui/Color-class.md)</span>  
The color that the debug output should be rendered with.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[debugCoordinatesPrecision](https://pub.dev/documentation/flame/1.38.0/components/Component/debugCoordinatesPrecision.md)</span> <span class="signature">↔ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)?</span>  
How many decimal digits to print when displaying coordinates in the debug mode. Setting this to null will suppress all coordinates from the output.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[debugMode](https://pub.dev/documentation/flame/1.38.0/components/Component/debugMode.md)</span> <span class="signature">↔ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
Returns whether this [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md) is in debug mode or not. When a child is added to the [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md) it gets the same [debugMode](https://pub.dev/documentation/flame/1.38.0/components/Component/debugMode.md) as its parent has when it is prepared.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[debugPaint](https://pub.dev/documentation/flame/1.38.0/components/Component/debugPaint.md)</span> <span class="signature">→ [Paint](https://api.flutter.dev/flutter/dart-ui/Paint-class.md)</span>  
The [debugColor](https://pub.dev/documentation/flame/1.38.0/components/Component/debugColor.md) represented as a [Paint](https://api.flutter.dev/flutter/dart-ui/Paint-class.md) object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[debugTextPaint](https://pub.dev/documentation/flame/1.38.0/components/Component/debugTextPaint.md)</span> <span class="signature">→ [TextPaint](https://pub.dev/documentation/flame/1.38.0/text/TextPaint-class.md)</span>  
Returns a [TextPaint](https://pub.dev/documentation/flame/1.38.0/text/TextPaint-class.md) object with the [debugColor](https://pub.dev/documentation/flame/1.38.0/components/Component/debugColor.md) set as color for the text.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[hasChildren](https://pub.dev/documentation/flame/1.38.0/components/Component/hasChildren.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
Whether this component has any children. Avoids the creation of the children container if not necessary.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[hashCode](https://api.flutter.dev/flutter/dart-core/Object/hashCode.md)</span> <span class="signature">→ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>  
The hash code for this object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[initialRoute](https://pub.dev/documentation/flame/1.38.0/game/RouterComponent/initialRoute.md)</span> <span class="signature">→ [String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>  
Route that will be placed on the stack in the beginning.

<div>

<span class="feature">final</span><span class="feature">inherited</span>

</div>

<span class="name">[isLoaded](https://pub.dev/documentation/flame/1.38.0/components/Component/isLoaded.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
Whether this component has completed its [onLoad](https://pub.dev/documentation/flame/1.38.0/components/Component/onLoad.md) step.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[isLoading](https://pub.dev/documentation/flame/1.38.0/components/Component/isLoading.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
Whether the component is currently executing its [onLoad](https://pub.dev/documentation/flame/1.38.0/components/Component/onLoad.md) step.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[isMounted](https://pub.dev/documentation/flame/1.38.0/components/Component/isMounted.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
Whether this component is currently added to a component tree.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[isRemoved](https://pub.dev/documentation/flame/1.38.0/components/Component/isRemoved.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
Whether the component has been removed. Originally this flag is `false`, but it becomes `true` after the component was mounted and then removed from its parent. The flag becomes `false` again when the component is mounted to a new parent.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[isRemoving](https://pub.dev/documentation/flame/1.38.0/components/Component/isRemoving.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
Whether the component is scheduled to be removed.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[key](https://pub.dev/documentation/flame/1.38.0/components/Component/key.md)</span> <span class="signature">→ [ComponentKey](https://pub.dev/documentation/flame/1.38.0/components/ComponentKey-class.md)?</span>  
A key that can be used to identify this component in the tree.

<div>

<span class="feature">final</span><span class="feature">inherited</span>

</div>

<span class="name">[loaded](https://pub.dev/documentation/flame/1.38.0/components/Component/loaded.md)</span> <span class="signature">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span>  
A future that completes when this component finishes loading.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[mounted](https://pub.dev/documentation/flame/1.38.0/components/Component/mounted.md)</span> <span class="signature">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span>  
A future that will complete once the component is mounted on its parent.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[onUnknownRoute](https://pub.dev/documentation/flame/1.38.0/game/RouterComponent/onUnknownRoute.md)</span> <span class="signature">→ RouteFactory?</span>  
Function that will be called to resolve any route names that couldn't be resolved via `_routes` or `_routeFactories`. Unlike with routeFactories, the route returned by this function will not be cached.

<div>

<span class="feature">final</span><span class="feature">inherited</span>

</div>

<span class="name">[parent](https://pub.dev/documentation/flame/1.38.0/components/Component/parent.md)</span> <span class="signature">↔ [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)?</span>  
Who owns this component in the component tree.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[previousRoute](https://pub.dev/documentation/flame/1.38.0/game/RouterComponent/previousRoute.md)</span> <span class="signature">→ [Route](https://pub.dev/documentation/flame/1.38.0/game/Route-class.md)?</span>  
Returns the route that is below the current topmost route, if it exists.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[priority](https://pub.dev/documentation/flame/1.38.0/components/Component/priority.md)</span> <span class="signature">↔ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>  
Render priority of this component. This allows you to control the order in which your components are rendered.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[removed](https://pub.dev/documentation/flame/1.38.0/components/Component/removed.md)</span> <span class="signature">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span>  
A future that completes when this component is removed from its parent.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[renderContext](https://pub.dev/documentation/flame/1.38.0/components/Component/renderContext.md)</span> <span class="signature">→ [ComponentRenderContext](https://pub.dev/documentation/flame/1.38.0/components/ComponentRenderContext-class.md)?</span>  
Override this method if you want your component to provide a custom render context to all its children (recursively).

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[routes](https://pub.dev/documentation/flame/1.38.0/game/RouterComponent/routes.md)</span> <span class="signature">→ [Map](https://api.flutter.dev/flutter/dart-core/Map-class.md)<span class="signature">\<<span class="type-parameter">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span>, <span class="type-parameter">[Route](https://pub.dev/documentation/flame/1.38.0/game/Route-class.md)</span>\></span></span>  
The map of all routes known to the Router, each route will have a unique name. This map is initialized in the constructor; in addition, any routes produced by the `_routeFactories` will also be cached here.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[runtimeType](https://api.flutter.dev/flutter/dart-core/Object/runtimeType.md)</span> <span class="signature">→ [Type](https://api.flutter.dev/flutter/dart-core/Type-class.md)</span>  
A representation of the runtime type of the object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[stack](https://pub.dev/documentation/flame/1.38.0/game/RouterComponent/stack.md)</span> <span class="signature">→ [List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[Route](https://pub.dev/documentation/flame/1.38.0/game/Route-class.md)</span>\></span></span>  
<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

</div>

<div>

## Methods

<span class="name">[add](https://pub.dev/documentation/flame/1.38.0/components/Component/add.md)</span><span class="signature">(<span id="add-param-component" class="parameter"><span class="type-annotation">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span> <span class="parameter-name">component</span></span>) <span class="returntype parameter">→ [FutureOr](https://api.flutter.dev/flutter/dart-async/FutureOr-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> </span>  
Schedules `component` to be added as a child to this component.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[addAll](https://pub.dev/documentation/flame/1.38.0/components/Component/addAll.md)</span><span class="signature">(<span id="addAll-param-components" class="parameter"><span class="type-annotation">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span></span> <span class="parameter-name">components</span></span>) <span class="returntype parameter">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> </span>  
A convenience method to [add](https://pub.dev/documentation/flame/1.38.0/components/Component/add.md) multiple children at once.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[addToParent](https://pub.dev/documentation/flame/1.38.0/components/Component/addToParent.md)</span><span class="signature">(<span id="addToParent-param-parent" class="parameter"><span class="type-annotation">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span> <span class="parameter-name">parent</span></span>) <span class="returntype parameter">→ [FutureOr](https://api.flutter.dev/flutter/dart-async/FutureOr-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> </span>  
Adds this component as a child of `parent` (see [add](https://pub.dev/documentation/flame/1.38.0/components/Component/add.md) for details).

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[afterChildrenRendered](https://pub.dev/documentation/flame/1.38.0/components/Component/afterChildrenRendered.md)</span><span class="signature">(<span id="afterChildrenRendered-param-canvas" class="parameter"><span class="type-annotation">[Canvas](https://api.flutter.dev/flutter/dart-ui/Canvas-class.md)</span> <span class="parameter-name">canvas</span></span>) <span class="returntype parameter">→ void</span> </span>  
Called once after all children have been rendered in [renderTree](https://pub.dev/documentation/flame/1.38.0/components/Component/renderTree.md).

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[ancestors](https://pub.dev/documentation/flame/1.38.0/components/Component/ancestors.md)</span><span class="signature">({<span id="ancestors-param-includeSelf" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">includeSelf</span> = <span class="default-value">false</span></span>}) <span class="returntype parameter">→ [Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span></span> </span>  
An iterator producing this component's parent, then its parent's parent, then the great-grand-parent, and so on, until it reaches a component without a parent.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[back](../giant_toad/GiantToadSceneRouter/back.md)</span><span class="signature">() <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  

<span class="name">[canPop](https://pub.dev/documentation/flame/1.38.0/game/RouterComponent/canPop.md)</span><span class="signature">() <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  
Returns whether the current route can be popped.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[componentsAtLocation](https://pub.dev/documentation/flame/1.38.0/components/Component/componentsAtLocation.md)</span><span class="signature">\<<span class="type-parameter">T</span>\></span><span class="signature">(<span id="componentsAtLocation-param-locationContext" class="parameter"><span class="type-annotation">T</span> <span class="parameter-name">locationContext</span>, </span><span id="componentsAtLocation-param-nestedContexts" class="parameter"><span class="type-annotation">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span>?</span> <span class="parameter-name">nestedContexts</span>, </span><span id="componentsAtLocation-param-transformContext" class="parameter"><span class="type-annotation">T?</span> <span class="parameter-name">transformContext</span>(<span id="param-" class="parameter"><span class="type-annotation">[CoordinateTransform](https://pub.dev/documentation/flame/1.38.0/components/CoordinateTransform-class.md)</span>, </span><span id="param-" class="parameter"><span class="type-annotation">T</span></span>), </span><span id="componentsAtLocation-param-checkContains" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">checkContains</span>(<span id="param-" class="parameter"><span class="type-annotation">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>, </span><span id="param-" class="parameter"><span class="type-annotation">T</span></span>)</span>) <span class="returntype parameter">→ [Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span></span> </span>  
This is a generic implementation of [componentsAtPoint](https://pub.dev/documentation/flame/1.38.0/components/Component/componentsAtPoint.md); refer to those docs for context.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[componentsAtPoint](https://pub.dev/documentation/flame/1.38.0/components/Component/componentsAtPoint.md)</span><span class="signature">(<span id="componentsAtPoint-param-point" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">point</span>, \[</span><span id="componentsAtPoint-param-nestedPoints" class="parameter"><span class="type-annotation">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span>\></span>?</span> <span class="parameter-name">nestedPoints</span></span>\]) <span class="returntype parameter">→ [Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span></span> </span>  
An iterable of descendant components intersecting the given point. The `point` is in the local coordinate space.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[contains](https://pub.dev/documentation/flame/1.38.0/components/Component/contains.md)</span><span class="signature">(<span id="contains-param-c" class="parameter"><span class="type-annotation">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span> <span class="parameter-name">c</span></span>) <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  
Whether the children list contains the given component.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[containsLocalPoint](https://pub.dev/documentation/flame/1.38.0/components/Component/containsLocalPoint.md)</span><span class="signature">(<span id="containsLocalPoint-param-point" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">point</span></span>) <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  
Checks whether the `point` is within this component's bounds.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[containsPoint](https://pub.dev/documentation/flame/1.38.0/components/Component/containsPoint.md)</span><span class="signature">(<span id="containsPoint-param-point" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">point</span></span>) <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  
Same as [containsLocalPoint](https://pub.dev/documentation/flame/1.38.0/components/Component/containsLocalPoint.md), but for a "global" `point`.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[createComponentSet](https://pub.dev/documentation/flame/1.38.0/components/Component/createComponentSet.md)</span><span class="signature">() <span class="returntype parameter">→ [OrderedSet](https://pub.dev/documentation/ordered_set/8.0.0/ordered_set/OrderedSet-class.md)<span class="signature">\<<span class="type-parameter">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span></span> </span>  
This method creates the children container for the current component. Override this method if you need to have a custom [OrderedSet](https://pub.dev/documentation/ordered_set/8.0.0/ordered_set/OrderedSet-class.md) within a particular class.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[descendants](https://pub.dev/documentation/flame/1.38.0/components/Component/descendants.md)</span><span class="signature">({<span id="descendants-param-includeSelf" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">includeSelf</span> = <span class="default-value">false</span>, </span><span id="descendants-param-reversed" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">reversed</span> = <span class="default-value">false</span></span>}) <span class="returntype parameter">→ [Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span></span> </span>  
Recursively enumerates all nested [children](https://pub.dev/documentation/flame/1.38.0/components/Component/children.md).

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[findGame](https://pub.dev/documentation/flame/1.38.0/components/Component/findGame.md)</span><span class="signature">() <span class="returntype parameter">→ [FlameGame](https://pub.dev/documentation/flame/1.38.0/game/FlameGame-class.md)<span class="signature">\<<span class="type-parameter">[World](https://pub.dev/documentation/flame/1.38.0/camera/World-class.md)</span>\></span>?</span> </span>  
Fetches the nearest [FlameGame](https://pub.dev/documentation/flame/1.38.0/game/FlameGame-class.md) ancestor to the component.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[findParent](https://pub.dev/documentation/flame/1.38.0/components/Component/findParent.md)</span><span class="signature">\<<span class="type-parameter">T extends [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span><span class="signature">({<span id="findParent-param-includeSelf" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">includeSelf</span> = <span class="default-value">false</span></span>}) <span class="returntype parameter">→ T?</span> </span>  
Returns the closest parent further up the hierarchy that satisfies type=T, or null if no such parent can be found.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[findPostProcessFromContext](https://pub.dev/documentation/flame/1.38.0/post_process/PostProcessingContextFinder/findPostProcessFromContext.md)</span><span class="signature">\<<span class="type-parameter">T extends [PostProcess](https://pub.dev/documentation/flame/1.38.0/post_process/PostProcess-class.md)</span>\></span><span class="signature">() <span class="returntype parameter">→ T?</span> </span>  
Available on [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md), provided by the [PostProcessingContextFinder](https://pub.dev/documentation/flame/1.38.0/post_process/PostProcessingContextFinder.md) extension

<span class="name">[findRenderContext](https://pub.dev/documentation/flame/1.38.0/components/Component/findRenderContext.md)</span><span class="signature">\<<span class="type-parameter">T extends [ComponentRenderContext](https://pub.dev/documentation/flame/1.38.0/components/ComponentRenderContext-class.md)</span>\></span><span class="signature">() <span class="returntype parameter">→ T?</span> </span>  
<div>

<span class="feature">inherited</span>

</div>

<span class="name">[findRootGame](https://pub.dev/documentation/flame/1.38.0/components/Component/findRootGame.md)</span><span class="signature">() <span class="returntype parameter">→ [FlameGame](https://pub.dev/documentation/flame/1.38.0/game/FlameGame-class.md)<span class="signature">\<<span class="type-parameter">[World](https://pub.dev/documentation/flame/1.38.0/camera/World-class.md)</span>\></span>?</span> </span>  
Fetches the root [FlameGame](https://pub.dev/documentation/flame/1.38.0/game/FlameGame-class.md) ancestor to the component.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[firstChild](https://pub.dev/documentation/flame/1.38.0/components/Component/firstChild.md)</span><span class="signature">\<<span class="type-parameter">T extends [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span><span class="signature">() <span class="returntype parameter">→ T?</span> </span>  
Returns the first child that matches the given type `T`, or null if there are no such children.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[go](../giant_toad/GiantToadSceneRouter/go.md)</span><span class="signature">(<span id="go-param-name" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">name</span>, {</span><span id="go-param-replace" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">replace</span> = <span class="default-value">false</span></span>}) <span class="returntype parameter">→ void</span> </span>  

<span class="name">[lastChild](https://pub.dev/documentation/flame/1.38.0/components/Component/lastChild.md)</span><span class="signature">\<<span class="type-parameter">T extends [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span><span class="signature">() <span class="returntype parameter">→ T?</span> </span>  
Returns the last child that matches the given type `T`, or null if there are no such children.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[noSuchMethod](https://api.flutter.dev/flutter/dart-core/Object/noSuchMethod.md)</span><span class="signature">(<span id="noSuchMethod-param-invocation" class="parameter"><span class="type-annotation">[Invocation](https://api.flutter.dev/flutter/dart-core/Invocation-class.md)</span> <span class="parameter-name">invocation</span></span>) <span class="returntype parameter">→ dynamic</span> </span>  
Invoked when a nonexistent method or property is accessed.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[onChildrenChanged](https://pub.dev/documentation/flame/1.38.0/components/Component/onChildrenChanged.md)</span><span class="signature">(<span id="onChildrenChanged-param-child" class="parameter"><span class="type-annotation">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span> <span class="parameter-name">child</span>, </span><span id="onChildrenChanged-param-type" class="parameter"><span class="type-annotation">[ChildrenChangeType](https://pub.dev/documentation/flame/1.38.0/components/ChildrenChangeType.md)</span> <span class="parameter-name">type</span></span>) <span class="returntype parameter">→ void</span> </span>  
This method will be invoked from lifecycle if `child` has been added to or removed from its parent children list.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[onGameResize](https://pub.dev/documentation/flame/1.38.0/components/Component/onGameResize.md)</span><span class="signature">(<span id="onGameResize-param-size" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">size</span></span>) <span class="returntype parameter">→ void</span> </span>  
Called whenever the size of the top-level Canvas changes.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[onHotReload](https://pub.dev/documentation/flame/1.38.0/components/Component/onHotReload.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
Called when Flutter's hot reload is triggered.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[onLoad](https://pub.dev/documentation/flame/1.38.0/components/Component/onLoad.md)</span><span class="signature">() <span class="returntype parameter">→ [FutureOr](https://api.flutter.dev/flutter/dart-async/FutureOr-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> </span>  
Late initialization method for [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md).

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[onMount](https://pub.dev/documentation/flame/1.38.0/game/RouterComponent/onMount.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
Called when the component is added to its parent.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[onParentResize](https://pub.dev/documentation/flame/1.38.0/components/Component/onParentResize.md)</span><span class="signature">(<span id="onParentResize-param-maxSize" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">maxSize</span></span>) <span class="returntype parameter">→ void</span> </span>  
Called whenever the parent of this component changes size; and also once before [onMount](https://pub.dev/documentation/flame/1.38.0/components/Component/onMount.md).

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[onRemove](https://pub.dev/documentation/flame/1.38.0/components/Component/onRemove.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
Called right before the component is removed from its parent and also before it changes parents (and is thus temporarily removed from the component tree).

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[pop](https://pub.dev/documentation/flame/1.38.0/game/RouterComponent/pop.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
Removes the topmost route from the stack, and also removes it as a child of the Router.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[popRoute](https://pub.dev/documentation/flame/1.38.0/game/RouterComponent/popRoute.md)</span><span class="signature">(<span id="popRoute-param-route" class="parameter"><span class="type-annotation">[Route](https://pub.dev/documentation/flame/1.38.0/game/Route-class.md)</span> <span class="parameter-name">route</span></span>) <span class="returntype parameter">→ void</span> </span>  
Removes routes from the stack until `route` is removed. This is equivalent to [pop](https://pub.dev/documentation/flame/1.38.0/game/RouterComponent/pop.md) if `route` is currently on top of the stack.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[popUntilNamed](https://pub.dev/documentation/flame/1.38.0/game/RouterComponent/popUntilNamed.md)</span><span class="signature">(<span id="popUntilNamed-param-name" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">name</span></span>) <span class="returntype parameter">→ void</span> </span>  
Removes routes from the top of the stack until reaches the route with the given `name`.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[propagateToChildren](https://pub.dev/documentation/flame/1.38.0/components/Component/propagateToChildren.md)</span><span class="signature">\<<span class="type-parameter">T extends [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span><span class="signature">(<span id="propagateToChildren-param-handler" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">handler</span>(<span id="param-" class="parameter"><span class="type-annotation">T</span></span>), {</span><span id="propagateToChildren-param-includeSelf" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">includeSelf</span> = <span class="default-value">false</span></span>}) <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  
This method first calls the passed handler on the leaves in the tree, the children without any children of their own. Then it continues through all other children. The propagation continues until the handler returns false, which means "do not continue", or when the handler has been called with all children.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[pushAndWait](https://pub.dev/documentation/flame/1.38.0/game/RouterComponent/pushAndWait.md)</span><span class="signature">\<<span class="type-parameter">T</span>\></span><span class="signature">(<span id="pushAndWait-param-route" class="parameter"><span class="type-annotation">[ValueRoute](https://pub.dev/documentation/flame/1.38.0/game/ValueRoute-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span> <span class="parameter-name">route</span></span>) <span class="returntype parameter">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span> </span>  
Puts `route` on top of the stack and waits until that route is popped.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[pushNamed](https://pub.dev/documentation/flame/1.38.0/game/RouterComponent/pushNamed.md)</span><span class="signature">(<span id="pushNamed-param-name" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">name</span>, {</span><span id="pushNamed-param-replace" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">replace</span> = <span class="default-value">false</span></span>}) <span class="returntype parameter">→ void</span> </span>  
Puts the route `name` on top of the navigation stack.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[pushOverlay](https://pub.dev/documentation/flame/1.38.0/game/RouterComponent/pushOverlay.md)</span><span class="signature">(<span id="pushOverlay-param-name" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">name</span></span>) <span class="returntype parameter">→ void</span> </span>  
Puts the overlay route `name` on top of the navigation stack.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[pushReplacement](https://pub.dev/documentation/flame/1.38.0/game/RouterComponent/pushReplacement.md)</span><span class="signature">(<span id="pushReplacement-param-route" class="parameter"><span class="type-annotation">[Route](https://pub.dev/documentation/flame/1.38.0/game/Route-class.md)</span> <span class="parameter-name">route</span>, {</span><span id="pushReplacement-param-name" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)?</span> <span class="parameter-name">name</span></span>}) <span class="returntype parameter">→ void</span> </span>  
Pops the current route and puts a new `route` on top of the navigation stack.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[pushReplacementNamed](https://pub.dev/documentation/flame/1.38.0/game/RouterComponent/pushReplacementNamed.md)</span><span class="signature">(<span id="pushReplacementNamed-param-name" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">name</span></span>) <span class="returntype parameter">→ void</span> </span>  
Pops the current route and places the route with `name` on top of the navigation stack.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[pushReplacementOverlay](https://pub.dev/documentation/flame/1.38.0/game/RouterComponent/pushReplacementOverlay.md)</span><span class="signature">(<span id="pushReplacementOverlay-param-name" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">name</span></span>) <span class="returntype parameter">→ void</span> </span>  
Pops the current route and puts the overlay route `name` on top of the navigation stack.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[pushRoute](https://pub.dev/documentation/flame/1.38.0/game/RouterComponent/pushRoute.md)</span><span class="signature">(<span id="pushRoute-param-route" class="parameter"><span class="type-annotation">[Route](https://pub.dev/documentation/flame/1.38.0/game/Route-class.md)</span> <span class="parameter-name">route</span>, {</span><span id="pushRoute-param-name" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)?</span> <span class="parameter-name">name</span>, </span><span id="pushRoute-param-replace" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">replace</span> = <span class="default-value">false</span></span>}) <span class="returntype parameter">→ void</span> </span>  
Puts a new `route` on top of the navigation stack.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[rebalanceChildren](https://pub.dev/documentation/flame/1.38.0/components/Component/rebalanceChildren.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
<div>

<span class="feature">inherited</span>

</div>

<span class="name">[remove](https://pub.dev/documentation/flame/1.38.0/components/Component/remove.md)</span><span class="signature">(<span id="remove-param-component" class="parameter"><span class="type-annotation">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span> <span class="parameter-name">component</span></span>) <span class="returntype parameter">→ void</span> </span>  
Removes a component from the component tree.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[removeAll](https://pub.dev/documentation/flame/1.38.0/components/Component/removeAll.md)</span><span class="signature">(<span id="removeAll-param-components" class="parameter"><span class="type-annotation">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span></span> <span class="parameter-name">components</span></span>) <span class="returntype parameter">→ void</span> </span>  
Removes all the children in the list and calls [onRemove](https://pub.dev/documentation/flame/1.38.0/components/Component/onRemove.md) for all of them and their children.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[removeFromParent](https://pub.dev/documentation/flame/1.38.0/components/Component/removeFromParent.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
Remove the component from its parent in the next tick.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[removeWhere](https://pub.dev/documentation/flame/1.38.0/components/Component/removeWhere.md)</span><span class="signature">(<span id="removeWhere-param-test" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">test</span>(<span id="contains-param-c" class="parameter"><span class="type-annotation">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span> <span class="parameter-name">c</span></span>)</span>) <span class="returntype parameter">→ void</span> </span>  
Removes all the children for which the `test` function returns true.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[render](https://pub.dev/documentation/flame/1.38.0/components/Component/render.md)</span><span class="signature">(<span id="render-param-canvas" class="parameter"><span class="type-annotation">[Canvas](https://api.flutter.dev/flutter/dart-ui/Canvas-class.md)</span> <span class="parameter-name">canvas</span></span>) <span class="returntype parameter">→ void</span> </span>  
<div>

<span class="feature">inherited</span>

</div>

<span class="name">[renderChild](https://pub.dev/documentation/flame/1.38.0/components/Component/renderChild.md)</span><span class="signature">(<span id="renderChild-param-canvas" class="parameter"><span class="type-annotation">[Canvas](https://api.flutter.dev/flutter/dart-ui/Canvas-class.md)</span> <span class="parameter-name">canvas</span>, </span><span id="renderChild-param-child" class="parameter"><span class="type-annotation">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span> <span class="parameter-name">child</span></span>) <span class="returntype parameter">→ void</span> </span>  
Renders a single `child` component onto `canvas`.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[renderDebugMode](https://pub.dev/documentation/flame/1.38.0/components/Component/renderDebugMode.md)</span><span class="signature">(<span id="renderDebugMode-param-canvas" class="parameter"><span class="type-annotation">[Canvas](https://api.flutter.dev/flutter/dart-ui/Canvas-class.md)</span> <span class="parameter-name">canvas</span></span>) <span class="returntype parameter">→ void</span> </span>  
<div>

<span class="feature">inherited</span>

</div>

<span class="name">[renderTree](https://pub.dev/documentation/flame/1.38.0/components/Component/renderTree.md)</span><span class="signature">(<span id="renderTree-param-canvas" class="parameter"><span class="type-annotation">[Canvas](https://api.flutter.dev/flutter/dart-ui/Canvas-class.md)</span> <span class="parameter-name">canvas</span></span>) <span class="returntype parameter">→ void</span> </span>  
<div>

<span class="feature">inherited</span>

</div>

<span class="name">[toString](https://api.flutter.dev/flutter/dart-core/Object/toString.md)</span><span class="signature">() <span class="returntype parameter">→ [String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> </span>  
A string representation of this object.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[update](https://pub.dev/documentation/flame/1.38.0/components/Component/update.md)</span><span class="signature">(<span id="update-param-dt" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">dt</span></span>) <span class="returntype parameter">→ void</span> </span>  
This method is called periodically by the game engine to request that your component updates itself.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[updateTree](https://pub.dev/documentation/flame/1.38.0/components/Component/updateTree.md)</span><span class="signature">(<span id="updateTree-param-dt" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">dt</span></span>) <span class="returntype parameter">→ void</span> </span>  
This method traverses the component tree and calls [update](https://pub.dev/documentation/flame/1.38.0/components/Component/update.md) on all its children according to their [priority](https://pub.dev/documentation/flame/1.38.0/components/Component/priority.md) order, relative to the priority of the direct siblings, not the children or the ancestors.

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

## Operators

<span class="name">[operator ==](https://api.flutter.dev/flutter/dart-core/Object/operator_equals.md)</span><span class="signature">(<span id="==-param-other" class="parameter"><span class="type-annotation">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)</span> <span class="parameter-name">other</span></span>) <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  
The equality operator.

<div>

<span class="feature">inherited</span>

</div>

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../index.md)
2.  [giant_toad](../giant_toad/index.md)
3.  GiantToadSceneRouter class

##### giant_toad library

<div>

</div>

</div>

<div>

</div>
