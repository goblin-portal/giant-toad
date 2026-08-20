<div>

<div>

# <span class="kind-class">GiantToadPixelBody</span> class

</div>

<div>

Kinematic Flame component using tile-grid movement while retaining a normal Flame hitbox for entity-to-entity collision callbacks.

</div>

<div>

Inheritance  
- [Object](https://api.flutter.dev/flutter/dart-core/Object-class.md)
- [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)
- [PositionComponent](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent-class.md)
- GiantToadPixelBody

Mixed-in types  
- [CollisionCallbacks](https://pub.dev/documentation/flame/1.38.0/collisions/CollisionCallbacks-mixin.md)

Available extensions  
- [PostProcessingContextFinder](https://pub.dev/documentation/flame/1.38.0/post_process/PostProcessingContextFinder.md)

</div>

<div>

## Constructors

<span class="name">[GiantToadPixelBody](../giant_toad/GiantToadPixelBody/GiantToadPixelBody.md)</span><span class="signature">({<span id="param-collision" class="parameter">required <span class="type-annotation">[GiantToadTileCollision](../giant_toad/GiantToadTileCollision-class.md)</span> <span class="parameter-name">collision</span>, </span><span id="param-position" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">position</span>, </span><span id="param-size" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">size</span>, </span><span id="param-pixelSnap" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">pixelSnap</span> = <span class="default-value">true</span>, </span><span id="param-platforms" class="parameter"><span class="type-annotation">[List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadMovingPlatform](../giant_toad/GiantToadMovingPlatform-class.md)</span>\></span></span> <span class="parameter-name">platforms</span> = <span class="default-value">const \[\]</span>, </span><span id="param-priority" class="parameter"><span class="type-annotation">[int](https://api.flutter.dev/flutter/dart-core/int-class.md)?</span> <span class="parameter-name">priority</span>, </span><span id="param-key" class="parameter"><span class="type-annotation">[ComponentKey](https://pub.dev/documentation/flame/1.38.0/components/ComponentKey-class.md)?</span> <span class="parameter-name">key</span></span>})</span>  

</div>

<div>

## Properties

<span class="name">[absoluteAngle](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/absoluteAngle.md)</span> <span class="signature">→ [double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span>  
The resulting angle after all the ancestors and the components own angles and scales have been applied.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[absoluteAngleWithoutReflection](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/absoluteAngleWithoutReflection.md)</span> <span class="signature">→ [double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span>  
The resulting angle after all the ancestors and the components own angles and scales have been applied, but without reflecting the angle if the component is flipped.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[absoluteCenter](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/absoluteCenter.md)</span> <span class="signature">→ [Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span>  
The absolute center of the component.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[absolutePosition](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/absolutePosition.md)</span> <span class="signature">→ [Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span>  
The [anchor](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/anchor.md)'s position in absolute (world) coordinates.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[absoluteScale](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/absoluteScale.md)</span> <span class="signature">→ [Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span>  
The resulting scale after all the ancestors and the components own scale has been applied.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[absoluteScaledSize](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/absoluteScaledSize.md)</span> <span class="signature">→ [Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span>  
The resulting size after all the ancestors and the components own scale has been applied.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[absoluteTopLeftPosition](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/absoluteTopLeftPosition.md)</span> <span class="signature">→ [Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span>  
The absolute top left position regardless of whether it is a child or not.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[activeCollisions](https://pub.dev/documentation/flame/1.38.0/collisions/CollisionCallbacks/activeCollisions.md)</span> <span class="signature">→ [Set](https://api.flutter.dev/flutter/dart-core/Set-class.md)<span class="signature">\<<span class="type-parameter">[PositionComponent](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent-class.md)</span>\></span></span>  
The objects that the object is currently colliding with.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[anchor](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/anchor.md)</span> <span class="signature">↔ [Anchor](https://pub.dev/documentation/flame/1.38.0/components/Anchor-class.md)</span>  
Anchor point for this component. An anchor point describes a point within the rectangle of size [size](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/size.md). This point is considered to be the logical "center" of the component. This can be visualized as the point where Flame "grabs" the component. All transforms occur around this point: the [position](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/position.md) is where the anchor point will end up after the component is translated; the rotation and scaling also happen around this anchor point.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[angle](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/angle.md)</span> <span class="signature">↔ [double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span>  
Rotation angle (in radians) of the component. The component will be rotated around its anchor point in the clockwise direction if the angle is positive, or counterclockwise if the angle is negative.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[center](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/center.md)</span> <span class="signature">↔ [Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span>  
The position of the center of the component's bounding rectangle in the parent's coordinates.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[children](https://pub.dev/documentation/flame/1.38.0/components/Component/children.md)</span> <span class="signature">→ [ReadOnlyOrderedSet](https://pub.dev/documentation/ordered_set/8.0.0/read_only_ordered_set/ReadOnlyOrderedSet-class.md)<span class="signature">\<<span class="type-parameter">[Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span></span>  
The children components of this component.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[collision](../giant_toad/GiantToadPixelBody/collision.md)</span> <span class="signature">→ [GiantToadTileCollision](../giant_toad/GiantToadTileCollision-class.md)</span>  
<div>

<span class="feature">final</span>

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

<span class="name">[decorator](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/decorator.md)</span> <span class="signature">↔ [Decorator](https://pub.dev/documentation/flame/1.38.0/rendering/Decorator-class.md)</span>  
The decorator is used to apply visual effects to a component.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

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

<span class="name">[height](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/height.md)</span> <span class="signature">↔ [double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span>  
The height of the component in local coordinates. Note that the object may visually appear larger or smaller due to application of [scale](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/scale.md).

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[isColliding](https://pub.dev/documentation/flame/1.38.0/collisions/CollisionCallbacks/isColliding.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
Whether the object is currently colliding or not.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[isFlippedHorizontally](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/isFlippedHorizontally.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
Whether it is currently flipped horizontally.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[isFlippedVertically](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/isFlippedVertically.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
Whether it is currently flipped vertically.

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

<span class="name">[lastMove](../giant_toad/GiantToadPixelBody/lastMove.md)</span> <span class="signature">↔ [GiantToadTileMoveResult](../giant_toad/GiantToadTileMoveResult-class.md)?</span>  
<div>

<span class="feature">getter/setter pair</span>

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

<span class="name">[nativeAngle](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/nativeAngle.md)</span> <span class="signature">↔ [double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span>  
The angle where this component is looking at when it is in the default state, i.e. when [angle](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/angle.md) is equal to zero. For example, a nativeAngle of 0 implies up/north direction pi/2 implies right/east direction pi implies down/south direction -pi/2 implies left/west direction

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[onCollisionCallback](https://pub.dev/documentation/flame/1.38.0/collisions/CollisionCallbacks/onCollisionCallback.md)</span> <span class="signature">↔ [CollisionCallback](https://pub.dev/documentation/flame/1.38.0/collisions/CollisionCallback.md)<span class="signature">\<<span class="type-parameter">[PositionComponent](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent-class.md)</span>\></span>?</span>  
Assign your own [CollisionCallback](https://pub.dev/documentation/flame/1.38.0/collisions/CollisionCallback.md) if you want a callback when this shape collides with another [PositionComponent](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent-class.md).

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[onCollisionEndCallback](https://pub.dev/documentation/flame/1.38.0/collisions/CollisionCallbacks/onCollisionEndCallback.md)</span> <span class="signature">↔ [CollisionEndCallback](https://pub.dev/documentation/flame/1.38.0/collisions/CollisionEndCallback.md)<span class="signature">\<<span class="type-parameter">[PositionComponent](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent-class.md)</span>\></span>?</span>  
Assign your own [CollisionEndCallback](https://pub.dev/documentation/flame/1.38.0/collisions/CollisionEndCallback.md) if you want a callback when this shape stops colliding with another [PositionComponent](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent-class.md).

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[onCollisionStartCallback](https://pub.dev/documentation/flame/1.38.0/collisions/CollisionCallbacks/onCollisionStartCallback.md)</span> <span class="signature">↔ [CollisionCallback](https://pub.dev/documentation/flame/1.38.0/collisions/CollisionCallback.md)<span class="signature">\<<span class="type-parameter">[PositionComponent](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent-class.md)</span>\></span>?</span>  
Assign your own [CollisionCallback](https://pub.dev/documentation/flame/1.38.0/collisions/CollisionCallback.md) if you want a callback when this shape starts to collide with another [PositionComponent](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent-class.md).

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[parent](https://pub.dev/documentation/flame/1.38.0/components/Component/parent.md)</span> <span class="signature">↔ [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)?</span>  
Who owns this component in the component tree.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[pixelSnap](../giant_toad/GiantToadPixelBody/pixelSnap.md)</span> <span class="signature">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span>  
<div>

<span class="feature">final</span>

</div>

<span class="name">[platforms](../giant_toad/GiantToadPixelBody/platforms.md)</span> <span class="signature">→ [List](https://api.flutter.dev/flutter/dart-core/List-class.md)<span class="signature">\<<span class="type-parameter">[GiantToadMovingPlatform](../giant_toad/GiantToadMovingPlatform-class.md)</span>\></span></span>  
<div>

<span class="feature">final</span>

</div>

<span class="name">[position](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/position.md)</span> <span class="signature">↔ [NotifyingVector2](https://pub.dev/documentation/flame/1.38.0/game/NotifyingVector2-class.md)</span>  
The position of this component's anchor on the screen.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

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

<span class="name">[runtimeType](https://api.flutter.dev/flutter/dart-core/Object/runtimeType.md)</span> <span class="signature">→ [Type](https://api.flutter.dev/flutter/dart-core/Type-class.md)</span>  
A representation of the runtime type of the object.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[scale](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/scale.md)</span> <span class="signature">↔ [NotifyingVector2](https://pub.dev/documentation/flame/1.38.0/game/NotifyingVector2-class.md)</span>  
The scale factor of this component. The scale can be different along the X and Y dimensions. A scale greater than 1 makes the component bigger, and less than 1 smaller. The scale can also be negative, which results in a mirror reflection along the corresponding axis.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[scaledSize](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/scaledSize.md)</span> <span class="signature">→ [Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span>  
The "physical" size of the component. This is the size of the component as seen from the parent's perspective, and it is equal to [size](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/size.md) \* [scale](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/scale.md). This is a computed property and cannot be modified by the user.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[size](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/size.md)</span> <span class="signature">↔ [NotifyingVector2](https://pub.dev/documentation/flame/1.38.0/game/NotifyingVector2-class.md)</span>  
The logical size of the component. The game assumes that this is the approximate size of the object that will be drawn on the screen. This size will therefore be used for collision detection and tap handling.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[topLeftPosition](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/topLeftPosition.md)</span> <span class="signature">↔ [Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span>  
The top-left corner's position in the parent's coordinates.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[transform](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/transform.md)</span> <span class="signature">→ [Transform2D](https://pub.dev/documentation/flame/1.38.0/game/Transform2D-class.md)</span>  
<div>

<span class="feature">final</span><span class="feature">inherited</span>

</div>

<span class="name">[transformMatrix](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/transformMatrix.md)</span> <span class="signature">→ [Matrix4](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Matrix4-class.md)</span>  
The total transformation matrix for the component. This matrix combines translation, rotation and scale transforms into a single entity. The matrix is cached and gets recalculated only as necessary.

<div>

<span class="feature">no setter</span><span class="feature">inherited</span>

</div>

<span class="name">[velocity](../giant_toad/GiantToadPixelBody/velocity.md)</span> <span class="signature">→ [Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span>  
<div>

<span class="feature">final</span>

</div>

<span class="name">[width](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/width.md)</span> <span class="signature">↔ [double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span>  
The width of the component in local coordinates. Note that the object may visually appear larger or smaller due to application of [scale](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/scale.md).

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[x](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/x.md)</span> <span class="signature">↔ [double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span>  
X position of this component's anchor on the screen.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

<span class="name">[y](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/y.md)</span> <span class="signature">↔ [double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span>  
Y position of this component's anchor on the screen.

<div>

<span class="feature">getter/setter pair</span><span class="feature">inherited</span>

</div>

</div>

<div>

## Methods

<span class="name">[absolutePositionOf](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/absolutePositionOf.md)</span><span class="signature">(<span id="absolutePositionOf-param-point" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">point</span></span>) <span class="returntype parameter">→ [Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> </span>  
Convert local coordinates of a point `point` inside the component into the global (world) coordinate space.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[absolutePositionOfAnchor](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/absolutePositionOfAnchor.md)</span><span class="signature">(<span id="absolutePositionOfAnchor-param-anchor" class="parameter"><span class="type-annotation">[Anchor](https://pub.dev/documentation/flame/1.38.0/components/Anchor-class.md)</span> <span class="parameter-name">anchor</span></span>) <span class="returntype parameter">→ [Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> </span>  
Similar to [absolutePositionOf()](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/absolutePositionOf.md), but applies to any anchor point within the component.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[absoluteToLocal](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/absoluteToLocal.md)</span><span class="signature">(<span id="absoluteToLocal-param-point" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">point</span></span>) <span class="returntype parameter">→ [Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> </span>  
Transform `point` from the global (world) coordinate space into the local coordinates. This function is the inverse of [absolutePositionOf()](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/absolutePositionOf.md).

<div>

<span class="feature">inherited</span>

</div>

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

<span class="name">[angleTo](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/angleTo.md)</span><span class="signature">(<span id="angleTo-param-target" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">target</span></span>) <span class="returntype parameter">→ [double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> </span>  
Returns the angle formed by component's orientation vector and a vector starting at component's absolute position and ending at `target`. I.e. how much the current component need to rotate to face the target. This angle is measured in clockwise direction. `target` should be in absolute/world coordinate system.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[collidingWith](https://pub.dev/documentation/flame/1.38.0/collisions/CollisionCallbacks/collidingWith.md)</span><span class="signature">(<span id="collidingWith-param-other" class="parameter"><span class="type-annotation">[PositionComponent](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent-class.md)</span> <span class="parameter-name">other</span></span>) <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  
Whether the object is colliding with `other` or not.

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

<span class="name">[containsLocalPoint](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/containsLocalPoint.md)</span><span class="signature">(<span id="containsLocalPoint-param-point" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">point</span></span>) <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  
Test whether the `point` (given in local coordinates) lies within this component. The top and the left borders of the component are inclusive, while the bottom and the right borders are exclusive.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[containsPoint](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/containsPoint.md)</span><span class="signature">(<span id="containsPoint-param-point" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">point</span></span>) <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  
Test whether the `point` (given in global coordinates) lies within this component. The top and the left borders of the component are inclusive, while the bottom and the right borders are exclusive.

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

<span class="name">[distance](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/distance.md)</span><span class="signature">(<span id="distance-param-other" class="parameter"><span class="type-annotation">[PositionComponent](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent-class.md)</span> <span class="parameter-name">other</span></span>) <span class="returntype parameter">→ [double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> </span>  
Measure the distance (in parent's coordinate space) between this component's anchor and the `other` component's anchor.

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

<span class="name">[flipHorizontally](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/flipHorizontally.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
Flip the component horizontally around its anchor point.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[flipHorizontallyAroundCenter](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/flipHorizontallyAroundCenter.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
Flip the component horizontally around its center line.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[flipVertically](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/flipVertically.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
Flip the component vertically around its anchor point.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[flipVerticallyAroundCenter](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/flipVerticallyAroundCenter.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
Flip the component vertically around its center line.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[lastChild](https://pub.dev/documentation/flame/1.38.0/components/Component/lastChild.md)</span><span class="signature">\<<span class="type-parameter">T extends [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span><span class="signature">() <span class="returntype parameter">→ T?</span> </span>  
Returns the last child that matches the given type `T`, or null if there are no such children.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[localToParent](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/localToParent.md)</span><span class="signature">(<span id="localToParent-param-point" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">point</span>, {</span><span id="localToParent-param-output" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">output</span></span>}) <span class="returntype parameter">→ [Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> </span>  
<div>

<span class="feature">inherited</span>

</div>

<span class="name">[lookAt](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/lookAt.md)</span><span class="signature">(<span id="lookAt-param-target" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">target</span></span>) <span class="returntype parameter">→ void</span> </span>  
Rotates/snaps the component to look at the `target`.

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

<span class="name">[onCollision](https://pub.dev/documentation/flame/1.38.0/collisions/CollisionCallbacks/onCollision.md)</span><span class="signature">(<span id="onCollision-param-intersectionPoints" class="parameter"><span class="type-annotation">[Set](https://api.flutter.dev/flutter/dart-core/Set-class.md)<span class="signature">\<<span class="type-parameter">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span>\></span></span> <span class="parameter-name">intersectionPoints</span>, </span><span id="onCollision-param-other" class="parameter"><span class="type-annotation">[PositionComponent](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent-class.md)</span> <span class="parameter-name">other</span></span>) <span class="returntype parameter">→ void</span> </span>  
[onCollision](https://pub.dev/documentation/flame/1.38.0/collisions/CollisionCallbacks/onCollision.md) is called in every tick when this object is colliding with `other`.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[onCollisionEnd](https://pub.dev/documentation/flame/1.38.0/collisions/CollisionCallbacks/onCollisionEnd.md)</span><span class="signature">(<span id="onCollisionEnd-param-other" class="parameter"><span class="type-annotation">[PositionComponent](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent-class.md)</span> <span class="parameter-name">other</span></span>) <span class="returntype parameter">→ void</span> </span>  
[onCollisionEnd](https://pub.dev/documentation/flame/1.38.0/collisions/CollisionCallbacks/onCollisionEnd.md) is called once when this object has stopped colliding with `other`.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[onCollisionStart](https://pub.dev/documentation/flame/1.38.0/collisions/CollisionCallbacks/onCollisionStart.md)</span><span class="signature">(<span id="onCollisionStart-param-intersectionPoints" class="parameter"><span class="type-annotation">[Set](https://api.flutter.dev/flutter/dart-core/Set-class.md)<span class="signature">\<<span class="type-parameter">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span>\></span></span> <span class="parameter-name">intersectionPoints</span>, </span><span id="onCollisionStart-param-other" class="parameter"><span class="type-annotation">[PositionComponent](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent-class.md)</span> <span class="parameter-name">other</span></span>) <span class="returntype parameter">→ void</span> </span>  
[onCollisionStart](https://pub.dev/documentation/flame/1.38.0/collisions/CollisionCallbacks/onCollisionStart.md) is called in the first tick when this object starts colliding with `other`.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[onComponentTypeCheck](https://pub.dev/documentation/flame/1.38.0/collisions/CollisionCallbacks/onComponentTypeCheck.md)</span><span class="signature">(<span id="onComponentTypeCheck-param-other" class="parameter"><span class="type-annotation">[PositionComponent](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent-class.md)</span> <span class="parameter-name">other</span></span>) <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  
Works only for the QuadTree collision detection. If you need to prevent collision of items of different types - reimplement [onComponentTypeCheck](https://pub.dev/documentation/flame/1.38.0/collisions/CollisionCallbacks/onComponentTypeCheck.md). The result of calculation is cached so you should not check any dynamical parameters here, the function intended to be used as pure type checker. Call super.onComponentTypeCheck to get the parent's result of the type check if needed. In other causes this call is redundant in game code.

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

<span class="name">[onLoad](../giant_toad/GiantToadPixelBody/onLoad.md)</span><span class="signature">() <span class="returntype parameter">→ [Future](https://api.flutter.dev/flutter/dart-async/Future-class.md)<span class="signature">\<<span class="type-parameter">void</span>\></span></span> </span>  
Late initialization method for [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md).

<div>

<span class="feature">override</span>

</div>

<span class="name">[onMount](https://pub.dev/documentation/flame/1.38.0/components/Component/onMount.md)</span><span class="signature">() <span class="returntype parameter">→ void</span> </span>  
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

<span class="name">[parentToLocal](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/parentToLocal.md)</span><span class="signature">(<span id="parentToLocal-param-point" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">point</span>, {</span><span id="parentToLocal-param-output" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)?</span> <span class="parameter-name">output</span></span>}) <span class="returntype parameter">→ [Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> </span>  
<div>

<span class="feature">inherited</span>

</div>

<span class="name">[positionOf](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/positionOf.md)</span><span class="signature">(<span id="positionOf-param-point" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">point</span></span>) <span class="returntype parameter">→ [Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> </span>  
Convert local coordinates of a point `point` inside the component into the parent's coordinate space.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[positionOfAnchor](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/positionOfAnchor.md)</span><span class="signature">(<span id="positionOfAnchor-param-anchor" class="parameter"><span class="type-annotation">[Anchor](https://pub.dev/documentation/flame/1.38.0/components/Anchor-class.md)</span> <span class="parameter-name">anchor</span></span>) <span class="returntype parameter">→ [Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> </span>  
Similar to [positionOf()](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/positionOf.md), but applies to any anchor point within the component.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[propagateToChildren](https://pub.dev/documentation/flame/1.38.0/components/Component/propagateToChildren.md)</span><span class="signature">\<<span class="type-parameter">T extends [Component](https://pub.dev/documentation/flame/1.38.0/components/Component-class.md)</span>\></span><span class="signature">(<span id="propagateToChildren-param-handler" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">handler</span>(<span id="param-" class="parameter"><span class="type-annotation">T</span></span>), {</span><span id="propagateToChildren-param-includeSelf" class="parameter"><span class="type-annotation">[bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> <span class="parameter-name">includeSelf</span> = <span class="default-value">false</span></span>}) <span class="returntype parameter">→ [bool](https://api.flutter.dev/flutter/dart-core/bool-class.md)</span> </span>  
This method first calls the passed handler on the leaves in the tree, the children without any children of their own. Then it continues through all other children. The propagation continues until the handler returns false, which means "do not continue", or when the handler has been called with all children.

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

<span class="name">[renderDebugMode](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/renderDebugMode.md)</span><span class="signature">(<span id="renderDebugMode-param-canvas" class="parameter"><span class="type-annotation">[Canvas](https://api.flutter.dev/flutter/dart-ui/Canvas-class.md)</span> <span class="parameter-name">canvas</span></span>) <span class="returntype parameter">→ void</span> </span>  
<div>

<span class="feature">inherited</span>

</div>

<span class="name">[renderTree](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/renderTree.md)</span><span class="signature">(<span id="renderTree-param-canvas" class="parameter"><span class="type-annotation">[Canvas](https://api.flutter.dev/flutter/dart-ui/Canvas-class.md)</span> <span class="parameter-name">canvas</span></span>) <span class="returntype parameter">→ void</span> </span>  
<div>

<span class="feature">inherited</span>

</div>

<span class="name">[setByRect](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/setByRect.md)</span><span class="signature">(<span id="setByRect-param-rect" class="parameter"><span class="type-annotation">[Rect](https://api.flutter.dev/flutter/dart-ui/Rect-class.md)</span> <span class="parameter-name">rect</span></span>) <span class="returntype parameter">→ void</span> </span>  
Mutates position and size using the provided `rect` as basis. This is a relative rect, same definition that [toRect](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/toRect.md) use (therefore both methods are compatible, i.e. setByRect ∘ toRect = identity).

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[toAbsoluteRect](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/toAbsoluteRect.md)</span><span class="signature">() <span class="returntype parameter">→ [Rect](https://api.flutter.dev/flutter/dart-ui/Rect-class.md)</span> </span>  
The bounding rectangle of the component in global coordinate space.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[toLocal](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/toLocal.md)</span><span class="signature">(<span id="toLocal-param-point" class="parameter"><span class="type-annotation">[Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> <span class="parameter-name">point</span></span>) <span class="returntype parameter">→ [Vector2](https://pub.dev/documentation/vector_math/2.3.0/vector_math/Vector2-class.md)</span> </span>  
Transform `point` from the parent's coordinate space into the local coordinates. This function is the inverse of [positionOf()](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/positionOf.md).

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[toRect](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/toRect.md)</span><span class="signature">() <span class="returntype parameter">→ [Rect](https://api.flutter.dev/flutter/dart-ui/Rect-class.md)</span> </span>  
Returns the bounding rectangle for this component.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[toString](https://pub.dev/documentation/flame/1.38.0/components/PositionComponent/toString.md)</span><span class="signature">() <span class="returntype parameter">→ [String](https://api.flutter.dev/flutter/dart-core/String-class.md)</span> </span>  
A string representation of this object.

<div>

<span class="feature">inherited</span>

</div>

<span class="name">[update](../giant_toad/GiantToadPixelBody/update.md)</span><span class="signature">(<span id="update-param-dt" class="parameter"><span class="type-annotation">[double](https://api.flutter.dev/flutter/dart-core/double-class.md)</span> <span class="parameter-name">dt</span></span>) <span class="returntype parameter">→ void</span> </span>  
This method is called periodically by the game engine to request that your component updates itself.

<div>

<span class="feature">override</span>

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
3.  GiantToadPixelBody class

##### giant_toad library

<div>

</div>

</div>

<div>

</div>
