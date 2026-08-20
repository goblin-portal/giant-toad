<div>

<div>

# <span class="kind-class">GiantToadGame\<<span class="type-parameter">W extends World</span>\></span> class

</div>

<div>

A Flame game using Giant Toad's default pixel-art resolution policy.

The default 800×600 authored resolution is presented in expanding mode at 2× pixel scale. A 1600×900 window therefore exposes an 800×450 logical viewport; resizing changes both visible logical dimensions.

</div>

<div>

Inheritance  
- [Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)
- [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)
- [FlameGame](https://pub.dev/documentation/flame/1.38.0/game/FlameGame-class.md)<span class="signature">\<<span class="type-parameter">W</span>\></span>
- GiantToadGame

Available extensions  
- [ParallaxComponentExtension](https://pub.dev/documentation/flame/1.38.0/components/ParallaxComponentExtension.md)
- [ParallaxExtension](https://pub.dev/documentation/flame/1.38.0/parallax/ParallaxExtension.md)
- [PostProcessingContextFinder](https://pub.dev/documentation/flame/1.38.0/post_process/PostProcessingContextFinder.md)
- [SpriteBatchExtension](https://pub.dev/documentation/flame/1.38.0/sprite/SpriteBatchExtension.md)

</div>

<div>

## Constructors

<span class="name">[GiantToadGame](../giant_toad/GiantToadGame/GiantToadGame.md)</span><span class="signature">({<span id="param-world" class="parameter">required <span class="type-annotation">W</span> <span class="parameter-name">world</span>, </span><span id="param-resolution" class="parameter"><span class="type-annotation">[GiantToadResolution](../giant_toad/GiantToadResolution-class.md)?</span> <span class="parameter-name">resolution</span>, </span><span id="param-viewportMode" class="parameter"><span class="type-annotation">[GiantToadViewportMode](../giant_toad/GiantToadViewportMode.md)</span> <span class="parameter-name">viewportMode</span> = <span class="default-value">GiantToadViewportMode.expand</span>, </span><span id="param-pixelScale" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span> <span class="parameter-name">pixelScale</span> = <span class="default-value">2</span></span>})</span>  

</div>

<div>

## Properties

<span class="name">[assets](https://pub.dev/documentation/flame/1.38.0/game/Game/assets.md)</span> <span class="signature">↔ [AssetsCache](https://pub.dev/documentation/flame/1.38.0/cache/AssetsCache-class.md)</span>  
The cache of all (non-image) assets loaded into the game. This defaults to the global [Flame.assets](https://pub.dev/documentation/flame/1.38.0/flame/Flame/assets.md) cache, but you can replace this with another instance if needed.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[buildContext](https://pub.dev/documentation/flame/1.38.0/game/Game/buildContext.md)</span> <span class="signature">→ [BuildContext](https://api.flutter.dev/flutter/widgets/BuildContext-class.md)?</span>  
Currently attached build context. Can be null if not attached.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[camera](https://pub.dev/documentation/flame/1.38.0/game/FlameGame/camera.md)</span> <span class="signature">↔ [CameraComponent](https://pub.dev/documentation/flame/1.38.0/camera/CameraComponent-class.md)</span>  
The component that is responsible for rendering your [world](https://pub.dev/documentation/flame/1.38.0/game/FlameGame/world.md).

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[canvasSize](https://pub.dev/documentation/flame/1.38.0/game/Game/canvasSize.md)</span> <span class="signature">→ [Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span>  
<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[children](https://pub.dev/documentation/flame/1.38.0/components/Component/children.md)</span> <span class="signature">→ [ReadOnlyOrderedSet](https://pub.dev/documentation/ordered_set/8.0.0/read_only_ordered_set/ReadOnlyOrderedSet-class.md)<span class="signature">\<<span class="type-parameter">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span></span>  
The children components of this component.

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

<span class="name">[gameStateListeners](https://pub.dev/documentation/flame/1.38.0/game/Game/gameStateListeners.md)</span> <span class="signature">→ [List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[VoidCallback](https://api.flutter.dev/flutter/dart-ui/VoidCallback.md)</span>\></span></span>  
<div>

<span class="feature">final</span><span class="feature">inherited</span>

</div>

<span class="name">[gestureDetectors](https://pub.dev/documentation/flame/1.38.0/game/Game/gestureDetectors.md)</span> <span class="signature">→ GestureDetectorBuilder</span>  
Used internally by various mixins that need to use gesture detection functionality in Flutter.

<div>

<span class="feature">late</span><span class="feature">final</span><span class="feature">inherited</span>

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

<span class="name">[hasLayout](https://pub.dev/documentation/flame/1.38.0/game/Game/hasLayout.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
Indicates if this game instance is connected to a GameWidget that is live in the flutter widget tree. Once this is true, the game is ready to have its size used or in the case of a FlameGame, to receive components.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[hasLifecycleEvents](https://pub.dev/documentation/flame/1.38.0/game/FlameGame/hasLifecycleEvents.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[images](https://pub.dev/documentation/flame/1.38.0/game/Game/images.md)</span> <span class="signature">↔ [Images](https://pub.dev/documentation/flame/1.38.0/cache/Images-class.md)</span>  
The cache of all images loaded into the game. This defaults to the global [Flame.images](https://pub.dev/documentation/flame/1.38.0/flame/Flame/images.md) cache, but you can replace it with a new cache instance if needed.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[isAttached](https://pub.dev/documentation/flame/1.38.0/game/Game/isAttached.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
Whether the game widget was attached to the Flutter tree.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

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

<span class="name">[isPausedOnBackground](https://pub.dev/documentation/flame/1.38.0/game/FlameGame/isPausedOnBackground.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
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

<span class="name">[lifecycleEventsProcessed](https://pub.dev/documentation/flame/1.38.0/game/FlameGame/lifecycleEventsProcessed.md)</span> <span class="signature">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span>  
A future that will complete once all lifecycle events have been processed.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

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

<span class="name">[mouseCursor](https://pub.dev/documentation/flame/1.38.0/game/Game/mouseCursor.md)</span> <span class="signature">↔ [MouseCursor](https://api.flutter.dev/flutter/services/MouseCursor-class.md)</span>  
Used to change the mouse cursor of the GameWidget running this game. Setting the value to null will make the GameWidget defer the choice of the cursor to the closest region available on the tree.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[mouseDetector](https://pub.dev/documentation/flame/1.38.0/game/Game/mouseDetector.md)</span> <span class="signature">↔ void Function<span class="signature">(<span id="param-event" class="parameter"><span class="type-annotation">[PointerHoverEvent](https://api.flutter.dev/flutter/gestures/PointerHoverEvent-class.md)</span> <span class="parameter-name">event</span></span>)</span>?</span>  
Set by the PointerMoveDispatcher to receive mouse events from the game widget.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[mousePressDetector](https://pub.dev/documentation/flame/1.38.0/game/Game/mousePressDetector.md)</span> <span class="signature">↔ void Function<span class="signature">(<span id="param-event" class="parameter"><span class="type-annotation">[PointerDownEvent](https://api.flutter.dev/flutter/gestures/PointerDownEvent-class.md)</span> <span class="parameter-name">event</span></span>)</span>?</span>  
Set by the PointerMoveDispatcher to receive mouse press events from the game widget so it can fire `onHoverCancel` on hovered `HoverCallbacks` components when the user presses a button while hovering.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[overlays](https://pub.dev/documentation/flame/1.38.0/game/Game/overlays.md)</span> <span class="signature">→ OverlayManager</span>  
A property that stores an `OverlayManager`

<div>

<span class="feature">late</span><span class="feature">final</span><span class="feature">inherited</span>

</div>

<span class="name">[parent](https://pub.dev/documentation/flame/1.38.0/components/Component/parent.md)</span> <span class="signature">↔ [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)?</span>  
Who owns this component in the component tree.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[paused](https://pub.dev/documentation/flame/1.38.0/game/Game/paused.md)</span> <span class="signature">↔ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
Returns is the engine if currently paused or running

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[pauseWhenBackgrounded](https://pub.dev/documentation/flame/1.38.0/game/FlameGame/pauseWhenBackgrounded.md)</span> <span class="signature">↔ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
Whether the game should pause when the app is backgrounded.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[pixelScale](../giant_toad/GiantToadGame/pixelScale.md)</span> <span class="signature">→ [int](https://api.flutter.dev/flutter/dart-core/int-class.md)</span>  
Integer presentation scale used by expanding mode.

<div>

<span class="feature">final</span>

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

<span class="name">[renderBox](https://pub.dev/documentation/flame/1.38.0/game/Game/renderBox.md)</span> <span class="signature">→ GameRenderBox</span>  
Just a reference back to the render box that is kept up to date by the engine.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[renderContext](https://pub.dev/documentation/flame/1.38.0/components/Component/renderContext.md)</span> <span class="signature">→ [ComponentRenderContext](https://pub.dev/documentation/flame/1.38.0/components/ComponentRenderContext-class.md)?</span>  
Override this method if you want your component to provide a custom render context to all its children (recursively).

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[resolution](../giant_toad/GiantToadGame/resolution.md)</span> <span class="signature">→ [GiantToadResolution](../giant_toad/GiantToadResolution-class.md)</span>  
The fixed logical canvas used by this game.

<div>

<span class="feature">final</span>

</div>

<span class="name">[runtimeType](https://api.flutter.dev/flutter/dart-core/Object/runtimeType.md)</span> <span class="signature">→ [Type](https://api.flutter.dev/flutter/dart-core/Type-class.md)</span>  
A representation of the runtime type of the object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[scrollDetector](https://pub.dev/documentation/flame/1.38.0/game/Game/scrollDetector.md)</span> <span class="signature">↔ void Function<span class="signature">(<span id="param-event" class="parameter"><span class="type-annotation">[PointerScrollEvent](https://api.flutter.dev/flutter/gestures/PointerScrollEvent-class.md)</span> <span class="parameter-name">event</span></span>)</span>?</span>  
Set by the ScrollDispatcher to receive pointer scroll events from the game widget.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[size](https://pub.dev/documentation/flame/1.38.0/game/FlameGame/size.md)</span> <span class="signature">→ [Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span>  
This is overwritten to consider the viewport transformation.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[viewportMode](../giant_toad/GiantToadGame/viewportMode.md)</span> <span class="signature">→ [GiantToadViewportMode](../giant_toad/GiantToadViewportMode.md)</span>  
Selects the logical viewport policy.

<div>

<span class="feature">final</span>

</div>

<span class="name">[world](https://pub.dev/documentation/flame/1.38.0/game/FlameGame/world.md)</span> <span class="signature">↔ W</span>  
The [World](https://pub.dev/documentation/flame/1.38.0/camera/World-class.md) that the [camera](https://pub.dev/documentation/flame/1.38.0/game/FlameGame/camera.md) is rendering. Inside of this world is where most of your components should be added.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

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

<span class="name">[addGameStateListener](https://pub.dev/documentation/flame/1.38.0/game/Game/addGameStateListener.md)</span><span class="signature">(<span id="addGameStateListener-param-callback" class="parameter"><span class="type-annotation">[VoidCallback](https://api.flutter.dev/flutter/dart-ui/VoidCallback.md)</span> <span class="parameter-name">callback</span></span>) <span class="returntype parameter">→ void</span> </span>  
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

<span class="name">[assertHasLayout](https://pub.dev/documentation/flame/1.38.0/game/Game/assertHasLayout.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
<div>

<span class="feature">inherited</span>

</div>

<span class="name">[attach](https://pub.dev/documentation/flame/1.38.0/game/Game/attach.md)</span><span class="signature">(<span id="attach-param-owner" class="parameter"><span class="type-annotation">[PipelineOwner](https://api.flutter.dev/flutter/rendering/PipelineOwner-class.md)</span> <span class="parameter-name">owner</span>, </span><span id="attach-param-gameRenderBox" class="parameter"><span class="type-annotation">GameRenderBox</span> <span class="parameter-name">gameRenderBox</span></span>) <span class="returntype parameter">→ void</span> </span>  
Marks game as attached to any Flutter widget tree.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[backgroundColor](https://pub.dev/documentation/flame/1.38.0/game/Game/backgroundColor.md)</span><span class="signature">() <span class="returntype parameter">→ [Color](https://api.flutter.dev/flutter/dart-ui/Color-class.md)</span> </span>  
Returns the game background color. By default it will return a black color. It cannot be changed at runtime, because the game widget does not get rebuild when this value changes.

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

<span class="name">[componentsNotifier](https://pub.dev/documentation/flame/1.38.0/game/FlameGame/componentsNotifier.md)</span><span class="signature">\<<span class="type-parameter">T extends [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span><span class="signature">() <span class="returntype parameter">→ [ComponentsNotifier](https://pub.dev/documentation/flame/1.38.0/components/ComponentsNotifier-class.md)<span class="signature">\<<span class="type-parameter">T</span>\></span></span> </span>  
Returns a [ComponentsNotifier](https://pub.dev/documentation/flame/1.38.0/components/ComponentsNotifier-class.md) for the given type `W`.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[contains](https://pub.dev/documentation/flame/1.38.0/components/Component/contains.md)</span><span class="signature">(<span id="contains-param-c" class="parameter"><span class="type-annotation">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span> <span class="parameter-name">c</span></span>) <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  
Whether the children list contains the given component.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[containsEventHandlerAt](https://pub.dev/documentation/flame/1.38.0/game/FlameGame/containsEventHandlerAt.md)</span><span class="signature">(<span id="containsEventHandlerAt-param-position" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">position</span></span>) <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  
Whether the game has an event-handling component at the given `position`.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[containsLocalPoint](https://pub.dev/documentation/flame/1.38.0/game/FlameGame/containsLocalPoint.md)</span><span class="signature">(<span id="containsLocalPoint-param-point" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">point</span></span>) <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  
Whether a point is within the boundaries of the visible part of the game.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[containsPoint](https://pub.dev/documentation/flame/1.38.0/components/Component/containsPoint.md)</span><span class="signature">(<span id="containsPoint-param-point" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">point</span></span>) <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  
Same as [containsLocalPoint](https://pub.dev/documentation/flame/1.38.0/components/Component/containsLocalPoint.md), but for a "global" `point`.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[convertGlobalToLocalCoordinate](https://pub.dev/documentation/flame/1.38.0/game/Game/convertGlobalToLocalCoordinate.md)</span><span class="signature">(<span id="convertGlobalToLocalCoordinate-param-point" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">point</span></span>) <span class="returntype parameter">→ [Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> </span>  
Converts a global coordinate (i.e. w.r.t. the app itself) to a local coordinate (i.e. w.r.t. he game widget). If the widget occupies the whole app ("full screen" games), or is not attached to Flutter, this operation is the identity.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[convertLocalToGlobalCoordinate](https://pub.dev/documentation/flame/1.38.0/game/Game/convertLocalToGlobalCoordinate.md)</span><span class="signature">(<span id="convertLocalToGlobalCoordinate-param-point" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">point</span></span>) <span class="returntype parameter">→ [Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> </span>  
Converts a local coordinate (i.e. w.r.t. the game widget) to a global coordinate (i.e. w.r.t. the app itself). If the widget occupies the whole app ("full screen" games), or is not attached to Flutter, this operation is the identity.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[createComponentSet](https://pub.dev/documentation/flame/1.38.0/components/Component/createComponentSet.md)</span><span class="signature">() <span class="returntype parameter">→ [OrderedSet](https://pub.dev/documentation/ordered_set/8.0.0/ordered_set/OrderedSet-class.md)<span class="signature">\<<span class="type-parameter">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span></span> </span>  
This method creates the children container for the current component. Override this method if you need to have a custom [OrderedSet](https://pub.dev/documentation/ordered_set/8.0.0/ordered_set/OrderedSet-class.md) within a particular class.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[currentTime](https://pub.dev/documentation/flame/1.38.0/game/FlameGame/currentTime.md)</span><span class="signature">() <span class="returntype parameter">→ [double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> </span>  
Returns the current time in seconds with microseconds precision.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[descendants](https://pub.dev/documentation/flame/1.38.0/components/Component/descendants.md)</span><span class="signature">({<span id="descendants-param-includeSelf" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">includeSelf</span> = <span class="default-value">false</span>, </span><span id="descendants-param-reversed" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">reversed</span> = <span class="default-value">false</span></span>}) <span class="returntype parameter">→ [Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span></span> </span>  
Recursively enumerates all nested [children](https://pub.dev/documentation/flame/1.38.0/components/Component/children.md).

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[detach](https://pub.dev/documentation/flame/1.38.0/game/Game/detach.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
Marks game as no longer attached to any Flutter widget tree.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[dispose](https://pub.dev/documentation/flame/1.38.0/game/FlameGame/dispose.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
Removes all children from the game and clears all caches.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[findByKey](https://pub.dev/documentation/flame/1.38.0/game/FlameGame/findByKey.md)</span><span class="signature">\<<span class="type-parameter">T extends [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span><span class="signature">(<span id="findByKey-param-key" class="parameter"><span class="type-annotation">[ComponentKey](https://pub.dev/documentation/flame/1.38.0/components/ComponentKey-class.md)</span> <span class="parameter-name">key</span></span>) <span class="returntype parameter">→ T?</span> </span>  
<div>

<span class="feature">inherited</span>

</div>

<span class="name">[findByKeyName](https://pub.dev/documentation/flame/1.38.0/game/FlameGame/findByKeyName.md)</span><span class="signature">\<<span class="type-parameter">T extends [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span><span class="signature">(<span id="findByKeyName-param-name" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">name</span></span>) <span class="returntype parameter">→ T?</span> </span>  
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

<span class="name">[lastChild](https://pub.dev/documentation/flame/1.38.0/components/Component/lastChild.md)</span><span class="signature">\<<span class="type-parameter">T extends [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span><span class="signature">() <span class="returntype parameter">→ T?</span> </span>  
Returns the last child that matches the given type `T`, or null if there are no such children.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[lifecycleStateChange](https://pub.dev/documentation/flame/1.38.0/game/FlameGame/lifecycleStateChange.md)</span><span class="signature">(<span id="lifecycleStateChange-param-state" class="parameter"><span class="type-annotation">[AppLifecycleState](https://api.flutter.dev/flutter/dart-ui/AppLifecycleState.md)</span> <span class="parameter-name">state</span></span>) <span class="returntype parameter">→ void</span> </span>  
This is the lifecycle state change hook; every time the game is resumed, paused or suspended, this is called.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[loadParallax](https://pub.dev/documentation/flame/1.38.0/parallax/ParallaxExtension/loadParallax.md)</span><span class="signature">(<span id="loadParallax-param-dataList" class="parameter"><span class="type-annotation">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[ParallaxData](https://pub.dev/documentation/flame/1.38.0/parallax/ParallaxData-class.md)</span>\></span></span> <span class="parameter-name">dataList</span>, {</span><span id="loadParallax-param-size" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">size</span>, </span><span id="loadParallax-param-baseVelocity" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">baseVelocity</span>, </span><span id="loadParallax-param-velocityMultiplierDelta" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">velocityMultiplierDelta</span>, </span><span id="loadParallax-param-repeat" class="parameter"><span class="type-annotation">[ImageRepeat](https://api.flutter.dev/flutter/painting/ImageRepeat.md)</span> <span class="parameter-name">repeat</span> = <span class="default-value">ImageRepeat.repeatX</span>, </span><span id="loadParallax-param-alignment" class="parameter"><span class="type-annotation">[Alignment](https://api.flutter.dev/flutter/painting/Alignment-class.md)</span> <span class="parameter-name">alignment</span> = <span class="default-value">Alignment.bottomLeft</span>, </span><span id="loadParallax-param-fill" class="parameter"><span class="type-annotation">[LayerFill](https://pub.dev/documentation/flame/1.38.0/parallax/LayerFill.md)</span> <span class="parameter-name">fill</span> = <span class="default-value">LayerFill.height</span>, </span><span id="loadParallax-param-filterQuality" class="parameter"><span class="type-annotation">[FilterQuality](https://api.flutter.dev/flutter/dart-ui/FilterQuality.md)?</span> <span class="parameter-name">filterQuality</span>, </span><span id="loadParallax-param-package" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)?</span> <span class="parameter-name">package</span></span>}) <span class="returntype parameter">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">[Parallax](https://pub.dev/documentation/flame/1.38.0/parallax/Parallax-class.md)</span>\></span></span> </span>  
Available on [Game](https://pub.dev/documentation/flame/1.38.0/game/Game-class.md), provided by the [ParallaxExtension](https://pub.dev/documentation/flame/1.38.0/parallax/ParallaxExtension.md) extension

<span class="name">[loadParallaxAnimation](https://pub.dev/documentation/flame/1.38.0/parallax/ParallaxExtension/loadParallaxAnimation.md)</span><span class="signature">(<span id="loadParallaxAnimation-param-path" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">path</span>, </span><span id="loadParallaxAnimation-param-animationData" class="parameter"><span class="type-annotation">[SpriteAnimationData](https://pub.dev/documentation/flame/1.38.0/sprite/SpriteAnimationData-class.md)</span> <span class="parameter-name">animationData</span>, {</span><span id="loadParallaxAnimation-param-repeat" class="parameter"><span class="type-annotation">[ImageRepeat](https://api.flutter.dev/flutter/painting/ImageRepeat.md)</span> <span class="parameter-name">repeat</span> = <span class="default-value">ImageRepeat.repeatX</span>, </span><span id="loadParallaxAnimation-param-alignment" class="parameter"><span class="type-annotation">[Alignment](https://api.flutter.dev/flutter/painting/Alignment-class.md)</span> <span class="parameter-name">alignment</span> = <span class="default-value">Alignment.bottomLeft</span>, </span><span id="loadParallaxAnimation-param-fill" class="parameter"><span class="type-annotation">[LayerFill](https://pub.dev/documentation/flame/1.38.0/parallax/LayerFill.md)</span> <span class="parameter-name">fill</span> = <span class="default-value">LayerFill.height</span>, </span><span id="loadParallaxAnimation-param-filterQuality" class="parameter"><span class="type-annotation">[FilterQuality](https://api.flutter.dev/flutter/dart-ui/FilterQuality.md)?</span> <span class="parameter-name">filterQuality</span>, </span><span id="loadParallaxAnimation-param-package" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)?</span> <span class="parameter-name">package</span></span>}) <span class="returntype parameter">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">[ParallaxAnimation](https://pub.dev/documentation/flame/1.38.0/parallax/ParallaxAnimation-class.md)</span>\></span></span> </span>  
Available on [Game](https://pub.dev/documentation/flame/1.38.0/game/Game-class.md), provided by the [ParallaxExtension](https://pub.dev/documentation/flame/1.38.0/parallax/ParallaxExtension.md) extension

<span class="name">[loadParallaxComponent](https://pub.dev/documentation/flame/1.38.0/components/ParallaxComponentExtension/loadParallaxComponent.md)</span><span class="signature">(<span id="loadParallaxComponent-param-dataList" class="parameter"><span class="type-annotation">[Iterable](https://api.flutter.dev/flutter/dart-core/Iterable-class.md)<span class="signature">\<<span class="type-parameter">[ParallaxData](https://pub.dev/documentation/flame/1.38.0/parallax/ParallaxData-class.md)</span>\></span></span> <span class="parameter-name">dataList</span>, {</span><span id="loadParallaxComponent-param-baseVelocity" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">baseVelocity</span>, </span><span id="loadParallaxComponent-param-velocityMultiplierDelta" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">velocityMultiplierDelta</span>, </span><span id="loadParallaxComponent-param-repeat" class="parameter"><span class="type-annotation">[ImageRepeat](https://api.flutter.dev/flutter/painting/ImageRepeat.md)</span> <span class="parameter-name">repeat</span> = <span class="default-value">ImageRepeat.repeatX</span>, </span><span id="loadParallaxComponent-param-alignment" class="parameter"><span class="type-annotation">[Alignment](https://api.flutter.dev/flutter/painting/Alignment-class.md)</span> <span class="parameter-name">alignment</span> = <span class="default-value">Alignment.bottomLeft</span>, </span><span id="loadParallaxComponent-param-fill" class="parameter"><span class="type-annotation">[LayerFill](https://pub.dev/documentation/flame/1.38.0/parallax/LayerFill.md)</span> <span class="parameter-name">fill</span> = <span class="default-value">LayerFill.height</span>, </span><span id="loadParallaxComponent-param-images" class="parameter"><span class="type-annotation">[Images](https://pub.dev/documentation/flame/1.38.0/cache/Images-class.md)?</span> <span class="parameter-name">images</span>, </span><span id="loadParallaxComponent-param-position" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">position</span>, </span><span id="loadParallaxComponent-param-size" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">size</span>, </span><span id="loadParallaxComponent-param-scale" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">scale</span>, </span><span id="loadParallaxComponent-param-angle" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)?</span> <span class="parameter-name">angle</span>, </span><span id="loadParallaxComponent-param-anchor" class="parameter"><span class="type-annotation">[Anchor](https://pub.dev/documentation/flame/1.38.0/components/Anchor-class.md)?</span> <span class="parameter-name">anchor</span>, </span><span id="loadParallaxComponent-param-priority" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)?</span> <span class="parameter-name">priority</span>, </span><span id="loadParallaxComponent-param-filterQuality" class="parameter"><span class="type-annotation">[FilterQuality](https://api.flutter.dev/flutter/dart-ui/FilterQuality.md)?</span> <span class="parameter-name">filterQuality</span>, </span><span id="loadParallaxComponent-param-key" class="parameter"><span class="type-annotation">[ComponentKey](https://pub.dev/documentation/flame/1.38.0/components/ComponentKey-class.md)?</span> <span class="parameter-name">key</span>, </span><span id="loadParallaxComponent-param-package" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)?</span> <span class="parameter-name">package</span></span>}) <span class="returntype parameter">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">[ParallaxComponent](https://pub.dev/documentation/flame/1.38.0/components/ParallaxComponent-class.md)<span class="signature">\<<span class="type-parameter">[FlameGame](https://pub.dev/documentation/flame/1.38.0/game/FlameGame-class.md)<span class="signature">\<<span class="type-parameter">[World](https://pub.dev/documentation/flame/1.38.0/camera/World-class.md)</span>\></span></span>\></span></span>\></span></span> </span>  
Available on [FlameGame](https://pub.dev/documentation/flame/1.38.0/game/FlameGame-class.md)<span class="signature">\<<span class="type-parameter">[World](https://pub.dev/documentation/flame/1.38.0/camera/World-class.md)</span>\></span>, provided by the [ParallaxComponentExtension](https://pub.dev/documentation/flame/1.38.0/components/ParallaxComponentExtension.md) extension

<span class="name">[loadParallaxImage](https://pub.dev/documentation/flame/1.38.0/parallax/ParallaxExtension/loadParallaxImage.md)</span><span class="signature">(<span id="loadParallaxImage-param-path" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">path</span>, {</span><span id="loadParallaxImage-param-repeat" class="parameter"><span class="type-annotation">[ImageRepeat](https://api.flutter.dev/flutter/painting/ImageRepeat.md)</span> <span class="parameter-name">repeat</span> = <span class="default-value">ImageRepeat.repeatX</span>, </span><span id="loadParallaxImage-param-alignment" class="parameter"><span class="type-annotation">[Alignment](https://api.flutter.dev/flutter/painting/Alignment-class.md)</span> <span class="parameter-name">alignment</span> = <span class="default-value">Alignment.bottomLeft</span>, </span><span id="loadParallaxImage-param-fill" class="parameter"><span class="type-annotation">[LayerFill](https://pub.dev/documentation/flame/1.38.0/parallax/LayerFill.md)</span> <span class="parameter-name">fill</span> = <span class="default-value">LayerFill.height</span>, </span><span id="loadParallaxImage-param-filterQuality" class="parameter"><span class="type-annotation">[FilterQuality](https://api.flutter.dev/flutter/dart-ui/FilterQuality.md)?</span> <span class="parameter-name">filterQuality</span>, </span><span id="loadParallaxImage-param-package" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)?</span> <span class="parameter-name">package</span></span>}) <span class="returntype parameter">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">[ParallaxImage](https://pub.dev/documentation/flame/1.38.0/parallax/ParallaxImage-class.md)</span>\></span></span> </span>  
Available on [Game](https://pub.dev/documentation/flame/1.38.0/game/Game-class.md), provided by the [ParallaxExtension](https://pub.dev/documentation/flame/1.38.0/parallax/ParallaxExtension.md) extension

<span class="name">[loadParallaxLayer](https://pub.dev/documentation/flame/1.38.0/parallax/ParallaxExtension/loadParallaxLayer.md)</span><span class="signature">(<span id="loadParallaxLayer-param-data" class="parameter"><span class="type-annotation">[ParallaxData](https://pub.dev/documentation/flame/1.38.0/parallax/ParallaxData-class.md)</span> <span class="parameter-name">data</span>, {</span><span id="loadParallaxLayer-param-repeat" class="parameter"><span class="type-annotation">[ImageRepeat](https://api.flutter.dev/flutter/painting/ImageRepeat.md)</span> <span class="parameter-name">repeat</span> = <span class="default-value">ImageRepeat.repeatX</span>, </span><span id="loadParallaxLayer-param-alignment" class="parameter"><span class="type-annotation">[Alignment](https://api.flutter.dev/flutter/painting/Alignment-class.md)</span> <span class="parameter-name">alignment</span> = <span class="default-value">Alignment.bottomLeft</span>, </span><span id="loadParallaxLayer-param-fill" class="parameter"><span class="type-annotation">[LayerFill](https://pub.dev/documentation/flame/1.38.0/parallax/LayerFill.md)</span> <span class="parameter-name">fill</span> = <span class="default-value">LayerFill.height</span>, </span><span id="loadParallaxLayer-param-velocityMultiplier" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">velocityMultiplier</span>, </span><span id="loadParallaxLayer-param-filterQuality" class="parameter"><span class="type-annotation">[FilterQuality](https://api.flutter.dev/flutter/dart-ui/FilterQuality.md)?</span> <span class="parameter-name">filterQuality</span>, </span><span id="loadParallaxLayer-param-package" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)?</span> <span class="parameter-name">package</span></span>}) <span class="returntype parameter">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">[ParallaxLayer](https://pub.dev/documentation/flame/1.38.0/parallax/ParallaxLayer-class.md)</span>\></span></span> </span>  
Available on [Game](https://pub.dev/documentation/flame/1.38.0/game/Game-class.md), provided by the [ParallaxExtension](https://pub.dev/documentation/flame/1.38.0/parallax/ParallaxExtension.md) extension

<span class="name">[loadSprite](https://pub.dev/documentation/flame/1.38.0/game/Game/loadSprite.md)</span><span class="signature">(<span id="loadSprite-param-path" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">path</span>, {</span><span id="loadSprite-param-srcSize" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">srcSize</span>, </span><span id="loadSprite-param-srcPosition" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">srcPosition</span></span>}) <span class="returntype parameter">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">[Sprite](https://pub.dev/documentation/flame/1.38.0/sprite/Sprite-class.md)</span>\></span></span> </span>  
Utility method to load and cache the image for a sprite based on its options.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[loadSpriteAnimation](https://pub.dev/documentation/flame/1.38.0/game/Game/loadSpriteAnimation.md)</span><span class="signature">(<span id="loadSpriteAnimation-param-path" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">path</span>, </span><span id="loadSpriteAnimation-param-data" class="parameter"><span class="type-annotation">[SpriteAnimationData](https://pub.dev/documentation/flame/1.38.0/sprite/SpriteAnimationData-class.md)</span> <span class="parameter-name">data</span></span>) <span class="returntype parameter">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">[SpriteAnimation](https://pub.dev/documentation/flame/1.38.0/sprite/SpriteAnimation-class.md)</span>\></span></span> </span>  
Utility method to load and cache the image for a sprite animation based on its options.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[loadSpriteBatch](https://pub.dev/documentation/flame/1.38.0/sprite/SpriteBatchExtension/loadSpriteBatch.md)</span><span class="signature">(<span id="loadSpriteBatch-param-path" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> <span class="parameter-name">path</span>, {</span><span id="loadSpriteBatch-param-defaultColor" class="parameter"><span class="type-annotation">[Color](https://api.flutter.dev/flutter/dart-ui/Color-class.md)?</span> <span class="parameter-name">defaultColor</span>, </span><span id="loadSpriteBatch-param-defaultBlendMode" class="parameter"><span class="type-annotation">[BlendMode](https://api.flutter.dev/flutter/dart-ui/BlendMode.md)?</span> <span class="parameter-name">defaultBlendMode</span>, </span><span id="loadSpriteBatch-param-defaultTransform" class="parameter"><span class="type-annotation">[RSTransform](https://api.flutter.dev/flutter/dart-ui/RSTransform-class.md)?</span> <span class="parameter-name">defaultTransform</span>, </span><span id="loadSpriteBatch-param-imageCache" class="parameter"><span class="type-annotation">[Images](https://pub.dev/documentation/flame/1.38.0/cache/Images-class.md)?</span> <span class="parameter-name">imageCache</span>, </span><span id="loadSpriteBatch-param-useAtlas" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">useAtlas</span> = <span class="default-value">true</span>, </span><span id="loadSpriteBatch-param-package" class="parameter"><span class="type-annotation">[String](https://api.flutter.dev/flutter/dart-core/String-class.md)?</span> <span class="parameter-name">package</span></span>}) <span class="returntype parameter">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">[SpriteBatch](https://pub.dev/documentation/flame/1.38.0/sprite/SpriteBatch-class.md)</span>\></span></span> </span>  
Available on [Game](https://pub.dev/documentation/flame/1.38.0/game/Game-class.md), provided by the [SpriteBatchExtension](https://pub.dev/documentation/flame/1.38.0/sprite/SpriteBatchExtension.md) extension

Utility method to load and cache the image for a [SpriteBatch](https://pub.dev/documentation/flame/1.38.0/sprite/SpriteBatch-class.md) based on its options.

<span class="name">[noSuchMethod](https://api.flutter.dev/flutter/dart-core/Object/noSuchMethod.md)</span><span class="signature">(<span id="noSuchMethod-param-invocation" class="parameter"><span class="type-annotation">[Invocation](https://api.flutter.dev/flutter/dart-core/Invocation-class.md)</span> <span class="parameter-name">invocation</span></span>) <span class="returntype parameter">→ dynamic</span> </span>  
Invoked when a nonexistent method or property is accessed.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[onAttach](https://pub.dev/documentation/flame/1.38.0/game/Game/onAttach.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
Called when the game has been attached. This can be overridden to add logic that requires the game to already be attached to the widget tree.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[onChildrenChanged](https://pub.dev/documentation/flame/1.38.0/components/Component/onChildrenChanged.md)</span><span class="signature">(<span id="onChildrenChanged-param-child" class="parameter"><span class="type-annotation">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span> <span class="parameter-name">child</span>, </span><span id="onChildrenChanged-param-type" class="parameter"><span class="type-annotation">[ChildrenChangeType](https://pub.dev/documentation/flame/1.38.0/components/ChildrenChangeType.md)</span> <span class="parameter-name">type</span></span>) <span class="returntype parameter">→ void</span> </span>  
This method will be invoked from lifecycle if `child` has been added to or removed from its parent children list.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[onDetach](https://pub.dev/documentation/flame/1.38.0/game/Game/onDetach.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
Called after the game has left the widget tree. This can be overridden to add logic that requires the game not be on the flutter widget tree anymore.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[onDispose](https://pub.dev/documentation/flame/1.38.0/game/Game/onDispose.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
Called when the GameWidget is disposed by Flutter.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[onGameResize](../giant_toad/GiantToadGame/onGameResize.md)</span><span class="signature">(<span id="onGameResize-param-size" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">size</span></span>) <span class="returntype parameter">→ void</span> </span>  
This passes the new size along to every component in the tree via their [Component.onGameResize](https://pub.dev/documentation/flame/1.38.0/components/Component/onGameResize.md) method, enabling each one to make their decision of how to handle the resize event.

<div>

<span class="feature">override</span>

</div>

<span class="name">[onHotReload](https://pub.dev/documentation/flame/1.38.0/game/FlameGame/onHotReload.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
Called when Flutter's hot reload is triggered.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[onLoad](https://pub.dev/documentation/flame/1.38.0/game/Game/onLoad.md)</span><span class="signature">() <span class="returntype parameter">→ [FutureOr](https://api.flutter.dev/flutter/dart-async/FutureOr-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> </span>  
Method to perform late initialization of the [Game](https://pub.dev/documentation/flame/1.38.0/game/Game-class.md) class.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[onMount](https://pub.dev/documentation/flame/1.38.0/game/Game/onMount.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
<div>

<span class="feature">inherited</span>

</div>

<span class="name">[onParentResize](https://pub.dev/documentation/flame/1.38.0/components/Component/onParentResize.md)</span><span class="signature">(<span id="onParentResize-param-maxSize" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">maxSize</span></span>) <span class="returntype parameter">→ void</span> </span>  
Called whenever the parent of this component changes size; and also once before [onMount](https://pub.dev/documentation/flame/1.38.0/components/Component/onMount.md).

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[onRemove](https://pub.dev/documentation/flame/1.38.0/game/Game/onRemove.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
Called when the game is about to be removed from the Flutter widget tree, but before it is actually removed. See the docs for an example on how to do cleanups to avoid memory leaks.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[pauseEngine](https://pub.dev/documentation/flame/1.38.0/game/FlameGame/pauseEngine.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
Pauses the engine game loop execution.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[processLifecycleEvents](https://pub.dev/documentation/flame/1.38.0/game/FlameGame/processLifecycleEvents.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
<div>

<span class="feature">inherited</span>

</div>

<span class="name">[propagateToChildren](https://pub.dev/documentation/flame/1.38.0/components/Component/propagateToChildren.md)</span><span class="signature">\<<span class="type-parameter">T extends [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span><span class="signature">(<span id="propagateToChildren-param-handler" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">handler</span>(<span id="param-" class="parameter"><span class="type-annotation">T</span></span>), {</span><span id="propagateToChildren-param-includeSelf" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">includeSelf</span> = <span class="default-value">false</span></span>}) <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  
This method first calls the passed handler on the leaves in the tree, the children without any children of their own. Then it continues through all other children. The propagation continues until the handler returns false, which means "do not continue", or when the handler has been called with all children.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[ready](https://pub.dev/documentation/flame/1.38.0/game/FlameGame/ready.md)</span><span class="signature">() <span class="returntype parameter">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> </span>  
Ensure that all pending tree operations finish.

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

<span class="name">[removeGameStateListener](https://pub.dev/documentation/flame/1.38.0/game/Game/removeGameStateListener.md)</span><span class="signature">(<span id="removeGameStateListener-param-callback" class="parameter"><span class="type-annotation">[VoidCallback](https://api.flutter.dev/flutter/dart-ui/VoidCallback.md)</span> <span class="parameter-name">callback</span></span>) <span class="returntype parameter">→ void</span> </span>  
<div>

<span class="feature">inherited</span>

</div>

<span class="name">[removeWhere](https://pub.dev/documentation/flame/1.38.0/components/Component/removeWhere.md)</span><span class="signature">(<span id="removeWhere-param-test" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">test</span>(<span id="contains-param-c" class="parameter"><span class="type-annotation">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span> <span class="parameter-name">c</span></span>)</span>) <span class="returntype parameter">→ void</span> </span>  
Removes all the children for which the `test` function returns true.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[render](https://pub.dev/documentation/flame/1.38.0/game/FlameGame/render.md)</span><span class="signature">(<span id="render-param-canvas" class="parameter"><span class="type-annotation">[Canvas](https://api.flutter.dev/flutter/dart-ui/Canvas-class.md)</span> <span class="parameter-name">canvas</span></span>) <span class="returntype parameter">→ void</span> </span>  
This implementation of render renders each component, making sure the canvas is reset for each one.

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

<span class="name">[renderTree](https://pub.dev/documentation/flame/1.38.0/game/FlameGame/renderTree.md)</span><span class="signature">(<span id="renderTree-param-canvas" class="parameter"><span class="type-annotation">[Canvas](https://api.flutter.dev/flutter/dart-ui/Canvas-class.md)</span> <span class="parameter-name">canvas</span></span>) <span class="returntype parameter">→ void</span> </span>  
<div>

<span class="feature">inherited</span>

</div>

<span class="name">[resumeEngine](https://pub.dev/documentation/flame/1.38.0/game/FlameGame/resumeEngine.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
Resumes the engine game loop execution.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[stepEngine](https://pub.dev/documentation/flame/1.38.0/game/Game/stepEngine.md)</span><span class="signature">({<span id="stepEngine-param-stepTime" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">stepTime</span> = <span class="default-value">1 / 60</span></span>}) <span class="returntype parameter">→ void</span> </span>  
Steps the engine game loop by one frame. Works only if the engine is in paused state. By default step time is assumed to be 1/60th of a second.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[toBeLoaded](https://pub.dev/documentation/flame/1.38.0/game/Game/toBeLoaded.md)</span><span class="signature">() <span class="returntype parameter">→ [FutureOr](https://api.flutter.dev/flutter/dart-async/FutureOr-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> </span>  
To be used for tests that needs to evaluate the game after it has been loaded by the game widget.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[toString](https://api.flutter.dev/flutter/dart-core/Object/toString.md)</span><span class="signature">() <span class="returntype parameter">→ [String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> </span>  
A string representation of this object.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[update](https://pub.dev/documentation/flame/1.38.0/game/FlameGame/update.md)</span><span class="signature">(<span id="update-param-dt" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">dt</span></span>) <span class="returntype parameter">→ void</span> </span>  
This method is called periodically by the game engine to request that your component updates itself.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[updateTree](https://pub.dev/documentation/flame/1.38.0/game/FlameGame/updateTree.md)</span><span class="signature">(<span id="updateTree-param-dt" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">dt</span></span>) <span class="returntype parameter">→ void</span> </span>  
This method traverses the component tree and calls [update](https://pub.dev/documentation/flame/1.38.0/game/FlameGame/update.md) on all its children according to their [priority](https://pub.dev/documentation/flame/1.38.0/components/Component/priority.md) order, relative to the priority of the direct siblings, not the children or the ancestors.

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

<div>

## Static Properties

<span class="name">[defaultResolution](../giant_toad/GiantToadGame/defaultResolution.md)</span> <span class="signature">→ [GiantToadResolution](../giant_toad/GiantToadResolution-class.md)</span>  
The default logical width and baseline height for new games.

<div>

<span class="feature">final</span>

</div>

</div>

</div>

<div>

<div>

</div>

1.  [giant_toad](../index.md)
2.  [giant_toad](../giant_toad/index.md)
3.  GiantToadGame<span class="signature">\<<span class="type-parameter">W extends [World](https://pub.dev/documentation/flame/1.38.0/camera/World-class.md)</span>\></span> class

##### giant_toad library

<div>

</div>

</div>

<div>

</div>
