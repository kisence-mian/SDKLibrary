.class public Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
.super Landroid/view/ViewGroup;
.source "CoordinatorLayout.java"

# interfaces
.implements Ltds/androidx/core/view/NestedScrollingParent2;
.implements Ltds/androidx/core/view/NestedScrollingParent3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;,
        Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;,
        Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;,
        Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;,
        Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;,
        Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;,
        Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$ViewElevationComparator;,
        Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;,
        Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$DispatchChangeEvent;
    }
.end annotation


# static fields
.field static final CONSTRUCTOR_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final EVENT_NESTED_SCROLL:I = 0x1

.field static final EVENT_PRE_DRAW:I = 0x0

.field static final EVENT_VIEW_REMOVED:I = 0x2

.field static final TAG:Ljava/lang/String; = "CoordinatorLayout"

.field static final TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_ON_INTERCEPT:I = 0x0

.field private static final TYPE_ON_TOUCH:I = 0x1

.field static final WIDGET_PACKAGE_NAME:Ljava/lang/String;

.field static final sConstructors:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor<",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final sRectPool:Ltds/androidx/core/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltds/androidx/core/util/Pools$Pool<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApplyWindowInsetsListener:Ltds/androidx/core/view/OnApplyWindowInsetsListener;

.field private final mBehaviorConsumed:[I

.field private mBehaviorTouchView:Landroid/view/View;

.field private final mChildDag:Ltds/androidx/coordinatorlayout/widget/DirectedAcyclicGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltds/androidx/coordinatorlayout/widget/DirectedAcyclicGraph<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mDependencySortedChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDisallowInterceptReset:Z

.field private mDrawStatusBarBackground:Z

.field private mIsAttachedToWindow:Z

.field private mKeylines:[I

.field private mLastInsets:Ltds/androidx/core/view/WindowInsetsCompat;

.field private mNeedsPreDrawListener:Z

.field private final mNestedScrollingParentHelper:Ltds/androidx/core/view/NestedScrollingParentHelper;

.field private mNestedScrollingTarget:Landroid/view/View;

.field private final mNestedScrollingV2ConsumedCompat:[I

.field mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mOnPreDrawListener:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private final mTempDependenciesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 117
    const-class v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 118
    .local v0, "pkg":Ljava/lang/Package;
    const/4 v1, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    goto :goto_f

    :cond_e
    move-object v2, v1

    :goto_f
    sput-object v2, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    .line 125
    .end local v0    # "pkg":Ljava/lang/Package;
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1f

    .line 126
    new-instance v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$ViewElevationComparator;

    invoke-direct {v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$ViewElevationComparator;-><init>()V

    sput-object v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    goto :goto_21

    .line 128
    :cond_1f
    sput-object v1, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    .line 132
    :goto_21
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    .line 137
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    .line 155
    new-instance v0, Ltds/androidx/core/util/Pools$SynchronizedPool;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ltds/androidx/core/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Ltds/androidx/core/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 210
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 211
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 214
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 215
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 219
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 171
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 172
    new-instance v0, Ltds/androidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-direct {v0}, Ltds/androidx/coordinatorlayout/widget/DirectedAcyclicGraph;-><init>()V

    iput-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Ltds/androidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    .line 174
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    .line 175
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    .line 181
    const/4 v0, 0x2

    new-array v1, v0, [I

    iput-object v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    .line 185
    new-array v0, v0, [I

    iput-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingV2ConsumedCompat:[I

    .line 206
    new-instance v0, Ltds/androidx/core/view/NestedScrollingParentHelper;

    invoke-direct {v0, p0}, Ltds/androidx/core/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Ltds/androidx/core/view/NestedScrollingParentHelper;

    .line 235
    const/4 v0, 0x0

    .line 245
    .local v0, "keylineArrayRes":I
    const/4 v1, 0x0

    iput-object v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 249
    invoke-direct {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->setupForInsets()V

    .line 250
    new-instance v1, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;

    invoke-direct {v1, p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$HierarchyChangeListener;-><init>(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;)V

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 252
    return-void
.end method

.method private static acquireTempRect()Landroid/graphics/Rect;
    .registers 2

    .line 159
    sget-object v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Ltds/androidx/core/util/Pools$Pool;

    invoke-interface {v0}, Ltds/androidx/core/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 160
    .local v0, "rect":Landroid/graphics/Rect;
    if-nez v0, :cond_10

    .line 161
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v1

    .line 163
    :cond_10
    return-object v0
.end method

.method private cancelInterceptBehaviors()V
    .registers 18

    .line 403
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 404
    .local v1, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v2

    .line 405
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8
    if-ge v3, v2, :cond_30

    .line 406
    invoke-virtual {v0, v3}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 407
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 408
    .local v5, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v5}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v6

    .line 409
    .local v6, "b":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    if-eqz v6, :cond_2d

    .line 410
    if-nez v1, :cond_2a

    .line 411
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 412
    .local v15, "now":J
    const/4 v11, 0x3

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-wide v7, v15

    move-wide v9, v15

    invoke-static/range {v7 .. v14}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 415
    .end local v15    # "now":J
    :cond_2a
    invoke-virtual {v6, v0, v4, v1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 405
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v6    # "b":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 418
    .end local v3    # "i":I
    :cond_30
    if-eqz v1, :cond_35

    .line 419
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 421
    :cond_35
    return-void
.end method

.method private static clamp(III)I
    .registers 3
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .line 1314
    if-ge p0, p1, :cond_3

    .line 1315
    return p1

    .line 1316
    :cond_3
    if-le p0, p2, :cond_6

    .line 1317
    return p2

    .line 1319
    :cond_6
    return p0
.end method

.method private constrainChildRect(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V
    .registers 12
    .param p1, "lp"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .param p2, "out"    # Landroid/graphics/Rect;
    .param p3, "childWidth"    # I
    .param p4, "childHeight"    # I

    .line 1099
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v0

    .line 1100
    .local v0, "width":I
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v1

    .line 1103
    .local v1, "height":I
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v2

    iget v3, p1, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v3

    iget v3, p2, Landroid/graphics/Rect;->left:I

    .line 1105
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v4

    sub-int v4, v0, v4

    sub-int/2addr v4, p3

    iget v5, p1, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    .line 1104
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1103
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1106
    .local v2, "left":I
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v3

    iget v4, p1, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, p2, Landroid/graphics/Rect;->top:I

    .line 1108
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v5

    sub-int v5, v1, v5

    sub-int/2addr v5, p4

    iget v6, p1, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v6

    .line 1107
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1106
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 1110
    .local v3, "top":I
    add-int v4, v2, p3

    add-int v5, v3, p4

    invoke-virtual {p2, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1111
    return-void
.end method

.method private dispatchApplyWindowInsetsToBehaviors(Ltds/androidx/core/view/WindowInsetsCompat;)Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 8
    .param p1, "insets"    # Ltds/androidx/core/view/WindowInsetsCompat;

    .line 892
    invoke-virtual {p1}, Ltds/androidx/core/view/WindowInsetsCompat;->isConsumed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 893
    return-object p1

    .line 896
    :cond_7
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .local v1, "z":I
    :goto_c
    if-ge v0, v1, :cond_32

    .line 897
    invoke-virtual {p0, v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 898
    .local v2, "child":Landroid/view/View;
    invoke-static {v2}, Ltds/androidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2f

    .line 899
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 900
    .local v3, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v3}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v4

    .line 902
    .local v4, "b":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    if-eqz v4, :cond_2f

    .line 904
    invoke-virtual {v4, p0, v2, p1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onApplyWindowInsets(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Ltds/androidx/core/view/WindowInsetsCompat;)Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object p1

    .line 905
    invoke-virtual {p1}, Ltds/androidx/core/view/WindowInsetsCompat;->isConsumed()Z

    move-result v5

    if-eqz v5, :cond_2f

    .line 907
    goto :goto_32

    .line 896
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v4    # "b":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 913
    .end local v0    # "i":I
    .end local v1    # "z":I
    :cond_32
    :goto_32
    return-object p1
.end method

.method private getDesiredAnchoredChildRectWithoutConstraints(ILandroid/graphics/Rect;Landroid/graphics/Rect;Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;II)V
    .registers 21
    .param p1, "layoutDirection"    # I
    .param p2, "anchorRect"    # Landroid/graphics/Rect;
    .param p3, "out"    # Landroid/graphics/Rect;
    .param p4, "lp"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .param p5, "childWidth"    # I
    .param p6, "childHeight"    # I

    .line 1025
    move v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    iget v3, v2, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 1026
    invoke-static {v3}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->resolveAnchoredChildGravity(I)I

    move-result v3

    .line 1025
    invoke-static {v3, p1}, Ltds/androidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    .line 1027
    .local v3, "absGravity":I
    iget v4, v2, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 1028
    invoke-static {v4}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->resolveGravity(I)I

    move-result v4

    .line 1027
    invoke-static {v4, p1}, Ltds/androidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    .line 1031
    .local v4, "absAnchorGravity":I
    and-int/lit8 v5, v3, 0x7

    .line 1032
    .local v5, "hgrav":I
    and-int/lit8 v6, v3, 0x70

    .line 1033
    .local v6, "vgrav":I
    and-int/lit8 v7, v4, 0x7

    .line 1034
    .local v7, "anchorHgrav":I
    and-int/lit8 v8, v4, 0x70

    .line 1042
    .local v8, "anchorVgrav":I
    sparse-switch v7, :sswitch_data_64

    .line 1045
    iget v9, v1, Landroid/graphics/Rect;->left:I

    .line 1046
    .local v9, "left":I
    goto :goto_33

    .line 1048
    .end local v9    # "left":I
    :sswitch_27
    iget v9, v1, Landroid/graphics/Rect;->right:I

    .line 1049
    .restart local v9    # "left":I
    goto :goto_33

    .line 1051
    .end local v9    # "left":I
    :sswitch_2a
    iget v9, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->width()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    .line 1055
    .restart local v9    # "left":I
    :goto_33
    sparse-switch v8, :sswitch_data_6e

    .line 1058
    iget v10, v1, Landroid/graphics/Rect;->top:I

    .line 1059
    .local v10, "top":I
    goto :goto_45

    .line 1061
    .end local v10    # "top":I
    :sswitch_39
    iget v10, v1, Landroid/graphics/Rect;->bottom:I

    .line 1062
    .restart local v10    # "top":I
    goto :goto_45

    .line 1064
    .end local v10    # "top":I
    :sswitch_3c
    iget v10, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Rect;->height()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    .line 1069
    .restart local v10    # "top":I
    :goto_45
    sparse-switch v5, :sswitch_data_78

    .line 1072
    sub-int v9, v9, p5

    .line 1073
    goto :goto_4f

    .line 1076
    :sswitch_4b
    goto :goto_4f

    .line 1078
    :sswitch_4c
    div-int/lit8 v11, p5, 0x2

    sub-int/2addr v9, v11

    .line 1082
    :goto_4f
    sparse-switch v6, :sswitch_data_82

    .line 1085
    sub-int v10, v10, p6

    .line 1086
    goto :goto_59

    .line 1089
    :sswitch_55
    goto :goto_59

    .line 1091
    :sswitch_56
    div-int/lit8 v11, p6, 0x2

    sub-int/2addr v10, v11

    .line 1095
    :goto_59
    add-int v11, v9, p5

    add-int v12, v10, p6

    move-object/from16 v13, p3

    invoke-virtual {v13, v9, v10, v11, v12}, Landroid/graphics/Rect;->set(IIII)V

    .line 1096
    return-void

    nop

    :sswitch_data_64
    .sparse-switch
        0x1 -> :sswitch_2a
        0x5 -> :sswitch_27
    .end sparse-switch

    :sswitch_data_6e
    .sparse-switch
        0x10 -> :sswitch_3c
        0x50 -> :sswitch_39
    .end sparse-switch

    :sswitch_data_78
    .sparse-switch
        0x1 -> :sswitch_4c
        0x5 -> :sswitch_4b
    .end sparse-switch

    :sswitch_data_82
    .sparse-switch
        0x10 -> :sswitch_56
        0x50 -> :sswitch_55
    .end sparse-switch
.end method

.method private getKeyline(I)I
    .registers 6
    .param p1, "index"    # I

    .line 639
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mKeylines:[I

    const/4 v1, 0x0

    const-string v2, "CoordinatorLayout"

    if-nez v0, :cond_28

    .line 640
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No keylines defined for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " - attempted index lookup "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    return v1

    .line 644
    :cond_28
    if-ltz p1, :cond_31

    array-length v3, v0

    if-lt p1, v3, :cond_2e

    goto :goto_31

    .line 649
    :cond_2e
    aget v0, v0, p1

    return v0

    .line 645
    :cond_31
    :goto_31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keyline index "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " out of range for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    return v1
.end method

.method private getTopSortedChildren(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 458
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 460
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->isChildrenDrawingOrderEnabled()Z

    move-result v0

    .line 461
    .local v0, "useCustomOrder":Z
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 462
    .local v1, "childCount":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_d
    if-ltz v2, :cond_21

    .line 463
    if-eqz v0, :cond_16

    invoke-virtual {p0, v1, v2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildDrawingOrder(II)I

    move-result v3

    goto :goto_17

    :cond_16
    move v3, v2

    .line 464
    .local v3, "childIndex":I
    :goto_17
    invoke-virtual {p0, v3}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 465
    .local v4, "child":Landroid/view/View;
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    .end local v3    # "childIndex":I
    .end local v4    # "child":Landroid/view/View;
    add-int/lit8 v2, v2, -0x1

    goto :goto_d

    .line 468
    .end local v2    # "i":I
    :cond_21
    sget-object v2, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    if-eqz v2, :cond_28

    .line 469
    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 471
    :cond_28
    return-void
.end method

.method private hasDependencies(Landroid/view/View;)Z
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 1638
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Ltds/androidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v0, p1}, Ltds/androidx/coordinatorlayout/widget/DirectedAcyclicGraph;->hasOutgoingEdges(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private layoutChild(Landroid/view/View;I)V
    .registers 12
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I

    .line 1226
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1227
    .local v0, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    invoke-static {}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v7

    .line 1228
    .local v7, "parent":Landroid/graphics/Rect;
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    iget v2, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    .line 1229
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v2

    iget v3, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    .line 1230
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v3, v4

    .line 1231
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    iget v5, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    .line 1228
    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 1233
    iget-object v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Ltds/androidx/core/view/WindowInsetsCompat;

    if-eqz v1, :cond_6f

    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 1234
    invoke-static {p1}, Ltds/androidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_6f

    .line 1237
    iget v1, v7, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Ltds/androidx/core/view/WindowInsetsCompat;

    invoke-virtual {v2}, Ltds/androidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v7, Landroid/graphics/Rect;->left:I

    .line 1238
    iget v1, v7, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Ltds/androidx/core/view/WindowInsetsCompat;

    invoke-virtual {v2}, Ltds/androidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v7, Landroid/graphics/Rect;->top:I

    .line 1239
    iget v1, v7, Landroid/graphics/Rect;->right:I

    iget-object v2, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Ltds/androidx/core/view/WindowInsetsCompat;

    invoke-virtual {v2}, Ltds/androidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v7, Landroid/graphics/Rect;->right:I

    .line 1240
    iget v1, v7, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Ltds/androidx/core/view/WindowInsetsCompat;

    invoke-virtual {v2}, Ltds/androidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v7, Landroid/graphics/Rect;->bottom:I

    .line 1243
    :cond_6f
    invoke-static {}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v8

    .line 1244
    .local v8, "out":Landroid/graphics/Rect;
    iget v1, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->resolveGravity(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    .line 1245
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    .line 1244
    move-object v4, v7

    move-object v5, v8

    move v6, p2

    invoke-static/range {v1 .. v6}, Ltds/androidx/core/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 1246
    iget v1, v8, Landroid/graphics/Rect;->left:I

    iget v2, v8, Landroid/graphics/Rect;->top:I

    iget v3, v8, Landroid/graphics/Rect;->right:I

    iget v4, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 1248
    invoke-static {v7}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1249
    invoke-static {v8}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1250
    return-void
.end method

.method private layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "layoutDirection"    # I

    .line 1139
    invoke-static {}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1140
    .local v0, "anchorRect":Landroid/graphics/Rect;
    invoke-static {}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1142
    .local v1, "childRect":Landroid/graphics/Rect;
    :try_start_8
    invoke-virtual {p0, p2, v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1143
    invoke-virtual {p0, p1, p3, v0, v1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1144
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_21

    .line 1146
    invoke-static {v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1147
    invoke-static {v1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1148
    nop

    .line 1149
    return-void

    .line 1146
    :catchall_21
    move-exception v2

    invoke-static {v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1147
    invoke-static {v1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1148
    throw v2
.end method

.method private layoutChildWithKeyline(Landroid/view/View;II)V
    .registers 20
    .param p1, "child"    # Landroid/view/View;
    .param p2, "keyline"    # I
    .param p3, "layoutDirection"    # I

    .line 1163
    move/from16 v0, p3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1164
    .local v1, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    iget v2, v1, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 1165
    invoke-static {v2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->resolveKeylineGravity(I)I

    move-result v2

    .line 1164
    invoke-static {v2, v0}, Ltds/androidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v2

    .line 1167
    .local v2, "absGravity":I
    and-int/lit8 v3, v2, 0x7

    .line 1168
    .local v3, "hgrav":I
    and-int/lit8 v4, v2, 0x70

    .line 1169
    .local v4, "vgrav":I
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v5

    .line 1170
    .local v5, "width":I
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v6

    .line 1171
    .local v6, "height":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1172
    .local v7, "childWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 1174
    .local v8, "childHeight":I
    const/4 v9, 0x1

    if-ne v0, v9, :cond_2c

    .line 1175
    sub-int v9, v5, p2

    .end local p2    # "keyline":I
    .local v9, "keyline":I
    goto :goto_2e

    .line 1174
    .end local v9    # "keyline":I
    .restart local p2    # "keyline":I
    :cond_2c
    move/from16 v9, p2

    .line 1178
    .end local p2    # "keyline":I
    .restart local v9    # "keyline":I
    :goto_2e
    move-object/from16 v10, p0

    invoke-direct {v10, v9}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getKeyline(I)I

    move-result v11

    sub-int/2addr v11, v7

    .line 1179
    .local v11, "left":I
    const/4 v12, 0x0

    .line 1181
    .local v12, "top":I
    sparse-switch v3, :sswitch_data_84

    .line 1185
    goto :goto_3f

    .line 1187
    :sswitch_3a
    add-int/2addr v11, v7

    .line 1188
    goto :goto_3f

    .line 1190
    :sswitch_3c
    div-int/lit8 v13, v7, 0x2

    add-int/2addr v11, v13

    .line 1194
    :goto_3f
    sparse-switch v4, :sswitch_data_8e

    .line 1198
    goto :goto_48

    .line 1200
    :sswitch_43
    add-int/2addr v12, v8

    .line 1201
    goto :goto_48

    .line 1203
    :sswitch_45
    div-int/lit8 v13, v8, 0x2

    add-int/2addr v12, v13

    .line 1208
    :goto_48
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v13

    iget v14, v1, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v13, v14

    .line 1210
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v14

    sub-int v14, v5, v14

    sub-int/2addr v14, v7

    iget v15, v1, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v14, v15

    .line 1209
    invoke-static {v11, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1208
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1211
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v13

    iget v14, v1, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v13, v14

    .line 1213
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v14

    sub-int v14, v6, v14

    sub-int/2addr v14, v8

    iget v15, v1, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v14, v15

    .line 1212
    invoke-static {v12, v14}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 1211
    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 1215
    add-int v13, v11, v7

    add-int v14, v12, v8

    move-object/from16 v15, p1

    invoke-virtual {v15, v11, v12, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 1216
    return-void

    :sswitch_data_84
    .sparse-switch
        0x1 -> :sswitch_3c
        0x5 -> :sswitch_3a
    .end sparse-switch

    :sswitch_data_8e
    .sparse-switch
        0x10 -> :sswitch_45
        0x50 -> :sswitch_43
    .end sparse-switch
.end method

.method private obtainCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .registers 4
    .param p1, "other"    # Landroid/view/MotionEvent;

    .line 560
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 561
    .local v0, "event":Landroid/view/MotionEvent;
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 562
    return-object v0
.end method

.method private offsetChildByInset(Landroid/view/View;Landroid/graphics/Rect;I)V
    .registers 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "inset"    # Landroid/graphics/Rect;
    .param p3, "layoutDirection"    # I

    .line 1446
    invoke-static {p1}, Ltds/androidx/core/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1448
    return-void

    .line 1451
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v0, :cond_109

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    if-gtz v0, :cond_15

    goto/16 :goto_109

    .line 1456
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1457
    .local v0, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 1458
    .local v1, "behavior":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    invoke-static {}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 1459
    .local v2, "dodgeRect":Landroid/graphics/Rect;
    invoke-static {}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1460
    .local v3, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v6

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 1462
    if-eqz v1, :cond_74

    invoke-virtual {v1, p0, p1, v2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->getInsetDodgeRect(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_74

    .line 1464
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_49

    goto :goto_77

    .line 1465
    :cond_49
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Rect should be within the child\'s bounds. Rect:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1466
    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " | Bounds:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1467
    invoke-virtual {v3}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1470
    :cond_74
    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1474
    :goto_77
    invoke-static {v3}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1476
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_84

    .line 1478
    invoke-static {v2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1479
    return-void

    .line 1482
    :cond_84
    iget v4, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    invoke-static {v4, p3}, Ltds/androidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v4

    .line 1485
    .local v4, "absDodgeInsetEdges":I
    const/4 v5, 0x0

    .line 1486
    .local v5, "offsetY":Z
    and-int/lit8 v6, v4, 0x30

    const/16 v7, 0x30

    if-ne v6, v7, :cond_a4

    .line 1487
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    sub-int/2addr v6, v7

    iget v7, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    sub-int/2addr v6, v7

    .line 1488
    .local v6, "distance":I
    iget v7, p2, Landroid/graphics/Rect;->top:I

    if-ge v6, v7, :cond_a4

    .line 1489
    iget v7, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v6

    invoke-direct {p0, p1, v7}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    .line 1490
    const/4 v5, 0x1

    .line 1493
    .end local v6    # "distance":I
    :cond_a4
    and-int/lit8 v6, v4, 0x50

    const/16 v7, 0x50

    if-ne v6, v7, :cond_c3

    .line 1494
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v6

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v6, v7

    iget v7, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    iget v7, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    add-int/2addr v6, v7

    .line 1495
    .restart local v6    # "distance":I
    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v6, v7, :cond_c3

    .line 1496
    iget v7, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v7, v6, v7

    invoke-direct {p0, p1, v7}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    .line 1497
    const/4 v5, 0x1

    .line 1500
    .end local v6    # "distance":I
    :cond_c3
    const/4 v6, 0x0

    if-nez v5, :cond_c9

    .line 1501
    invoke-direct {p0, p1, v6}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    .line 1504
    :cond_c9
    const/4 v7, 0x0

    .line 1505
    .local v7, "offsetX":Z
    and-int/lit8 v8, v4, 0x3

    const/4 v9, 0x3

    if-ne v8, v9, :cond_e2

    .line 1506
    iget v8, v2, Landroid/graphics/Rect;->left:I

    iget v9, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v8, v9

    iget v9, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    sub-int/2addr v8, v9

    .line 1507
    .local v8, "distance":I
    iget v9, p2, Landroid/graphics/Rect;->left:I

    if-ge v8, v9, :cond_e2

    .line 1508
    iget v9, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v9, v8

    invoke-direct {p0, p1, v9}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    .line 1509
    const/4 v7, 0x1

    .line 1512
    .end local v8    # "distance":I
    :cond_e2
    and-int/lit8 v8, v4, 0x5

    const/4 v9, 0x5

    if-ne v8, v9, :cond_100

    .line 1513
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    iget v9, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v8, v9

    iget v9, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    add-int/2addr v8, v9

    .line 1514
    .restart local v8    # "distance":I
    iget v9, p2, Landroid/graphics/Rect;->right:I

    if-ge v8, v9, :cond_100

    .line 1515
    iget v9, p2, Landroid/graphics/Rect;->right:I

    sub-int v9, v8, v9

    invoke-direct {p0, p1, v9}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    .line 1516
    const/4 v7, 0x1

    .line 1519
    .end local v8    # "distance":I
    :cond_100
    if-nez v7, :cond_105

    .line 1520
    invoke-direct {p0, p1, v6}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    .line 1523
    :cond_105
    invoke-static {v2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1524
    return-void

    .line 1453
    .end local v0    # "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v1    # "behavior":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .end local v2    # "dodgeRect":Landroid/graphics/Rect;
    .end local v3    # "bounds":Landroid/graphics/Rect;
    .end local v4    # "absDodgeInsetEdges":I
    .end local v5    # "offsetY":Z
    .end local v7    # "offsetX":Z
    :cond_109
    :goto_109
    return-void
.end method

.method static parseBehavior(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "name"    # Ljava/lang/String;

    .line 654
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 655
    const/4 v0, 0x0

    return-object v0

    .line 659
    :cond_8
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .local v0, "fullName":Ljava/lang/String;
    goto :goto_4f

    .line 662
    .end local v0    # "fullName":Ljava/lang/String;
    :cond_26
    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_30

    .line 664
    move-object v0, p2

    .restart local v0    # "fullName":Ljava/lang/String;
    goto :goto_4f

    .line 667
    .end local v0    # "fullName":Ljava/lang/String;
    :cond_30
    sget-object v1, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4e

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4f

    :cond_4e
    move-object v0, p2

    .line 673
    .restart local v0    # "fullName":Ljava/lang/String;
    :goto_4f
    :try_start_4f
    sget-object v1, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 674
    .local v2, "constructors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Constructor<Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;>;>;"
    if-nez v2, :cond_62

    .line 675
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    move-object v2, v3

    .line 676
    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 678
    :cond_62
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 679
    .local v1, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;>;"
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_82

    .line 680
    nop

    .line 681
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    invoke-static {v0, v4, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v5

    .line 682
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;>;"
    sget-object v6, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    move-object v1, v6

    .line 683
    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 684
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;>;"
    :cond_82
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v4

    aput-object p1, v5, v3

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_8f} :catch_90

    return-object v3

    .line 687
    .end local v1    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;>;"
    .end local v2    # "constructors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Constructor<Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;>;>;"
    :catch_90
    move-exception v1

    .line 688
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not inflate Behavior subclass "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private performEvent(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;Landroid/view/View;Landroid/view/MotionEvent;I)Z
    .registers 6
    .param p1, "behavior"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "ev"    # Landroid/view/MotionEvent;
    .param p4, "type"    # I

    .line 550
    packed-switch p4, :pswitch_data_14

    .line 556
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 554
    :pswitch_9
    invoke-virtual {p1, p0, p2, p3}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onTouchEvent(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 552
    :pswitch_e
    invoke-virtual {p1, p0, p2, p3}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_e
        :pswitch_9
    .end packed-switch
.end method

.method private performIntercept(Landroid/view/MotionEvent;I)Z
    .registers 20
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "type"    # I

    .line 475
    move-object/from16 v0, p0

    move/from16 v1, p2

    const/4 v2, 0x0

    .line 476
    .local v2, "intercepted":Z
    const/4 v3, 0x0

    .line 478
    .local v3, "newBlock":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 480
    .local v4, "action":I
    const/4 v5, 0x0

    .line 482
    .local v5, "cancelEvent":Landroid/view/MotionEvent;
    iget-object v6, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    .line 483
    .local v6, "topmostChildList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-direct {v0, v6}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getTopSortedChildren(Ljava/util/List;)V

    .line 486
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 487
    .local v7, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_15
    if-ge v8, v7, :cond_91

    .line 488
    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 489
    .local v9, "child":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 490
    .local v10, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v10}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v11

    .line 492
    .local v11, "b":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    if-nez v2, :cond_2b

    if-eqz v3, :cond_3e

    :cond_2b
    if-eqz v4, :cond_3e

    .line 495
    if-eqz v11, :cond_3b

    .line 496
    if-nez v5, :cond_35

    .line 497
    invoke-direct/range {p0 .. p1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->obtainCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    .line 499
    :cond_35
    invoke-direct {v0, v11, v9, v5, v1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->performEvent(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;Landroid/view/View;Landroid/view/MotionEvent;I)Z

    move-object/from16 v13, p1

    goto :goto_8e

    .line 495
    :cond_3b
    move-object/from16 v13, p1

    goto :goto_8e

    .line 504
    :cond_3e
    const/4 v12, 0x1

    if-nez v3, :cond_77

    if-nez v2, :cond_77

    if-eqz v11, :cond_77

    .line 505
    move-object/from16 v13, p1

    invoke-direct {v0, v11, v9, v13, v1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->performEvent(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;Landroid/view/View;Landroid/view/MotionEvent;I)Z

    move-result v2

    .line 506
    if-eqz v2, :cond_79

    .line 507
    iput-object v9, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 510
    const/4 v14, 0x3

    if-eq v4, v14, :cond_79

    if-eq v4, v12, :cond_79

    .line 511
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_55
    if-ge v14, v8, :cond_79

    .line 512
    invoke-interface {v6, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/view/View;

    .line 513
    .local v15, "priorChild":Landroid/view/View;
    nop

    .line 514
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual/range {v16 .. v16}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v12

    .line 515
    .local v12, "priorBehavior":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    if-eqz v12, :cond_73

    .line 516
    if-nez v5, :cond_70

    .line 517
    invoke-direct/range {p0 .. p1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->obtainCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    .line 519
    :cond_70
    invoke-direct {v0, v12, v15, v5, v1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->performEvent(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;Landroid/view/View;Landroid/view/MotionEvent;I)Z

    .line 511
    .end local v12    # "priorBehavior":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .end local v15    # "priorChild":Landroid/view/View;
    :cond_73
    add-int/lit8 v14, v14, 0x1

    const/4 v12, 0x1

    goto :goto_55

    .line 504
    .end local v14    # "j":I
    :cond_77
    move-object/from16 v13, p1

    .line 528
    :cond_79
    invoke-virtual {v10}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->didBlockInteraction()Z

    move-result v12

    .line 529
    .local v12, "wasBlocking":Z
    invoke-virtual {v10, v0, v9}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isBlockingInteractionBelow(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v14

    .line 530
    .local v14, "isBlocking":Z
    if-eqz v14, :cond_87

    if-nez v12, :cond_87

    const/4 v15, 0x1

    goto :goto_88

    :cond_87
    const/4 v15, 0x0

    :goto_88
    move v3, v15

    .line 531
    if-eqz v14, :cond_8e

    if-nez v3, :cond_8e

    .line 534
    goto :goto_93

    .line 487
    .end local v9    # "child":Landroid/view/View;
    .end local v10    # "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v11    # "b":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .end local v12    # "wasBlocking":Z
    .end local v14    # "isBlocking":Z
    :cond_8e
    :goto_8e
    add-int/lit8 v8, v8, 0x1

    goto :goto_15

    :cond_91
    move-object/from16 v13, p1

    .line 538
    .end local v8    # "i":I
    :goto_93
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 540
    if-eqz v5, :cond_9b

    .line 541
    invoke-virtual {v5}, Landroid/view/MotionEvent;->recycle()V

    .line 544
    :cond_9b
    return v2
.end method

.method private prepareChildren()V
    .registers 8

    .line 728
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 729
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Ltds/androidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v0}, Ltds/androidx/coordinatorlayout/widget/DirectedAcyclicGraph;->clear()V

    .line 731
    const/4 v0, 0x0

    .local v0, "i":I
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_f
    if-ge v0, v1, :cond_49

    .line 732
    invoke-virtual {p0, v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 734
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-result-object v3

    .line 735
    .local v3, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v3, p0, v2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->findAnchorView(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;

    .line 737
    iget-object v4, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Ltds/androidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v4, v2}, Ltds/androidx/coordinatorlayout/widget/DirectedAcyclicGraph;->addNode(Ljava/lang/Object;)V

    .line 740
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_22
    if-ge v4, v1, :cond_46

    .line 741
    if-ne v4, v0, :cond_27

    .line 742
    goto :goto_43

    .line 744
    :cond_27
    invoke-virtual {p0, v4}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 745
    .local v5, "other":Landroid/view/View;
    invoke-virtual {v3, p0, v2, v5}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dependsOn(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_43

    .line 746
    iget-object v6, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Ltds/androidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v6, v5}, Ltds/androidx/coordinatorlayout/widget/DirectedAcyclicGraph;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3e

    .line 748
    iget-object v6, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Ltds/androidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v6, v5}, Ltds/androidx/coordinatorlayout/widget/DirectedAcyclicGraph;->addNode(Ljava/lang/Object;)V

    .line 751
    :cond_3e
    iget-object v6, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Ltds/androidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v6, v5, v2}, Ltds/androidx/coordinatorlayout/widget/DirectedAcyclicGraph;->addEdge(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 740
    .end local v5    # "other":Landroid/view/View;
    :cond_43
    :goto_43
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 731
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v4    # "j":I
    :cond_46
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 757
    .end local v0    # "i":I
    .end local v1    # "count":I
    :cond_49
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    iget-object v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Ltds/androidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v1}, Ltds/androidx/coordinatorlayout/widget/DirectedAcyclicGraph;->getSortedList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 760
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 761
    return-void
.end method

.method private static releaseTempRect(Landroid/graphics/Rect;)V
    .registers 2
    .param p0, "rect"    # Landroid/graphics/Rect;

    .line 167
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    .line 168
    sget-object v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->sRectPool:Ltds/androidx/core/util/Pools$Pool;

    invoke-interface {v0, p0}, Ltds/androidx/core/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 169
    return-void
.end method

.method private resetTouchBehaviors()V
    .registers 13

    .line 431
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    if-eqz v0, :cond_29

    .line 432
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 433
    .local v0, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 434
    .local v1, "b":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    if-eqz v1, :cond_26

    .line 435
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 436
    .local v10, "now":J
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v4, v10

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 438
    .local v2, "cancelEvent":Landroid/view/MotionEvent;
    iget-object v3, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v1, p0, v3, v2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onTouchEvent(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 439
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 441
    .end local v2    # "cancelEvent":Landroid/view/MotionEvent;
    .end local v10    # "now":J
    :cond_26
    const/4 v2, 0x0

    iput-object v2, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 444
    .end local v0    # "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v1    # "b":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :cond_29
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    .line 445
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2e
    if-ge v1, v0, :cond_40

    .line 446
    invoke-virtual {p0, v1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 447
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 448
    .local v3, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v3}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->resetTouchBehaviorTracking()V

    .line 445
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 450
    .end local v1    # "i":I
    :cond_40
    const/4 v1, 0x0

    iput-boolean v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    .line 451
    return-void
.end method

.method private static resolveAnchoredChildGravity(I)I
    .registers 2
    .param p0, "gravity"    # I

    .line 1280
    if-nez p0, :cond_5

    const/16 v0, 0x11

    goto :goto_6

    :cond_5
    move v0, p0

    :goto_6
    return v0
.end method

.method private static resolveGravity(I)I
    .registers 2
    .param p0, "gravity"    # I

    .line 1258
    and-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_8

    .line 1259
    const v0, 0x800003

    or-int/2addr p0, v0

    .line 1261
    :cond_8
    and-int/lit8 v0, p0, 0x70

    if-nez v0, :cond_e

    .line 1262
    or-int/lit8 p0, p0, 0x30

    .line 1264
    :cond_e
    return p0
.end method

.method private static resolveKeylineGravity(I)I
    .registers 2
    .param p0, "gravity"    # I

    .line 1272
    if-nez p0, :cond_6

    const v0, 0x800035

    goto :goto_7

    :cond_6
    move v0, p0

    :goto_7
    return v0
.end method

.method private setInsetOffsetX(Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "offsetX"    # I

    .line 1527
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1528
    .local v0, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    iget v1, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    if-eq v1, p2, :cond_13

    .line 1529
    iget v1, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    sub-int v1, p2, v1

    .line 1530
    .local v1, "dx":I
    invoke-static {p1, v1}, Ltds/androidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1531
    iput p2, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    .line 1533
    .end local v1    # "dx":I
    :cond_13
    return-void
.end method

.method private setInsetOffsetY(Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "offsetY"    # I

    .line 1536
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1537
    .local v0, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    iget v1, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    if-eq v1, p2, :cond_13

    .line 1538
    iget v1, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    sub-int v1, p2, v1

    .line 1539
    .local v1, "dy":I
    invoke-static {p1, v1}, Ltds/androidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1540
    iput p2, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    .line 1542
    .end local v1    # "dy":I
    :cond_13
    return-void
.end method

.method private setupForInsets()V
    .registers 3

    .line 3306
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_7

    .line 3307
    return-void

    .line 3310
    :cond_7
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3311
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Ltds/androidx/core/view/OnApplyWindowInsetsListener;

    if-nez v0, :cond_18

    .line 3312
    new-instance v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$1;

    invoke-direct {v0, p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$1;-><init>(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;)V

    iput-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Ltds/androidx/core/view/OnApplyWindowInsetsListener;

    .line 3322
    :cond_18
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Ltds/androidx/core/view/OnApplyWindowInsetsListener;

    invoke-static {p0, v0}, Ltds/androidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Ltds/androidx/core/view/OnApplyWindowInsetsListener;)V

    .line 3325
    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->setSystemUiVisibility(I)V

    goto :goto_27

    .line 3328
    :cond_23
    const/4 v0, 0x0

    invoke-static {p0, v0}, Ltds/androidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Ltds/androidx/core/view/OnApplyWindowInsetsListener;)V

    .line 3330
    :goto_27
    return-void
.end method


# virtual methods
.method addPreDrawListener()V
    .registers 3

    .line 1646
    iget-boolean v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_18

    .line 1648
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    if-nez v0, :cond_f

    .line 1649
    new-instance v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-direct {v0, p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;-><init>(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;)V

    iput-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    .line 1651
    :cond_f
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1652
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1657
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 1658
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1791
    instance-of v0, p1, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public dispatchDependentViewsChanged(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .line 1556
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Ltds/androidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v0, p1}, Ltds/androidx/coordinatorlayout/widget/DirectedAcyclicGraph;->getIncomingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1557
    .local v0, "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v0, :cond_2e

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 1558
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_f
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2e

    .line 1559
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1560
    .local v2, "child":Landroid/view/View;
    nop

    .line 1561
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1562
    .local v3, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v3}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v4

    .line 1563
    .local v4, "b":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    if-eqz v4, :cond_2b

    .line 1564
    invoke-virtual {v4, p0, v2, p1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 1558
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v4    # "b":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 1568
    .end local v1    # "i":I
    :cond_2e
    return-void
.end method

.method public doViewsOverlap(Landroid/view/View;Landroid/view/View;)Z
    .registers 9
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    .line 1753
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_56

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_56

    .line 1754
    invoke-static {}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1755
    .local v0, "firstRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    const/4 v3, 0x1

    if-eq v2, p0, :cond_1a

    move v2, v3

    goto :goto_1b

    :cond_1a
    move v2, v1

    :goto_1b
    invoke-virtual {p0, p1, v2, v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1756
    invoke-static {}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 1757
    .local v2, "secondRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eq v4, p0, :cond_2a

    move v4, v3

    goto :goto_2b

    :cond_2a
    move v4, v1

    :goto_2b
    invoke-virtual {p0, p2, v4, v2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1759
    :try_start_2e
    iget v4, v0, Landroid/graphics/Rect;->left:I

    iget v5, v2, Landroid/graphics/Rect;->right:I

    if-gt v4, v5, :cond_47

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v2, Landroid/graphics/Rect;->bottom:I

    if-gt v4, v5, :cond_47

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v2, Landroid/graphics/Rect;->left:I

    if-lt v4, v5, :cond_47

    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v2, Landroid/graphics/Rect;->top:I
    :try_end_44
    .catchall {:try_start_2e .. :try_end_44} :catchall_4e

    if-lt v4, v5, :cond_47

    move v1, v3

    .line 1762
    :cond_47
    invoke-static {v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1763
    invoke-static {v2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1759
    return v1

    .line 1762
    :catchall_4e
    move-exception v1

    invoke-static {v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1763
    invoke-static {v2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1764
    throw v1

    .line 1766
    .end local v0    # "firstRect":Landroid/graphics/Rect;
    .end local v2    # "secondRect":Landroid/graphics/Rect;
    :cond_56
    return v1
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 15
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 1286
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1287
    .local v0, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    iget-object v1, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    if-eqz v1, :cond_89

    .line 1288
    iget-object v1, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v1, p0, p2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->getScrimOpacity(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)F

    move-result v1

    .line 1289
    .local v1, "scrimAlpha":F
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-lez v2, :cond_89

    .line 1290
    iget-object v2, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    if-nez v2, :cond_20

    .line 1291
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 1293
    :cond_20
    iget-object v2, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    iget-object v3, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehavior:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v3, p0, p2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->getScrimColor(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 1294
    iget-object v2, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v4, 0x0

    const/16 v5, 0xff

    invoke-static {v3, v4, v5}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->clamp(III)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1296
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 1297
    .local v2, "saved":I
    invoke-virtual {p2}, Landroid/view/View;->isOpaque()Z

    move-result v3

    if-eqz v3, :cond_62

    .line 1300
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v5, v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v6, v3

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v3

    int-to-float v7, v3

    .line 1301
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v3

    int-to-float v8, v3

    sget-object v9, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    .line 1300
    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 1304
    :cond_62
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v3

    int-to-float v5, v3

    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v3

    int-to-float v6, v3

    .line 1305
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v7, v3

    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v8, v3

    iget-object v9, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 1304
    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1307
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1310
    .end local v1    # "scrimAlpha":F
    .end local v2    # "saved":I
    :cond_89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    return v1
.end method

.method protected drawableStateChanged()V
    .registers 5

    .line 329
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 331
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getDrawableState()[I

    move-result-object v0

    .line 332
    .local v0, "state":[I
    const/4 v1, 0x0

    .line 334
    .local v1, "changed":Z
    iget-object v2, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 335
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_17

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 336
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v1, v3

    .line 339
    :cond_17
    if-eqz v1, :cond_1c

    .line 340
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->invalidate()V

    .line 342
    :cond_1c
    return-void
.end method

.method ensurePreDrawListener()V
    .registers 6

    .line 1615
    const/4 v0, 0x0

    .line 1616
    .local v0, "hasDependencies":Z
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 1617
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_17

    .line 1618
    invoke-virtual {p0, v2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1619
    .local v3, "child":Landroid/view/View;
    invoke-direct {p0, v3}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->hasDependencies(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1620
    const/4 v0, 0x1

    .line 1621
    goto :goto_17

    .line 1617
    .end local v3    # "child":Landroid/view/View;
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1625
    .end local v2    # "i":I
    :cond_17
    :goto_17
    iget-boolean v2, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eq v0, v2, :cond_24

    .line 1626
    if-eqz v0, :cond_21

    .line 1627
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->addPreDrawListener()V

    goto :goto_24

    .line 1629
    :cond_21
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->removePreDrawListener()V

    .line 1632
    :cond_24
    :goto_24
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 110
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->generateDefaultLayoutParams()Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .registers 3

    .line 1786
    new-instance v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 110
    invoke-virtual {p0, p1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 110
    invoke-virtual {p0, p1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1771
    new-instance v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .registers 4
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1776
    instance-of v0, p1, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_d

    .line 1777
    new-instance v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {v0, v1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V

    return-object v0

    .line 1778
    :cond_d
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1a

    .line 1779
    new-instance v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 1781
    :cond_1a
    new-instance v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {v0, p1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "transform"    # Z
    .param p3, "out"    # Landroid/graphics/Rect;

    .line 1012
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_29

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_f

    goto :goto_29

    .line 1016
    :cond_f
    if-eqz p2, :cond_15

    .line 1017
    invoke-virtual {p0, p1, p3}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_28

    .line 1019
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 1021
    :goto_28
    return-void

    .line 1013
    :cond_29
    :goto_29
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 1014
    return-void
.end method

.method public getDependencies(Landroid/view/View;)Ljava/util/List;
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1579
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Ltds/androidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v0, p1}, Ltds/androidx/coordinatorlayout/widget/DirectedAcyclicGraph;->getOutgoingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1580
    .local v0, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1581
    if-eqz v0, :cond_12

    .line 1582
    iget-object v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1584
    :cond_12
    iget-object v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    return-object v1
.end method

.method final getDependencySortedChildren()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1607
    invoke-direct {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->prepareChildren()V

    .line 1608
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDependents(Landroid/view/View;)Ljava/util/List;
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1597
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mChildDag:Ltds/androidx/coordinatorlayout/widget/DirectedAcyclicGraph;

    invoke-virtual {v0, p1}, Ltds/androidx/coordinatorlayout/widget/DirectedAcyclicGraph;->getIncomingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1598
    .local v0, "edges":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1599
    if-eqz v0, :cond_12

    .line 1600
    iget-object v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1602
    :cond_12
    iget-object v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    return-object v1
.end method

.method getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .line 771
    invoke-static {p0, p1, p2}, Ltds/androidx/coordinatorlayout/widget/ViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 772
    return-void
.end method

.method getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I
    .param p3, "anchorRect"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    .line 1123
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1124
    .local v0, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 1125
    .local v8, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 1126
    .local v9, "childHeight":I
    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move v6, v8

    move v7, v9

    invoke-direct/range {v1 .. v7}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getDesiredAnchoredChildRectWithoutConstraints(ILandroid/graphics/Rect;Landroid/graphics/Rect;Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;II)V

    .line 1128
    invoke-direct {p0, v0, p4, v8, v9}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->constrainChildRect(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V

    .line 1129
    return-void
.end method

.method getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .line 998
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 999
    .local v0, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getLastChildRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1000
    return-void
.end method

.method public final getLastWindowInsets()Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 2

    .line 398
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Ltds/androidx/core/view/WindowInsetsCompat;

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .registers 2

    .line 2048
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Ltds/androidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Ltds/androidx/core/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method getResolvedLayoutParams(Landroid/view/View;)Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .registers 10
    .param p1, "child"    # Landroid/view/View;

    .line 693
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 694
    .local v0, "result":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    iget-boolean v1, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    if-nez v1, :cond_7d

    .line 695
    instance-of v1, p1, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;

    const-string v2, "CoordinatorLayout"

    const/4 v3, 0x1

    if-eqz v1, :cond_25

    .line 696
    move-object v1, p1

    check-cast v1, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;

    invoke-interface {v1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;->getBehavior()Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 697
    .local v1, "attachedBehavior":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    if-nez v1, :cond_1f

    .line 698
    const-string v4, "Attached behavior class is null"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_1f
    invoke-virtual {v0, v1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V

    .line 701
    iput-boolean v3, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 702
    .end local v1    # "attachedBehavior":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    goto :goto_7d

    .line 704
    :cond_25
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 705
    .local v1, "childClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 706
    .local v4, "defaultBehavior":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;
    :goto_2a
    if-eqz v1, :cond_3c

    const-class v5, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;

    .line 707
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v5

    check-cast v5, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;

    move-object v4, v5

    if-nez v5, :cond_3c

    .line 709
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2a

    .line 711
    :cond_3c
    if-eqz v4, :cond_7b

    .line 713
    nop

    .line 714
    :try_start_3f
    invoke-interface {v4}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v5, v7}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    .line 713
    invoke-virtual {v0, v5}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setBehavior(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;)V
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_55} :catch_56

    .line 719
    goto :goto_7b

    .line 715
    :catch_56
    move-exception v5

    .line 716
    .local v5, "e":Ljava/lang/Exception;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Default behavior class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " could not be instantiated. Did you forget a default constructor?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 721
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_7b
    :goto_7b
    iput-boolean v3, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 724
    .end local v1    # "childClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "defaultBehavior":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$DefaultBehavior;
    :cond_7d
    :goto_7d
    return-object v0
.end method

.method public getStatusBarBackground()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 324
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .registers 4

    .line 781
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .registers 4

    .line 776
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public isPointInChildBounds(Landroid/view/View;II)Z
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .line 1735
    invoke-static {}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1736
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1738
    :try_start_7
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1
    :try_end_b
    .catchall {:try_start_7 .. :try_end_b} :catchall_f

    .line 1740
    invoke-static {v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1738
    return v1

    .line 1740
    :catchall_f
    move-exception v1

    invoke-static {v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1741
    throw v1
.end method

.method offsetChildToAnchor(Landroid/view/View;I)V
    .registers 19
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I

    .line 1684
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1685
    .local v9, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    iget-object v0, v9, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_73

    .line 1686
    invoke-static {}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v10

    .line 1687
    .local v10, "anchorRect":Landroid/graphics/Rect;
    invoke-static {}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v11

    .line 1688
    .local v11, "childRect":Landroid/graphics/Rect;
    invoke-static {}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 1690
    .local v12, "desiredChildRect":Landroid/graphics/Rect;
    iget-object v0, v9, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v7, v0, v10}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1691
    const/4 v13, 0x0

    invoke-virtual {v7, v8, v13, v11}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1693
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    .line 1694
    .local v14, "childWidth":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    .line 1695
    .local v15, "childHeight":I
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object v2, v10

    move-object v3, v12

    move-object v4, v9

    move v5, v14

    move v6, v15

    invoke-direct/range {v0 .. v6}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getDesiredAnchoredChildRectWithoutConstraints(ILandroid/graphics/Rect;Landroid/graphics/Rect;Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;II)V

    .line 1697
    iget v0, v12, Landroid/graphics/Rect;->left:I

    iget v1, v11, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_44

    iget v0, v12, Landroid/graphics/Rect;->top:I

    iget v1, v11, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_45

    :cond_44
    const/4 v13, 0x1

    :cond_45
    move v0, v13

    .line 1699
    .local v0, "changed":Z
    invoke-direct {v7, v9, v12, v14, v15}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->constrainChildRect(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V

    .line 1701
    iget v1, v12, Landroid/graphics/Rect;->left:I

    iget v2, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    .line 1702
    .local v1, "dx":I
    iget v2, v12, Landroid/graphics/Rect;->top:I

    iget v3, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    .line 1704
    .local v2, "dy":I
    if-eqz v1, :cond_58

    .line 1705
    invoke-static {v8, v1}, Ltds/androidx/core/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1707
    :cond_58
    if-eqz v2, :cond_5d

    .line 1708
    invoke-static {v8, v2}, Ltds/androidx/core/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1711
    :cond_5d
    if-eqz v0, :cond_6a

    .line 1713
    invoke-virtual {v9}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v3

    .line 1714
    .local v3, "b":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    if-eqz v3, :cond_6a

    .line 1715
    iget-object v4, v9, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v3, v7, v8, v4}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 1719
    .end local v3    # "b":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :cond_6a
    invoke-static {v10}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1720
    invoke-static {v11}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1721
    invoke-static {v12}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1723
    .end local v0    # "changed":Z
    .end local v1    # "dx":I
    .end local v2    # "dy":I
    .end local v10    # "anchorRect":Landroid/graphics/Rect;
    .end local v11    # "childRect":Landroid/graphics/Rect;
    .end local v12    # "desiredChildRect":Landroid/graphics/Rect;
    .end local v14    # "childWidth":I
    .end local v15    # "childHeight":I
    :cond_73
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 3

    .line 261
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 262
    invoke-direct {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 263
    iget-boolean v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eqz v0, :cond_1e

    .line 264
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    if-nez v0, :cond_15

    .line 265
    new-instance v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-direct {v0, p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;-><init>(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;)V

    iput-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    .line 267
    :cond_15
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 268
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 270
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1e
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Ltds/androidx/core/view/WindowInsetsCompat;

    if-nez v0, :cond_2b

    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 273
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 275
    :cond_2b
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 276
    return-void
.end method

.method final onChildViewsChanged(I)V
    .registers 16
    .param p1, "type"    # I

    .line 1340
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 1341
    .local v0, "layoutDirection":I
    iget-object v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1342
    .local v1, "childCount":I
    invoke-static {}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 1343
    .local v2, "inset":Landroid/graphics/Rect;
    invoke-static {}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1344
    .local v3, "drawRect":Landroid/graphics/Rect;
    invoke-static {}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 1346
    .local v4, "lastDrawRect":Landroid/graphics/Rect;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_17
    if-ge v5, v1, :cond_fd

    .line 1347
    iget-object v6, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 1348
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1349
    .local v7, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    if-nez p1, :cond_33

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    const/16 v9, 0x8

    if-ne v8, v9, :cond_33

    .line 1351
    goto/16 :goto_f9

    .line 1355
    :cond_33
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_34
    if-ge v8, v5, :cond_48

    .line 1356
    iget-object v9, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 1358
    .local v9, "checkChild":Landroid/view/View;
    iget-object v10, v7, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    if-ne v10, v9, :cond_45

    .line 1359
    invoke-virtual {p0, v6, v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->offsetChildToAnchor(Landroid/view/View;I)V

    .line 1355
    .end local v9    # "checkChild":Landroid/view/View;
    :cond_45
    add-int/lit8 v8, v8, 0x1

    goto :goto_34

    .line 1364
    .end local v8    # "j":I
    :cond_48
    const/4 v8, 0x1

    invoke-virtual {p0, v6, v8, v3}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1367
    iget v9, v7, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    if-eqz v9, :cond_9d

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9d

    .line 1368
    iget v9, v7, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    invoke-static {v9, v0}, Ltds/androidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v9

    .line 1370
    .local v9, "absInsetEdge":I
    and-int/lit8 v10, v9, 0x70

    sparse-switch v10, :sswitch_data_108

    goto :goto_7d

    .line 1375
    :sswitch_62
    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v11

    iget v12, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_7d

    .line 1372
    :sswitch_72
    iget v10, v2, Landroid/graphics/Rect;->top:I

    iget v11, v3, Landroid/graphics/Rect;->bottom:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v2, Landroid/graphics/Rect;->top:I

    .line 1373
    nop

    .line 1378
    :goto_7d
    and-int/lit8 v10, v9, 0x7

    packed-switch v10, :pswitch_data_112

    :pswitch_82
    goto :goto_9d

    .line 1383
    :pswitch_83
    iget v10, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v11

    iget v12, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v2, Landroid/graphics/Rect;->right:I

    goto :goto_9d

    .line 1380
    :pswitch_93
    iget v10, v2, Landroid/graphics/Rect;->left:I

    iget v11, v3, Landroid/graphics/Rect;->right:I

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v2, Landroid/graphics/Rect;->left:I

    .line 1389
    .end local v9    # "absInsetEdge":I
    :cond_9d
    :goto_9d
    iget v9, v7, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-eqz v9, :cond_aa

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-nez v9, :cond_aa

    .line 1390
    invoke-direct {p0, v6, v2, v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->offsetChildByInset(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 1393
    :cond_aa
    const/4 v9, 0x2

    if-eq p1, v9, :cond_ba

    .line 1395
    invoke-virtual {p0, v6, v4}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1396
    invoke-virtual {v4, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b7

    .line 1397
    goto :goto_f9

    .line 1399
    :cond_b7
    invoke-virtual {p0, v6, v3}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1403
    :cond_ba
    add-int/lit8 v9, v5, 0x1

    .local v9, "j":I
    :goto_bc
    if-ge v9, v1, :cond_f9

    .line 1404
    iget-object v10, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View;

    .line 1405
    .local v10, "checkChild":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1406
    .local v11, "checkLp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v11}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v12

    .line 1408
    .local v12, "b":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    if-eqz v12, :cond_f6

    invoke-virtual {v12, p0, v10, v6}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->layoutDependsOn(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v13

    if-eqz v13, :cond_f6

    .line 1409
    if-nez p1, :cond_e4

    invoke-virtual {v11}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getChangedAfterNestedScroll()Z

    move-result v13

    if-eqz v13, :cond_e4

    .line 1412
    invoke-virtual {v11}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->resetChangedAfterNestedScroll()V

    .line 1413
    goto :goto_f6

    .line 1417
    :cond_e4
    packed-switch p1, :pswitch_data_11c

    .line 1426
    invoke-virtual {v12, p0, v10, v6}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v13

    .local v13, "handled":Z
    goto :goto_f1

    .line 1421
    .end local v13    # "handled":Z
    :pswitch_ec
    invoke-virtual {v12, p0, v10, v6}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDependentViewRemoved(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 1422
    const/4 v13, 0x1

    .line 1423
    .restart local v13    # "handled":Z
    nop

    .line 1430
    :goto_f1
    if-ne p1, v8, :cond_f6

    .line 1433
    invoke-virtual {v11, v13}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setChangedAfterNestedScroll(Z)V

    .line 1403
    .end local v10    # "checkChild":Landroid/view/View;
    .end local v11    # "checkLp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v12    # "b":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .end local v13    # "handled":Z
    :cond_f6
    :goto_f6
    add-int/lit8 v9, v9, 0x1

    goto :goto_bc

    .line 1346
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v9    # "j":I
    :cond_f9
    :goto_f9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_17

    .line 1439
    .end local v5    # "i":I
    :cond_fd
    invoke-static {v2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1440
    invoke-static {v3}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1441
    invoke-static {v4}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1442
    return-void

    nop

    :sswitch_data_108
    .sparse-switch
        0x30 -> :sswitch_72
        0x50 -> :sswitch_62
    .end sparse-switch

    :pswitch_data_112
    .packed-switch 0x3
        :pswitch_93
        :pswitch_82
        :pswitch_83
    .end packed-switch

    :pswitch_data_11c
    .packed-switch 0x2
        :pswitch_ec
    .end packed-switch
.end method

.method public onDetachedFromWindow()V
    .registers 3

    .line 280
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 281
    invoke-direct {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 282
    iget-boolean v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    if-eqz v0, :cond_17

    .line 283
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 284
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 286
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_17
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    if-eqz v0, :cond_1e

    .line 287
    invoke-virtual {p0, v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 289
    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 290
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 962
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 963
    iget-boolean v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    if-eqz v0, :cond_26

    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_26

    .line 964
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Ltds/androidx/core/view/WindowInsetsCompat;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    goto :goto_16

    :cond_15
    move v0, v1

    .line 965
    .local v0, "inset":I
    :goto_16
    if-lez v0, :cond_26

    .line 966
    iget-object v2, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 967
    iget-object v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 970
    .end local v0    # "inset":I
    :cond_26
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 567
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 570
    .local v0, "action":I
    if-nez v0, :cond_9

    .line 571
    invoke-direct {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 574
    :cond_9
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    move-result v1

    .line 576
    .local v1, "intercepted":Z
    const/4 v2, 0x1

    if-eq v0, v2, :cond_14

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1a

    .line 579
    :cond_14
    const/4 v2, 0x0

    iput-object v2, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 580
    invoke-direct {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 583
    :cond_1a
    return v1
.end method

.method protected onLayout(ZIIII)V
    .registers 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 942
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 943
    .local v0, "layoutDirection":I
    iget-object v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 944
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_36

    .line 945
    iget-object v3, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 946
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_1e

    .line 948
    goto :goto_33

    .line 951
    :cond_1e
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 952
    .local v4, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v4}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v5

    .line 954
    .local v5, "behavior":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    if-eqz v5, :cond_30

    invoke-virtual {v5, p0, v3, v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onLayoutChild(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v6

    if-nez v6, :cond_33

    .line 955
    :cond_30
    invoke-virtual {p0, v3, v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    .line 944
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v5    # "behavior":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 958
    .end local v2    # "i":I
    :cond_36
    return-void
.end method

.method public onLayoutChild(Landroid/view/View;I)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I

    .line 925
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 926
    .local v0, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->checkAnchorChanged()Z

    move-result v1

    if-nez v1, :cond_24

    .line 930
    iget-object v1, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_16

    .line 931
    iget-object v1, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-direct {p0, p1, v1, p2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V

    goto :goto_23

    .line 932
    :cond_16
    iget v1, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    if-ltz v1, :cond_20

    .line 933
    iget v1, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    invoke-direct {p0, p1, v1, p2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->layoutChildWithKeyline(Landroid/view/View;II)V

    goto :goto_23

    .line 935
    :cond_20
    invoke-direct {p0, p1, p2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->layoutChild(Landroid/view/View;I)V

    .line 937
    :goto_23
    return-void

    .line 927
    :cond_24
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected onMeasure(II)V
    .registers 38
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 805
    move-object/from16 v7, p0

    invoke-direct/range {p0 .. p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->prepareChildren()V

    .line 806
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->ensurePreDrawListener()V

    .line 808
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v8

    .line 809
    .local v8, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v9

    .line 810
    .local v9, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v10

    .line 811
    .local v10, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v11

    .line 812
    .local v11, "paddingBottom":I
    invoke-static/range {p0 .. p0}, Ltds/androidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v12

    .line 813
    .local v12, "layoutDirection":I
    const/4 v0, 0x1

    if-ne v12, v0, :cond_21

    move v1, v0

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    :goto_22
    move v14, v1

    .line 814
    .local v14, "isRtl":Z
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v15

    .line 815
    .local v15, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 816
    .local v16, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 817
    .local v6, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    .line 819
    .local v17, "heightSize":I
    add-int v18, v8, v10

    .line 820
    .local v18, "widthPadding":I
    add-int v19, v9, v11

    .line 821
    .local v19, "heightPadding":I
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getSuggestedMinimumWidth()I

    move-result v1

    .line 822
    .local v1, "widthUsed":I
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getSuggestedMinimumHeight()I

    move-result v2

    .line 823
    .local v2, "heightUsed":I
    const/4 v3, 0x0

    .line 825
    .local v3, "childState":I
    iget-object v4, v7, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Ltds/androidx/core/view/WindowInsetsCompat;

    if-eqz v4, :cond_4b

    invoke-static/range {p0 .. p0}, Ltds/androidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 v0, 0x0

    :goto_4c
    move/from16 v20, v0

    .line 827
    .local v20, "applyInsets":Z
    iget-object v0, v7, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 828
    .local v5, "childCount":I
    const/4 v0, 0x0

    move v4, v0

    move/from16 v34, v3

    move v3, v1

    move/from16 v1, v34

    .local v1, "childState":I
    .local v3, "widthUsed":I
    .local v4, "i":I
    :goto_5b
    if-ge v4, v5, :cond_196

    .line 829
    iget-object v0, v7, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/view/View;

    .line 830
    .local v21, "child":Landroid/view/View;
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v13, 0x8

    if-ne v0, v13, :cond_79

    .line 832
    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v27, v6

    const/16 v22, 0x0

    goto/16 :goto_18e

    .line 835
    :cond_79
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 837
    .local v13, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    const/4 v0, 0x0

    .line 838
    .local v0, "keylineWidthUsed":I
    move/from16 v23, v0

    .end local v0    # "keylineWidthUsed":I
    .local v23, "keylineWidthUsed":I
    iget v0, v13, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    if-ltz v0, :cond_cd

    if-eqz v15, :cond_cd

    .line 839
    iget v0, v13, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->keyline:I

    invoke-direct {v7, v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getKeyline(I)I

    move-result v0

    .line 840
    .local v0, "keylinePos":I
    move/from16 v24, v1

    .end local v1    # "childState":I
    .local v24, "childState":I
    iget v1, v13, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 841
    invoke-static {v1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->resolveKeylineGravity(I)I

    move-result v1

    .line 840
    invoke-static {v1, v12}, Ltds/androidx/core/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 843
    .local v1, "keylineGravity":I
    move/from16 v25, v2

    .end local v2    # "heightUsed":I
    .local v25, "heightUsed":I
    const/4 v2, 0x3

    if-ne v1, v2, :cond_a4

    if-eqz v14, :cond_a9

    :cond_a4
    const/4 v2, 0x5

    if-ne v1, v2, :cond_b6

    if-eqz v14, :cond_b6

    .line 845
    :cond_a9
    sub-int v2, v16, v10

    sub-int/2addr v2, v0

    move/from16 v27, v3

    const/4 v3, 0x0

    .end local v3    # "widthUsed":I
    .local v27, "widthUsed":I
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v23, v2

    .end local v23    # "keylineWidthUsed":I
    .local v2, "keylineWidthUsed":I
    goto :goto_d4

    .line 843
    .end local v2    # "keylineWidthUsed":I
    .end local v27    # "widthUsed":I
    .restart local v3    # "widthUsed":I
    .restart local v23    # "keylineWidthUsed":I
    :cond_b6
    move/from16 v27, v3

    .line 846
    .end local v3    # "widthUsed":I
    .restart local v27    # "widthUsed":I
    if-ne v1, v2, :cond_bc

    if-eqz v14, :cond_c1

    :cond_bc
    const/4 v2, 0x3

    if-ne v1, v2, :cond_cb

    if-eqz v14, :cond_cb

    .line 848
    :cond_c1
    sub-int v2, v0, v8

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v23, v2

    .end local v23    # "keylineWidthUsed":I
    .restart local v2    # "keylineWidthUsed":I
    goto :goto_d4

    .line 846
    .end local v2    # "keylineWidthUsed":I
    .restart local v23    # "keylineWidthUsed":I
    :cond_cb
    const/4 v3, 0x0

    goto :goto_d4

    .line 838
    .end local v0    # "keylinePos":I
    .end local v24    # "childState":I
    .end local v25    # "heightUsed":I
    .end local v27    # "widthUsed":I
    .local v1, "childState":I
    .local v2, "heightUsed":I
    .restart local v3    # "widthUsed":I
    :cond_cd
    move/from16 v24, v1

    move/from16 v25, v2

    move/from16 v27, v3

    const/4 v3, 0x0

    .line 852
    .end local v1    # "childState":I
    .end local v2    # "heightUsed":I
    .end local v3    # "widthUsed":I
    .restart local v24    # "childState":I
    .restart local v25    # "heightUsed":I
    .restart local v27    # "widthUsed":I
    :goto_d4
    move/from16 v0, p1

    .line 853
    .local v0, "childWidthMeasureSpec":I
    move/from16 v1, p2

    .line 854
    .local v1, "childHeightMeasureSpec":I
    if-eqz v20, :cond_10d

    invoke-static/range {v21 .. v21}, Ltds/androidx/core/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_10d

    .line 857
    iget-object v2, v7, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Ltds/androidx/core/view/WindowInsetsCompat;

    invoke-virtual {v2}, Ltds/androidx/core/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v2

    iget-object v3, v7, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Ltds/androidx/core/view/WindowInsetsCompat;

    .line 858
    invoke-virtual {v3}, Ltds/androidx/core/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v3

    add-int/2addr v2, v3

    .line 859
    .local v2, "horizInsets":I
    iget-object v3, v7, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Ltds/androidx/core/view/WindowInsetsCompat;

    invoke-virtual {v3}, Ltds/androidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    move/from16 v26, v0

    .end local v0    # "childWidthMeasureSpec":I
    .local v26, "childWidthMeasureSpec":I
    iget-object v0, v7, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Ltds/androidx/core/view/WindowInsetsCompat;

    .line 860
    invoke-virtual {v0}, Ltds/androidx/core/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v0

    add-int/2addr v3, v0

    .line 862
    .local v3, "vertInsets":I
    sub-int v0, v16, v2

    invoke-static {v0, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 864
    .end local v26    # "childWidthMeasureSpec":I
    .restart local v0    # "childWidthMeasureSpec":I
    move/from16 v26, v0

    .end local v0    # "childWidthMeasureSpec":I
    .restart local v26    # "childWidthMeasureSpec":I
    sub-int v0, v17, v3

    invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    move/from16 v28, v1

    goto :goto_111

    .line 854
    .end local v2    # "horizInsets":I
    .end local v3    # "vertInsets":I
    .end local v26    # "childWidthMeasureSpec":I
    .restart local v0    # "childWidthMeasureSpec":I
    :cond_10d
    move/from16 v26, v0

    .line 868
    .end local v0    # "childWidthMeasureSpec":I
    .restart local v26    # "childWidthMeasureSpec":I
    move/from16 v28, v1

    .end local v1    # "childHeightMeasureSpec":I
    .local v28, "childHeightMeasureSpec":I
    :goto_111
    invoke-virtual {v13}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v29

    .line 869
    .local v29, "b":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    if-eqz v29, :cond_13e

    const/16 v30, 0x0

    move-object/from16 v0, v29

    move/from16 v3, v24

    .end local v24    # "childState":I
    .local v3, "childState":I
    move-object/from16 v1, p0

    move/from16 v31, v25

    .end local v25    # "heightUsed":I
    .local v31, "heightUsed":I
    move-object/from16 v2, v21

    move/from16 v33, v3

    move/from16 v32, v27

    const/16 v22, 0x0

    .end local v3    # "childState":I
    .end local v27    # "widthUsed":I
    .local v32, "widthUsed":I
    .local v33, "childState":I
    move/from16 v3, v26

    move/from16 v24, v4

    .end local v4    # "i":I
    .local v24, "i":I
    move/from16 v4, v23

    move/from16 v25, v5

    .end local v5    # "childCount":I
    .local v25, "childCount":I
    move/from16 v5, v28

    move/from16 v27, v6

    .end local v6    # "heightMode":I
    .local v27, "heightMode":I
    move/from16 v6, v30

    invoke-virtual/range {v0 .. v6}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onMeasureChild(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v0

    if-nez v0, :cond_15a

    goto :goto_14c

    .end local v31    # "heightUsed":I
    .end local v32    # "widthUsed":I
    .end local v33    # "childState":I
    .restart local v4    # "i":I
    .restart local v5    # "childCount":I
    .restart local v6    # "heightMode":I
    .local v24, "childState":I
    .local v25, "heightUsed":I
    .local v27, "widthUsed":I
    :cond_13e
    move/from16 v33, v24

    move/from16 v31, v25

    move/from16 v32, v27

    const/16 v22, 0x0

    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v27, v6

    .line 871
    .end local v4    # "i":I
    .end local v5    # "childCount":I
    .end local v6    # "heightMode":I
    .local v24, "i":I
    .local v25, "childCount":I
    .local v27, "heightMode":I
    .restart local v31    # "heightUsed":I
    .restart local v32    # "widthUsed":I
    .restart local v33    # "childState":I
    :goto_14c
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move/from16 v2, v26

    move/from16 v3, v23

    move/from16 v4, v28

    invoke-virtual/range {v0 .. v5}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 875
    :cond_15a
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    add-int v0, v18, v0

    iget v1, v13, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    iget v1, v13, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    move/from16 v1, v32

    .end local v32    # "widthUsed":I
    .local v1, "widthUsed":I
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 878
    .end local v1    # "widthUsed":I
    .local v0, "widthUsed":I
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int v1, v19, v1

    iget v2, v13, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v2, v13, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v1, v2

    move/from16 v2, v31

    .end local v31    # "heightUsed":I
    .local v2, "heightUsed":I
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 880
    .end local v2    # "heightUsed":I
    .local v1, "heightUsed":I
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getMeasuredState()I

    move-result v2

    move/from16 v3, v33

    .end local v33    # "childState":I
    .restart local v3    # "childState":I
    invoke-static {v3, v2}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v2

    move v3, v0

    move/from16 v34, v2

    move v2, v1

    move/from16 v1, v34

    .line 828
    .end local v0    # "widthUsed":I
    .end local v13    # "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v21    # "child":Landroid/view/View;
    .end local v23    # "keylineWidthUsed":I
    .end local v26    # "childWidthMeasureSpec":I
    .end local v28    # "childHeightMeasureSpec":I
    .end local v29    # "b":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .local v1, "childState":I
    .restart local v2    # "heightUsed":I
    .local v3, "widthUsed":I
    :goto_18e
    add-int/lit8 v4, v24, 0x1

    move/from16 v5, v25

    move/from16 v6, v27

    .end local v24    # "i":I
    .restart local v4    # "i":I
    goto/16 :goto_5b

    .end local v25    # "childCount":I
    .end local v27    # "heightMode":I
    .restart local v5    # "childCount":I
    .restart local v6    # "heightMode":I
    :cond_196
    move/from16 v24, v4

    move/from16 v25, v5

    move/from16 v27, v6

    move/from16 v34, v3

    move v3, v1

    move/from16 v1, v34

    .line 883
    .end local v4    # "i":I
    .end local v5    # "childCount":I
    .end local v6    # "heightMode":I
    .local v1, "widthUsed":I
    .local v3, "childState":I
    .restart local v25    # "childCount":I
    .restart local v27    # "heightMode":I
    const/high16 v0, -0x1000000

    and-int/2addr v0, v3

    move/from16 v4, p1

    invoke-static {v1, v4, v0}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 885
    .local v0, "width":I
    shl-int/lit8 v5, v3, 0x10

    move/from16 v6, p2

    invoke-static {v2, v6, v5}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v5

    .line 887
    .local v5, "height":I
    invoke-virtual {v7, v0, v5}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->setMeasuredDimension(II)V

    .line 888
    return-void
.end method

.method public onMeasureChild(Landroid/view/View;IIII)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .line 798
    invoke-virtual/range {p0 .. p5}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 800
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 19
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .line 1993
    move-object v7, p0

    const/4 v0, 0x0

    .line 1995
    .local v0, "handled":Z
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v8

    .line 1996
    .local v8, "childCount":I
    const/4 v1, 0x0

    move v9, v0

    move v10, v1

    .end local v0    # "handled":Z
    .local v9, "handled":Z
    .local v10, "i":I
    :goto_9
    if-ge v10, v8, :cond_40

    .line 1997
    invoke-virtual {p0, v10}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .line 1998
    .local v11, "view":Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_18

    .line 2000
    goto :goto_3d

    .line 2003
    :cond_18
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 2004
    .local v12, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    const/4 v0, 0x0

    invoke-virtual {v12, v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v0

    if-nez v0, :cond_27

    .line 2005
    goto :goto_3d

    .line 2008
    :cond_27
    invoke-virtual {v12}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v13

    .line 2009
    .local v13, "viewBehavior":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    if-eqz v13, :cond_3d

    .line 2010
    move-object v0, v13

    move-object v1, p0

    move-object v2, v11

    move-object v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedFling(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z

    move-result v0

    or-int/2addr v0, v9

    move v9, v0

    .line 1996
    .end local v11    # "view":Landroid/view/View;
    .end local v12    # "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v13    # "viewBehavior":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :cond_3d
    :goto_3d
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 2014
    .end local v10    # "i":I
    :cond_40
    if-eqz v9, :cond_46

    .line 2015
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 2017
    :cond_46
    return v9
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 16
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .line 2023
    const/4 v0, 0x0

    .line 2025
    .local v0, "handled":Z
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 2026
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_38

    .line 2027
    invoke-virtual {p0, v2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    .line 2028
    .local v9, "view":Landroid/view/View;
    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_15

    .line 2030
    goto :goto_35

    .line 2033
    :cond_15
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 2034
    .local v10, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    const/4 v3, 0x0

    invoke-virtual {v10, v3}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v3

    if-nez v3, :cond_24

    .line 2035
    goto :goto_35

    .line 2038
    :cond_24
    invoke-virtual {v10}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v11

    .line 2039
    .local v11, "viewBehavior":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    if-eqz v11, :cond_35

    .line 2040
    move-object v3, v11

    move-object v4, p0

    move-object v5, v9

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v3

    or-int/2addr v0, v3

    .line 2026
    .end local v9    # "view":Landroid/view/View;
    .end local v10    # "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v11    # "viewBehavior":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :cond_35
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 2043
    .end local v2    # "i":I
    :cond_38
    return v0
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 11
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .line 1944
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedPreScroll(Landroid/view/View;II[II)V

    .line 1945
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .registers 25
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I
    .param p5, "type"    # I

    .line 1950
    move-object/from16 v8, p0

    const/4 v0, 0x0

    .line 1951
    .local v0, "xConsumed":I
    const/4 v1, 0x0

    .line 1952
    .local v1, "yConsumed":I
    const/4 v2, 0x0

    .line 1954
    .local v2, "accepted":Z
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v9

    .line 1955
    .local v9, "childCount":I
    const/4 v3, 0x0

    move v10, v0

    move v11, v1

    move v12, v2

    move v13, v3

    .end local v0    # "xConsumed":I
    .end local v1    # "yConsumed":I
    .end local v2    # "accepted":Z
    .local v10, "xConsumed":I
    .local v11, "yConsumed":I
    .local v12, "accepted":Z
    .local v13, "i":I
    :goto_e
    const/4 v14, 0x1

    const/4 v15, 0x0

    if-ge v13, v9, :cond_80

    .line 1956
    invoke-virtual {v8, v13}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 1957
    .local v16, "view":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1f

    .line 1959
    goto :goto_7d

    .line 1962
    :cond_1f
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1963
    .local v7, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move/from16 v6, p5

    invoke-virtual {v7, v6}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1964
    goto :goto_7d

    .line 1967
    :cond_2f
    invoke-virtual {v7}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v17

    .line 1968
    .local v17, "viewBehavior":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    if-eqz v17, :cond_7b

    .line 1969
    iget-object v5, v8, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    aput v15, v5, v15

    .line 1970
    aput v15, v5, v14

    .line 1971
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-object/from16 v3, p1

    move/from16 v4, p2

    move-object/from16 v18, v5

    move/from16 v5, p3

    move-object/from16 v6, v18

    move-object/from16 v18, v7

    .end local v7    # "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .local v18, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move/from16 v7, p5

    invoke-virtual/range {v0 .. v7}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedPreScroll(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V

    .line 1973
    iget-object v0, v8, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    if-lez p2, :cond_5d

    aget v0, v0, v15

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_63

    :cond_5d
    aget v0, v0, v15

    .line 1974
    invoke-static {v10, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_63
    nop

    .line 1975
    .end local v10    # "xConsumed":I
    .restart local v0    # "xConsumed":I
    iget-object v1, v8, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    if-lez p3, :cond_6f

    aget v1, v1, v14

    invoke-static {v11, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_75

    :cond_6f
    aget v1, v1, v14

    .line 1976
    invoke-static {v11, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_75
    nop

    .line 1978
    .end local v11    # "yConsumed":I
    .restart local v1    # "yConsumed":I
    const/4 v2, 0x1

    move v10, v0

    move v11, v1

    move v12, v2

    .end local v12    # "accepted":Z
    .restart local v2    # "accepted":Z
    goto :goto_7d

    .line 1968
    .end local v0    # "xConsumed":I
    .end local v1    # "yConsumed":I
    .end local v2    # "accepted":Z
    .end local v18    # "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .restart local v7    # "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .restart local v10    # "xConsumed":I
    .restart local v11    # "yConsumed":I
    .restart local v12    # "accepted":Z
    :cond_7b
    move-object/from16 v18, v7

    .line 1955
    .end local v7    # "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v16    # "view":Landroid/view/View;
    .end local v17    # "viewBehavior":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :goto_7d
    add-int/lit8 v13, v13, 0x1

    goto :goto_e

    .line 1982
    .end local v13    # "i":I
    :cond_80
    aput v10, p4, v15

    .line 1983
    aput v11, p4, v14

    .line 1985
    if-eqz v12, :cond_89

    .line 1986
    invoke-virtual {v8, v14}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 1988
    :cond_89
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 13
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .line 1883
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedScroll(Landroid/view/View;IIIII)V

    .line 1885
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .registers 15
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I
    .param p6, "type"    # I

    .line 1890
    iget-object v7, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingV2ConsumedCompat:[I

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedScroll(Landroid/view/View;IIIII[I)V

    .line 1892
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII[I)V
    .registers 30
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I
    .param p6, "type"    # I
    .param p7, "consumed"    # [I

    .line 1899
    move-object/from16 v10, p0

    invoke-virtual/range {p0 .. p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v11

    .line 1900
    .local v11, "childCount":I
    const/4 v0, 0x0

    .line 1901
    .local v0, "accepted":Z
    const/4 v1, 0x0

    .line 1902
    .local v1, "xConsumed":I
    const/4 v2, 0x0

    .line 1904
    .local v2, "yConsumed":I
    const/4 v3, 0x0

    move v12, v0

    move v13, v1

    move v14, v2

    move v15, v3

    .end local v0    # "accepted":Z
    .end local v1    # "xConsumed":I
    .end local v2    # "yConsumed":I
    .local v12, "accepted":Z
    .local v13, "xConsumed":I
    .local v14, "yConsumed":I
    .local v15, "i":I
    :goto_e
    const/4 v9, 0x1

    const/16 v16, 0x0

    if-ge v15, v11, :cond_92

    .line 1905
    invoke-virtual {v10, v15}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    .line 1906
    .local v17, "view":Landroid/view/View;
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_23

    .line 1908
    move/from16 v21, v11

    goto/16 :goto_8c

    .line 1911
    :cond_23
    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1912
    .local v8, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move/from16 v7, p6

    invoke-virtual {v8, v7}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v0

    if-nez v0, :cond_35

    .line 1913
    move/from16 v21, v11

    goto :goto_8c

    .line 1916
    :cond_35
    invoke-virtual {v8}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v18

    .line 1917
    .local v18, "viewBehavior":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    if-eqz v18, :cond_88

    .line 1919
    iget-object v6, v10, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    aput v16, v6, v16

    .line 1920
    aput v16, v6, v9

    .line 1922
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v19, v6

    move/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v20, v8

    .end local v8    # "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .local v20, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    move/from16 v8, p6

    move/from16 v21, v11

    move v11, v9

    .end local v11    # "childCount":I
    .local v21, "childCount":I
    move-object/from16 v9, v19

    invoke-virtual/range {v0 .. v9}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedScroll(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V

    .line 1925
    iget-object v0, v10, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    if-lez p4, :cond_6a

    aget v0, v0, v16

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_70

    :cond_6a
    aget v0, v0, v16

    .line 1926
    invoke-static {v13, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_70
    nop

    .line 1927
    .end local v13    # "xConsumed":I
    .local v0, "xConsumed":I
    iget-object v1, v10, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorConsumed:[I

    if-lez p5, :cond_7c

    aget v1, v1, v11

    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_82

    :cond_7c
    aget v1, v1, v11

    .line 1928
    invoke-static {v14, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_82
    nop

    .line 1930
    .end local v14    # "yConsumed":I
    .local v1, "yConsumed":I
    const/4 v2, 0x1

    move v13, v0

    move v14, v1

    move v12, v2

    .end local v12    # "accepted":Z
    .local v2, "accepted":Z
    goto :goto_8c

    .line 1917
    .end local v0    # "xConsumed":I
    .end local v1    # "yConsumed":I
    .end local v2    # "accepted":Z
    .end local v20    # "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v21    # "childCount":I
    .restart local v8    # "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .restart local v11    # "childCount":I
    .restart local v12    # "accepted":Z
    .restart local v13    # "xConsumed":I
    .restart local v14    # "yConsumed":I
    :cond_88
    move-object/from16 v20, v8

    move/from16 v21, v11

    .line 1904
    .end local v8    # "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v11    # "childCount":I
    .end local v17    # "view":Landroid/view/View;
    .end local v18    # "viewBehavior":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .restart local v21    # "childCount":I
    :goto_8c
    add-int/lit8 v15, v15, 0x1

    move/from16 v11, v21

    goto/16 :goto_e

    .end local v21    # "childCount":I
    .restart local v11    # "childCount":I
    :cond_92
    move/from16 v21, v11

    move v11, v9

    .line 1934
    .end local v11    # "childCount":I
    .end local v15    # "i":I
    .restart local v21    # "childCount":I
    aget v0, p7, v16

    add-int/2addr v0, v13

    aput v0, p7, v16

    .line 1935
    aget v0, p7, v11

    add-int/2addr v0, v14

    aput v0, p7, v11

    .line 1937
    if-eqz v12, :cond_a4

    .line 1938
    invoke-virtual {v10, v11}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 1940
    :cond_a4
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 1827
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 1828
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 22
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I
    .param p4, "type"    # I

    .line 1833
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v9, p4

    iget-object v0, v7, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Ltds/androidx/core/view/NestedScrollingParentHelper;

    move-object/from16 v10, p1

    move/from16 v11, p3

    invoke-virtual {v0, v10, v8, v11, v9}, Ltds/androidx/core/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 1834
    iput-object v8, v7, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 1836
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v12

    .line 1837
    .local v12, "childCount":I
    const/4 v0, 0x0

    move v13, v0

    .local v13, "i":I
    :goto_17
    if-ge v13, v12, :cond_44

    .line 1838
    invoke-virtual {v7, v13}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1839
    .local v14, "view":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1840
    .local v15, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v15, v9}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1841
    goto :goto_41

    .line 1844
    :cond_2b
    invoke-virtual {v15}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v16

    .line 1845
    .local v16, "viewBehavior":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    if-eqz v16, :cond_41

    .line 1846
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v2, v14

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedScrollAccepted(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)V

    .line 1837
    .end local v14    # "view":Landroid/view/View;
    .end local v15    # "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v16    # "viewBehavior":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :cond_41
    :goto_41
    add-int/lit8 v13, v13, 0x1

    goto :goto_17

    .line 1850
    .end local v13    # "i":I
    :cond_44
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 11
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 3241
    instance-of v0, p1, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    if-nez v0, :cond_8

    .line 3242
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3243
    return-void

    .line 3246
    :cond_8
    move-object v0, p1

    check-cast v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    .line 3247
    .local v0, "ss":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;
    invoke-virtual {v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3249
    iget-object v1, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    .line 3251
    .local v1, "behaviorStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    .local v3, "count":I
    :goto_19
    if-ge v2, v3, :cond_3e

    .line 3252
    invoke-virtual {p0, v2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3253
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    .line 3254
    .local v5, "childId":I
    invoke-virtual {p0, v4}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    move-result-object v6

    .line 3255
    .local v6, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v6}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v7

    .line 3257
    .local v7, "b":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    const/4 v8, -0x1

    if-eq v5, v8, :cond_3b

    if-eqz v7, :cond_3b

    .line 3258
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Parcelable;

    .line 3259
    .local v8, "savedState":Landroid/os/Parcelable;
    if-eqz v8, :cond_3b

    .line 3260
    invoke-virtual {v7, p0, v4, v8}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 3251
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childId":I
    .end local v6    # "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v7    # "b":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .end local v8    # "savedState":Landroid/os/Parcelable;
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 3264
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_3e
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 10

    .line 3269
    new-instance v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3271
    .local v0, "ss":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 3272
    .local v1, "behaviorStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v3

    .local v3, "count":I
    :goto_13
    if-ge v2, v3, :cond_38

    .line 3273
    invoke-virtual {p0, v2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 3274
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v5

    .line 3275
    .local v5, "childId":I
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 3276
    .local v6, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v6}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v7

    .line 3278
    .local v7, "b":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    const/4 v8, -0x1

    if-eq v5, v8, :cond_35

    if-eqz v7, :cond_35

    .line 3280
    invoke-virtual {v7, p0, v4}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v8

    .line 3281
    .local v8, "state":Landroid/os/Parcelable;
    if-eqz v8, :cond_35

    .line 3282
    invoke-virtual {v1, v5, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3272
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "childId":I
    .end local v6    # "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v7    # "b":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .end local v8    # "state":Landroid/os/Parcelable;
    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 3286
    .end local v2    # "i":I
    .end local v3    # "count":I
    :cond_38
    iput-object v1, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    .line 3287
    return-object v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .line 1796
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 20
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I
    .param p4, "type"    # I

    .line 1802
    move/from16 v7, p4

    const/4 v0, 0x0

    .line 1804
    .local v0, "handled":Z
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v8

    .line 1805
    .local v8, "childCount":I
    const/4 v1, 0x0

    move v9, v0

    move v10, v1

    .end local v0    # "handled":Z
    .local v9, "handled":Z
    .local v10, "i":I
    :goto_a
    if-ge v10, v8, :cond_44

    .line 1806
    move-object v11, p0

    invoke-virtual {p0, v10}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1807
    .local v12, "view":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1a

    .line 1809
    goto :goto_41

    .line 1811
    :cond_1a
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1812
    .local v13, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v13}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v14

    .line 1813
    .local v14, "viewBehavior":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    if-eqz v14, :cond_3d

    .line 1814
    move-object v0, v14

    move-object v1, p0

    move-object v2, v12

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v0 .. v6}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onStartNestedScroll(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    .line 1816
    .local v0, "accepted":Z
    or-int v1, v9, v0

    .line 1817
    .end local v9    # "handled":Z
    .local v1, "handled":Z
    invoke-virtual {v13, v7, v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setNestedScrollAccepted(IZ)V

    .line 1818
    .end local v0    # "accepted":Z
    move v9, v1

    goto :goto_41

    .line 1819
    .end local v1    # "handled":Z
    .restart local v9    # "handled":Z
    :cond_3d
    const/4 v0, 0x0

    invoke-virtual {v13, v7, v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setNestedScrollAccepted(IZ)V

    .line 1805
    .end local v12    # "view":Landroid/view/View;
    .end local v13    # "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v14    # "viewBehavior":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :goto_41
    add-int/lit8 v10, v10, 0x1

    goto :goto_a

    :cond_44
    move-object v11, p0

    .line 1822
    .end local v10    # "i":I
    return v9
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 3
    .param p1, "target"    # Landroid/view/View;

    .line 1854
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;I)V

    .line 1855
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 8
    .param p1, "target"    # Landroid/view/View;
    .param p2, "type"    # I

    .line 1860
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Ltds/androidx/core/view/NestedScrollingParentHelper;

    invoke-virtual {v0, p1, p2}, Ltds/androidx/core/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;I)V

    .line 1862
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    .line 1863
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_2f

    .line 1864
    invoke-virtual {p0, v1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1865
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 1866
    .local v3, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v3, p2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 1867
    goto :goto_2c

    .line 1870
    :cond_1d
    invoke-virtual {v3}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v4

    .line 1871
    .local v4, "viewBehavior":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    if-eqz v4, :cond_26

    .line 1872
    invoke-virtual {v4, p0, v2, p1, p2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onStopNestedScroll(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V

    .line 1874
    :cond_26
    invoke-virtual {v3, p2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->resetNestedScroll(I)V

    .line 1875
    invoke-virtual {v3}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->resetChangedAfterNestedScroll()V

    .line 1863
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v4    # "viewBehavior":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1877
    .end local v1    # "i":I
    :cond_2f
    const/4 v1, 0x0

    iput-object v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 1878
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 589
    const/4 v0, 0x0

    .line 590
    .local v0, "handled":Z
    const/4 v1, 0x0

    .line 592
    .local v1, "cancelSuper":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    .line 594
    .local v2, "action":I
    iget-object v3, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    const/4 v4, 0x1

    if-eqz v3, :cond_1e

    .line 595
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 596
    .local v3, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v3}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v5

    .line 597
    .local v5, "b":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    if-eqz v5, :cond_1d

    .line 598
    iget-object v6, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v5, p0, v6, p1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onTouchEvent(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    .line 600
    .end local v3    # "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    .end local v5    # "b":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    :cond_1d
    goto :goto_2a

    .line 601
    :cond_1e
    invoke-direct {p0, p1, v4}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    move-result v0

    .line 602
    if-eqz v2, :cond_28

    if-eqz v0, :cond_28

    move v3, v4

    goto :goto_29

    :cond_28
    const/4 v3, 0x0

    :goto_29
    move v1, v3

    .line 606
    :goto_2a
    iget-object v3, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    const/4 v5, 0x3

    if-eqz v3, :cond_3f

    if-ne v2, v5, :cond_32

    goto :goto_3f

    .line 608
    :cond_32
    if-eqz v1, :cond_44

    .line 609
    invoke-direct {p0, p1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->obtainCancelEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v3

    .line 610
    .local v3, "cancelEvent":Landroid/view/MotionEvent;
    invoke-super {p0, v3}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 611
    invoke-virtual {v3}, Landroid/view/MotionEvent;->recycle()V

    goto :goto_44

    .line 607
    .end local v3    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_3f
    :goto_3f
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    or-int/2addr v0, v3

    .line 614
    :cond_44
    :goto_44
    if-eq v2, v4, :cond_48

    if-ne v2, v5, :cond_4e

    .line 617
    :cond_48
    const/4 v3, 0x0

    iput-object v3, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 618
    invoke-direct {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 621
    :cond_4e
    return v0
.end method

.method recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;

    .line 987
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 988
    .local v0, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0, p2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->setLastChildRect(Landroid/graphics/Rect;)V

    .line 989
    return-void
.end method

.method removePreDrawListener()V
    .registers 3

    .line 1665
    iget-boolean v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v0, :cond_11

    .line 1666
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    if-eqz v0, :cond_11

    .line 1667
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1668
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mOnPreDrawListener:Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1671
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_11
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 1672
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .line 3293
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 3294
    .local v0, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 3296
    .local v1, "behavior":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    if-eqz v1, :cond_14

    .line 3297
    invoke-virtual {v1, p0, p1, p2, p3}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onRequestChildRectangleOnScreen(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3298
    const/4 v2, 0x1

    return v2

    .line 3301
    :cond_14
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v2

    return v2
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 3
    .param p1, "disallowIntercept"    # Z

    .line 626
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 627
    if-eqz p1, :cond_16

    iget-boolean v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    if-nez v0, :cond_16

    .line 630
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    if-nez v0, :cond_10

    .line 631
    invoke-direct {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->cancelInterceptBehaviors()V

    .line 633
    :cond_10
    invoke-direct {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->resetTouchBehaviors()V

    .line 634
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    .line 636
    :cond_16
    return-void
.end method

.method public setFitsSystemWindows(Z)V
    .registers 2
    .param p1, "fitSystemWindows"    # Z

    .line 974
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 975
    invoke-direct {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->setupForInsets()V

    .line 976
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 2
    .param p1, "onHierarchyChangeListener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 256
    iput-object p1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 257
    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .line 299
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_43

    .line 300
    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 301
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 303
    :cond_a
    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_10
    iput-object v1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 304
    if-eqz v1, :cond_40

    .line 305
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 306
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 308
    :cond_23
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 309
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 308
    invoke-static {v0, v1}, Ltds/androidx/core/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 310
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_37

    const/4 v1, 0x1

    goto :goto_38

    :cond_37
    move v1, v2

    :goto_38
    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 311
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 313
    :cond_40
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 315
    :cond_43
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 377
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 378
    return-void
.end method

.method public setStatusBarBackgroundResource(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 366
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ltds/androidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 367
    return-void
.end method

.method public setVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I

    .line 351
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 353
    const/4 v0, 0x0

    if-nez p1, :cond_8

    const/4 v1, 0x1

    goto :goto_9

    :cond_8
    move v1, v0

    .line 354
    .local v1, "visible":Z
    :goto_9
    iget-object v2, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_18

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eq v2, v1, :cond_18

    .line 355
    iget-object v2, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 357
    :cond_18
    return-void
.end method

.method final setWindowInsets(Ltds/androidx/core/view/WindowInsetsCompat;)Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 5
    .param p1, "insets"    # Ltds/androidx/core/view/WindowInsetsCompat;

    .line 381
    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Ltds/androidx/core/view/WindowInsetsCompat;

    invoke-static {v0, p1}, Ltds/androidx/core/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 382
    iput-object p1, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mLastInsets:Ltds/androidx/core/view/WindowInsetsCompat;

    .line 383
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ltds/androidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v2

    if-lez v2, :cond_16

    move v2, v0

    goto :goto_17

    :cond_16
    move v2, v1

    :goto_17
    iput-boolean v2, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    .line 384
    if-nez v2, :cond_22

    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_22

    goto :goto_23

    :cond_22
    move v0, v1

    :goto_23
    invoke-virtual {p0, v0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->setWillNotDraw(Z)V

    .line 387
    invoke-direct {p0, p1}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->dispatchApplyWindowInsetsToBehaviors(Ltds/androidx/core/view/WindowInsetsCompat;)Ltds/androidx/core/view/WindowInsetsCompat;

    move-result-object p1

    .line 388
    invoke-virtual {p0}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->requestLayout()V

    .line 390
    :cond_2d
    return-object p1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 346
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method
