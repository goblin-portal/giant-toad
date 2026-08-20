<div>

<div>

# <span class="kind-mixin">GiantToadPixelPaint</span> mixin

</div>

<div>

Superclass constraints  
- [HasPaint](https://pub.dev/documentation/flame/1.38.0/components/HasPaint-mixin.md)<span class="signature">\<<span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)</span>\></span>

Mixin applications  
- [GiantToadPixelAnimationComponent](../giant_toad/GiantToadPixelAnimationComponent-class.md)
- [GiantToadPixelSpriteComponent](../giant_toad/GiantToadPixelSpriteComponent-class.md)

Available extensions  
- [PostProcessingContextFinder](https://pub.dev/documentation/flame/1.38.0/post_process/PostProcessingContextFinder.md)

</div>

<div>

## Properties

<span class="name">[children](../giant_toad/GiantToadPixelPaint/children.md)</span> <span class="signature">→ [ReadOnlyOrderedSet](https://pub.dev/documentation/ordered_set/8.0.0/read_only_ordered_set/ReadOnlyOrderedSet-class.md)<span class="signature">\<<span class="type-parameter">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span></span>  
The children components of this component.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[debugColor](../giant_toad/GiantToadPixelPaint/debugColor.md)</span> <span class="signature">↔ [Color](https://api.flutter.dev/flutter/dart-ui/Color-class.md)</span>  
The color that the debug output should be rendered with.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[debugCoordinatesPrecision](../giant_toad/GiantToadPixelPaint/debugCoordinatesPrecision.md)</span> <span class="signature">↔ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)?</span>  
How many decimal digits to print when displaying coordinates in the debug mode. Setting this to null will suppress all coordinates from the output.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[debugMode](../giant_toad/GiantToadPixelPaint/debugMode.md)</span> <span class="signature">↔ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
Returns whether this [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md) is in debug mode or not. When a child is added to the [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md) it gets the same [debugMode](https://pub.dev/documentation/flame/1.38.0/components/Component/debugMode.md) as its parent has when it is prepared.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[debugPaint](../giant_toad/GiantToadPixelPaint/debugPaint.md)</span> <span class="signature">→ [Paint](https://api.flutter.dev/flutter/dart-ui/Paint-class.md)</span>  
The [debugColor](https://pub.dev/documentation/flame/1.38.0/components/Component/debugColor.md) represented as a [Paint](https://api.flutter.dev/flutter/dart-ui/Paint-class.md) object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[debugTextPaint](../giant_toad/GiantToadPixelPaint/debugTextPaint.md)</span> <span class="signature">→ [TextPaint](https://pub.dev/documentation/flame/1.38.0/text/TextPaint-class.md)</span>  
Returns a [TextPaint](https://pub.dev/documentation/flame/1.38.0/text/TextPaint-class.md) object with the [debugColor](https://pub.dev/documentation/flame/1.38.0/components/Component/debugColor.md) set as color for the text.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[hasChildren](../giant_toad/GiantToadPixelPaint/hasChildren.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
Whether this component has any children. Avoids the creation of the children container if not necessary.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[hashCode](../giant_toad/GiantToadPixelPaint/hashCode.md)</span> <span class="signature">→ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>  
The hash code for this object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[hasPaintLayers](../giant_toad/GiantToadPixelPaint/hasPaintLayers.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
Whether there are any paint layers defined for the component.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[hue](../giant_toad/GiantToadPixelPaint/hue.md)</span> <span class="signature">↔ [double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span>  
<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[isLoaded](../giant_toad/GiantToadPixelPaint/isLoaded.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
Whether this component has completed its [onLoad](https://pub.dev/documentation/flame/1.38.0/components/Component/onLoad.md) step.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[isLoading](../giant_toad/GiantToadPixelPaint/isLoading.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
Whether the component is currently executing its [onLoad](https://pub.dev/documentation/flame/1.38.0/components/Component/onLoad.md) step.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[isMounted](../giant_toad/GiantToadPixelPaint/isMounted.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
Whether this component is currently added to a component tree.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[isRemoved](../giant_toad/GiantToadPixelPaint/isRemoved.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
Whether the component has been removed. Originally this flag is `false`, but it becomes `true` after the component was mounted and then removed from its parent. The flag becomes `false` again when the component is mounted to a new parent.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[isRemoving](../giant_toad/GiantToadPixelPaint/isRemoving.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
Whether the component is scheduled to be removed.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[key](../giant_toad/GiantToadPixelPaint/key.md)</span> <span class="signature">→ [ComponentKey](https://pub.dev/documentation/flame/1.38.0/components/ComponentKey-class.md)?</span>  
A key that can be used to identify this component in the tree.

<div>

<span class="feature">final</span><span class="feature">inherited</span>

</div>

<span class="name">[loaded](../giant_toad/GiantToadPixelPaint/loaded.md)</span> <span class="signature">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span>  
A future that completes when this component finishes loading.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[mounted](../giant_toad/GiantToadPixelPaint/mounted.md)</span> <span class="signature">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span>  
A future that will complete once the component is mounted on its parent.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[opacity](../giant_toad/GiantToadPixelPaint/opacity.md)</span> <span class="signature">↔ [double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span>  
<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[paint](../giant_toad/GiantToadPixelPaint/paint.md)</span> <span class="signature">↔ [Paint](https://api.flutter.dev/flutter/dart-ui/Paint-class.md)</span>  
<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[paintLayers](../giant_toad/GiantToadPixelPaint/paintLayers.md)</span> <span class="signature">↔ [List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[Paint](https://api.flutter.dev/flutter/dart-ui/Paint-class.md)</span>\></span></span>  
List of paints to use (in order) during render.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[parent](../giant_toad/GiantToadPixelPaint/parent.md)</span> <span class="signature">↔ [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)?</span>  
Who owns this component in the component tree.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[priority](../giant_toad/GiantToadPixelPaint/priority.md)</span> <span class="signature">↔ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>  
Render priority of this component. This allows you to control the order in which your components are rendered.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[removed](../giant_toad/GiantToadPixelPaint/removed.md)</span> <span class="signature">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span>  
A future that completes when this component is removed from its parent.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[renderContext](../giant_toad/GiantToadPixelPaint/renderContext.md)</span> <span class="signature">→ [ComponentRenderContext](https://pub.dev/documentation/flame/1.38.0/components/ComponentRenderContext-class.md)?</span>  
Override this method if you want your component to provide a custom render context to all its children (recursively).

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[runtimeType](../giant_toad/GiantToadPixelPaint/runtimeType.md)</span> <span class="signature">→ [Type](https://api.flutter.dev/flutter/dart-core/Type-class.md)</span>  
A representation of the runtime type of the object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

</div>

<div>

## Methods

<span class="name">[add](../giant_toad/GiantToadPixelPaint/add.md)</span><span class="signature">(<span id="add-param-component" class="parameter"><span class="type-annotation">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span> <span class="parameter-name">component</span></span>) <span class="returntype parameter">→ [FutureOr](https://api.flutter.dev/flutter/dart-async/FutureOr-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> </span>  
Schedules `component` to be added as a child to this component.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[addAll](../giant_toad/GiantToadPixelPaint/addAll.md)</span><span class="signature">(<span id="addAll-param-components" class="parameter"><span class="type-annotation">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span></span> <span class="parameter-name">components</span></span>) <span class="returntype parameter">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> </span>  
A convenience method to [add](https://pub.dev/documentation/flame/1.38.0/components/Component/add.md) multiple children at once.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[addToParent](../giant_toad/GiantToadPixelPaint/addToParent.md)</span><span class="signature">(<span id="addToParent-param-parent" class="parameter"><span class="type-annotation">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span> <span class="parameter-name">parent</span></span>) <span class="returntype parameter">→ [FutureOr](https://api.flutter.dev/flutter/dart-async/FutureOr-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> </span>  
Adds this component as a child of `parent` (see [add](https://pub.dev/documentation/flame/1.38.0/components/Component/add.md) for details).

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[afterChildrenRendered](../giant_toad/GiantToadPixelPaint/afterChildrenRendered.md)</span><span class="signature">(<span id="afterChildrenRendered-param-canvas" class="parameter"><span class="type-annotation">[Canvas](https://api.flutter.dev/flutter/dart-ui/Canvas-class.md)</span> <span class="parameter-name">canvas</span></span>) <span class="returntype parameter">→ void</span> </span>  
Called once after all children have been rendered in [renderTree](https://pub.dev/documentation/flame/1.38.0/components/Component/renderTree.md).

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[ancestors](../giant_toad/GiantToadPixelPaint/ancestors.md)</span><span class="signature">({<span id="ancestors-param-includeSelf" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">includeSelf</span> = <span class="default-value">false</span></span>}) <span class="returntype parameter">→ [Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span></span> </span>  
An iterator producing this component's parent, then its parent's parent, then the great-grand-parent, and so on, until it reaches a component without a parent.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[componentsAtLocation](../giant_toad/GiantToadPixelPaint/componentsAtLocation.md)</span><span class="signature">\<<span class="type-parameter">T</span>\></span><span class="signature">(<span id="componentsAtLocation-param-locationContext" class="parameter"><span class="type-annotation">T</span> <span class="parameter-name">locationContext</span>, </span><span id="componentsAtLocation-param-nestedContexts" class="parameter"><span class="type-annotation">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span>?</span> <span class="parameter-name">nestedContexts</span>, </span><span id="componentsAtLocation-param-transformContext" class="parameter"><span class="type-annotation">T?</span> <span class="parameter-name">transformContext</span>(<span id="param-" class="parameter"><span class="type-annotation">[CoordinateTransform](https://pub.dev/documentation/flame/1.38.0/components/CoordinateTransform-class.md)</span>, </span><span id="param-" class="parameter"><span class="type-annotation">T</span></span>), </span><span id="componentsAtLocation-param-checkContains" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">checkContains</span>(<span id="param-" class="parameter"><span class="type-annotation">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>, </span><span id="param-" class="parameter"><span class="type-annotation">T</span></span>)</span>) <span class="returntype parameter">→ [Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span></span> </span>  
This is a generic implementation of [componentsAtPoint](https://pub.dev/documentation/flame/1.38.0/components/Component/componentsAtPoint.md); refer to those docs for context.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[componentsAtPoint](../giant_toad/GiantToadPixelPaint/componentsAtPoint.md)</span><span class="signature">(<span id="componentsAtPoint-param-point" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">point</span>, \[</span><span id="componentsAtPoint-param-nestedPoints" class="parameter"><span class="type-annotation">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span>\></span>?</span> <span class="parameter-name">nestedPoints</span></span>\]) <span class="returntype parameter">→ [Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span></span> </span>  
An iterable of descendant components intersecting the given point. The `point` is in the local coordinate space.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[configureSampling](../giant_toad/GiantToadPixelPaint/configureSampling.md)</span><span class="signature">(<span id="configureSampling-param-sampling" class="parameter"><span class="type-annotation">[GiantToadSampling](../giant_toad/GiantToadSampling.md)</span> <span class="parameter-name">sampling</span></span>) <span class="returntype parameter">→ void</span> </span>  

<span class="name">[contains](../giant_toad/GiantToadPixelPaint/contains.md)</span><span class="signature">(<span id="contains-param-c" class="parameter"><span class="type-annotation">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span> <span class="parameter-name">c</span></span>) <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  
Whether the children list contains the given component.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[containsLocalPoint](../giant_toad/GiantToadPixelPaint/containsLocalPoint.md)</span><span class="signature">(<span id="containsLocalPoint-param-point" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">point</span></span>) <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  
Checks whether the `point` is within this component's bounds.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[containsPoint](../giant_toad/GiantToadPixelPaint/containsPoint.md)</span><span class="signature">(<span id="containsPoint-param-point" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">point</span></span>) <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  
Same as [containsLocalPoint](https://pub.dev/documentation/flame/1.38.0/components/Component/containsLocalPoint.md), but for a "global" `point`.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[createComponentSet](../giant_toad/GiantToadPixelPaint/createComponentSet.md)</span><span class="signature">() <span class="returntype parameter">→ [OrderedSet](https://pub.dev/documentation/ordered_set/8.0.0/ordered_set/OrderedSet-class.md)<span class="signature">\<<span class="type-parameter">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span></span> </span>  
This method creates the children container for the current component. Override this method if you need to have a custom [OrderedSet](https://pub.dev/documentation/ordered_set/8.0.0/ordered_set/OrderedSet-class.md) within a particular class.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[deletePaint](../giant_toad/GiantToadPixelPaint/deletePaint.md)</span><span class="signature">(<span id="deletePaint-param-paintId" class="parameter"><span class="type-annotation">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)</span> <span class="parameter-name">paintId</span></span>) <span class="returntype parameter">→ void</span> </span>  
Removes a paint from the collection.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[descendants](../giant_toad/GiantToadPixelPaint/descendants.md)</span><span class="signature">({<span id="descendants-param-includeSelf" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">includeSelf</span> = <span class="default-value">false</span>, </span><span id="descendants-param-reversed" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">reversed</span> = <span class="default-value">false</span></span>}) <span class="returntype parameter">→ [Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span></span> </span>  
Recursively enumerates all nested [children](https://pub.dev/documentation/flame/1.38.0/components/Component/children.md).

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[findGame](../giant_toad/GiantToadPixelPaint/findGame.md)</span><span class="signature">() <span class="returntype parameter">→ [FlameGame](https://pub.dev/documentation/flame/1.38.0/game/FlameGame-class.md)<span class="signature">\<<span class="type-parameter">[World](https://pub.dev/documentation/flame/1.38.0/camera/World-class.md)</span>\></span>?</span> </span>  
Fetches the nearest [FlameGame](https://pub.dev/documentation/flame/1.38.0/game/FlameGame-class.md) ancestor to the component.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[findParent](../giant_toad/GiantToadPixelPaint/findParent.md)</span><span class="signature">\<<span class="type-parameter">T extends [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span><span class="signature">({<span id="findParent-param-includeSelf" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">includeSelf</span> = <span class="default-value">false</span></span>}) <span class="returntype parameter">→ T?</span> </span>  
Returns the closest parent further up the hierarchy that satisfies type=T, or null if no such parent can be found.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[findPostProcessFromContext](https://pub.dev/documentation/flame/1.38.0/post_process/PostProcessingContextFinder/findPostProcessFromContext.md)</span><span class="signature">\<<span class="type-parameter">T extends [PostProcess](https://pub.dev/documentation/flame/1.38.0/post_process/PostProcess-class.md)</span>\></span><span class="signature">() <span class="returntype parameter">→ T?</span> </span>  
Available on [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md), provided by the [PostProcessingContextFinder](https://pub.dev/documentation/flame/1.38.0/post_process/PostProcessingContextFinder.md) extension

<span class="name">[findRenderContext](../giant_toad/GiantToadPixelPaint/findRenderContext.md)</span><span class="signature">\<<span class="type-parameter">T extends [ComponentRenderContext](https://pub.dev/documentation/flame/1.38.0/components/ComponentRenderContext-class.md)</span>\></span><span class="signature">() <span class="returntype parameter">→ T?</span> </span>  
<div>

<span class="feature">inherited</span>

</div>

<span class="name">[findRootGame](../giant_toad/GiantToadPixelPaint/findRootGame.md)</span><span class="signature">() <span class="returntype parameter">→ [FlameGame](https://pub.dev/documentation/flame/1.38.0/game/FlameGame-class.md)<span class="signature">\<<span class="type-parameter">[World](https://pub.dev/documentation/flame/1.38.0/camera/World-class.md)</span>\></span>?</span> </span>  
Fetches the root [FlameGame](https://pub.dev/documentation/flame/1.38.0/game/FlameGame-class.md) ancestor to the component.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[firstChild](../giant_toad/GiantToadPixelPaint/firstChild.md)</span><span class="signature">\<<span class="type-parameter">T extends [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span><span class="signature">() <span class="returntype parameter">→ T?</span> </span>  
Returns the first child that matches the given type `T`, or null if there are no such children.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[getAlpha](../giant_toad/GiantToadPixelPaint/getAlpha.md)</span><span class="signature">({<span id="getAlpha-param-paintId" class="parameter"><span class="type-annotation">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span> <span class="parameter-name">paintId</span></span>}) <span class="returntype parameter">→ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> </span>  
Returns the current opacity.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[getOpacity](../giant_toad/GiantToadPixelPaint/getOpacity.md)</span><span class="signature">({<span id="getOpacity-param-paintId" class="parameter"><span class="type-annotation">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span> <span class="parameter-name">paintId</span></span>}) <span class="returntype parameter">→ [double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> </span>  
Returns the current opacity.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[getPaint](../giant_toad/GiantToadPixelPaint/getPaint.md)</span><span class="signature">(\[<span id="getPaint-param-paintId" class="parameter"><span class="type-annotation">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span> <span class="parameter-name">paintId</span></span>\]) <span class="returntype parameter">→ [Paint](https://api.flutter.dev/flutter/dart-ui/Paint-class.md)</span> </span>  
Gets a paint from the collection.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[lastChild](../giant_toad/GiantToadPixelPaint/lastChild.md)</span><span class="signature">\<<span class="type-parameter">T extends [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span><span class="signature">() <span class="returntype parameter">→ T?</span> </span>  
Returns the last child that matches the given type `T`, or null if there are no such children.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[makeOpaque](../giant_toad/GiantToadPixelPaint/makeOpaque.md)</span><span class="signature">({<span id="makeOpaque-param-paintId" class="parameter"><span class="type-annotation">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span> <span class="parameter-name">paintId</span></span>}) <span class="returntype parameter">→ void</span> </span>  
Manipulate the paint to make it fully opaque.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[makeTransparent](../giant_toad/GiantToadPixelPaint/makeTransparent.md)</span><span class="signature">({<span id="makeTransparent-param-paintId" class="parameter"><span class="type-annotation">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span> <span class="parameter-name">paintId</span></span>}) <span class="returntype parameter">→ void</span> </span>  
Manipulate the paint to make it fully transparent.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[noSuchMethod](../giant_toad/GiantToadPixelPaint/noSuchMethod.md)</span><span class="signature">(<span id="noSuchMethod-param-invocation" class="parameter"><span class="type-annotation">[Invocation](https://api.flutter.dev/flutter/dart-core/Invocation-class.md)</span> <span class="parameter-name">invocation</span></span>) <span class="returntype parameter">→ dynamic</span> </span>  
Invoked when a nonexistent method or property is accessed.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[onChanged](../giant_toad/GiantToadPixelPaint/onChanged.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
Can be overridden to react when the [paint](https://pub.dev/documentation/flame/1.38.0/components/HasPaint/paint.md) object changed.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[onChildrenChanged](../giant_toad/GiantToadPixelPaint/onChildrenChanged.md)</span><span class="signature">(<span id="onChildrenChanged-param-child" class="parameter"><span class="type-annotation">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span> <span class="parameter-name">child</span>, </span><span id="onChildrenChanged-param-type" class="parameter"><span class="type-annotation">[ChildrenChangeType](https://pub.dev/documentation/flame/1.38.0/components/ChildrenChangeType.md)</span> <span class="parameter-name">type</span></span>) <span class="returntype parameter">→ void</span> </span>  
This method will be invoked from lifecycle if `child` has been added to or removed from its parent children list.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[onGameResize](../giant_toad/GiantToadPixelPaint/onGameResize.md)</span><span class="signature">(<span id="onGameResize-param-size" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">size</span></span>) <span class="returntype parameter">→ void</span> </span>  
Called whenever the size of the top-level Canvas changes.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[onHotReload](../giant_toad/GiantToadPixelPaint/onHotReload.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
Called when Flutter's hot reload is triggered.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[onLoad](../giant_toad/GiantToadPixelPaint/onLoad.md)</span><span class="signature">() <span class="returntype parameter">→ [FutureOr](https://api.flutter.dev/flutter/dart-async/FutureOr-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> </span>  
Late initialization method for [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md).

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[onMount](../giant_toad/GiantToadPixelPaint/onMount.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
Called when the component is added to its parent.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[onParentResize](../giant_toad/GiantToadPixelPaint/onParentResize.md)</span><span class="signature">(<span id="onParentResize-param-maxSize" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">maxSize</span></span>) <span class="returntype parameter">→ void</span> </span>  
Called whenever the parent of this component changes size; and also once before [onMount](https://pub.dev/documentation/flame/1.38.0/components/Component/onMount.md).

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[onRemove](../giant_toad/GiantToadPixelPaint/onRemove.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
Called right before the component is removed from its parent and also before it changes parents (and is thus temporarily removed from the component tree).

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[opacityProviderOf](../giant_toad/GiantToadPixelPaint/opacityProviderOf.md)</span><span class="signature">(<span id="opacityProviderOf-param-paintId" class="parameter"><span class="type-annotation">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)</span> <span class="parameter-name">paintId</span></span>) <span class="returntype parameter">→ [OpacityProvider](https://pub.dev/documentation/flame/1.38.0/effects/OpacityProvider-class.md)</span> </span>  
Creates an [OpacityProvider](https://pub.dev/documentation/flame/1.38.0/effects/OpacityProvider-class.md) for given `paintId` and can be used as `target` for [OpacityEffect](https://pub.dev/documentation/flame/1.38.0/effects/OpacityEffect-class.md).

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[opacityProviderOfList](../giant_toad/GiantToadPixelPaint/opacityProviderOfList.md)</span><span class="signature">({<span id="opacityProviderOfList-param-paintIds" class="parameter"><span class="type-annotation">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span>\></span>?</span> <span class="parameter-name">paintIds</span>, </span><span id="opacityProviderOfList-param-includeLayers" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">includeLayers</span> = <span class="default-value">true</span></span>}) <span class="returntype parameter">→ [OpacityProvider](https://pub.dev/documentation/flame/1.38.0/effects/OpacityProvider-class.md)</span> </span>  
Creates an [OpacityProvider](https://pub.dev/documentation/flame/1.38.0/effects/OpacityProvider-class.md) for given list of `paintIds` and can be used as `target` for [OpacityEffect](https://pub.dev/documentation/flame/1.38.0/effects/OpacityEffect-class.md).

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[propagateToChildren](../giant_toad/GiantToadPixelPaint/propagateToChildren.md)</span><span class="signature">\<<span class="type-parameter">T extends [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span><span class="signature">(<span id="propagateToChildren-param-handler" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">handler</span>(<span id="param-" class="parameter"><span class="type-annotation">T</span></span>), {</span><span id="propagateToChildren-param-includeSelf" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">includeSelf</span> = <span class="default-value">false</span></span>}) <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  
This method first calls the passed handler on the leaves in the tree, the children without any children of their own. Then it continues through all other children. The propagation continues until the handler returns false, which means "do not continue", or when the handler has been called with all children.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[rebalanceChildren](../giant_toad/GiantToadPixelPaint/rebalanceChildren.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
<div>

<span class="feature">inherited</span>

</div>

<span class="name">[remove](../giant_toad/GiantToadPixelPaint/remove.md)</span><span class="signature">(<span id="remove-param-component" class="parameter"><span class="type-annotation">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span> <span class="parameter-name">component</span></span>) <span class="returntype parameter">→ void</span> </span>  
Removes a component from the component tree.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[removeAll](../giant_toad/GiantToadPixelPaint/removeAll.md)</span><span class="signature">(<span id="removeAll-param-components" class="parameter"><span class="type-annotation">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span></span> <span class="parameter-name">components</span></span>) <span class="returntype parameter">→ void</span> </span>  
Removes all the children in the list and calls [onRemove](https://pub.dev/documentation/flame/1.38.0/components/Component/onRemove.md) for all of them and their children.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[removeFromParent](../giant_toad/GiantToadPixelPaint/removeFromParent.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
Remove the component from its parent in the next tick.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[removeWhere](../giant_toad/GiantToadPixelPaint/removeWhere.md)</span><span class="signature">(<span id="removeWhere-param-test" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">test</span>(<span id="contains-param-c" class="parameter"><span class="type-annotation">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span> <span class="parameter-name">c</span></span>)</span>) <span class="returntype parameter">→ void</span> </span>  
Removes all the children for which the `test` function returns true.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[render](../giant_toad/GiantToadPixelPaint/render.md)</span><span class="signature">(<span id="render-param-canvas" class="parameter"><span class="type-annotation">[Canvas](https://api.flutter.dev/flutter/dart-ui/Canvas-class.md)</span> <span class="parameter-name">canvas</span></span>) <span class="returntype parameter">→ void</span> </span>  
<div>

<span class="feature">inherited</span>

</div>

<span class="name">[renderChild](../giant_toad/GiantToadPixelPaint/renderChild.md)</span><span class="signature">(<span id="renderChild-param-canvas" class="parameter"><span class="type-annotation">[Canvas](https://api.flutter.dev/flutter/dart-ui/Canvas-class.md)</span> <span class="parameter-name">canvas</span>, </span><span id="renderChild-param-child" class="parameter"><span class="type-annotation">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span> <span class="parameter-name">child</span></span>) <span class="returntype parameter">→ void</span> </span>  
Renders a single `child` component onto `canvas`.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[renderDebugMode](../giant_toad/GiantToadPixelPaint/renderDebugMode.md)</span><span class="signature">(<span id="renderDebugMode-param-canvas" class="parameter"><span class="type-annotation">[Canvas](https://api.flutter.dev/flutter/dart-ui/Canvas-class.md)</span> <span class="parameter-name">canvas</span></span>) <span class="returntype parameter">→ void</span> </span>  
<div>

<span class="feature">inherited</span>

</div>

<span class="name">[renderTree](../giant_toad/GiantToadPixelPaint/renderTree.md)</span><span class="signature">(<span id="renderTree-param-canvas" class="parameter"><span class="type-annotation">[Canvas](https://api.flutter.dev/flutter/dart-ui/Canvas-class.md)</span> <span class="parameter-name">canvas</span></span>) <span class="returntype parameter">→ void</span> </span>  
<div>

<span class="feature">inherited</span>

</div>

<span class="name">[setAlpha](../giant_toad/GiantToadPixelPaint/setAlpha.md)</span><span class="signature">(<span id="setAlpha-param-alpha" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">alpha</span>, {</span><span id="setAlpha-param-paintId" class="parameter"><span class="type-annotation">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span> <span class="parameter-name">paintId</span></span>}) <span class="returntype parameter">→ void</span> </span>  
Changes the opacity of the paint.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[setColor](../giant_toad/GiantToadPixelPaint/setColor.md)</span><span class="signature">(<span id="setColor-param-color" class="parameter"><span class="type-annotation">[Color](https://api.flutter.dev/flutter/dart-ui/Color-class.md)</span> <span class="parameter-name">color</span>, {</span><span id="setColor-param-paintId" class="parameter"><span class="type-annotation">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span> <span class="parameter-name">paintId</span></span>}) <span class="returntype parameter">→ void</span> </span>  
Shortcut for changing the color of the paint.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[setOpacity](../giant_toad/GiantToadPixelPaint/setOpacity.md)</span><span class="signature">(<span id="setOpacity-param-opacity" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">opacity</span>, {</span><span id="setOpacity-param-paintId" class="parameter"><span class="type-annotation">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span> <span class="parameter-name">paintId</span></span>}) <span class="returntype parameter">→ void</span> </span>  
Changes the opacity of the paint.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[setPaint](../giant_toad/GiantToadPixelPaint/setPaint.md)</span><span class="signature">(<span id="setPaint-param-paintId" class="parameter"><span class="type-annotation">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)</span> <span class="parameter-name">paintId</span>, </span><span id="setPaint-param-paint" class="parameter"><span class="type-annotation">[Paint](https://api.flutter.dev/flutter/dart-ui/Paint-class.md)</span> <span class="parameter-name">paint</span></span>) <span class="returntype parameter">→ void</span> </span>  
Sets a paint on the collection.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[tint](../giant_toad/GiantToadPixelPaint/tint.md)</span><span class="signature">(<span id="tint-param-color" class="parameter"><span class="type-annotation">[Color](https://api.flutter.dev/flutter/dart-ui/Color-class.md)</span> <span class="parameter-name">color</span>, {</span><span id="tint-param-paintId" class="parameter"><span class="type-annotation">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)?</span> <span class="parameter-name">paintId</span></span>}) <span class="returntype parameter">→ void</span> </span>  
Applies a color filter to the paint which will make things rendered with the paint looking like it was tinted with the given color.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[toString](../giant_toad/GiantToadPixelPaint/toString.md)</span><span class="signature">() <span class="returntype parameter">→ [String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> </span>  
A string representation of this object.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[update](../giant_toad/GiantToadPixelPaint/update.md)</span><span class="signature">(<span id="update-param-dt" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">dt</span></span>) <span class="returntype parameter">→ void</span> </span>  
This method is called periodically by the game engine to request that your component updates itself.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[updateTree](../giant_toad/GiantToadPixelPaint/updateTree.md)</span><span class="signature">(<span id="updateTree-param-dt" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">dt</span></span>) <span class="returntype parameter">→ void</span> </span>  
This method traverses the component tree and calls [update](https://pub.dev/documentation/flame/1.38.0/components/Component/update.md) on all its children according to their [priority](https://pub.dev/documentation/flame/1.38.0/components/Component/priority.md) order, relative to the priority of the direct siblings, not the children or the ancestors.

<div>

<span class="feature">inherited</span>

</div>

</div>

<div>

## Operators

<span class="name">[operator ==](../giant_toad/GiantToadPixelPaint/operator_equals.md)</span><span class="signature">(<span id="==-param-other" class="parameter"><span class="type-annotation">[Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)</span> <span class="parameter-name">other</span></span>) <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  
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
3.  GiantToadPixelPaint mixin

##### giant_toad library

<div>

</div>

</div>

<div>

</div>
