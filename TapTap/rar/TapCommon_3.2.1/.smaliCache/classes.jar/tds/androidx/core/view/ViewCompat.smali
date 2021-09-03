.class public Ltds/androidx/core/view/ViewCompat;
.super Ljava/lang/Object;
.source "ViewCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/core/view/ViewCompat$Api30Impl;,
        Ltds/androidx/core/view/ViewCompat$Api29Impl;,
        Ltds/androidx/core/view/ViewCompat$Api23Impl;,
        Ltds/androidx/core/view/ViewCompat$Api21Impl;,
        Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;,
        Ltds/androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;,
        Ltds/androidx/core/view/ViewCompat$CompatImplApi28;,
        Ltds/androidx/core/view/ViewCompat$ScrollIndicators;,
        Ltds/androidx/core/view/ViewCompat$NestedScrollType;,
        Ltds/androidx/core/view/ViewCompat$ScrollAxis;,
        Ltds/androidx/core/view/ViewCompat$ResolvedLayoutDirectionMode;,
        Ltds/androidx/core/view/ViewCompat$LayoutDirectionMode;,
        Ltds/androidx/core/view/ViewCompat$LayerType;,
        Ltds/androidx/core/view/ViewCompat$AutofillImportance;,
        Ltds/androidx/core/view/ViewCompat$OverScroll;,
        Ltds/androidx/core/view/ViewCompat$FocusRelativeDirection;,
        Ltds/androidx/core/view/ViewCompat$FocusRealDirection;,
        Ltds/androidx/core/view/ViewCompat$FocusDirection;
    }
.end annotation


# static fields
.field public static final LAYER_TYPE_HARDWARE:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYER_TYPE_NONE:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYER_TYPE_SOFTWARE:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LAYOUT_DIRECTION_INHERIT:I = 0x2

.field public static final LAYOUT_DIRECTION_LOCALE:I = 0x3

.field public static final LAYOUT_DIRECTION_LTR:I = 0x0

.field public static final LAYOUT_DIRECTION_RTL:I = 0x1

.field public static final MEASURED_HEIGHT_STATE_SHIFT:I = 0x10
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEASURED_SIZE_MASK:I = 0xffffff
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEASURED_STATE_MASK:I = -0x1000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MEASURED_STATE_TOO_SMALL:I = 0x1000000
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OVER_SCROLL_ALWAYS:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OVER_SCROLL_IF_CONTENT_SCROLLS:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final OVER_SCROLL_NEVER:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SCROLL_AXIS_HORIZONTAL:I = 0x1

.field public static final SCROLL_AXIS_NONE:I = 0x0

.field public static final SCROLL_AXIS_VERTICAL:I = 0x2

.field public static final SCROLL_INDICATOR_BOTTOM:I = 0x2

.field public static final SCROLL_INDICATOR_END:I = 0x20

.field public static final SCROLL_INDICATOR_LEFT:I = 0x4

.field public static final SCROLL_INDICATOR_RIGHT:I = 0x8

.field public static final SCROLL_INDICATOR_START:I = 0x10

.field public static final SCROLL_INDICATOR_TOP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ViewCompat"

.field public static final TYPE_NON_TOUCH:I = 0x1

.field public static final TYPE_TOUCH:I

.field private static sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

.field private static sDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

.field private static sDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

.field private static sMinHeightField:Ljava/lang/reflect/Field;

.field private static sMinHeightFieldFetched:Z

.field private static sMinWidthField:Ljava/lang/reflect/Field;

.field private static sMinWidthFieldFetched:Z

.field private static final sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sTempDetachBound:Z

.field private static sThreadLocalRect:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private static sTransitionNameMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Ltds/androidx/core/view/ViewPropertyAnimatorCompat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 394
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Ltds/androidx/core/view/ViewCompat;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 406
    const/4 v0, 0x0

    sput-object v0, Ltds/androidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3197
    return-void
.end method

.method public static addKeyboardNavigationClusters(Landroid/view/View;Ljava/util/Collection;I)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p2, "direction"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Collection<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .line 3032
    .local p1, "views":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/view/View;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    .line 3033
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->addKeyboardNavigationClusters(Ljava/util/Collection;I)V

    .line 3035
    :cond_9
    return-void
.end method

.method public static addOnUnhandledKeyEventListener(Landroid/view/View;Ltds/androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V
    .registers 5
    .param p0, "v"    # Landroid/view/View;
    .param p1, "listener"    # Ltds/androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;

    .line 3150
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_a

    .line 3151
    invoke-static {p0, p1}, Ltds/androidx/core/view/ViewCompat$CompatImplApi28;->addOnUnhandledKeyEventListener(Landroid/view/View;Ltds/androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V

    .line 3152
    return-void

    .line 3154
    :cond_a
    nop

    .line 3156
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tds_common_tag_unhandled_key_listeners"

    invoke-static {v0, v1}, Lcom/tds/common/utils/UIUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3157
    .local v0, "viewListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;>;"
    if-nez v0, :cond_2e

    .line 3158
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    .line 3159
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/tds/common/utils/UIUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 3161
    :cond_2e
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3162
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3b

    .line 3163
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->registerListeningView(Landroid/view/View;)V

    .line 3165
    :cond_3b
    return-void
.end method

.method public static animate(Landroid/view/View;)Ltds/androidx/core/view/ViewPropertyAnimatorCompat;
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 1315
    sget-object v0, Ltds/androidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    if-nez v0, :cond_b

    .line 1316
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ltds/androidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 1318
    :cond_b
    sget-object v0, Ltds/androidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltds/androidx/core/view/ViewPropertyAnimatorCompat;

    .line 1319
    .local v0, "vpa":Ltds/androidx/core/view/ViewPropertyAnimatorCompat;
    if-nez v0, :cond_20

    .line 1320
    new-instance v1, Ltds/androidx/core/view/ViewPropertyAnimatorCompat;

    invoke-direct {v1, p0}, Ltds/androidx/core/view/ViewPropertyAnimatorCompat;-><init>(Landroid/view/View;)V

    move-object v0, v1

    .line 1321
    sget-object v1, Ltds/androidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    :cond_20
    return-object v0
.end method

.method private static bindTempDetach()V
    .registers 4

    .line 1133
    :try_start_0
    const-class v0, Landroid/view/View;

    const-string v1, "dispatchStartTemporaryDetach"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Ltds/androidx/core/view/ViewCompat;->sDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    .line 1135
    const-class v0, Landroid/view/View;

    const-string v1, "dispatchFinishTemporaryDetach"

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Ltds/androidx/core/view/ViewCompat;->sDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_19} :catch_1a

    .line 1139
    goto :goto_22

    .line 1137
    :catch_1a
    move-exception v0

    .line 1138
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v1, "ViewCompat"

    const-string v2, "Couldn\'t find method"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1140
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_22
    const/4 v0, 0x1

    sput-boolean v0, Ltds/androidx/core/view/ViewCompat;->sTempDetachBound:Z

    .line 1141
    return-void
.end method

.method public static canScrollHorizontally(Landroid/view/View;I)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "direction"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 461
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    return v0
.end method

.method public static canScrollVertically(Landroid/view/View;I)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "direction"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 475
    invoke-virtual {p0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v0

    return v0
.end method

.method public static cancelDragAndDrop(Landroid/view/View;)V
    .registers 3
    .param p0, "v"    # Landroid/view/View;

    .line 2903
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_9

    .line 2904
    invoke-virtual {p0}, Landroid/view/View;->cancelDragAndDrop()V

    .line 2906
    :cond_9
    return-void
.end method

.method public static combineMeasuredStates(II)I
    .registers 3
    .param p0, "curState"    # I
    .param p1, "newState"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1074
    invoke-static {p0, p1}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v0

    return v0
.end method

.method private static compatOffsetLeftAndRight(Landroid/view/View;I)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offset"    # I

    .line 2696
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 2697
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    .line 2698
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 2700
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2701
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1a

    .line 2702
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Ltds/androidx/core/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 2705
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_1a
    return-void
.end method

.method private static compatOffsetTopAndBottom(Landroid/view/View;I)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offset"    # I

    .line 2648
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 2649
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1a

    .line 2650
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 2652
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2653
    .local v0, "parent":Landroid/view/ViewParent;
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1a

    .line 2654
    move-object v1, v0

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Ltds/androidx/core/view/ViewCompat;->tickleInvalidationFlag(Landroid/view/View;)V

    .line 2657
    .end local v0    # "parent":Landroid/view/ViewParent;
    :cond_1a
    return-void
.end method

.method public static computeSystemWindowInsets(Landroid/view/View;Ltds/androidx/core/view/WindowInsetsCompat;Landroid/graphics/Rect;)Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "insets"    # Ltds/androidx/core/view/WindowInsetsCompat;
    .param p2, "outLocalInsets"    # Landroid/graphics/Rect;

    .line 1902
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 1903
    invoke-static {p0, p1, p2}, Ltds/androidx/core/view/ViewCompat$Api21Impl;->computeSystemWindowInsets(Landroid/view/View;Ltds/androidx/core/view/WindowInsetsCompat;Landroid/graphics/Rect;)Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0

    .line 1905
    :cond_b
    return-object p1
.end method

.method public static dispatchApplyWindowInsets(Landroid/view/View;Ltds/androidx/core/view/WindowInsetsCompat;)Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "insets"    # Ltds/androidx/core/view/WindowInsetsCompat;

    .line 1825
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1b

    .line 1826
    invoke-virtual {p1}, Ltds/androidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 1827
    .local v0, "unwrapped":Landroid/view/WindowInsets;
    if-eqz v0, :cond_1b

    .line 1828
    invoke-virtual {p0, v0}, Landroid/view/View;->dispatchApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    .line 1829
    .local v1, "result":Landroid/view/WindowInsets;
    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 1831
    invoke-static {v1, p0}, Ltds/androidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v2

    return-object v2

    .line 1835
    .end local v0    # "unwrapped":Landroid/view/WindowInsets;
    .end local v1    # "result":Landroid/view/WindowInsets;
    :cond_1b
    return-object p1
.end method

.method public static dispatchFinishTemporaryDetach(Landroid/view/View;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .line 1170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_a

    .line 1171
    invoke-virtual {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    goto :goto_28

    .line 1173
    :cond_a
    sget-boolean v0, Ltds/androidx/core/view/ViewCompat;->sTempDetachBound:Z

    if-nez v0, :cond_11

    .line 1174
    invoke-static {}, Ltds/androidx/core/view/ViewCompat;->bindTempDetach()V

    .line 1176
    :cond_11
    sget-object v0, Ltds/androidx/core/view/ViewCompat;->sDispatchFinishTemporaryDetach:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_25

    .line 1178
    const/4 v1, 0x0

    :try_start_16
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_1c

    goto :goto_24

    .line 1179
    :catch_1c
    move-exception v0

    .line 1180
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ViewCompat"

    const-string v2, "Error calling dispatchFinishTemporaryDetach"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1181
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_24
    goto :goto_28

    .line 1184
    :cond_25
    invoke-virtual {p0}, Landroid/view/View;->onFinishTemporaryDetach()V

    .line 1187
    :goto_28
    return-void
.end method

.method public static dispatchNestedFling(Landroid/view/View;FFZ)Z
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .line 2480
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 2481
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0

    .line 2483
    :cond_b
    instance-of v0, p0, Ltds/androidx/core/view/NestedScrollingChild;

    if-eqz v0, :cond_17

    .line 2484
    move-object v0, p0

    check-cast v0, Ltds/androidx/core/view/NestedScrollingChild;

    invoke-interface {v0, p1, p2, p3}, Ltds/androidx/core/view/NestedScrollingChild;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0

    .line 2487
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public static dispatchNestedPreFling(Landroid/view/View;FF)Z
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .line 2523
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 2524
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0

    .line 2526
    :cond_b
    instance-of v0, p0, Ltds/androidx/core/view/NestedScrollingChild;

    if-eqz v0, :cond_17

    .line 2527
    move-object v0, p0

    check-cast v0, Ltds/androidx/core/view/NestedScrollingChild;

    invoke-interface {v0, p1, p2}, Ltds/androidx/core/view/NestedScrollingChild;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0

    .line 2529
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public static dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z
    .registers 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .line 2256
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 2257
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0

    .line 2259
    :cond_b
    instance-of v0, p0, Ltds/androidx/core/view/NestedScrollingChild;

    if-eqz v0, :cond_17

    .line 2260
    move-object v0, p0

    check-cast v0, Ltds/androidx/core/view/NestedScrollingChild;

    invoke-interface {v0, p1, p2, p3, p4}, Ltds/androidx/core/view/NestedScrollingChild;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0

    .line 2263
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public static dispatchNestedPreScroll(Landroid/view/View;II[I[II)Z
    .registers 13
    .param p0, "view"    # Landroid/view/View;
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I
    .param p5, "type"    # I

    .line 2450
    instance-of v0, p0, Ltds/androidx/core/view/NestedScrollingChild2;

    if-eqz v0, :cond_11

    .line 2451
    move-object v1, p0

    check-cast v1, Ltds/androidx/core/view/NestedScrollingChild2;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Ltds/androidx/core/view/NestedScrollingChild2;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    return v0

    .line 2453
    :cond_11
    if-nez p5, :cond_18

    .line 2454
    invoke-static {p0, p1, p2, p3, p4}, Ltds/androidx/core/view/ViewCompat;->dispatchNestedPreScroll(Landroid/view/View;II[I[I)Z

    move-result v0

    return v0

    .line 2456
    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method public static dispatchNestedScroll(Landroid/view/View;IIII[II[I)V
    .registers 18
    .param p0, "view"    # Landroid/view/View;
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I
    .param p6, "type"    # I
    .param p7, "consumed"    # [I

    .line 2382
    move-object v0, p0

    instance-of v1, v0, Ltds/androidx/core/view/NestedScrollingChild3;

    if-eqz v1, :cond_15

    .line 2383
    move-object v2, v0

    check-cast v2, Ltds/androidx/core/view/NestedScrollingChild3;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Ltds/androidx/core/view/NestedScrollingChild3;->dispatchNestedScroll(IIII[II[I)V

    goto :goto_18

    .line 2386
    :cond_15
    invoke-static/range {p0 .. p6}, Ltds/androidx/core/view/ViewCompat;->dispatchNestedScroll(Landroid/view/View;IIII[II)Z

    .line 2389
    :goto_18
    return-void
.end method

.method public static dispatchNestedScroll(Landroid/view/View;IIII[I)Z
    .registers 13
    .param p0, "view"    # Landroid/view/View;
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .line 2225
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 2226
    invoke-virtual/range {p0 .. p5}, Landroid/view/View;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0

    .line 2229
    :cond_b
    instance-of v0, p0, Ltds/androidx/core/view/NestedScrollingChild;

    if-eqz v0, :cond_1c

    .line 2230
    move-object v1, p0

    check-cast v1, Ltds/androidx/core/view/NestedScrollingChild;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Ltds/androidx/core/view/NestedScrollingChild;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0

    .line 2233
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public static dispatchNestedScroll(Landroid/view/View;IIII[II)Z
    .registers 15
    .param p0, "view"    # Landroid/view/View;
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I
    .param p6, "type"    # I

    .line 2418
    instance-of v0, p0, Ltds/androidx/core/view/NestedScrollingChild2;

    if-eqz v0, :cond_12

    .line 2419
    move-object v1, p0

    check-cast v1, Ltds/androidx/core/view/NestedScrollingChild2;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Ltds/androidx/core/view/NestedScrollingChild2;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    return v0

    .line 2421
    :cond_12
    if-nez p6, :cond_19

    .line 2422
    invoke-static/range {p0 .. p5}, Ltds/androidx/core/view/ViewCompat;->dispatchNestedScroll(Landroid/view/View;IIII[I)Z

    move-result v0

    return v0

    .line 2425
    :cond_19
    const/4 v0, 0x0

    return v0
.end method

.method public static dispatchStartTemporaryDetach(Landroid/view/View;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .line 1147
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_a

    .line 1148
    invoke-virtual {p0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    goto :goto_28

    .line 1150
    :cond_a
    sget-boolean v0, Ltds/androidx/core/view/ViewCompat;->sTempDetachBound:Z

    if-nez v0, :cond_11

    .line 1151
    invoke-static {}, Ltds/androidx/core/view/ViewCompat;->bindTempDetach()V

    .line 1153
    :cond_11
    sget-object v0, Ltds/androidx/core/view/ViewCompat;->sDispatchStartTemporaryDetach:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_25

    .line 1155
    const/4 v1, 0x0

    :try_start_16
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1b} :catch_1c

    goto :goto_24

    .line 1156
    :catch_1c
    move-exception v0

    .line 1157
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ViewCompat"

    const-string v2, "Error calling dispatchStartTemporaryDetach"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1158
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_24
    goto :goto_28

    .line 1161
    :cond_25
    invoke-virtual {p0}, Landroid/view/View;->onStartTemporaryDetach()V

    .line 1164
    :goto_28
    return-void
.end method

.method static dispatchUnhandledKeyEventBeforeCallback(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 4
    .param p0, "root"    # Landroid/view/View;
    .param p1, "evt"    # Landroid/view/KeyEvent;

    .line 3225
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_8

    .line 3226
    const/4 v0, 0x0

    return v0

    .line 3228
    :cond_8
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->at(Landroid/view/View;)Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->dispatch(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static dispatchUnhandledKeyEventBeforeHierarchy(Landroid/view/View;Landroid/view/KeyEvent;)Z
    .registers 4
    .param p0, "root"    # Landroid/view/View;
    .param p1, "evt"    # Landroid/view/KeyEvent;

    .line 3217
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_8

    .line 3218
    const/4 v0, 0x0

    return v0

    .line 3220
    :cond_8
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->at(Landroid/view/View;)Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->preDispatch(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public static generateViewId()I
    .registers 4

    .line 3081
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_b

    .line 3082
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    return v0

    .line 3085
    :cond_b
    :goto_b
    sget-object v0, Ltds/androidx/core/view/ViewCompat;->sNextGeneratedId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 3087
    .local v1, "result":I
    add-int/lit8 v2, v1, 0x1

    .line 3088
    .local v2, "newValue":I
    const v3, 0xffffff

    if-le v2, v3, :cond_19

    const/4 v2, 0x1

    .line 3089
    :cond_19
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3090
    return v1

    .line 3092
    .end local v1    # "result":I
    .end local v2    # "newValue":I
    :cond_20
    goto :goto_b
.end method

.method public static getAlpha(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 803
    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result v0

    return v0
.end method

.method public static getBackgroundTintList(Landroid/view/View;)Landroid/content/res/ColorStateList;
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 2014
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 2015
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    .line 2017
    :cond_b
    instance-of v0, p0, Ltds/androidx/core/view/TintableBackgroundView;

    if-eqz v0, :cond_17

    move-object v0, p0

    check-cast v0, Ltds/androidx/core/view/TintableBackgroundView;

    .line 2018
    invoke-interface {v0}, Ltds/androidx/core/view/TintableBackgroundView;->getSupportBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 2017
    :goto_18
    return-object v0
.end method

.method public static getBackgroundTintMode(Landroid/view/View;)Landroid/graphics/PorterDuff$Mode;
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 2059
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 2060
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    return-object v0

    .line 2062
    :cond_b
    instance-of v0, p0, Ltds/androidx/core/view/TintableBackgroundView;

    if-eqz v0, :cond_17

    move-object v0, p0

    check-cast v0, Ltds/androidx/core/view/TintableBackgroundView;

    .line 2063
    invoke-interface {v0}, Ltds/androidx/core/view/TintableBackgroundView;->getSupportBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v0

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    .line 2062
    :goto_18
    return-object v0
.end method

.method public static getClipBounds(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 2740
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_b

    .line 2741
    invoke-virtual {p0}, Landroid/view/View;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0

    .line 2743
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getDisplay(Landroid/view/View;)Landroid/view/Display;
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 2862
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_b

    .line 2863
    invoke-virtual {p0}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    move-result-object v0

    return-object v0

    .line 2865
    :cond_b
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat;->isAttachedToWindow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 2866
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 2868
    .local v0, "wm":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    return-object v1

    .line 2870
    .end local v0    # "wm":Landroid/view/WindowManager;
    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getElevation(Landroid/view/View;)F
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 1599
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 1600
    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result v0

    return v0

    .line 1602
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method private static getEmptyTempRect()Landroid/graphics/Rect;
    .registers 2

    .line 413
    sget-object v0, Ltds/androidx/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    if-nez v0, :cond_b

    .line 414
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ltds/androidx/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    .line 416
    :cond_b
    sget-object v0, Ltds/androidx/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 417
    .local v0, "rect":Landroid/graphics/Rect;
    if-nez v0, :cond_20

    .line 418
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v1

    .line 419
    sget-object v1, Ltds/androidx/core/view/ViewCompat;->sThreadLocalRect:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 421
    :cond_20
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 422
    return-object v0
.end method

.method public static getFitsSystemWindows(Landroid/view/View;)Z
    .registers 3
    .param p0, "v"    # Landroid/view/View;

    .line 1725
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    .line 1726
    invoke-virtual {p0}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v0

    return v0

    .line 1728
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static getImportantForAutofill(Landroid/view/View;)I
    .registers 3
    .param p0, "v"    # Landroid/view/View;

    .line 566
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 567
    invoke-virtual {p0}, Landroid/view/View;->getImportantForAutofill()I

    move-result v0

    return v0

    .line 569
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static getLayerType(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 867
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    return v0
.end method

.method public static getLayoutDirection(Landroid/view/View;)I
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 924
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_b

    .line 925
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    return v0

    .line 927
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static getMatrix(Landroid/view/View;)Landroid/graphics/Matrix;
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1236
    invoke-virtual {p0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public static getMeasuredHeightAndState(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1045
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result v0

    return v0
.end method

.method public static getMeasuredState(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1059
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    return v0
.end method

.method public static getMeasuredWidthAndState(Landroid/view/View;)I
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1028
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidthAndState()I

    move-result v0

    return v0
.end method

.method public static getMinimumHeight(Landroid/view/View;)I
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .line 1281
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    .line 1282
    invoke-virtual {p0}, Landroid/view/View;->getMinimumHeight()I

    move-result v0

    return v0

    .line 1285
    :cond_b
    sget-boolean v0, Ltds/androidx/core/view/ViewCompat;->sMinHeightFieldFetched:Z

    if-nez v0, :cond_21

    .line 1287
    const/4 v0, 0x1

    :try_start_10
    const-class v1, Landroid/view/View;

    const-string v2, "mMinHeight"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Ltds/androidx/core/view/ViewCompat;->sMinHeightField:Ljava/lang/reflect/Field;

    .line 1288
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_10 .. :try_end_1d} :catch_1e

    .line 1291
    goto :goto_1f

    .line 1289
    :catch_1e
    move-exception v1

    .line 1292
    :goto_1f
    sput-boolean v0, Ltds/androidx/core/view/ViewCompat;->sMinHeightFieldFetched:Z

    .line 1295
    :cond_21
    sget-object v0, Ltds/androidx/core/view/ViewCompat;->sMinHeightField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_31

    .line 1297
    :try_start_25
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2f} :catch_30

    return v0

    .line 1298
    :catch_30
    move-exception v0

    .line 1304
    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method public static getMinimumWidth(Landroid/view/View;)I
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .line 1247
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    .line 1248
    invoke-virtual {p0}, Landroid/view/View;->getMinimumWidth()I

    move-result v0

    return v0

    .line 1251
    :cond_b
    sget-boolean v0, Ltds/androidx/core/view/ViewCompat;->sMinWidthFieldFetched:Z

    if-nez v0, :cond_21

    .line 1253
    const/4 v0, 0x1

    :try_start_10
    const-class v1, Landroid/view/View;

    const-string v2, "mMinWidth"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Ltds/androidx/core/view/ViewCompat;->sMinWidthField:Ljava/lang/reflect/Field;

    .line 1254
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldException; {:try_start_10 .. :try_end_1d} :catch_1e

    .line 1257
    goto :goto_1f

    .line 1255
    :catch_1e
    move-exception v1

    .line 1258
    :goto_1f
    sput-boolean v0, Ltds/androidx/core/view/ViewCompat;->sMinWidthFieldFetched:Z

    .line 1261
    :cond_21
    sget-object v0, Ltds/androidx/core/view/ViewCompat;->sMinWidthField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_31

    .line 1263
    :try_start_25
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2f} :catch_30

    return v0

    .line 1264
    :catch_30
    move-exception v0

    .line 1270
    :cond_31
    const/4 v0, 0x0

    return v0
.end method

.method public static getNextClusterForwardId(Landroid/view/View;)I
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 2924
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 2925
    invoke-virtual {p0}, Landroid/view/View;->getNextClusterForwardId()I

    move-result v0

    return v0

    .line 2927
    :cond_b
    const/4 v0, -0x1

    return v0
.end method

.method public static getOverScrollMode(Landroid/view/View;)I
    .registers 2
    .param p0, "v"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 493
    invoke-virtual {p0}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    return v0
.end method

.method public static getPaddingEnd(Landroid/view/View;)I
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 1103
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_b

    .line 1104
    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result v0

    return v0

    .line 1106
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    return v0
.end method

.method public static getPaddingStart(Landroid/view/View;)I
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 1087
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_b

    .line 1088
    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    return v0

    .line 1090
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    return v0
.end method

.method public static getPivotX(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1480
    invoke-virtual {p0}, Landroid/view/View;->getPivotX()F

    move-result v0

    return v0
.end method

.method public static getPivotY(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1509
    invoke-virtual {p0}, Landroid/view/View;->getPivotY()F

    move-result v0

    return v0
.end method

.method public static getRootWindowInsets(Landroid/view/View;)Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 1882
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 1883
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat$Api23Impl;->getRootWindowInsets(Landroid/view/View;)Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v0

    return-object v0

    .line 1885
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getRotation(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1533
    invoke-virtual {p0}, Landroid/view/View;->getRotation()F

    move-result v0

    return v0
.end method

.method public static getRotationX(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1541
    invoke-virtual {p0}, Landroid/view/View;->getRotationX()F

    move-result v0

    return v0
.end method

.method public static getRotationY(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1549
    invoke-virtual {p0}, Landroid/view/View;->getRotationY()F

    move-result v0

    return v0
.end method

.method public static getScaleX(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1557
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    move-result v0

    return v0
.end method

.method public static getScaleY(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1565
    invoke-virtual {p0}, Landroid/view/View;->getScaleY()F

    move-result v0

    return v0
.end method

.method public static getScrollIndicators(Landroid/view/View;)I
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 2832
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_b

    .line 2833
    invoke-virtual {p0}, Landroid/view/View;->getScrollIndicators()I

    move-result v0

    return v0

    .line 2835
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static getSystemGestureExclusionRects(Landroid/view/View;)Ljava/util/List;
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    .line 1866
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_b

    .line 1867
    invoke-virtual {p0}, Landroid/view/View;->getSystemGestureExclusionRects()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 1869
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getTransitionName(Landroid/view/View;)Ljava/lang/String;
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 1656
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 1657
    invoke-virtual {p0}, Landroid/view/View;->getTransitionName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1659
    :cond_b
    sget-object v0, Ltds/androidx/core/view/ViewCompat;->sTransitionNameMap:Ljava/util/WeakHashMap;

    if-nez v0, :cond_11

    .line 1660
    const/4 v0, 0x0

    return-object v0

    .line 1662
    :cond_11
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static getTranslationX(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1200
    invoke-virtual {p0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    return v0
.end method

.method public static getTranslationY(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1214
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    return v0
.end method

.method public static getTranslationZ(Landroid/view/View;)F
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 1620
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 1621
    invoke-virtual {p0}, Landroid/view/View;->getTranslationZ()F

    move-result v0

    return v0

    .line 1623
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static getWindowInsetsController(Landroid/view/View;)Ltds/androidx/core/view/WindowInsetsControllerCompat;
    .registers 4
    .param p0, "view"    # Landroid/view/View;

    .line 1917
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_b

    .line 1918
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat$Api30Impl;->getWindowInsetsController(Landroid/view/View;)Ltds/androidx/core/view/WindowInsetsControllerCompat;

    move-result-object v0

    return-object v0

    .line 1920
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1921
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    .line 1922
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 1923
    .local v1, "window":Landroid/view/Window;
    if-eqz v1, :cond_21

    invoke-static {v1, p0}, Ltds/androidx/core/view/WindowCompat;->getInsetsController(Landroid/view/Window;Landroid/view/View;)Ltds/androidx/core/view/WindowInsetsControllerCompat;

    move-result-object v2

    :cond_21
    return-object v2

    .line 1925
    .end local v1    # "window":Landroid/view/Window;
    :cond_22
    return-object v2
.end method

.method public static getWindowSystemUiVisibility(Landroid/view/View;)I
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 1669
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    .line 1670
    invoke-virtual {p0}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v0

    return v0

    .line 1672
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static getX(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1573
    invoke-virtual {p0}, Landroid/view/View;->getX()F

    move-result v0

    return v0
.end method

.method public static getY(Landroid/view/View;)F
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1581
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result v0

    return v0
.end method

.method public static getZ(Landroid/view/View;)F
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 2587
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 2588
    invoke-virtual {p0}, Landroid/view/View;->getZ()F

    move-result v0

    return v0

    .line 2590
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static hasExplicitFocusable(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 3068
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 3069
    invoke-virtual {p0}, Landroid/view/View;->hasExplicitFocusable()Z

    move-result v0

    return v0

    .line 3071
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->hasFocusable()Z

    move-result v0

    return v0
.end method

.method public static hasNestedScrollingParent(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 2196
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 2197
    invoke-virtual {p0}, Landroid/view/View;->hasNestedScrollingParent()Z

    move-result v0

    return v0

    .line 2199
    :cond_b
    instance-of v0, p0, Ltds/androidx/core/view/NestedScrollingChild;

    if-eqz v0, :cond_17

    .line 2200
    move-object v0, p0

    check-cast v0, Ltds/androidx/core/view/NestedScrollingChild;

    invoke-interface {v0}, Ltds/androidx/core/view/NestedScrollingChild;->hasNestedScrollingParent()Z

    move-result v0

    return v0

    .line 2202
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public static hasNestedScrollingParent(Landroid/view/View;I)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "type"    # I

    .line 2341
    instance-of v0, p0, Ltds/androidx/core/view/NestedScrollingChild2;

    if-eqz v0, :cond_b

    .line 2342
    move-object v0, p0

    check-cast v0, Ltds/androidx/core/view/NestedScrollingChild2;

    invoke-interface {v0, p1}, Ltds/androidx/core/view/NestedScrollingChild2;->hasNestedScrollingParent(I)Z

    goto :goto_12

    .line 2343
    :cond_b
    if-nez p1, :cond_12

    .line 2344
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat;->hasNestedScrollingParent(Landroid/view/View;)Z

    move-result v0

    return v0

    .line 2346
    :cond_12
    :goto_12
    const/4 v0, 0x0

    return v0
.end method

.method public static hasOnClickListeners(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 2762
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_b

    .line 2763
    invoke-virtual {p0}, Landroid/view/View;->hasOnClickListeners()Z

    move-result v0

    return v0

    .line 2765
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static hasOverlappingRendering(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 1974
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    .line 1975
    invoke-virtual {p0}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v0

    return v0

    .line 1977
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public static hasTransientState(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 694
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_b

    .line 695
    invoke-virtual {p0}, Landroid/view/View;->hasTransientState()Z

    move-result v0

    return v0

    .line 697
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isAttachedToWindow(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 2750
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    .line 2751
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    return v0

    .line 2753
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_13

    const/4 v0, 0x1

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    :goto_14
    return v0
.end method

.method public static isFocusedByDefault(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 2979
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 2980
    invoke-virtual {p0}, Landroid/view/View;->isFocusedByDefault()Z

    move-result v0

    return v0

    .line 2982
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isImportantForAutofill(Landroid/view/View;)Z
    .registers 3
    .param p0, "v"    # Landroid/view/View;

    .line 679
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 680
    invoke-virtual {p0}, Landroid/view/View;->isImportantForAutofill()Z

    move-result v0

    return v0

    .line 682
    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method public static isInLayout(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 2545
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_b

    .line 2546
    invoke-virtual {p0}, Landroid/view/View;->isInLayout()Z

    move-result v0

    return v0

    .line 2548
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isKeyboardNavigationCluster(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 2950
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 2951
    invoke-virtual {p0}, Landroid/view/View;->isKeyboardNavigationCluster()Z

    move-result v0

    return v0

    .line 2953
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isLaidOut(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 2556
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    .line 2557
    invoke-virtual {p0}, Landroid/view/View;->isLaidOut()Z

    move-result v0

    return v0

    .line 2559
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_19

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-lez v0, :cond_19

    const/4 v0, 0x1

    goto :goto_1a

    :cond_19
    const/4 v0, 0x0

    :goto_1a
    return v0
.end method

.method public static isLayoutDirectionResolved(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 2573
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    .line 2574
    invoke-virtual {p0}, Landroid/view/View;->isLayoutDirectionResolved()Z

    move-result v0

    return v0

    .line 2576
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static isNestedScrollingEnabled(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 2138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 2139
    invoke-virtual {p0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result v0

    return v0

    .line 2141
    :cond_b
    instance-of v0, p0, Ltds/androidx/core/view/NestedScrollingChild;

    if-eqz v0, :cond_17

    .line 2142
    move-object v0, p0

    check-cast v0, Ltds/androidx/core/view/NestedScrollingChild;

    invoke-interface {v0}, Ltds/androidx/core/view/NestedScrollingChild;->isNestedScrollingEnabled()Z

    move-result v0

    return v0

    .line 2144
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public static isOpaque(Landroid/view/View;)Z
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 991
    invoke-virtual {p0}, Landroid/view/View;->isOpaque()Z

    move-result v0

    return v0
.end method

.method public static isPaddingRelative(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 1987
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_b

    .line 1988
    invoke-virtual {p0}, Landroid/view/View;->isPaddingRelative()Z

    move-result v0

    return v0

    .line 1990
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static jumpDrawablesToCurrentState(Landroid/view/View;)V
    .registers 1
    .param p0, "v"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1755
    invoke-virtual {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 1756
    return-void
.end method

.method public static keyboardNavigationClusterSearch(Landroid/view/View;Landroid/view/View;I)Landroid/view/View;
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "currentCluster"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 3016
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 3017
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->keyboardNavigationClusterSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 3019
    :cond_b
    const/4 v0, 0x0

    return-object v0
.end method

.method public static offsetLeftAndRight(Landroid/view/View;I)V
    .registers 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offset"    # I

    .line 2665
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a

    .line 2666
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    goto :goto_6f

    .line 2667
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_6c

    .line 2668
    invoke-static {}, Ltds/androidx/core/view/ViewCompat;->getEmptyTempRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2669
    .local v0, "parentRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 2671
    .local v1, "needInvalidateWorkaround":Z
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 2672
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_4a

    .line 2673
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    .line 2674
    .local v3, "p":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2677
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2678
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 2677
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 2682
    .end local v3    # "p":Landroid/view/View;
    :cond_4a
    invoke-static {p0, p1}, Ltds/androidx/core/view/ViewCompat;->compatOffsetLeftAndRight(Landroid/view/View;I)V

    .line 2686
    if-eqz v1, :cond_6b

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2687
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 2686
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 2688
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 2690
    .end local v0    # "parentRect":Landroid/graphics/Rect;
    .end local v1    # "needInvalidateWorkaround":Z
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_6b
    goto :goto_6f

    .line 2691
    :cond_6c
    invoke-static {p0, p1}, Ltds/androidx/core/view/ViewCompat;->compatOffsetLeftAndRight(Landroid/view/View;I)V

    .line 2693
    :goto_6f
    return-void
.end method

.method public static offsetTopAndBottom(Landroid/view/View;I)V
    .registers 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "offset"    # I

    .line 2617
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_a

    .line 2618
    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    goto :goto_6f

    .line 2619
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_6c

    .line 2620
    invoke-static {}, Ltds/androidx/core/view/ViewCompat;->getEmptyTempRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2621
    .local v0, "parentRect":Landroid/graphics/Rect;
    const/4 v1, 0x0

    .line 2623
    .local v1, "needInvalidateWorkaround":Z
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .line 2624
    .local v2, "parent":Landroid/view/ViewParent;
    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_4a

    .line 2625
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    .line 2626
    .local v3, "p":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 2629
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v5

    .line 2630
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v7

    .line 2629
    invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Rect;->intersects(IIII)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    move v1, v4

    .line 2634
    .end local v3    # "p":Landroid/view/View;
    :cond_4a
    invoke-static {p0, p1}, Ltds/androidx/core/view/ViewCompat;->compatOffsetTopAndBottom(Landroid/view/View;I)V

    .line 2638
    if-eqz v1, :cond_6b

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v4

    .line 2639
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v6

    .line 2638
    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 2640
    move-object v3, v2

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->invalidate(Landroid/graphics/Rect;)V

    .line 2642
    .end local v0    # "parentRect":Landroid/graphics/Rect;
    .end local v1    # "needInvalidateWorkaround":Z
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_6b
    goto :goto_6f

    .line 2643
    :cond_6c
    invoke-static {p0, p1}, Ltds/androidx/core/view/ViewCompat;->compatOffsetTopAndBottom(Landroid/view/View;I)V

    .line 2645
    :goto_6f
    return-void
.end method

.method public static onApplyWindowInsets(Landroid/view/View;Ltds/androidx/core/view/WindowInsetsCompat;)Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "insets"    # Ltds/androidx/core/view/WindowInsetsCompat;

    .line 1797
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1b

    .line 1798
    invoke-virtual {p1}, Ltds/androidx/core/view/WindowInsetsCompat;->toWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    .line 1799
    .local v0, "unwrapped":Landroid/view/WindowInsets;
    if-eqz v0, :cond_1b

    .line 1800
    invoke-virtual {p0, v0}, Landroid/view/View;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object v1

    .line 1801
    .local v1, "result":Landroid/view/WindowInsets;
    invoke-virtual {v1, v0}, Landroid/view/WindowInsets;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1b

    .line 1803
    invoke-static {v1, p0}, Ltds/androidx/core/view/WindowInsetsCompat;->toWindowInsetsCompat(Landroid/view/WindowInsets;Landroid/view/View;)Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object v2

    return-object v2

    .line 1807
    .end local v0    # "unwrapped":Landroid/view/WindowInsets;
    .end local v1    # "result":Landroid/view/WindowInsets;
    :cond_1b
    return-object p1
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 723
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 724
    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    goto :goto_d

    .line 726
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 728
    :goto_d
    return-void
.end method

.method public static postInvalidateOnAnimation(Landroid/view/View;IIII)V
    .registers 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .line 745
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 746
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->postInvalidateOnAnimation(IIII)V

    goto :goto_d

    .line 748
    :cond_a
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->postInvalidate(IIII)V

    .line 750
    :goto_d
    return-void
.end method

.method public static postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "action"    # Ljava/lang/Runnable;

    .line 763
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 764
    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_11

    .line 766
    :cond_a
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 768
    :goto_11
    return-void
.end method

.method public static postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V
    .registers 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "action"    # Ljava/lang/Runnable;
    .param p2, "delayMillis"    # J

    .line 785
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 786
    invoke-virtual {p0, p1, p2, p3}, Landroid/view/View;->postOnAnimationDelayed(Ljava/lang/Runnable;J)V

    goto :goto_12

    .line 788
    :cond_a
    invoke-static {}, Landroid/animation/ValueAnimator;->getFrameDelay()J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 790
    :goto_12
    return-void
.end method

.method public static removeOnUnhandledKeyEventListener(Landroid/view/View;Ltds/androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V
    .registers 4
    .param p0, "v"    # Landroid/view/View;
    .param p1, "listener"    # Ltds/androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;

    .line 3177
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_a

    .line 3178
    invoke-static {p0, p1}, Ltds/androidx/core/view/ViewCompat$CompatImplApi28;->removeOnUnhandledKeyEventListener(Landroid/view/View;Ltds/androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;)V

    .line 3179
    return-void

    .line 3181
    :cond_a
    nop

    .line 3183
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tds_common_tag_unhandled_key_listeners"

    invoke-static {v0, v1}, Lcom/tds/common/utils/UIUtils;->getId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3184
    .local v0, "viewListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ltds/androidx/core/view/ViewCompat$OnUnhandledKeyEventListenerCompat;>;"
    if-eqz v0, :cond_29

    .line 3185
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3186
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_29

    .line 3187
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat$UnhandledKeyEventManager;->unregisterListeningView(Landroid/view/View;)V

    .line 3190
    :cond_29
    return-void
.end method

.method public static requestApplyInsets(Landroid/view/View;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 1680
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_a

    .line 1681
    invoke-virtual {p0}, Landroid/view/View;->requestApplyInsets()V

    goto :goto_13

    .line 1682
    :cond_a
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_13

    .line 1683
    invoke-virtual {p0}, Landroid/view/View;->requestFitSystemWindows()V

    .line 1685
    :cond_13
    :goto_13
    return-void
.end method

.method public static requireViewById(Landroid/view/View;I)Landroid/view/View;
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Landroid/view/View;",
            "I)TT;"
        }
    .end annotation

    .line 970
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_b

    .line 971
    invoke-virtual {p0, p1}, Landroid/view/View;->requireViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 974
    :cond_b
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 975
    .local v0, "targetView":Landroid/view/View;, "TT;"
    if-eqz v0, :cond_12

    .line 978
    return-object v0

    .line 976
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ID does not reference a View inside this View"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static resolveSizeAndState(III)I
    .registers 4
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I
    .param p2, "childMeasuredState"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1011
    invoke-static {p0, p1, p2}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    return v0
.end method

.method public static restoreDefaultFocus(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 3046
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_b

    .line 3047
    invoke-virtual {p0}, Landroid/view/View;->restoreDefaultFocus()Z

    move-result v0

    return v0

    .line 3049
    :cond_b
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    return v0
.end method

.method public static saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V
    .registers 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "styleable"    # [I
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "t"    # Landroid/content/res/TypedArray;
    .param p5, "defStyleAttr"    # I
    .param p6, "defStyleRes"    # I

    .line 444
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_9

    .line 445
    invoke-static/range {p0 .. p6}, Ltds/androidx/core/view/ViewCompat$Api29Impl;->saveAttributeDataForStyleable(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    .line 448
    :cond_9
    return-void
.end method

.method public static setActivated(Landroid/view/View;Z)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "activated"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1956
    invoke-virtual {p0, p1}, Landroid/view/View;->setActivated(Z)V

    .line 1957
    return-void
.end method

.method public static setAlpha(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1372
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 1373
    return-void
.end method

.method public static varargs setAutofillHints(Landroid/view/View;[Ljava/lang/String;)V
    .registers 4
    .param p0, "v"    # Landroid/view/View;
    .param p1, "autofillHints"    # [Ljava/lang/String;

    .line 545
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    .line 546
    invoke-virtual {p0, p1}, Landroid/view/View;->setAutofillHints([Ljava/lang/String;)V

    .line 548
    :cond_9
    return-void
.end method

.method public static setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "background"    # Landroid/graphics/drawable/Drawable;

    .line 2000
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_a

    .line 2001
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_d

    .line 2003
    :cond_a
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2005
    :goto_d
    return-void
.end method

.method public static setBackgroundTintList(Landroid/view/View;Landroid/content/res/ColorStateList;)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tintList"    # Landroid/content/res/ColorStateList;

    .line 2030
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_36

    .line 2031
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 2033
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_40

    .line 2036
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2037
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-nez v1, :cond_20

    .line 2038
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eqz v1, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v1, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 v1, 0x1

    .line 2039
    .local v1, "hasTint":Z
    :goto_21
    if-eqz v0, :cond_35

    if-eqz v1, :cond_35

    .line 2040
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2041
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2043
    :cond_32
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2045
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "hasTint":Z
    :cond_35
    goto :goto_40

    .line 2046
    :cond_36
    instance-of v0, p0, Ltds/androidx/core/view/TintableBackgroundView;

    if-eqz v0, :cond_40

    .line 2047
    move-object v0, p0

    check-cast v0, Ltds/androidx/core/view/TintableBackgroundView;

    invoke-interface {v0, p1}, Ltds/androidx/core/view/TintableBackgroundView;->setSupportBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 2049
    :cond_40
    :goto_40
    return-void
.end method

.method public static setBackgroundTintMode(Landroid/view/View;Landroid/graphics/PorterDuff$Mode;)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "mode"    # Landroid/graphics/PorterDuff$Mode;

    .line 2077
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_36

    .line 2078
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 2080
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ne v0, v1, :cond_40

    .line 2083
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2084
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    if-nez v1, :cond_20

    .line 2085
    invoke-virtual {p0}, Landroid/view/View;->getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    if-eqz v1, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v1, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 v1, 0x1

    .line 2086
    .local v1, "hasTint":Z
    :goto_21
    if-eqz v0, :cond_35

    if-eqz v1, :cond_35

    .line 2087
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_32

    .line 2088
    invoke-virtual {p0}, Landroid/view/View;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 2090
    :cond_32
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 2092
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    .end local v1    # "hasTint":Z
    :cond_35
    goto :goto_40

    .line 2093
    :cond_36
    instance-of v0, p0, Ltds/androidx/core/view/TintableBackgroundView;

    if-eqz v0, :cond_40

    .line 2094
    move-object v0, p0

    check-cast v0, Ltds/androidx/core/view/TintableBackgroundView;

    invoke-interface {v0, p1}, Ltds/androidx/core/view/TintableBackgroundView;->setSupportBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 2096
    :cond_40
    :goto_40
    return-void
.end method

.method public static setChildrenDrawingOrderEnabled(Landroid/view/ViewGroup;Z)V
    .registers 10
    .param p0, "viewGroup"    # Landroid/view/ViewGroup;
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1700
    const-string v0, "Unable to invoke childrenDrawingOrderEnabled"

    sget-object v1, Ltds/androidx/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-string v4, "ViewCompat"

    if-nez v1, :cond_26

    .line 1702
    :try_start_a
    const-class v1, Landroid/view/ViewGroup;

    const-string v5, "setChildrenDrawingOrderEnabled"

    new-array v6, v3, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v2

    .line 1703
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Ltds/androidx/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_a .. :try_end_1a} :catch_1b

    .line 1706
    goto :goto_21

    .line 1704
    :catch_1b
    move-exception v1

    .line 1705
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    const-string v5, "Unable to find childrenDrawingOrderEnabled"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1707
    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :goto_21
    sget-object v1, Ltds/androidx/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1710
    :cond_26
    :try_start_26
    sget-object v1, Ltds/androidx/core/view/ViewCompat;->sChildrenDrawingOrderMethod:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v2

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/IllegalAccessException; {:try_start_26 .. :try_end_33} :catch_3e
    .catch Ljava/lang/IllegalArgumentException; {:try_start_26 .. :try_end_33} :catch_39
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_26 .. :try_end_33} :catch_34

    goto :goto_42

    .line 1715
    :catch_34
    move-exception v1

    .line 1716
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_43

    .line 1713
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_39
    move-exception v1

    .line 1714
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_42

    .line 1711
    :catch_3e
    move-exception v1

    .line 1712
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-static {v4, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1717
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :goto_42
    nop

    .line 1718
    :goto_43
    return-void
.end method

.method public static setClipBounds(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "clipBounds"    # Landroid/graphics/Rect;

    .line 2725
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_9

    .line 2726
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    .line 2728
    :cond_9
    return-void
.end method

.method public static setElevation(Landroid/view/View;F)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "elevation"    # F

    .line 1588
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    .line 1589
    invoke-virtual {p0, p1}, Landroid/view/View;->setElevation(F)V

    .line 1591
    :cond_9
    return-void
.end method

.method public static setFitsSystemWindows(Landroid/view/View;Z)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "fitSystemWindows"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1741
    invoke-virtual {p0, p1}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 1742
    return-void
.end method

.method public static setFocusedByDefault(Landroid/view/View;Z)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "isFocusedByDefault"    # Z

    .line 2998
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    .line 2999
    invoke-virtual {p0, p1}, Landroid/view/View;->setFocusedByDefault(Z)V

    .line 3001
    :cond_9
    return-void
.end method

.method public static setHasTransientState(Landroid/view/View;Z)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "hasTransientState"    # Z

    .line 708
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_9

    .line 709
    invoke-virtual {p0, p1}, Landroid/view/View;->setHasTransientState(Z)V

    .line 711
    :cond_9
    return-void
.end method

.method public static setImportantForAutofill(Landroid/view/View;I)V
    .registers 4
    .param p0, "v"    # Landroid/view/View;
    .param p1, "mode"    # I

    .line 610
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    .line 611
    invoke-virtual {p0, p1}, Landroid/view/View;->setImportantForAutofill(I)V

    .line 613
    :cond_9
    return-void
.end method

.method public static setKeyboardNavigationCluster(Landroid/view/View;Z)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "isCluster"    # Z

    .line 2964
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    .line 2965
    invoke-virtual {p0, p1}, Landroid/view/View;->setKeyboardNavigationCluster(Z)V

    .line 2967
    :cond_9
    return-void
.end method

.method public static setLayerPaint(Landroid/view/View;Landroid/graphics/Paint;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "paint"    # Landroid/graphics/Paint;

    .line 901
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_a

    .line 902
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    goto :goto_14

    .line 906
    :cond_a
    invoke-virtual {p0}, Landroid/view/View;->getLayerType()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 908
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 910
    :goto_14
    return-void
.end method

.method public static setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 842
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 843
    return-void
.end method

.method public static setLayoutDirection(Landroid/view/View;I)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "layoutDirection"    # I

    .line 948
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_9

    .line 949
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutDirection(I)V

    .line 951
    :cond_9
    return-void
.end method

.method public static setNestedScrollingEnabled(Landroid/view/View;Z)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "enabled"    # Z

    .line 2115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    .line 2116
    invoke-virtual {p0, p1}, Landroid/view/View;->setNestedScrollingEnabled(Z)V

    goto :goto_14

    .line 2118
    :cond_a
    instance-of v0, p0, Ltds/androidx/core/view/NestedScrollingChild;

    if-eqz v0, :cond_14

    .line 2119
    move-object v0, p0

    check-cast v0, Ltds/androidx/core/view/NestedScrollingChild;

    invoke-interface {v0, p1}, Ltds/androidx/core/view/NestedScrollingChild;->setNestedScrollingEnabled(Z)V

    .line 2122
    :cond_14
    :goto_14
    return-void
.end method

.method public static setNextClusterForwardId(Landroid/view/View;I)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "nextClusterForwardId"    # I

    .line 2938
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    .line 2939
    invoke-virtual {p0, p1}, Landroid/view/View;->setNextClusterForwardId(I)V

    .line 2941
    :cond_9
    return-void
.end method

.method public static setOnApplyWindowInsetsListener(Landroid/view/View;Ltds/androidx/core/view/OnApplyWindowInsetsListener;)V
    .registers 4
    .param p0, "v"    # Landroid/view/View;
    .param p1, "listener"    # Ltds/androidx/core/view/OnApplyWindowInsetsListener;

    .line 1764
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_15

    .line 1765
    if-nez p1, :cond_d

    .line 1766
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1767
    return-void

    .line 1770
    :cond_d
    new-instance v0, Ltds/androidx/core/view/ViewCompat$1;

    invoke-direct {v0, p1}, Ltds/androidx/core/view/ViewCompat$1;-><init>(Ltds/androidx/core/view/OnApplyWindowInsetsListener;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1780
    :cond_15
    return-void
.end method

.method public static setOverScrollMode(Landroid/view/View;I)V
    .registers 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "overScrollMode"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 512
    invoke-virtual {p0, p1}, Landroid/view/View;->setOverScrollMode(I)V

    .line 513
    return-void
.end method

.method public static setPaddingRelative(Landroid/view/View;IIII)V
    .registers 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "start"    # I
    .param p2, "top"    # I
    .param p3, "end"    # I
    .param p4, "bottom"    # I

    .line 1124
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_a

    .line 1125
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_d

    .line 1127
    :cond_a
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 1129
    :goto_d
    return-void
.end method

.method public static setPivotX(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1496
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotX(F)V

    .line 1497
    return-void
.end method

.method public static setPivotY(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1525
    invoke-virtual {p0, p1}, Landroid/view/View;->setPivotY(F)V

    .line 1526
    return-void
.end method

.method public static setPointerIcon(Landroid/view/View;Ltds/androidx/core/view/PointerIconCompat;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "pointerIcon"    # Ltds/androidx/core/view/PointerIconCompat;

    .line 2843
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_15

    .line 2844
    if-eqz p1, :cond_d

    .line 2845
    invoke-virtual {p1}, Ltds/androidx/core/view/PointerIconCompat;->getPointerIcon()Ljava/lang/Object;

    move-result-object v0

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    check-cast v0, Landroid/view/PointerIcon;

    check-cast v0, Landroid/view/PointerIcon;

    .line 2844
    invoke-virtual {p0, v0}, Landroid/view/View;->setPointerIcon(Landroid/view/PointerIcon;)V

    .line 2847
    :cond_15
    return-void
.end method

.method public static setRotation(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1415
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    .line 1416
    return-void
.end method

.method public static setRotationX(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1429
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationX(F)V

    .line 1430
    return-void
.end method

.method public static setRotationY(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1443
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationY(F)V

    .line 1444
    return-void
.end method

.method public static setSaveFromParentEnabled(Landroid/view/View;Z)V
    .registers 2
    .param p0, "v"    # Landroid/view/View;
    .param p1, "enabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1940
    invoke-virtual {p0, p1}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    .line 1941
    return-void
.end method

.method public static setScaleX(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1456
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 1457
    return-void
.end method

.method public static setScaleY(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1469
    invoke-virtual {p0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 1470
    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;I)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "indicators"    # I

    .line 2780
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_9

    .line 2781
    invoke-virtual {p0, p1}, Landroid/view/View;->setScrollIndicators(I)V

    .line 2783
    :cond_9
    return-void
.end method

.method public static setScrollIndicators(Landroid/view/View;II)V
    .registers 5
    .param p0, "view"    # Landroid/view/View;
    .param p1, "indicators"    # I
    .param p2, "mask"    # I

    .line 2814
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_9

    .line 2815
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setScrollIndicators(II)V

    .line 2817
    :cond_9
    return-void
.end method

.method public static setSystemGestureExclusionRects(Landroid/view/View;Ljava/util/List;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 1851
    .local p1, "rects":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Rect;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_9

    .line 1852
    invoke-virtual {p0, p1}, Landroid/view/View;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 1854
    :cond_9
    return-void
.end method

.method public static setTooltipText(Landroid/view/View;Ljava/lang/CharSequence;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "tooltipText"    # Ljava/lang/CharSequence;

    .line 2882
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_9

    .line 2883
    invoke-virtual {p0, p1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    .line 2885
    :cond_9
    return-void
.end method

.method public static setTransitionName(Landroid/view/View;Ljava/lang/String;)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "transitionName"    # Ljava/lang/String;

    .line 1634
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    .line 1635
    invoke-virtual {p0, p1}, Landroid/view/View;->setTransitionName(Ljava/lang/String;)V

    goto :goto_1a

    .line 1637
    :cond_a
    sget-object v0, Ltds/androidx/core/view/ViewCompat;->sTransitionNameMap:Ljava/util/WeakHashMap;

    if-nez v0, :cond_15

    .line 1638
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ltds/androidx/core/view/ViewCompat;->sTransitionNameMap:Ljava/util/WeakHashMap;

    .line 1640
    :cond_15
    sget-object v0, Ltds/androidx/core/view/ViewCompat;->sTransitionNameMap:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1642
    :goto_1a
    return-void
.end method

.method public static setTranslationX(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1338
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 1339
    return-void
.end method

.method public static setTranslationY(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1355
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 1356
    return-void
.end method

.method public static setTranslationZ(Landroid/view/View;F)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "translationZ"    # F

    .line 1609
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    .line 1610
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationZ(F)V

    .line 1612
    :cond_9
    return-void
.end method

.method public static setX(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1387
    invoke-virtual {p0, p1}, Landroid/view/View;->setX(F)V

    .line 1388
    return-void
.end method

.method public static setY(Landroid/view/View;F)V
    .registers 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "value"    # F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1402
    invoke-virtual {p0, p1}, Landroid/view/View;->setY(F)V

    .line 1403
    return-void
.end method

.method public static setZ(Landroid/view/View;F)V
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "z"    # F

    .line 2606
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_9

    .line 2607
    invoke-virtual {p0, p1}, Landroid/view/View;->setZ(F)V

    .line 2609
    :cond_9
    return-void
.end method

.method public static startDragAndDrop(Landroid/view/View;Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z
    .registers 7
    .param p0, "v"    # Landroid/view/View;
    .param p1, "data"    # Landroid/content/ClipData;
    .param p2, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;
    .param p3, "localState"    # Ljava/lang/Object;
    .param p4, "flags"    # I

    .line 2892
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_b

    .line 2893
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    return v0

    .line 2895
    :cond_b
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/View;->startDrag(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    move-result v0

    return v0
.end method

.method public static startNestedScroll(Landroid/view/View;I)Z
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "axes"    # I

    .line 2160
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_b

    .line 2161
    invoke-virtual {p0, p1}, Landroid/view/View;->startNestedScroll(I)Z

    move-result v0

    return v0

    .line 2163
    :cond_b
    instance-of v0, p0, Ltds/androidx/core/view/NestedScrollingChild;

    if-eqz v0, :cond_17

    .line 2164
    move-object v0, p0

    check-cast v0, Ltds/androidx/core/view/NestedScrollingChild;

    invoke-interface {v0, p1}, Ltds/androidx/core/view/NestedScrollingChild;->startNestedScroll(I)Z

    move-result v0

    return v0

    .line 2166
    :cond_17
    const/4 v0, 0x0

    return v0
.end method

.method public static startNestedScroll(Landroid/view/View;II)Z
    .registers 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "axes"    # I
    .param p2, "type"    # I

    .line 2307
    instance-of v0, p0, Ltds/androidx/core/view/NestedScrollingChild2;

    if-eqz v0, :cond_c

    .line 2308
    move-object v0, p0

    check-cast v0, Ltds/androidx/core/view/NestedScrollingChild2;

    invoke-interface {v0, p1, p2}, Ltds/androidx/core/view/NestedScrollingChild2;->startNestedScroll(II)Z

    move-result v0

    return v0

    .line 2309
    :cond_c
    if-nez p2, :cond_13

    .line 2310
    invoke-static {p0, p1}, Ltds/androidx/core/view/ViewCompat;->startNestedScroll(Landroid/view/View;I)Z

    move-result v0

    return v0

    .line 2312
    :cond_13
    const/4 v0, 0x0

    return v0
.end method

.method public static stopNestedScroll(Landroid/view/View;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 2179
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_a

    .line 2180
    invoke-virtual {p0}, Landroid/view/View;->stopNestedScroll()V

    goto :goto_14

    .line 2181
    :cond_a
    instance-of v0, p0, Ltds/androidx/core/view/NestedScrollingChild;

    if-eqz v0, :cond_14

    .line 2182
    move-object v0, p0

    check-cast v0, Ltds/androidx/core/view/NestedScrollingChild;

    invoke-interface {v0}, Ltds/androidx/core/view/NestedScrollingChild;->stopNestedScroll()V

    .line 2184
    :cond_14
    :goto_14
    return-void
.end method

.method public static stopNestedScroll(Landroid/view/View;I)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "type"    # I

    .line 2324
    instance-of v0, p0, Ltds/androidx/core/view/NestedScrollingChild2;

    if-eqz v0, :cond_b

    .line 2325
    move-object v0, p0

    check-cast v0, Ltds/androidx/core/view/NestedScrollingChild2;

    invoke-interface {v0, p1}, Ltds/androidx/core/view/NestedScrollingChild2;->stopNestedScroll(I)V

    goto :goto_10

    .line 2326
    :cond_b
    if-nez p1, :cond_10

    .line 2327
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat;->stopNestedScroll(Landroid/view/View;)V

    .line 2329
    :cond_10
    :goto_10
    return-void
.end method

.method private static tickleInvalidationFlag(Landroid/view/View;)V
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 2708
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    .line 2709
    .local v0, "y":F
    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v1, v0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 2710
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 2711
    return-void
.end method

.method public static updateDragShadow(Landroid/view/View;Landroid/view/View$DragShadowBuilder;)V
    .registers 4
    .param p0, "v"    # Landroid/view/View;
    .param p1, "shadowBuilder"    # Landroid/view/View$DragShadowBuilder;

    .line 2912
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_9

    .line 2913
    invoke-virtual {p0, p1}, Landroid/view/View;->updateDragShadow(Landroid/view/View$DragShadowBuilder;)V

    .line 2915
    :cond_9
    return-void
.end method
