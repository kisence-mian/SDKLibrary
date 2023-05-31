.class public Landroid/support/design/widget/CoordinatorLayout;
.super Landroid/view/ViewGroup;
.source "CoordinatorLayout.java"

# interfaces
.implements Landroid/support/v4/view/NestedScrollingParent2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/CoordinatorLayout$SavedState;,
        Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;,
        Landroid/support/design/widget/CoordinatorLayout$LayoutParams;,
        Landroid/support/design/widget/CoordinatorLayout$Behavior;,
        Landroid/support/design/widget/CoordinatorLayout$AttachedBehavior;,
        Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;,
        Landroid/support/design/widget/CoordinatorLayout$ViewElevationComparator;,
        Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;,
        Landroid/support/design/widget/CoordinatorLayout$DispatchChangeEvent;
    }
.end annotation


# static fields
.field static final CONSTRUCTOR_PARAMS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
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
            "Ljava/util/Comparator",
            "<",
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
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<",
            "Landroid/support/design/widget/CoordinatorLayout$Behavior;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static final sRectPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mApplyWindowInsetsListener:Landroid/support/v4/view/OnApplyWindowInsetsListener;

.field private mBehaviorTouchView:Landroid/view/View;

.field private final mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/widget/DirectedAcyclicGraph",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mDependencySortedChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDisallowInterceptReset:Z

.field private mDrawStatusBarBackground:Z

.field private mIsAttachedToWindow:Z

.field private mKeylines:[I

.field private mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

.field private mNeedsPreDrawListener:Z

.field private final mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

.field private mNestedScrollingTarget:Landroid/view/View;

.field mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field private mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private final mTempDependenciesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempIntPair:[I

.field private final mTempList1:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 116
    const-class v1, Landroid/support/design/widget/CoordinatorLayout;

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    .line 117
    .local v0, "pkg":Ljava/lang/Package;
    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_d
    sput-object v1, Landroid/support/design/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    .line 124
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_3e

    .line 125
    new-instance v1, Landroid/support/design/widget/CoordinatorLayout$ViewElevationComparator;

    invoke-direct {v1}, Landroid/support/design/widget/CoordinatorLayout$ViewElevationComparator;-><init>()V

    sput-object v1, Landroid/support/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    .line 131
    :goto_1c
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/util/AttributeSet;

    aput-object v3, v1, v2

    sput-object v1, Landroid/support/design/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    .line 136
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v1, Landroid/support/design/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    .line 150
    new-instance v1, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v1, Landroid/support/design/widget/CoordinatorLayout;->sRectPool:Landroid/support/v4/util/Pools$Pool;

    return-void

    :cond_3c
    move-object v1, v2

    .line 117
    goto :goto_d

    .line 127
    :cond_3e
    sput-object v2, Landroid/support/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    goto :goto_1c
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 198
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 201
    sget v0, Landroid/support/coordinatorlayout/R$attr;->coordinatorLayoutStyle:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/CoordinatorLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I
        .annotation build Landroid/support/annotation/AttrRes;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    .line 206
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 166
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    .line 167
    new-instance v6, Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-direct {v6}, Landroid/support/v4/widget/DirectedAcyclicGraph;-><init>()V

    iput-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    .line 169
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    .line 170
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    .line 171
    const/4 v6, 0x2

    new-array v6, v6, [I

    iput-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    .line 193
    new-instance v6, Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-direct {v6, p0}, Landroid/support/v4/view/NestedScrollingParentHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    .line 208
    if-nez p3, :cond_62

    sget-object v6, Landroid/support/coordinatorlayout/R$styleable;->CoordinatorLayout:[I

    sget v7, Landroid/support/coordinatorlayout/R$style;->Widget_Support_CoordinatorLayout:I

    .line 209
    invoke-virtual {p1, p2, v6, v8, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 213
    .local v0, "a":Landroid/content/res/TypedArray;
    :goto_36
    sget v6, Landroid/support/coordinatorlayout/R$styleable;->CoordinatorLayout_keylines:I

    invoke-virtual {v0, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    .line 214
    .local v4, "keylineArrayRes":I
    if-eqz v4, :cond_69

    .line 215
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 216
    .local v5, "res":Landroid/content/res/Resources;
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v6

    iput-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    .line 217
    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v2, v6, Landroid/util/DisplayMetrics;->density:F

    .line 218
    .local v2, "density":F
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    array-length v1, v6

    .line 219
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_52
    if-ge v3, v1, :cond_69

    .line 220
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    iget-object v7, p0, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    aget v7, v7, v3

    int-to-float v7, v7

    mul-float/2addr v7, v2

    float-to-int v7, v7

    aput v7, v6, v3

    .line 219
    add-int/lit8 v3, v3, 0x1

    goto :goto_52

    .line 209
    .end local v0    # "a":Landroid/content/res/TypedArray;
    .end local v1    # "count":I
    .end local v2    # "density":F
    .end local v3    # "i":I
    .end local v4    # "keylineArrayRes":I
    .end local v5    # "res":Landroid/content/res/Resources;
    :cond_62
    sget-object v6, Landroid/support/coordinatorlayout/R$styleable;->CoordinatorLayout:[I

    .line 211
    invoke-virtual {p1, p2, v6, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_36

    .line 223
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    .restart local v4    # "keylineArrayRes":I
    :cond_69
    sget v6, Landroid/support/coordinatorlayout/R$styleable;->CoordinatorLayout_statusBarBackground:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 224
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 226
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->setupForInsets()V

    .line 227
    new-instance v6, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;

    invoke-direct {v6, p0}, Landroid/support/design/widget/CoordinatorLayout$HierarchyChangeListener;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    invoke-super {p0, v6}, Landroid/view/ViewGroup;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 228
    return-void
.end method

.method private static acquireTempRect()Landroid/graphics/Rect;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 154
    sget-object v1, Landroid/support/design/widget/CoordinatorLayout;->sRectPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 155
    .local v0, "rect":Landroid/graphics/Rect;
    if-nez v0, :cond_f

    .line 156
    new-instance v0, Landroid/graphics/Rect;

    .end local v0    # "rect":Landroid/graphics/Rect;
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 158
    .restart local v0    # "rect":Landroid/graphics/Rect;
    :cond_f
    return-object v0
.end method

.method private static clamp(III)I
    .registers 3
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 1250
    if-ge p0, p1, :cond_3

    .line 1255
    .end local p1    # "min":I
    :goto_2
    return p1

    .line 1252
    .restart local p1    # "min":I
    :cond_3
    if-le p0, p2, :cond_7

    move p1, p2

    .line 1253
    goto :goto_2

    :cond_7
    move p1, p0

    .line 1255
    goto :goto_2
.end method

.method private constrainChildRect(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V
    .registers 13
    .param p1, "lp"    # Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .param p2, "out"    # Landroid/graphics/Rect;
    .param p3, "childWidth"    # I
    .param p4, "childHeight"    # I

    .prologue
    .line 1036
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    .line 1037
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v0

    .line 1040
    .local v0, "height":I
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v4

    iget v5, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iget v5, p2, Landroid/graphics/Rect;->left:I

    .line 1042
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v6

    sub-int v6, v3, v6

    sub-int/2addr v6, p3

    iget v7, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v6, v7

    .line 1041
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1040
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1043
    .local v1, "left":I
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v4

    iget v5, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iget v5, p2, Landroid/graphics/Rect;->top:I

    .line 1045
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v6

    sub-int v6, v0, v6

    sub-int/2addr v6, p4

    iget v7, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v6, v7

    .line 1044
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1043
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1047
    .local v2, "top":I
    add-int v4, v1, p3

    add-int v5, v2, p4

    invoke-virtual {p2, v1, v2, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1048
    return-void
.end method

.method private dispatchApplyWindowInsetsToBehaviors(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 9
    .param p1, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    .line 825
    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->isConsumed()Z

    move-result v6

    if-eqz v6, :cond_8

    move-object v3, p1

    .line 846
    .end local p1    # "insets":Landroid/support/v4/view/WindowInsetsCompat;
    .local v3, "insets":Landroid/support/v4/view/WindowInsetsCompat;
    :goto_7
    return-object v3

    .line 829
    .end local v3    # "insets":Landroid/support/v4/view/WindowInsetsCompat;
    .restart local p1    # "insets":Landroid/support/v4/view/WindowInsetsCompat;
    :cond_8
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v5

    .local v5, "z":I
    :goto_d
    if-ge v2, v5, :cond_2f

    .line 830
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 831
    .local v1, "child":Landroid/view/View;
    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 832
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 833
    .local v4, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 835
    .local v0, "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_31

    .line 837
    invoke-virtual {v0, p0, v1, p1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onApplyWindowInsets(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p1

    .line 838
    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->isConsumed()Z

    move-result v6

    if-eqz v6, :cond_31

    .end local v0    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_2f
    move-object v3, p1

    .line 846
    .end local p1    # "insets":Landroid/support/v4/view/WindowInsetsCompat;
    .restart local v3    # "insets":Landroid/support/v4/view/WindowInsetsCompat;
    goto :goto_7

    .line 829
    .end local v3    # "insets":Landroid/support/v4/view/WindowInsetsCompat;
    .restart local v1    # "child":Landroid/view/View;
    .restart local p1    # "insets":Landroid/support/v4/view/WindowInsetsCompat;
    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_d
.end method

.method private getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/support/design/widget/CoordinatorLayout$LayoutParams;II)V
    .registers 18
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I
    .param p3, "anchorRect"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;
    .param p5, "lp"    # Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .param p6, "childWidth"    # I
    .param p7, "childHeight"    # I

    .prologue
    .line 962
    iget v8, p5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 963
    invoke-static {v8}, Landroid/support/design/widget/CoordinatorLayout;->resolveAnchoredChildGravity(I)I

    move-result v8

    .line 962
    invoke-static {v8, p2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    .line 964
    .local v1, "absGravity":I
    iget v8, p5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->anchorGravity:I

    .line 965
    invoke-static {v8}, Landroid/support/design/widget/CoordinatorLayout;->resolveGravity(I)I

    move-result v8

    .line 964
    invoke-static {v8, p2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 968
    .local v0, "absAnchorGravity":I
    and-int/lit8 v4, v1, 0x7

    .line 969
    .local v4, "hgrav":I
    and-int/lit8 v7, v1, 0x70

    .line 970
    .local v7, "vgrav":I
    and-int/lit8 v2, v0, 0x7

    .line 971
    .local v2, "anchorHgrav":I
    and-int/lit8 v3, v0, 0x70

    .line 979
    .local v3, "anchorVgrav":I
    sparse-switch v2, :sswitch_data_5c

    .line 982
    iget v5, p3, Landroid/graphics/Rect;->left:I

    .line 992
    .local v5, "left":I
    :goto_21
    sparse-switch v3, :sswitch_data_66

    .line 995
    iget v6, p3, Landroid/graphics/Rect;->top:I

    .line 1006
    .local v6, "top":I
    :goto_26
    sparse-switch v4, :sswitch_data_70

    .line 1009
    sub-int v5, v5, p6

    .line 1019
    :goto_2b
    :sswitch_2b
    sparse-switch v7, :sswitch_data_7a

    .line 1022
    sub-int v6, v6, p7

    .line 1032
    :goto_30
    :sswitch_30
    add-int v8, v5, p6

    add-int v9, v6, p7

    invoke-virtual {p4, v5, v6, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 1033
    return-void

    .line 985
    .end local v5    # "left":I
    .end local v6    # "top":I
    :sswitch_38
    iget v5, p3, Landroid/graphics/Rect;->right:I

    .line 986
    .restart local v5    # "left":I
    goto :goto_21

    .line 988
    .end local v5    # "left":I
    :sswitch_3b
    iget v8, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v5, v8, v9

    .restart local v5    # "left":I
    goto :goto_21

    .line 998
    :sswitch_46
    iget v6, p3, Landroid/graphics/Rect;->bottom:I

    .line 999
    .restart local v6    # "top":I
    goto :goto_26

    .line 1001
    .end local v6    # "top":I
    :sswitch_49
    iget v8, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int v6, v8, v9

    .restart local v6    # "top":I
    goto :goto_26

    .line 1015
    :sswitch_54
    div-int/lit8 v8, p6, 0x2

    sub-int/2addr v5, v8

    goto :goto_2b

    .line 1028
    :sswitch_58
    div-int/lit8 v8, p7, 0x2

    sub-int/2addr v6, v8

    goto :goto_30

    .line 979
    :sswitch_data_5c
    .sparse-switch
        0x1 -> :sswitch_3b
        0x5 -> :sswitch_38
    .end sparse-switch

    .line 992
    :sswitch_data_66
    .sparse-switch
        0x10 -> :sswitch_49
        0x50 -> :sswitch_46
    .end sparse-switch

    .line 1006
    :sswitch_data_70
    .sparse-switch
        0x1 -> :sswitch_54
        0x5 -> :sswitch_2b
    .end sparse-switch

    .line 1019
    :sswitch_data_7a
    .sparse-switch
        0x10 -> :sswitch_58
        0x50 -> :sswitch_30
    .end sparse-switch
.end method

.method private getKeyline(I)I
    .registers 6
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 574
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    if-nez v1, :cond_28

    .line 575
    const-string v1, "CoordinatorLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No keylines defined for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - attempted index lookup "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :goto_27
    return v0

    .line 579
    :cond_28
    if-ltz p1, :cond_2f

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    array-length v1, v1

    if-lt p1, v1, :cond_52

    .line 580
    :cond_2f
    const-string v1, "CoordinatorLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Keyline index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 584
    :cond_52
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mKeylines:[I

    aget v0, v0, p1

    goto :goto_27
.end method

.method private getTopSortedChildren(Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, "out":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 418
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->isChildrenDrawingOrderEnabled()Z

    move-result v4

    .line 419
    .local v4, "useCustomOrder":Z
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 420
    .local v1, "childCount":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_d
    if-ltz v3, :cond_21

    .line 421
    if-eqz v4, :cond_1f

    invoke-virtual {p0, v1, v3}, Landroid/support/design/widget/CoordinatorLayout;->getChildDrawingOrder(II)I

    move-result v2

    .line 422
    .local v2, "childIndex":I
    :goto_15
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 423
    .local v0, "child":Landroid/view/View;
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    add-int/lit8 v3, v3, -0x1

    goto :goto_d

    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childIndex":I
    :cond_1f
    move v2, v3

    .line 421
    goto :goto_15

    .line 426
    :cond_21
    sget-object v5, Landroid/support/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    if-eqz v5, :cond_2a

    .line 427
    sget-object v5, Landroid/support/design/widget/CoordinatorLayout;->TOP_SORTED_CHILDREN_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 429
    :cond_2a
    return-void
.end method

.method private hasDependencies(Landroid/view/View;)Z
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 1572
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/DirectedAcyclicGraph;->hasOutgoingEdges(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private layoutChild(Landroid/view/View;I)V
    .registers 11
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I

    .prologue
    .line 1163
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1164
    .local v6, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1165
    .local v3, "parent":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v0

    iget v1, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v0, v1

    .line 1166
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v1

    iget v2, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    .line 1167
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    iget v5, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v5

    .line 1168
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v7

    sub-int/2addr v5, v7

    iget v7, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v5, v7

    .line 1165
    invoke-virtual {v3, v0, v1, v2, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 1170
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v0, :cond_6f

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 1171
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_6f

    .line 1174
    iget v0, v3, Landroid/graphics/Rect;->left:I

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 1175
    iget v0, v3, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 1176
    iget v0, v3, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->right:I

    .line 1177
    iget v0, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 1180
    :cond_6f
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 1181
    .local v4, "out":Landroid/graphics/Rect;
    iget v0, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->resolveGravity(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    .line 1182
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move v5, p2

    .line 1181
    invoke-static/range {v0 .. v5}, Landroid/support/v4/view/GravityCompat;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 1183
    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v1, v4, Landroid/graphics/Rect;->top:I

    iget v2, v4, Landroid/graphics/Rect;->right:I

    iget v5, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v0, v1, v2, v5}, Landroid/view/View;->layout(IIII)V

    .line 1185
    invoke-static {v3}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1186
    invoke-static {v4}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1187
    return-void
.end method

.method private layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V
    .registers 10
    .param p1, "child"    # Landroid/view/View;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "layoutDirection"    # I

    .prologue
    .line 1076
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1077
    .local v0, "anchorRect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1079
    .local v1, "childRect":Landroid/graphics/Rect;
    :try_start_8
    invoke-virtual {p0, p2, v0}, Landroid/support/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1080
    invoke-virtual {p0, p1, p3, v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 1081
    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, v1, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/view/View;->layout(IIII)V
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_20

    .line 1083
    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1084
    invoke-static {v1}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1086
    return-void

    .line 1083
    :catchall_20
    move-exception v2

    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1084
    invoke-static {v1}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    throw v2
.end method

.method private layoutChildWithKeyline(Landroid/view/View;II)V
    .registers 18
    .param p1, "child"    # Landroid/view/View;
    .param p2, "keyline"    # I
    .param p3, "layoutDirection"    # I

    .prologue
    .line 1100
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1101
    .local v7, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget v11, v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 1102
    invoke-static {v11}, Landroid/support/design/widget/CoordinatorLayout;->resolveKeylineGravity(I)I

    move-result v11

    .line 1101
    move/from16 v0, p3

    invoke-static {v11, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    .line 1104
    .local v1, "absGravity":I
    and-int/lit8 v5, v1, 0x7

    .line 1105
    .local v5, "hgrav":I
    and-int/lit8 v9, v1, 0x70

    .line 1106
    .local v9, "vgrav":I
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v10

    .line 1107
    .local v10, "width":I
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v4

    .line 1108
    .local v4, "height":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 1109
    .local v3, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    .line 1111
    .local v2, "childHeight":I
    const/4 v11, 0x1

    move/from16 v0, p3

    if-ne v0, v11, :cond_2d

    .line 1112
    sub-int p2, v10, p2

    .line 1115
    :cond_2d
    move/from16 v0, p2

    invoke-direct {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->getKeyline(I)I

    move-result v11

    sub-int v6, v11, v3

    .line 1116
    .local v6, "left":I
    const/4 v8, 0x0

    .line 1118
    .local v8, "top":I
    sparse-switch v5, :sswitch_data_82

    .line 1131
    :goto_39
    sparse-switch v9, :sswitch_data_8c

    .line 1145
    :goto_3c
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v11

    iget v12, v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v11, v12

    .line 1147
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v12

    sub-int v12, v10, v12

    sub-int/2addr v12, v3

    iget v13, v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v12, v13

    .line 1146
    invoke-static {v6, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1145
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 1148
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v11

    iget v12, v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v11, v12

    .line 1150
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v12

    sub-int v12, v4, v12

    sub-int/2addr v12, v2

    iget v13, v7, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v12, v13

    .line 1149
    invoke-static {v8, v12}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 1148
    invoke-static {v11, v12}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1152
    add-int v11, v6, v3

    add-int v12, v8, v2

    invoke-virtual {p1, v6, v8, v11, v12}, Landroid/view/View;->layout(IIII)V

    .line 1153
    return-void

    .line 1124
    :sswitch_76
    add-int/2addr v6, v3

    .line 1125
    goto :goto_39

    .line 1127
    :sswitch_78
    div-int/lit8 v11, v3, 0x2

    add-int/2addr v6, v11

    goto :goto_39

    .line 1137
    :sswitch_7c
    add-int/2addr v8, v2

    .line 1138
    goto :goto_3c

    .line 1140
    :sswitch_7e
    div-int/lit8 v11, v2, 0x2

    add-int/2addr v8, v11

    goto :goto_3c

    .line 1118
    :sswitch_data_82
    .sparse-switch
        0x1 -> :sswitch_78
        0x5 -> :sswitch_76
    .end sparse-switch

    .line 1131
    :sswitch_data_8c
    .sparse-switch
        0x10 -> :sswitch_7e
        0x50 -> :sswitch_7c
    .end sparse-switch
.end method

.method private offsetChildByInset(Landroid/view/View;Landroid/graphics/Rect;I)V
    .registers 16
    .param p1, "child"    # Landroid/view/View;
    .param p2, "inset"    # Landroid/graphics/Rect;
    .param p3, "layoutDirection"    # I

    .prologue
    .line 1380
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1458
    :cond_6
    :goto_6
    return-void

    .line 1385
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v8

    if-lez v8, :cond_6

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v8

    if-lez v8, :cond_6

    .line 1390
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1391
    .local v5, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 1392
    .local v1, "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 1393
    .local v4, "dodgeRect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v2

    .line 1394
    .local v2, "bounds":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v10

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-virtual {v2, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 1396
    if-eqz v1, :cond_71

    invoke-virtual {v1, p0, p1, v4}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->getInsetDodgeRect(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_71

    .line 1398
    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v8

    if-nez v8, :cond_74

    .line 1399
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Rect should be within the child\'s bounds. Rect:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1400
    invoke-virtual {v4}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " | Bounds:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1401
    invoke-virtual {v2}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1404
    :cond_71
    invoke-virtual {v4, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1408
    :cond_74
    invoke-static {v2}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1410
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_81

    .line 1412
    invoke-static {v4}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    goto :goto_6

    .line 1416
    :cond_81
    iget v8, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    invoke-static {v8, p3}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 1419
    .local v0, "absDodgeInsetEdges":I
    const/4 v7, 0x0

    .line 1420
    .local v7, "offsetY":Z
    and-int/lit8 v8, v0, 0x30

    const/16 v9, 0x30

    if-ne v8, v9, :cond_a2

    .line 1421
    iget v8, v4, Landroid/graphics/Rect;->top:I

    iget v9, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    sub-int/2addr v8, v9

    iget v9, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    sub-int v3, v8, v9

    .line 1422
    .local v3, "distance":I
    iget v8, p2, Landroid/graphics/Rect;->top:I

    if-ge v3, v8, :cond_a2

    .line 1423
    iget v8, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v3

    invoke-direct {p0, p1, v8}, Landroid/support/design/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    .line 1424
    const/4 v7, 0x1

    .line 1427
    .end local v3    # "distance":I
    :cond_a2
    and-int/lit8 v8, v0, 0x50

    const/16 v9, 0x50

    if-ne v8, v9, :cond_c2

    .line 1428
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v8

    iget v9, v4, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v8, v9

    iget v9, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v8, v9

    iget v9, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    add-int v3, v8, v9

    .line 1429
    .restart local v3    # "distance":I
    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v8, :cond_c2

    .line 1430
    iget v8, p2, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v3, v8

    invoke-direct {p0, p1, v8}, Landroid/support/design/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    .line 1431
    const/4 v7, 0x1

    .line 1434
    .end local v3    # "distance":I
    :cond_c2
    if-nez v7, :cond_c8

    .line 1435
    const/4 v8, 0x0

    invoke-direct {p0, p1, v8}, Landroid/support/design/widget/CoordinatorLayout;->setInsetOffsetY(Landroid/view/View;I)V

    .line 1438
    :cond_c8
    const/4 v6, 0x0

    .line 1439
    .local v6, "offsetX":Z
    and-int/lit8 v8, v0, 0x3

    const/4 v9, 0x3

    if-ne v8, v9, :cond_e2

    .line 1440
    iget v8, v4, Landroid/graphics/Rect;->left:I

    iget v9, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v8, v9

    iget v9, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    sub-int v3, v8, v9

    .line 1441
    .restart local v3    # "distance":I
    iget v8, p2, Landroid/graphics/Rect;->left:I

    if-ge v3, v8, :cond_e2

    .line 1442
    iget v8, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v8, v3

    invoke-direct {p0, p1, v8}, Landroid/support/design/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    .line 1443
    const/4 v6, 0x1

    .line 1446
    .end local v3    # "distance":I
    :cond_e2
    and-int/lit8 v8, v0, 0x5

    const/4 v9, 0x5

    if-ne v8, v9, :cond_101

    .line 1447
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v8

    iget v9, v4, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v9

    iget v9, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v8, v9

    iget v9, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    add-int v3, v8, v9

    .line 1448
    .restart local v3    # "distance":I
    iget v8, p2, Landroid/graphics/Rect;->right:I

    if-ge v3, v8, :cond_101

    .line 1449
    iget v8, p2, Landroid/graphics/Rect;->right:I

    sub-int v8, v3, v8

    invoke-direct {p0, p1, v8}, Landroid/support/design/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    .line 1450
    const/4 v6, 0x1

    .line 1453
    .end local v3    # "distance":I
    :cond_101
    if-nez v6, :cond_107

    .line 1454
    const/4 v8, 0x0

    invoke-direct {p0, p1, v8}, Landroid/support/design/widget/CoordinatorLayout;->setInsetOffsetX(Landroid/view/View;I)V

    .line 1457
    :cond_107
    invoke-static {v4}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    goto/16 :goto_6
.end method

.method static parseBehavior(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/String;)Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x2e

    .line 588
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 589
    const/4 v5, 0x0

    .line 620
    :goto_9
    return-object v5

    .line 593
    :cond_a
    const-string v5, "."

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_68

    .line 595
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 607
    .local v4, "fullName":Ljava/lang/String;
    :goto_27
    :try_start_27
    sget-object v5, Landroid/support/design/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 608
    .local v2, "constructors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Constructor<Landroid/support/design/widget/CoordinatorLayout$Behavior;>;>;"
    if-nez v2, :cond_3b

    .line 609
    new-instance v2, Ljava/util/HashMap;

    .end local v2    # "constructors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Constructor<Landroid/support/design/widget/CoordinatorLayout$Behavior;>;>;"
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 610
    .restart local v2    # "constructors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Constructor<Landroid/support/design/widget/CoordinatorLayout$Behavior;>;>;"
    sget-object v5, Landroid/support/design/widget/CoordinatorLayout;->sConstructors:Ljava/lang/ThreadLocal;

    invoke-virtual {v5, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 612
    :cond_3b
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 613
    .local v0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Landroid/support/design/widget/CoordinatorLayout$Behavior;>;"
    if-nez v0, :cond_58

    .line 614
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 615
    invoke-virtual {v5, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 616
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/support/design/widget/CoordinatorLayout$Behavior;>;"
    sget-object v5, Landroid/support/design/widget/CoordinatorLayout;->CONSTRUCTOR_PARAMS:[Ljava/lang/Class;

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 617
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 618
    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<Landroid/support/design/widget/CoordinatorLayout$Behavior;>;"
    :cond_58
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_67} :catch_92

    goto :goto_9

    .line 596
    .end local v0    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Landroid/support/design/widget/CoordinatorLayout$Behavior;>;"
    .end local v2    # "constructors":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Constructor<Landroid/support/design/widget/CoordinatorLayout$Behavior;>;>;"
    .end local v4    # "fullName":Ljava/lang/String;
    :cond_68
    invoke-virtual {p2, v7}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_70

    .line 598
    move-object v4, p2

    .restart local v4    # "fullName":Ljava/lang/String;
    goto :goto_27

    .line 601
    .end local v4    # "fullName":Ljava/lang/String;
    :cond_70
    sget-object v5, Landroid/support/design/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_90

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Landroid/support/design/widget/CoordinatorLayout;->WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .restart local v4    # "fullName":Ljava/lang/String;
    :goto_8f
    goto :goto_27

    .end local v4    # "fullName":Ljava/lang/String;
    :cond_90
    move-object v4, p2

    goto :goto_8f

    .line 621
    .restart local v4    # "fullName":Ljava/lang/String;
    :catch_92
    move-exception v3

    .line 622
    .local v3, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not inflate Behavior subclass "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method private performIntercept(Landroid/view/MotionEvent;I)Z
    .registers 25
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "type"    # I

    .prologue
    .line 432
    const/16 v16, 0x0

    .line 433
    .local v16, "intercepted":Z
    const/16 v19, 0x0

    .line 435
    .local v19, "newBlock":Z
    const/4 v12, 0x0

    .line 437
    .local v12, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v10

    .line 439
    .local v10, "action":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/design/widget/CoordinatorLayout;->mTempList1:Ljava/util/List;

    move-object/from16 v20, v0

    .line 440
    .local v20, "topmostChildList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->getTopSortedChildren(Ljava/util/List;)V

    .line 443
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v14

    .line 444
    .local v14, "childCount":I
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1b
    if-ge v15, v14, :cond_7b

    .line 445
    move-object/from16 v0, v20

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    .line 446
    .local v13, "child":Landroid/view/View;
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    check-cast v18, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 447
    .local v18, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual/range {v18 .. v18}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v11

    .line 449
    .local v11, "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-nez v16, :cond_33

    if-eqz v19, :cond_58

    :cond_33
    if-eqz v10, :cond_58

    .line 452
    if-eqz v11, :cond_49

    .line 453
    if-nez v12, :cond_46

    .line 454
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 455
    .local v2, "now":J
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v4, v2

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v12

    .line 458
    .end local v2    # "now":J
    :cond_46
    packed-switch p2, :pswitch_data_94

    .line 444
    :cond_49
    :goto_49
    add-int/lit8 v15, v15, 0x1

    goto :goto_1b

    .line 460
    :pswitch_4c
    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v13, v12}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_49

    .line 463
    :pswitch_52
    move-object/from16 v0, p0

    invoke-virtual {v11, v0, v13, v12}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_49

    .line 470
    :cond_58
    if-nez v16, :cond_65

    if-eqz v11, :cond_65

    .line 471
    packed-switch p2, :pswitch_data_9c

    .line 479
    :goto_5f
    if-eqz v16, :cond_65

    .line 480
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 486
    :cond_65
    invoke-virtual/range {v18 .. v18}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->didBlockInteraction()Z

    move-result v21

    .line 487
    .local v21, "wasBlocking":Z
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1, v13}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isBlockingInteractionBelow(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Z

    move-result v17

    .line 488
    .local v17, "isBlocking":Z
    if-eqz v17, :cond_91

    if-nez v21, :cond_91

    const/16 v19, 0x1

    .line 489
    :goto_77
    if-eqz v17, :cond_49

    if-nez v19, :cond_49

    .line 496
    .end local v11    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v13    # "child":Landroid/view/View;
    .end local v17    # "isBlocking":Z
    .end local v18    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v21    # "wasBlocking":Z
    :cond_7b
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->clear()V

    .line 498
    return v16

    .line 473
    .restart local v11    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .restart local v13    # "child":Landroid/view/View;
    .restart local v18    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :pswitch_7f
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v13, v1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v16

    .line 474
    goto :goto_5f

    .line 476
    :pswitch_88
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v11, v0, v13, v1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v16

    goto :goto_5f

    .line 488
    .restart local v17    # "isBlocking":Z
    .restart local v21    # "wasBlocking":Z
    :cond_91
    const/16 v19, 0x0

    goto :goto_77

    .line 458
    :pswitch_data_94
    .packed-switch 0x0
        :pswitch_4c
        :pswitch_52
    .end packed-switch

    .line 471
    :pswitch_data_9c
    .packed-switch 0x0
        :pswitch_7f
        :pswitch_88
    .end packed-switch
.end method

.method private prepareChildren()V
    .registers 9

    .prologue
    .line 662
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 663
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-virtual {v6}, Landroid/support/v4/widget/DirectedAcyclicGraph;->clear()V

    .line 665
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    .local v0, "count":I
    :goto_f
    if-ge v1, v0, :cond_49

    .line 666
    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 668
    .local v5, "view":Landroid/view/View;
    invoke-virtual {p0, v5}, Landroid/support/design/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v3

    .line 669
    .local v3, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v3, p0, v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->findAnchorView(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/view/View;

    .line 671
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-virtual {v6, v5}, Landroid/support/v4/widget/DirectedAcyclicGraph;->addNode(Ljava/lang/Object;)V

    .line 674
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_22
    if-ge v2, v0, :cond_46

    .line 675
    if-ne v2, v1, :cond_29

    .line 674
    :cond_26
    :goto_26
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .line 678
    :cond_29
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 679
    .local v4, "other":Landroid/view/View;
    invoke-virtual {v3, p0, v5, v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_26

    .line 680
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-virtual {v6, v4}, Landroid/support/v4/widget/DirectedAcyclicGraph;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_40

    .line 682
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-virtual {v6, v4}, Landroid/support/v4/widget/DirectedAcyclicGraph;->addNode(Ljava/lang/Object;)V

    .line 685
    :cond_40
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-virtual {v6, v4, v5}, Landroid/support/v4/widget/DirectedAcyclicGraph;->addEdge(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_26

    .line 665
    .end local v4    # "other":Landroid/view/View;
    :cond_46
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 691
    .end local v2    # "j":I
    .end local v3    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v5    # "view":Landroid/view/View;
    :cond_49
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    iget-object v7, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-virtual {v7}, Landroid/support/v4/widget/DirectedAcyclicGraph;->getSortedList()Ljava/util/ArrayList;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 694
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 695
    return-void
.end method

.method private static releaseTempRect(Landroid/graphics/Rect;)V
    .registers 2
    .param p0, "rect"    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 162
    invoke-virtual {p0}, Landroid/graphics/Rect;->setEmpty()V

    .line 163
    sget-object v0, Landroid/support/design/widget/CoordinatorLayout;->sRectPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v0, p0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method private resetTouchBehaviors(Z)V
    .registers 16
    .param p1, "notifyOnInterceptTouchEvent"    # Z

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 384
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v11

    .line 385
    .local v11, "childCount":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_7
    if-ge v12, v11, :cond_33

    .line 386
    invoke-virtual {p0, v12}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 387
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 388
    .local v13, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v13}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v8

    .line 389
    .local v8, "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v8, :cond_2c

    .line 390
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 391
    .local v0, "now":J
    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v9

    .line 393
    .local v9, "cancelEvent":Landroid/view/MotionEvent;
    if-eqz p1, :cond_2f

    .line 394
    invoke-virtual {v8, p0, v10, v9}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onInterceptTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 398
    :goto_29
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 385
    .end local v0    # "now":J
    .end local v9    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_2c
    add-int/lit8 v12, v12, 0x1

    goto :goto_7

    .line 396
    .restart local v0    # "now":J
    .restart local v9    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_2f
    invoke-virtual {v8, p0, v10, v9}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    goto :goto_29

    .line 402
    .end local v0    # "now":J
    .end local v8    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v9    # "cancelEvent":Landroid/view/MotionEvent;
    .end local v10    # "child":Landroid/view/View;
    .end local v13    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_33
    const/4 v12, 0x0

    :goto_34
    if-ge v12, v11, :cond_46

    .line 403
    invoke-virtual {p0, v12}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 404
    .restart local v10    # "child":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 405
    .restart local v13    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v13}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->resetTouchBehaviorTracking()V

    .line 402
    add-int/lit8 v12, v12, 0x1

    goto :goto_34

    .line 407
    .end local v10    # "child":Landroid/view/View;
    .end local v13    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_46
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    .line 408
    iput-boolean v7, p0, Landroid/support/design/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    .line 409
    return-void
.end method

.method private static resolveAnchoredChildGravity(I)I
    .registers 1
    .param p0, "gravity"    # I

    .prologue
    .line 1217
    if-nez p0, :cond_4

    const/16 p0, 0x11

    .end local p0    # "gravity":I
    :cond_4
    return p0
.end method

.method private static resolveGravity(I)I
    .registers 2
    .param p0, "gravity"    # I

    .prologue
    .line 1195
    and-int/lit8 v0, p0, 0x7

    if-nez v0, :cond_8

    .line 1196
    const v0, 0x800003

    or-int/2addr p0, v0

    .line 1198
    :cond_8
    and-int/lit8 v0, p0, 0x70

    if-nez v0, :cond_e

    .line 1199
    or-int/lit8 p0, p0, 0x30

    .line 1201
    :cond_e
    return p0
.end method

.method private static resolveKeylineGravity(I)I
    .registers 1
    .param p0, "gravity"    # I

    .prologue
    .line 1209
    if-nez p0, :cond_5

    const p0, 0x800035

    .end local p0    # "gravity":I
    :cond_5
    return p0
.end method

.method private setInsetOffsetX(Landroid/view/View;I)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "offsetX"    # I

    .prologue
    .line 1461
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1462
    .local v1, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget v2, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    if-eq v2, p2, :cond_13

    .line 1463
    iget v2, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    sub-int v0, p2, v2

    .line 1464
    .local v0, "dx":I
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1465
    iput p2, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetX:I

    .line 1467
    .end local v0    # "dx":I
    :cond_13
    return-void
.end method

.method private setInsetOffsetY(Landroid/view/View;I)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "offsetY"    # I

    .prologue
    .line 1470
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1471
    .local v1, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget v2, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    if-eq v2, p2, :cond_13

    .line 1472
    iget v2, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    sub-int v0, p2, v2

    .line 1473
    .local v0, "dy":I
    invoke-static {p1, v0}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1474
    iput p2, v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mInsetOffsetY:I

    .line 1476
    .end local v0    # "dy":I
    :cond_13
    return-void
.end method

.method private setupForInsets()V
    .registers 3

    .prologue
    .line 3209
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_7

    .line 3233
    :goto_6
    return-void

    .line 3213
    :cond_7
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 3214
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Landroid/support/v4/view/OnApplyWindowInsetsListener;

    if-nez v0, :cond_18

    .line 3215
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$1;

    invoke-direct {v0, p0}, Landroid/support/design/widget/CoordinatorLayout$1;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Landroid/support/v4/view/OnApplyWindowInsetsListener;

    .line 3225
    :cond_18
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mApplyWindowInsetsListener:Landroid/support/v4/view/OnApplyWindowInsetsListener;

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 3228
    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->setSystemUiVisibility(I)V

    goto :goto_6

    .line 3231
    :cond_23
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    goto :goto_6
.end method


# virtual methods
.method addPreDrawListener()V
    .registers 3

    .prologue
    .line 1580
    iget-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v1, :cond_18

    .line 1582
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-nez v1, :cond_f

    .line 1583
    new-instance v1, Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-direct {v1, p0}, Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    .line 1585
    :cond_f
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1586
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1591
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_18
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 1592
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1724
    instance-of v0, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_c

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public dispatchDependentViewsChanged(Landroid/view/View;)V
    .registers 8
    .param p1, "view"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1489
    iget-object v5, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-virtual {v5, p1}, Landroid/support/v4/widget/DirectedAcyclicGraph;->getIncomingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 1490
    .local v2, "dependents":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v2, :cond_2d

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2d

    .line 1491
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_f
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_2d

    .line 1492
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1494
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1495
    .local v4, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1496
    .local v0, "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_2a

    .line 1497
    invoke-virtual {v0, p0, v1, p1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 1491
    :cond_2a
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 1501
    .end local v0    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "i":I
    .end local v4    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_2d
    return-void
.end method

.method public doViewsOverlap(Landroid/view/View;Landroid/view/View;)Z
    .registers 9
    .param p1, "first"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "second"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1686
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_57

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_57

    .line 1687
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1688
    .local v0, "firstRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, p0, :cond_49

    move v2, v3

    :goto_19
    invoke-virtual {p0, p1, v2, v0}, Landroid/support/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1689
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v1

    .line 1690
    .local v1, "secondRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eq v2, p0, :cond_4b

    move v2, v3

    :goto_27
    invoke-virtual {p0, p2, v2, v1}, Landroid/support/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1692
    :try_start_2a
    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget v5, v1, Landroid/graphics/Rect;->right:I

    if-gt v2, v5, :cond_4d

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v5, :cond_4d

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v5, v1, Landroid/graphics/Rect;->left:I

    if-lt v2, v5, :cond_4d

    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v5, v1, Landroid/graphics/Rect;->top:I
    :try_end_40
    .catchall {:try_start_2a .. :try_end_40} :catchall_4f

    if-lt v2, v5, :cond_4d

    .line 1695
    :goto_42
    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1696
    invoke-static {v1}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1699
    .end local v0    # "firstRect":Landroid/graphics/Rect;
    .end local v1    # "secondRect":Landroid/graphics/Rect;
    :goto_48
    return v3

    .restart local v0    # "firstRect":Landroid/graphics/Rect;
    :cond_49
    move v2, v4

    .line 1688
    goto :goto_19

    .restart local v1    # "secondRect":Landroid/graphics/Rect;
    :cond_4b
    move v2, v4

    .line 1690
    goto :goto_27

    :cond_4d
    move v3, v4

    .line 1692
    goto :goto_42

    .line 1695
    :catchall_4f
    move-exception v2

    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1696
    invoke-static {v1}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    throw v2

    .end local v0    # "firstRect":Landroid/graphics/Rect;
    .end local v1    # "secondRect":Landroid/graphics/Rect;
    :cond_57
    move v3, v4

    .line 1699
    goto :goto_48
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 1222
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1223
    .local v6, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v0, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    if-eqz v0, :cond_89

    .line 1224
    iget-object v0, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v0, p0, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->getScrimOpacity(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)F

    move-result v8

    .line 1225
    .local v8, "scrimAlpha":F
    const/4 v0, 0x0

    cmpl-float v0, v8, v0

    if-lez v0, :cond_89

    .line 1226
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_20

    .line 1227
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 1229
    :cond_20
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    iget-object v1, v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehavior:Landroid/support/design/widget/CoordinatorLayout$Behavior;

    invoke-virtual {v1, p0, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->getScrimColor(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1230
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, v8

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0xff

    invoke-static {v1, v2, v3}, Landroid/support/design/widget/CoordinatorLayout;->clamp(III)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1232
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v7

    .line 1233
    .local v7, "saved":I
    invoke-virtual {p2}, Landroid/view/View;->isOpaque()Z

    move-result v0

    if-eqz v0, :cond_62

    .line 1236
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v2, v0

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v3, v0

    .line 1237
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    int-to-float v4, v0

    sget-object v5, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v0, p1

    .line 1236
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 1240
    :cond_62
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v0

    int-to-float v1, v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v0

    int-to-float v2, v0

    .line 1241
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    int-to-float v3, v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Landroid/support/design/widget/CoordinatorLayout;->mScrimPaint:Landroid/graphics/Paint;

    move-object v0, p1

    .line 1240
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1243
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1246
    .end local v7    # "saved":I
    .end local v8    # "scrimAlpha":F
    :cond_89
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected drawableStateChanged()V
    .registers 5

    .prologue
    .line 305
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 307
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getDrawableState()[I

    move-result-object v2

    .line 308
    .local v2, "state":[I
    const/4 v0, 0x0

    .line 310
    .local v0, "changed":Z
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 311
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_17

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 312
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    or-int/2addr v0, v3

    .line 315
    :cond_17
    if-eqz v0, :cond_1c

    .line 316
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->invalidate()V

    .line 318
    :cond_1c
    return-void
.end method

.method ensurePreDrawListener()V
    .registers 6

    .prologue
    .line 1549
    const/4 v2, 0x0

    .line 1550
    .local v2, "hasDependencies":Z
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v1

    .line 1551
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_6
    if-ge v3, v1, :cond_13

    .line 1552
    invoke-virtual {p0, v3}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1553
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->hasDependencies(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1554
    const/4 v2, 0x1

    .line 1559
    .end local v0    # "child":Landroid/view/View;
    :cond_13
    iget-boolean v4, p0, Landroid/support/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eq v2, v4, :cond_1c

    .line 1560
    if-eqz v2, :cond_20

    .line 1561
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->addPreDrawListener()V

    .line 1566
    :cond_1c
    :goto_1c
    return-void

    .line 1551
    .restart local v0    # "child":Landroid/view/View;
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 1563
    .end local v0    # "child":Landroid/view/View;
    :cond_20
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->removePreDrawListener()V

    goto :goto_1c
.end method

.method protected generateDefaultLayoutParams()Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 1719
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .prologue
    .line 111
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->generateDefaultLayoutParams()Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1704
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1709
    instance-of v0, p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    if-eqz v0, :cond_c

    .line 1710
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    check-cast p1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;)V

    .line 1714
    :goto_b
    return-object v0

    .line 1711
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_c
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_18

    .line 1712
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    invoke-direct {v0, p1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_b

    .line 1714
    .restart local p1    # "p":Landroid/view/ViewGroup$LayoutParams;
    :cond_18
    new-instance v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_b
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    .line 111
    invoke-virtual {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "transform"    # Z
    .param p3, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 949
    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_12

    .line 950
    :cond_e
    invoke-virtual {p3}, Landroid/graphics/Rect;->setEmpty()V

    .line 958
    :goto_11
    return-void

    .line 953
    :cond_12
    if-eqz p2, :cond_18

    .line 954
    invoke-virtual {p0, p1, p3}, Landroid/support/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    goto :goto_11

    .line 956
    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v3

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_11
.end method

.method public getDependencies(Landroid/view/View;)Ljava/util/List;
    .registers 4
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1513
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/DirectedAcyclicGraph;->getOutgoingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1514
    .local v0, "dependencies":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1515
    if-eqz v0, :cond_12

    .line 1516
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1518
    :cond_12
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    return-object v1
.end method

.method final getDependencySortedChildren()Ljava/util/List;
    .registers 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1541
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->prepareChildren()V

    .line 1542
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDependents(Landroid/view/View;)Ljava/util/List;
    .registers 4
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1531
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mChildDag:Landroid/support/v4/widget/DirectedAcyclicGraph;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/DirectedAcyclicGraph;->getIncomingEdges(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1532
    .local v0, "edges":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1533
    if-eqz v0, :cond_12

    .line 1534
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1536
    :cond_12
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempDependenciesList:Ljava/util/List;

    return-object v1
.end method

.method getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "descendant"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 705
    invoke-static {p0, p1, p2}, Landroid/support/v4/widget/ViewGroupUtils;->getDescendantRect(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    .line 706
    return-void
.end method

.method getDesiredAnchoredChildRect(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I
    .param p3, "anchorRect"    # Landroid/graphics/Rect;
    .param p4, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 1060
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1061
    .local v5, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 1062
    .local v6, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .local v7, "childHeight":I
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1063
    invoke-direct/range {v0 .. v7}, Landroid/support/design/widget/CoordinatorLayout;->getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/support/design/widget/CoordinatorLayout$LayoutParams;II)V

    .line 1065
    invoke-direct {p0, v5, p4, v6, v7}, Landroid/support/design/widget/CoordinatorLayout;->constrainChildRect(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V

    .line 1066
    return-void
.end method

.method getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "out"    # Landroid/graphics/Rect;

    .prologue
    .line 935
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 936
    .local v0, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getLastChildRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 937
    return-void
.end method

.method public final getLastWindowInsets()Landroid/support/v4/view/WindowInsetsCompat;
    .registers 2
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    return-object v0
.end method

.method public getNestedScrollAxes()I
    .registers 2

    .prologue
    .line 1950
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v0}, Landroid/support/v4/view/NestedScrollingParentHelper;->getNestedScrollAxes()I

    move-result v0

    return v0
.end method

.method getResolvedLayoutParams(Landroid/view/View;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .registers 11
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x1

    .line 627
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 628
    .local v4, "result":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget-boolean v5, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    if-nez v5, :cond_23

    .line 629
    instance-of v5, p1, Landroid/support/design/widget/CoordinatorLayout$AttachedBehavior;

    if-eqz v5, :cond_24

    .line 630
    check-cast p1, Landroid/support/design/widget/CoordinatorLayout$AttachedBehavior;

    .end local p1    # "child":Landroid/view/View;
    invoke-interface {p1}, Landroid/support/design/widget/CoordinatorLayout$AttachedBehavior;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 631
    .local v0, "attachedBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-nez v0, :cond_1e

    .line 632
    const-string v5, "CoordinatorLayout"

    const-string v6, "Attached behavior class is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_1e
    invoke-virtual {v4, v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V

    .line 635
    iput-boolean v8, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    .line 658
    .end local v0    # "attachedBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :cond_23
    :goto_23
    return-object v4

    .line 638
    .restart local p1    # "child":Landroid/view/View;
    :cond_24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 639
    .local v1, "childClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 640
    .local v2, "defaultBehavior":Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;
    :goto_29
    if-eqz v1, :cond_3a

    const-class v5, Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;

    .line 641
    invoke-virtual {v1, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    .end local v2    # "defaultBehavior":Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;
    check-cast v2, Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;

    .restart local v2    # "defaultBehavior":Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;
    if-nez v2, :cond_3a

    .line 643
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_29

    .line 645
    :cond_3a
    if-eqz v2, :cond_53

    .line 648
    :try_start_3c
    invoke-interface {v2}, Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/CoordinatorLayout$Behavior;

    .line 647
    invoke-virtual {v4, v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setBehavior(Landroid/support/design/widget/CoordinatorLayout$Behavior;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_53} :catch_56

    .line 655
    :cond_53
    :goto_53
    iput-boolean v8, v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mBehaviorResolved:Z

    goto :goto_23

    .line 649
    :catch_56
    move-exception v3

    .line 650
    .local v3, "e":Ljava/lang/Exception;
    const-string v5, "CoordinatorLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Default behavior class "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v2}, Landroid/support/design/widget/CoordinatorLayout$DefaultBehavior;->value()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " could not be instantiated. Did you forget"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " a default constructor?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_53
.end method

.method public getStatusBarBackground()Landroid/graphics/drawable/Drawable;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected getSuggestedMinimumHeight()I
    .registers 4

    .prologue
    .line 715
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .registers 4

    .prologue
    .line 710
    invoke-super {p0}, Landroid/view/ViewGroup;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method public isPointInChildBounds(Landroid/view/View;II)Z
    .registers 6
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    .line 1668
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1669
    .local v0, "r":Landroid/graphics/Rect;
    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1671
    :try_start_7
    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z
    :try_end_a
    .catchall {:try_start_7 .. :try_end_a} :catchall_f

    move-result v1

    .line 1673
    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    return v1

    :catchall_f
    move-exception v1

    invoke-static {v0}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    throw v1
.end method

.method offsetChildToAnchor(Landroid/view/View;I)V
    .registers 16
    .param p1, "child"    # Landroid/view/View;
    .param p2, "layoutDirection"    # I

    .prologue
    const/4 v9, 0x0

    .line 1617
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1618
    .local v5, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    iget-object v0, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v0, :cond_69

    .line 1619
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v3

    .line 1620
    .local v3, "anchorRect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v10

    .line 1621
    .local v10, "childRect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 1623
    .local v4, "desiredChildRect":Landroid/graphics/Rect;
    iget-object v0, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {p0, v0, v3}, Landroid/support/design/widget/CoordinatorLayout;->getDescendantRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1624
    invoke-virtual {p0, p1, v9, v10}, Landroid/support/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1626
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    .line 1627
    .local v6, "childWidth":I
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .local v7, "childHeight":I
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 1628
    invoke-direct/range {v0 .. v7}, Landroid/support/design/widget/CoordinatorLayout;->getDesiredAnchoredChildRectWithoutConstraints(Landroid/view/View;ILandroid/graphics/Rect;Landroid/graphics/Rect;Landroid/support/design/widget/CoordinatorLayout$LayoutParams;II)V

    .line 1630
    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v1, v10, Landroid/graphics/Rect;->left:I

    if-ne v0, v1, :cond_39

    iget v0, v4, Landroid/graphics/Rect;->top:I

    iget v1, v10, Landroid/graphics/Rect;->top:I

    if-eq v0, v1, :cond_3a

    :cond_39
    const/4 v9, 0x1

    .line 1632
    .local v9, "changed":Z
    :cond_3a
    invoke-direct {p0, v5, v4, v6, v7}, Landroid/support/design/widget/CoordinatorLayout;->constrainChildRect(Landroid/support/design/widget/CoordinatorLayout$LayoutParams;Landroid/graphics/Rect;II)V

    .line 1634
    iget v0, v4, Landroid/graphics/Rect;->left:I

    iget v1, v10, Landroid/graphics/Rect;->left:I

    sub-int v11, v0, v1

    .line 1635
    .local v11, "dx":I
    iget v0, v4, Landroid/graphics/Rect;->top:I

    iget v1, v10, Landroid/graphics/Rect;->top:I

    sub-int v12, v0, v1

    .line 1637
    .local v12, "dy":I
    if-eqz v11, :cond_4e

    .line 1638
    invoke-static {p1, v11}, Landroid/support/v4/view/ViewCompat;->offsetLeftAndRight(Landroid/view/View;I)V

    .line 1640
    :cond_4e
    if-eqz v12, :cond_53

    .line 1641
    invoke-static {p1, v12}, Landroid/support/v4/view/ViewCompat;->offsetTopAndBottom(Landroid/view/View;I)V

    .line 1644
    :cond_53
    if-eqz v9, :cond_60

    .line 1646
    invoke-virtual {v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v8

    .line 1647
    .local v8, "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v8, :cond_60

    .line 1648
    iget-object v0, v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-virtual {v8, p0, p1, v0}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    .line 1652
    .end local v8    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :cond_60
    invoke-static {v3}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1653
    invoke-static {v10}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1654
    invoke-static {v4}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1656
    .end local v3    # "anchorRect":Landroid/graphics/Rect;
    .end local v4    # "desiredChildRect":Landroid/graphics/Rect;
    .end local v6    # "childWidth":I
    .end local v7    # "childHeight":I
    .end local v9    # "changed":Z
    .end local v10    # "childRect":Landroid/graphics/Rect;
    .end local v11    # "dx":I
    .end local v12    # "dy":I
    :cond_69
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 3

    .prologue
    .line 237
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 238
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 239
    iget-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eqz v1, :cond_1f

    .line 240
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-nez v1, :cond_16

    .line 241
    new-instance v1, Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-direct {v1, p0}, Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;-><init>(Landroid/support/design/widget/CoordinatorLayout;)V

    iput-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    .line 243
    :cond_16
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 244
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 246
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_1f
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-nez v1, :cond_2c

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 249
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 251
    :cond_2c
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 252
    return-void
.end method

.method final onChildViewsChanged(I)V
    .registers 20
    .param p1, "type"    # I

    .prologue
    .line 1275
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v13

    .line 1276
    .local v13, "layoutDirection":I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v6

    .line 1277
    .local v6, "childCount":I
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v10

    .line 1278
    .local v10, "inset":Landroid/graphics/Rect;
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v7

    .line 1279
    .local v7, "drawRect":Landroid/graphics/Rect;
    invoke-static {}, Landroid/support/design/widget/CoordinatorLayout;->acquireTempRect()Landroid/graphics/Rect;

    move-result-object v12

    .line 1281
    .local v12, "lastDrawRect":Landroid/graphics/Rect;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_19
    if-ge v9, v6, :cond_121

    .line 1282
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v15, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 1283
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1284
    .local v14, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    if-nez p1, :cond_3a

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v16, 0x8

    move/from16 v0, v16

    if-ne v15, v0, :cond_3a

    .line 1281
    :cond_37
    add-int/lit8 v9, v9, 0x1

    goto :goto_19

    .line 1290
    :cond_3a
    const/4 v11, 0x0

    .local v11, "j":I
    :goto_3b
    if-ge v11, v9, :cond_53

    .line 1291
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1293
    .local v3, "checkChild":Landroid/view/View;
    iget-object v15, v14, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorDirectChild:Landroid/view/View;

    if-ne v15, v3, :cond_50

    .line 1294
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v13}, Landroid/support/design/widget/CoordinatorLayout;->offsetChildToAnchor(Landroid/view/View;I)V

    .line 1290
    :cond_50
    add-int/lit8 v11, v11, 0x1

    goto :goto_3b

    .line 1299
    .end local v3    # "checkChild":Landroid/view/View;
    :cond_53
    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v15, v7}, Landroid/support/design/widget/CoordinatorLayout;->getChildRect(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 1302
    iget v15, v14, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    if-eqz v15, :cond_73

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_73

    .line 1303
    iget v15, v14, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->insetEdge:I

    invoke-static {v15, v13}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    .line 1305
    .local v1, "absInsetEdge":I
    and-int/lit8 v15, v1, 0x70

    sparse-switch v15, :sswitch_data_12c

    .line 1313
    :goto_6e
    and-int/lit8 v15, v1, 0x7

    packed-switch v15, :pswitch_data_136

    .line 1324
    .end local v1    # "absInsetEdge":I
    :cond_73
    :goto_73
    :pswitch_73
    iget v15, v14, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->dodgeInsetEdges:I

    if-eqz v15, :cond_82

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-nez v15, :cond_82

    .line 1325
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10, v13}, Landroid/support/design/widget/CoordinatorLayout;->offsetChildByInset(Landroid/view/View;Landroid/graphics/Rect;I)V

    .line 1328
    :cond_82
    const/4 v15, 0x2

    move/from16 v0, p1

    if-eq v0, v15, :cond_97

    .line 1330
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v12}, Landroid/support/design/widget/CoordinatorLayout;->getLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1331
    invoke-virtual {v12, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_37

    .line 1334
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Landroid/support/design/widget/CoordinatorLayout;->recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 1338
    :cond_97
    add-int/lit8 v11, v9, 0x1

    :goto_99
    if-ge v11, v6, :cond_37

    .line 1339
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v15, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 1340
    .restart local v3    # "checkChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1341
    .local v4, "checkLp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v2

    .line 1343
    .local v2, "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v2, :cond_c4

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v5}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->layoutDependsOn(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v15

    if-eqz v15, :cond_c4

    .line 1344
    if-nez p1, :cond_108

    invoke-virtual {v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getChangedAfterNestedScroll()Z

    move-result v15

    if-eqz v15, :cond_108

    .line 1347
    invoke-virtual {v4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->resetChangedAfterNestedScroll()V

    .line 1338
    :cond_c4
    :goto_c4
    add-int/lit8 v11, v11, 0x1

    goto :goto_99

    .line 1307
    .end local v2    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v3    # "checkChild":Landroid/view/View;
    .end local v4    # "checkLp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .restart local v1    # "absInsetEdge":I
    :sswitch_c7
    iget v15, v10, Landroid/graphics/Rect;->top:I

    iget v0, v7, Landroid/graphics/Rect;->bottom:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    iput v15, v10, Landroid/graphics/Rect;->top:I

    goto :goto_6e

    .line 1310
    :sswitch_d4
    iget v15, v10, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getHeight()I

    move-result v16

    iget v0, v7, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    iput v15, v10, Landroid/graphics/Rect;->bottom:I

    goto :goto_6e

    .line 1315
    :pswitch_e7
    iget v15, v10, Landroid/graphics/Rect;->left:I

    iget v0, v7, Landroid/graphics/Rect;->right:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    iput v15, v10, Landroid/graphics/Rect;->left:I

    goto :goto_73

    .line 1318
    :pswitch_f4
    iget v15, v10, Landroid/graphics/Rect;->right:I

    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v16

    iget v0, v7, Landroid/graphics/Rect;->left:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    iput v15, v10, Landroid/graphics/Rect;->right:I

    goto/16 :goto_73

    .line 1352
    .end local v1    # "absInsetEdge":I
    .restart local v2    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .restart local v3    # "checkChild":Landroid/view/View;
    .restart local v4    # "checkLp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_108
    packed-switch p1, :pswitch_data_140

    .line 1361
    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v5}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    move-result v8

    .line 1365
    .local v8, "handled":Z
    :goto_111
    const/4 v15, 0x1

    move/from16 v0, p1

    if-ne v0, v15, :cond_c4

    .line 1368
    invoke-virtual {v4, v8}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setChangedAfterNestedScroll(Z)V

    goto :goto_c4

    .line 1356
    .end local v8    # "handled":Z
    :pswitch_11a
    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3, v5}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onDependentViewRemoved(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 1357
    const/4 v8, 0x1

    .line 1358
    .restart local v8    # "handled":Z
    goto :goto_111

    .line 1374
    .end local v2    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v3    # "checkChild":Landroid/view/View;
    .end local v4    # "checkLp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v5    # "child":Landroid/view/View;
    .end local v8    # "handled":Z
    .end local v11    # "j":I
    .end local v14    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_121
    invoke-static {v10}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1375
    invoke-static {v7}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1376
    invoke-static {v12}, Landroid/support/design/widget/CoordinatorLayout;->releaseTempRect(Landroid/graphics/Rect;)V

    .line 1377
    return-void

    .line 1305
    nop

    :sswitch_data_12c
    .sparse-switch
        0x30 -> :sswitch_c7
        0x50 -> :sswitch_d4
    .end sparse-switch

    .line 1313
    :pswitch_data_136
    .packed-switch 0x3
        :pswitch_e7
        :pswitch_73
        :pswitch_f4
    .end packed-switch

    .line 1352
    :pswitch_data_140
    .packed-switch 0x2
        :pswitch_11a
    .end packed-switch
.end method

.method public onDetachedFromWindow()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 256
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 257
    invoke-direct {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 258
    iget-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    if-eqz v1, :cond_18

    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-eqz v1, :cond_18

    .line 259
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 260
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 262
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_18
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    if-eqz v1, :cond_21

    .line 263
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;)V

    .line 265
    :cond_21
    iput-boolean v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    .line 266
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 896
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 897
    iget-boolean v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    if-eqz v2, :cond_26

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_26

    .line 898
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v2, :cond_27

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v2}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    .line 899
    .local v0, "inset":I
    :goto_16
    if-lez v0, :cond_26

    .line 900
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getWidth()I

    move-result v3

    invoke-virtual {v2, v1, v1, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 901
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 904
    .end local v0    # "inset":I
    :cond_26
    return-void

    :cond_27
    move v0, v1

    .line 898
    goto :goto_16
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x1

    .line 503
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 506
    .local v0, "action":I
    if-nez v0, :cond_a

    .line 507
    invoke-direct {p0, v3}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 510
    :cond_a
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Landroid/support/design/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    move-result v1

    .line 512
    .local v1, "intercepted":Z
    if-eq v0, v3, :cond_14

    const/4 v2, 0x3

    if-ne v0, v2, :cond_17

    .line 513
    :cond_14
    invoke-direct {p0, v3}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 516
    :cond_17
    return v1
.end method

.method protected onLayout(ZIIII)V
    .registers 14
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 876
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v4

    .line 877
    .local v4, "layoutDirection":I
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    .line 878
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_b
    if-ge v3, v2, :cond_36

    .line 879
    iget-object v6, p0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 880
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_20

    .line 878
    :cond_1d
    :goto_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    .line 885
    :cond_20
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 886
    .local v5, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 888
    .local v0, "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_32

    invoke-virtual {v0, p0, v1, v4}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onLayoutChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 889
    :cond_32
    invoke-virtual {p0, v1, v4}, Landroid/support/design/widget/CoordinatorLayout;->onLayoutChild(Landroid/view/View;I)V

    goto :goto_1d

    .line 892
    .end local v0    # "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v1    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_36
    return-void
.end method

.method public onLayoutChild(Landroid/view/View;I)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "layoutDirection"    # I

    .prologue
    .line 860
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 861
    .local v0, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->checkAnchorChanged()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 862
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 865
    :cond_14
    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    if-eqz v1, :cond_1e

    .line 866
    iget-object v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->mAnchorView:Landroid/view/View;

    invoke-direct {p0, p1, v1, p2}, Landroid/support/design/widget/CoordinatorLayout;->layoutChildWithAnchor(Landroid/view/View;Landroid/view/View;I)V

    .line 872
    :goto_1d
    return-void

    .line 867
    :cond_1e
    iget v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    if-ltz v1, :cond_28

    .line 868
    iget v1, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    invoke-direct {p0, p1, v1, p2}, Landroid/support/design/widget/CoordinatorLayout;->layoutChildWithKeyline(Landroid/view/View;II)V

    goto :goto_1d

    .line 870
    :cond_28
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/CoordinatorLayout;->layoutChild(Landroid/view/View;I)V

    goto :goto_1d
.end method

.method protected onMeasure(II)V
    .registers 37
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 739
    invoke-direct/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->prepareChildren()V

    .line 740
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->ensurePreDrawListener()V

    .line 742
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v25

    .line 743
    .local v25, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingTop()I

    move-result v27

    .line 744
    .local v27, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v26

    .line 745
    .local v26, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v24

    .line 746
    .local v24, "paddingBottom":I
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v22

    .line 747
    .local v22, "layoutDirection":I
    const/4 v3, 0x1

    move/from16 v0, v22

    if-ne v0, v3, :cond_70

    const/16 v19, 0x1

    .line 748
    .local v19, "isRtl":Z
    :goto_21
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v30

    .line 749
    .local v30, "widthMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v32

    .line 750
    .local v32, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v13

    .line 751
    .local v13, "heightMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v15

    .line 753
    .local v15, "heightSize":I
    add-int v31, v25, v26

    .line 754
    .local v31, "widthPadding":I
    add-int v14, v27, v24

    .line 755
    .local v14, "heightPadding":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getSuggestedMinimumWidth()I

    move-result v33

    .line 756
    .local v33, "widthUsed":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/design/widget/CoordinatorLayout;->getSuggestedMinimumHeight()I

    move-result v16

    .line 757
    .local v16, "heightUsed":I
    const/4 v11, 0x0

    .line 759
    .local v11, "childState":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    if-eqz v3, :cond_73

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_73

    const/4 v9, 0x1

    .line 761
    .local v9, "applyInsets":Z
    :goto_4b
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    .line 762
    .local v10, "childCount":I
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_55
    move/from16 v0, v18

    if-ge v0, v10, :cond_154

    .line 763
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/CoordinatorLayout;->mDependencySortedChildren:Ljava/util/List;

    move/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 764
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v8, 0x8

    if-ne v3, v8, :cond_75

    .line 762
    :goto_6d
    add-int/lit8 v18, v18, 0x1

    goto :goto_55

    .line 747
    .end local v4    # "child":Landroid/view/View;
    .end local v9    # "applyInsets":Z
    .end local v10    # "childCount":I
    .end local v11    # "childState":I
    .end local v13    # "heightMode":I
    .end local v14    # "heightPadding":I
    .end local v15    # "heightSize":I
    .end local v16    # "heightUsed":I
    .end local v18    # "i":I
    .end local v19    # "isRtl":Z
    .end local v30    # "widthMode":I
    .end local v31    # "widthPadding":I
    .end local v32    # "widthSize":I
    .end local v33    # "widthUsed":I
    :cond_70
    const/16 v19, 0x0

    goto :goto_21

    .line 759
    .restart local v11    # "childState":I
    .restart local v13    # "heightMode":I
    .restart local v14    # "heightPadding":I
    .restart local v15    # "heightSize":I
    .restart local v16    # "heightUsed":I
    .restart local v19    # "isRtl":Z
    .restart local v30    # "widthMode":I
    .restart local v31    # "widthPadding":I
    .restart local v32    # "widthSize":I
    .restart local v33    # "widthUsed":I
    :cond_73
    const/4 v9, 0x0

    goto :goto_4b

    .line 769
    .restart local v4    # "child":Landroid/view/View;
    .restart local v9    # "applyInsets":Z
    .restart local v10    # "childCount":I
    .restart local v18    # "i":I
    :cond_75
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 771
    .local v23, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    const/4 v6, 0x0

    .line 772
    .local v6, "keylineWidthUsed":I
    move-object/from16 v0, v23

    iget v3, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    if-ltz v3, :cond_b5

    if-eqz v30, :cond_b5

    .line 773
    move-object/from16 v0, v23

    iget v3, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->keyline:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Landroid/support/design/widget/CoordinatorLayout;->getKeyline(I)I

    move-result v21

    .line 774
    .local v21, "keylinePos":I
    move-object/from16 v0, v23

    iget v3, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->gravity:I

    .line 775
    invoke-static {v3}, Landroid/support/design/widget/CoordinatorLayout;->resolveKeylineGravity(I)I

    move-result v3

    .line 774
    move/from16 v0, v22

    invoke-static {v3, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v3

    and-int/lit8 v20, v3, 0x7

    .line 777
    .local v20, "keylineGravity":I
    const/4 v3, 0x3

    move/from16 v0, v20

    if-ne v0, v3, :cond_a5

    if-eqz v19, :cond_ac

    :cond_a5
    const/4 v3, 0x5

    move/from16 v0, v20

    if-ne v0, v3, :cond_13d

    if-eqz v19, :cond_13d

    .line 779
    :cond_ac
    const/4 v3, 0x0

    sub-int v8, v32, v26

    sub-int v8, v8, v21

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 786
    .end local v20    # "keylineGravity":I
    .end local v21    # "keylinePos":I
    :cond_b5
    :goto_b5
    move/from16 v5, p1

    .line 787
    .local v5, "childWidthMeasureSpec":I
    move/from16 v7, p2

    .line 788
    .local v7, "childHeightMeasureSpec":I
    if-eqz v9, :cond_f3

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v3

    if-nez v3, :cond_f3

    .line 791
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v3}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetLeft()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 792
    invoke-virtual {v8}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetRight()I

    move-result v8

    add-int v17, v3, v8

    .line 793
    .local v17, "horizInsets":I
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-virtual {v3}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 794
    invoke-virtual {v8}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetBottom()I

    move-result v8

    add-int v28, v3, v8

    .line 796
    .local v28, "vertInsets":I
    sub-int v3, v32, v17

    move/from16 v0, v30

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 798
    sub-int v3, v15, v28

    invoke-static {v3, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 802
    .end local v17    # "horizInsets":I
    .end local v28    # "vertInsets":I
    :cond_f3
    invoke-virtual/range {v23 .. v23}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v2

    .line 803
    .local v2, "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v2, :cond_102

    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v2 .. v8}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onMeasureChild(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;IIII)Z

    move-result v3

    if-nez v3, :cond_108

    .line 805
    :cond_102
    const/4 v8, 0x0

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Landroid/support/design/widget/CoordinatorLayout;->onMeasureChild(Landroid/view/View;IIII)V

    .line 809
    :cond_108
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    add-int v3, v3, v31

    move-object/from16 v0, v23

    iget v8, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->leftMargin:I

    add-int/2addr v3, v8

    move-object/from16 v0, v23

    iget v8, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->rightMargin:I

    add-int/2addr v3, v8

    move/from16 v0, v33

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v33

    .line 812
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v14

    move-object/from16 v0, v23

    iget v8, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->topMargin:I

    add-int/2addr v3, v8

    move-object/from16 v0, v23

    iget v8, v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v3, v8

    move/from16 v0, v16

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 814
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredState()I

    move-result v3

    invoke-static {v11, v3}, Landroid/view/View;->combineMeasuredStates(II)I

    move-result v11

    goto/16 :goto_6d

    .line 780
    .end local v2    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v5    # "childWidthMeasureSpec":I
    .end local v7    # "childHeightMeasureSpec":I
    .restart local v20    # "keylineGravity":I
    .restart local v21    # "keylinePos":I
    :cond_13d
    const/4 v3, 0x5

    move/from16 v0, v20

    if-ne v0, v3, :cond_144

    if-eqz v19, :cond_14b

    :cond_144
    const/4 v3, 0x3

    move/from16 v0, v20

    if-ne v0, v3, :cond_b5

    if-eqz v19, :cond_b5

    .line 782
    :cond_14b
    const/4 v3, 0x0

    sub-int v8, v21, v25

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v6

    goto/16 :goto_b5

    .line 817
    .end local v4    # "child":Landroid/view/View;
    .end local v6    # "keylineWidthUsed":I
    .end local v20    # "keylineGravity":I
    .end local v21    # "keylinePos":I
    .end local v23    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_154
    const/high16 v3, -0x1000000

    and-int/2addr v3, v11

    move/from16 v0, v33

    move/from16 v1, p1

    invoke-static {v0, v1, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v29

    .line 819
    .local v29, "width":I
    shl-int/lit8 v3, v11, 0x10

    move/from16 v0, v16

    move/from16 v1, p2

    invoke-static {v0, v1, v3}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v12

    .line 821
    .local v12, "height":I
    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1, v12}, Landroid/support/design/widget/CoordinatorLayout;->setMeasuredDimension(II)V

    .line 822
    return-void
.end method

.method public onMeasureChild(Landroid/view/View;IIII)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "parentWidthMeasureSpec"    # I
    .param p3, "widthUsed"    # I
    .param p4, "parentHeightMeasureSpec"    # I
    .param p5, "heightUsed"    # I

    .prologue
    .line 733
    invoke-virtual/range {p0 .. p5}, Landroid/support/design/widget/CoordinatorLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 735
    return-void
.end method

.method public onNestedFling(Landroid/view/View;FFZ)Z
    .registers 16
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "consumed"    # Z

    .prologue
    .line 1896
    const/4 v8, 0x0

    .line 1898
    .local v8, "handled":Z
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v7

    .line 1899
    .local v7, "childCount":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_6
    if-ge v9, v7, :cond_35

    .line 1900
    invoke-virtual {p0, v9}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1901
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_17

    .line 1899
    :cond_14
    :goto_14
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 1906
    :cond_17
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1907
    .local v10, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1911
    invoke-virtual {v10}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1912
    .local v0, "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_14

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 1913
    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z

    move-result v1

    or-int/2addr v8, v1

    goto :goto_14

    .line 1917
    .end local v0    # "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v2    # "view":Landroid/view/View;
    .end local v10    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_35
    if-eqz v8, :cond_3b

    .line 1918
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 1920
    :cond_3b
    return v8
.end method

.method public onNestedPreFling(Landroid/view/View;FF)Z
    .registers 14
    .param p1, "target"    # Landroid/view/View;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F

    .prologue
    .line 1925
    const/4 v7, 0x0

    .line 1927
    .local v7, "handled":Z
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v6

    .line 1928
    .local v6, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6
    if-ge v8, v6, :cond_34

    .line 1929
    invoke-virtual {p0, v8}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1930
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v3, 0x8

    if-ne v1, v3, :cond_17

    .line 1928
    :cond_14
    :goto_14
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 1935
    :cond_17
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1936
    .local v9, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    const/4 v1, 0x0

    invoke-virtual {v9, v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1940
    invoke-virtual {v9}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1941
    .local v0, "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_14

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 1942
    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedPreFling(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z

    move-result v1

    or-int/2addr v7, v1

    goto :goto_14

    .line 1945
    .end local v0    # "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v2    # "view":Landroid/view/View;
    .end local v9    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_34
    return v7
.end method

.method public onNestedPreScroll(Landroid/view/View;II[I)V
    .registers 11
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I

    .prologue
    .line 1850
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/design/widget/CoordinatorLayout;->onNestedPreScroll(Landroid/view/View;II[II)V

    .line 1851
    return-void
.end method

.method public onNestedPreScroll(Landroid/view/View;II[II)V
    .registers 21
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dx"    # I
    .param p3, "dy"    # I
    .param p4, "consumed"    # [I
    .param p5, "type"    # I

    .prologue
    .line 1855
    const/4 v13, 0x0

    .line 1856
    .local v13, "xConsumed":I
    const/4 v14, 0x0

    .line 1857
    .local v14, "yConsumed":I
    const/4 v9, 0x0

    .line 1859
    .local v9, "accepted":Z
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v10

    .line 1860
    .local v10, "childCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_8
    if-ge v11, v10, :cond_72

    .line 1861
    invoke-virtual {p0, v11}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1862
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_19

    .line 1860
    :cond_16
    :goto_16
    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    .line 1867
    :cond_19
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1868
    .local v12, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    move/from16 v0, p5

    invoke-virtual {v12, v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 1872
    invoke-virtual {v12}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 1873
    .local v1, "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v1, :cond_16

    .line 1874
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    aput v7, v2, v4

    .line 1875
    iget-object v7, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    move-object v2, p0

    move-object/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedPreScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V

    .line 1877
    if-lez p2, :cond_5e

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    invoke-static {v13, v2}, Ljava/lang/Math;->max(II)I

    move-result v13

    .line 1879
    :goto_51
    if-lez p3, :cond_68

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-static {v14, v2}, Ljava/lang/Math;->max(II)I

    move-result v14

    .line 1882
    :goto_5c
    const/4 v9, 0x1

    goto :goto_16

    .line 1877
    :cond_5e
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    .line 1878
    invoke-static {v13, v2}, Ljava/lang/Math;->min(II)I

    move-result v13

    goto :goto_51

    .line 1879
    :cond_68
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mTempIntPair:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    .line 1880
    invoke-static {v14, v2}, Ljava/lang/Math;->min(II)I

    move-result v14

    goto :goto_5c

    .line 1886
    .end local v1    # "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v3    # "view":Landroid/view/View;
    .end local v12    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_72
    const/4 v2, 0x0

    aput v13, p4, v2

    .line 1887
    const/4 v2, 0x1

    aput v14, p4, v2

    .line 1889
    if-eqz v9, :cond_7e

    .line 1890
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 1892
    :cond_7e
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIII)V
    .registers 13
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I

    .prologue
    .line 1813
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/CoordinatorLayout;->onNestedScroll(Landroid/view/View;IIIII)V

    .line 1815
    return-void
.end method

.method public onNestedScroll(Landroid/view/View;IIIII)V
    .registers 21
    .param p1, "target"    # Landroid/view/View;
    .param p2, "dxConsumed"    # I
    .param p3, "dyConsumed"    # I
    .param p4, "dxUnconsumed"    # I
    .param p5, "dyUnconsumed"    # I
    .param p6, "type"    # I

    .prologue
    .line 1820
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v11

    .line 1821
    .local v11, "childCount":I
    const/4 v10, 0x0

    .line 1823
    .local v10, "accepted":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_6
    if-ge v12, v11, :cond_3c

    .line 1824
    invoke-virtual {p0, v12}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1825
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_17

    .line 1823
    :cond_14
    :goto_14
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 1830
    :cond_17
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1831
    .local v13, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    move/from16 v0, p6

    invoke-virtual {v13, v0}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1835
    invoke-virtual {v13}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 1836
    .local v1, "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v1, :cond_14

    move-object v2, p0

    move-object v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    .line 1837
    invoke-virtual/range {v1 .. v9}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V

    .line 1839
    const/4 v10, 0x1

    goto :goto_14

    .line 1843
    .end local v1    # "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v3    # "view":Landroid/view/View;
    .end local v13    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_3c
    if-eqz v10, :cond_42

    .line 1844
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->onChildViewsChanged(I)V

    .line 1846
    :cond_42
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 1759
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/design/widget/CoordinatorLayout;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 1760
    return-void
.end method

.method public onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .registers 15
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I
    .param p4, "type"    # I

    .prologue
    .line 1764
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/support/v4/view/NestedScrollingParentHelper;->onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V

    .line 1765
    iput-object p2, p0, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 1767
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v7

    .line 1768
    .local v7, "childCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_c
    if-ge v8, v7, :cond_30

    .line 1769
    invoke-virtual {p0, v8}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1770
    .local v2, "view":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1771
    .local v9, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v9, p4}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1768
    :cond_1e
    :goto_1e
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    .line 1775
    :cond_21
    invoke-virtual {v9}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 1776
    .local v0, "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_1e

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    .line 1777
    invoke-virtual/range {v0 .. v6}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onNestedScrollAccepted(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)V

    goto :goto_1e

    .line 1781
    .end local v0    # "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v2    # "view":Landroid/view/View;
    .end local v9    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_30
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 12
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 3147
    instance-of v9, p1, Landroid/support/design/widget/CoordinatorLayout$SavedState;

    if-nez v9, :cond_8

    .line 3148
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3170
    :cond_7
    return-void

    :cond_8
    move-object v8, p1

    .line 3152
    check-cast v8, Landroid/support/design/widget/CoordinatorLayout$SavedState;

    .line 3153
    .local v8, "ss":Landroid/support/design/widget/CoordinatorLayout$SavedState;
    invoke-virtual {v8}, Landroid/support/design/widget/CoordinatorLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v9

    invoke-super {p0, v9}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3155
    iget-object v1, v8, Landroid/support/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    .line 3157
    .local v1, "behaviorStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v4

    .local v4, "count":I
    :goto_19
    if-ge v5, v4, :cond_7

    .line 3158
    invoke-virtual {p0, v5}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3159
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    .line 3160
    .local v3, "childId":I
    invoke-virtual {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->getResolvedLayoutParams(Landroid/view/View;)Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    move-result-object v6

    .line 3161
    .local v6, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v6}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 3163
    .local v0, "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    const/4 v9, -0x1

    if-eq v3, v9, :cond_3b

    if-eqz v0, :cond_3b

    .line 3164
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Parcelable;

    .line 3165
    .local v7, "savedState":Landroid/os/Parcelable;
    if-eqz v7, :cond_3b

    .line 3166
    invoke-virtual {v0, p0, v2, v7}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onRestoreInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V

    .line 3157
    .end local v7    # "savedState":Landroid/os/Parcelable;
    :cond_3b
    add-int/lit8 v5, v5, 0x1

    goto :goto_19
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 11

    .prologue
    .line 3174
    new-instance v7, Landroid/support/design/widget/CoordinatorLayout$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v9

    invoke-direct {v7, v9}, Landroid/support/design/widget/CoordinatorLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3176
    .local v7, "ss":Landroid/support/design/widget/CoordinatorLayout$SavedState;
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 3177
    .local v1, "behaviorStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v4

    .local v4, "count":I
    :goto_13
    if-ge v5, v4, :cond_38

    .line 3178
    invoke-virtual {p0, v5}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 3179
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    .line 3180
    .local v3, "childId":I
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 3181
    .local v6, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v6}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 3183
    .local v0, "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    const/4 v9, -0x1

    if-eq v3, v9, :cond_35

    if-eqz v0, :cond_35

    .line 3185
    invoke-virtual {v0, p0, v2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onSaveInstanceState(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;

    move-result-object v8

    .line 3186
    .local v8, "state":Landroid/os/Parcelable;
    if-eqz v8, :cond_35

    .line 3187
    invoke-virtual {v1, v3, v8}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 3177
    .end local v8    # "state":Landroid/os/Parcelable;
    :cond_35
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    .line 3191
    .end local v0    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childId":I
    .end local v6    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_38
    iput-object v1, v7, Landroid/support/design/widget/CoordinatorLayout$SavedState;->behaviorStates:Landroid/util/SparseArray;

    .line 3192
    return-object v7
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;I)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "nestedScrollAxes"    # I

    .prologue
    .line 1729
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/design/widget/CoordinatorLayout;->onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z

    move-result v0

    return v0
.end method

.method public onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .registers 18
    .param p1, "child"    # Landroid/view/View;
    .param p2, "target"    # Landroid/view/View;
    .param p3, "axes"    # I
    .param p4, "type"    # I

    .prologue
    .line 1734
    const/4 v10, 0x0

    .line 1736
    .local v10, "handled":Z
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v9

    .line 1737
    .local v9, "childCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_6
    if-ge v11, v9, :cond_3c

    .line 1738
    invoke-virtual {p0, v11}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1739
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_17

    .line 1737
    :goto_14
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    .line 1743
    :cond_17
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1744
    .local v12, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v12}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v1

    .line 1745
    .local v1, "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v1, :cond_35

    move-object v2, p0

    move-object v4, p1

    move-object v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    .line 1746
    invoke-virtual/range {v1 .. v7}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onStartNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z

    move-result v8

    .line 1748
    .local v8, "accepted":Z
    or-int/2addr v10, v8

    .line 1749
    move/from16 v0, p4

    invoke-virtual {v12, v0, v8}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setNestedScrollAccepted(IZ)V

    goto :goto_14

    .line 1751
    .end local v8    # "accepted":Z
    :cond_35
    const/4 v2, 0x0

    move/from16 v0, p4

    invoke-virtual {v12, v0, v2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setNestedScrollAccepted(IZ)V

    goto :goto_14

    .line 1754
    .end local v1    # "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v3    # "view":Landroid/view/View;
    .end local v12    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_3c
    return v10
.end method

.method public onStopNestedScroll(Landroid/view/View;)V
    .registers 3
    .param p1, "target"    # Landroid/view/View;

    .prologue
    .line 1785
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/CoordinatorLayout;->onStopNestedScroll(Landroid/view/View;I)V

    .line 1786
    return-void
.end method

.method public onStopNestedScroll(Landroid/view/View;I)V
    .registers 9
    .param p1, "target"    # Landroid/view/View;
    .param p2, "type"    # I

    .prologue
    .line 1790
    iget-object v5, p0, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingParentHelper:Landroid/support/v4/view/NestedScrollingParentHelper;

    invoke-virtual {v5, p1, p2}, Landroid/support/v4/view/NestedScrollingParentHelper;->onStopNestedScroll(Landroid/view/View;I)V

    .line 1792
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getChildCount()I

    move-result v0

    .line 1793
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_2f

    .line 1794
    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1795
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 1796
    .local v2, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v2, p2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->isNestedScrollAccepted(I)Z

    move-result v5

    if-nez v5, :cond_1f

    .line 1793
    :goto_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 1800
    :cond_1f
    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v4

    .line 1801
    .local v4, "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v4, :cond_28

    .line 1802
    invoke-virtual {v4, p0, v3, p1, p2}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onStopNestedScroll(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V

    .line 1804
    :cond_28
    invoke-virtual {v2, p2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->resetNestedScroll(I)V

    .line 1805
    invoke-virtual {v2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->resetChangedAfterNestedScroll()V

    goto :goto_1c

    .line 1807
    .end local v2    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    .end local v3    # "view":Landroid/view/View;
    .end local v4    # "viewBehavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    :cond_2f
    const/4 v5, 0x0

    iput-object v5, p0, Landroid/support/design/widget/CoordinatorLayout;->mNestedScrollingTarget:Landroid/view/View;

    .line 1808
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 521
    const/4 v12, 0x0

    .line 522
    .local v12, "handled":Z
    const/4 v11, 0x0

    .line 523
    .local v11, "cancelSuper":Z
    const/4 v10, 0x0

    .line 525
    .local v10, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 527
    .local v8, "action":I
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    if-nez v2, :cond_12

    const/4 v2, 0x1

    invoke-direct {p0, p1, v2}, Landroid/support/design/widget/CoordinatorLayout;->performIntercept(Landroid/view/MotionEvent;I)Z

    move-result v11

    if-eqz v11, :cond_26

    .line 530
    :cond_12
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 531
    .local v13, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v13}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v9

    .line 532
    .local v9, "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v9, :cond_26

    .line 533
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    invoke-virtual {v9, p0, v2, p1}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onTouchEvent(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v12

    .line 538
    .end local v9    # "b":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    .end local v13    # "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    :cond_26
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mBehaviorTouchView:Landroid/view/View;

    if-nez v2, :cond_43

    .line 539
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v12, v2

    .line 549
    :cond_2f
    :goto_2f
    if-nez v12, :cond_33

    if-nez v8, :cond_33

    .line 553
    :cond_33
    if-eqz v10, :cond_38

    .line 554
    invoke-virtual {v10}, Landroid/view/MotionEvent;->recycle()V

    .line 557
    :cond_38
    const/4 v2, 0x1

    if-eq v8, v2, :cond_3e

    const/4 v2, 0x3

    if-ne v8, v2, :cond_42

    .line 558
    :cond_3e
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 561
    :cond_42
    return v12

    .line 540
    :cond_43
    if-eqz v11, :cond_2f

    .line 541
    if-nez v10, :cond_54

    .line 542
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 543
    .local v0, "now":J
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v10

    .line 546
    .end local v0    # "now":J
    :cond_54
    invoke-super {p0, v10}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_2f
.end method

.method recordLastChildRect(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "r"    # Landroid/graphics/Rect;

    .prologue
    .line 923
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 924
    .local v0, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v0, p2}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->setLastChildRect(Landroid/graphics/Rect;)V

    .line 925
    return-void
.end method

.method removePreDrawListener()V
    .registers 3

    .prologue
    .line 1599
    iget-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mIsAttachedToWindow:Z

    if-eqz v1, :cond_11

    .line 1600
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    if-eqz v1, :cond_11

    .line 1601
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 1602
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnPreDrawListener:Landroid/support/design/widget/CoordinatorLayout$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1605
    .end local v0    # "vto":Landroid/view/ViewTreeObserver;
    :cond_11
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/design/widget/CoordinatorLayout;->mNeedsPreDrawListener:Z

    .line 1606
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 3197
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;

    .line 3198
    .local v1, "lp":Landroid/support/design/widget/CoordinatorLayout$LayoutParams;
    invoke-virtual {v1}, Landroid/support/design/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroid/support/design/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    .line 3200
    .local v0, "behavior":Landroid/support/design/widget/CoordinatorLayout$Behavior;
    if-eqz v0, :cond_14

    .line 3201
    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/design/widget/CoordinatorLayout$Behavior;->onRequestChildRectangleOnScreen(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 3202
    const/4 v2, 0x1

    .line 3205
    :goto_13
    return v2

    :cond_14
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v2

    goto :goto_13
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 3
    .param p1, "disallowIntercept"    # Z

    .prologue
    .line 566
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 567
    if-eqz p1, :cond_10

    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    if-nez v0, :cond_10

    .line 568
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->resetTouchBehaviors(Z)V

    .line 569
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mDisallowInterceptReset:Z

    .line 571
    :cond_10
    return-void
.end method

.method public setFitsSystemWindows(Z)V
    .registers 2
    .param p1, "fitSystemWindows"    # Z

    .prologue
    .line 908
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 909
    invoke-direct {p0}, Landroid/support/design/widget/CoordinatorLayout;->setupForInsets()V

    .line 910
    return-void
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 2
    .param p1, "onHierarchyChangeListener"    # Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .prologue
    .line 232
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 233
    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 275
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eq v2, p1, :cond_49

    .line 276
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_f

    .line 277
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 279
    :cond_f
    if-eqz p1, :cond_15

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_15
    iput-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 280
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_46

    .line 281
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 282
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 284
    :cond_2c
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 285
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    .line 284
    invoke-static {v0, v2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)Z

    .line 286
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4a

    const/4 v0, 0x1

    :goto_3e
    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 287
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 289
    :cond_46
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 291
    :cond_49
    return-void

    :cond_4a
    move v0, v1

    .line 286
    goto :goto_3e
.end method

.method public setStatusBarBackgroundColor(I)V
    .registers 3
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 353
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 354
    return-void
.end method

.method public setStatusBarBackgroundResource(I)V
    .registers 3
    .param p1, "resId"    # I
        .annotation build Landroid/support/annotation/DrawableRes;
        .end annotation
    .end param

    .prologue
    .line 342
    if-eqz p1, :cond_e

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_a
    invoke-virtual {p0, v0}, Landroid/support/design/widget/CoordinatorLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 343
    return-void

    .line 342
    :cond_e
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public setVisibility(I)V
    .registers 5
    .param p1, "visibility"    # I

    .prologue
    const/4 v1, 0x0

    .line 327
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 329
    if-nez p1, :cond_19

    const/4 v0, 0x1

    .line 330
    .local v0, "visible":Z
    :goto_7
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_18

    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v2

    if-eq v2, v0, :cond_18

    .line 331
    iget-object v2, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 333
    :cond_18
    return-void

    .end local v0    # "visible":Z
    :cond_19
    move v0, v1

    .line 329
    goto :goto_7
.end method

.method final setWindowInsets(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;
    .registers 5
    .param p1, "insets"    # Landroid/support/v4/view/WindowInsetsCompat;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 357
    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    invoke-static {v0, p1}, Landroid/support/v4/util/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2b

    .line 358
    iput-object p1, p0, Landroid/support/design/widget/CoordinatorLayout;->mLastInsets:Landroid/support/v4/view/WindowInsetsCompat;

    .line 359
    if-eqz p1, :cond_2c

    invoke-virtual {p1}, Landroid/support/v4/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    move-result v0

    if-lez v0, :cond_2c

    move v0, v1

    :goto_15
    iput-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    .line 360
    iget-boolean v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mDrawStatusBarBackground:Z

    if-nez v0, :cond_2e

    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_2e

    :goto_21
    invoke-virtual {p0, v1}, Landroid/support/design/widget/CoordinatorLayout;->setWillNotDraw(Z)V

    .line 363
    invoke-direct {p0, p1}, Landroid/support/design/widget/CoordinatorLayout;->dispatchApplyWindowInsetsToBehaviors(Landroid/support/v4/view/WindowInsetsCompat;)Landroid/support/v4/view/WindowInsetsCompat;

    move-result-object p1

    .line 364
    invoke-virtual {p0}, Landroid/support/design/widget/CoordinatorLayout;->requestLayout()V

    .line 366
    :cond_2b
    return-object p1

    :cond_2c
    move v0, v2

    .line 359
    goto :goto_15

    :cond_2e
    move v1, v2

    .line 360
    goto :goto_21
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 322
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/support/design/widget/CoordinatorLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method
