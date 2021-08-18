.class public Landroid/support/v4/widget/DrawerLayout;
.super Landroid/view/ViewGroup;
.source "DrawerLayout.java"

# interfaces
.implements Landroid/support/v4/widget/DrawerLayoutImpl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;,
        Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;,
        Landroid/support/v4/widget/DrawerLayout$LayoutParams;,
        Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;,
        Landroid/support/v4/widget/DrawerLayout$SavedState;,
        Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;,
        Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplBase;,
        Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;,
        Landroid/support/v4/widget/DrawerLayout$SimpleDrawerListener;,
        Landroid/support/v4/widget/DrawerLayout$DrawerListener;,
        Landroid/support/v4/widget/DrawerLayout$EdgeGravity;,
        Landroid/support/v4/widget/DrawerLayout$LockMode;,
        Landroid/support/v4/widget/DrawerLayout$State;
    }
.end annotation


# static fields
.field private static final ALLOW_EDGE_LOCK:Z = false

.field private static final CAN_HIDE_DESCENDANTS:Z

.field private static final CHILDREN_DISALLOW_INTERCEPT:Z = true

.field private static final DEFAULT_SCRIM_COLOR:I = -0x67000000

.field private static final DRAWER_ELEVATION:I = 0xa

.field static final IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

.field private static final LAYOUT_ATTRS:[I

.field public static final LOCK_MODE_LOCKED_CLOSED:I = 0x1

.field public static final LOCK_MODE_LOCKED_OPEN:I = 0x2

.field public static final LOCK_MODE_UNDEFINED:I = 0x3

.field public static final LOCK_MODE_UNLOCKED:I = 0x0

.field private static final MIN_DRAWER_MARGIN:I = 0x40

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field private static final PEEK_DELAY:I = 0xa0

.field private static final SET_DRAWER_SHADOW_FROM_ELEVATION:Z

.field public static final STATE_DRAGGING:I = 0x1

.field public static final STATE_IDLE:I = 0x0

.field public static final STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "DrawerLayout"

.field private static final TOUCH_SLOP_SENSITIVITY:F = 1.0f


# instance fields
.field private final mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

.field private mChildrenCanceledTouch:Z

.field private mDisallowInterceptRequested:Z

.field private mDrawStatusBarBackground:Z

.field private mDrawerElevation:F

.field private mDrawerState:I

.field private mFirstLayout:Z

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mLastInsets:Ljava/lang/Object;

.field private final mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/widget/DrawerLayout$DrawerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLockModeEnd:I

.field private mLockModeLeft:I

.field private mLockModeRight:I

.field private mLockModeStart:I

.field private mMinDrawerMargin:I

.field private final mNonDrawerViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

.field private final mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

.field private mScrimColor:I

.field private mScrimOpacity:F

.field private mScrimPaint:Landroid/graphics/Paint;

.field private mShadowEnd:Landroid/graphics/drawable/Drawable;

.field private mShadowLeft:Landroid/graphics/drawable/Drawable;

.field private mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowRight:Landroid/graphics/drawable/Drawable;

.field private mShadowRightResolved:Landroid/graphics/drawable/Drawable;

.field private mShadowStart:Landroid/graphics/drawable/Drawable;

.field private mStatusBarBackground:Landroid/graphics/drawable/Drawable;

.field private mTitleLeft:Ljava/lang/CharSequence;

.field private mTitleRight:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 174
    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100b3

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Landroid/support/v4/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    .line 179
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_13

    const/4 v1, 0x1

    goto :goto_14

    :cond_13
    const/4 v1, 0x0

    :goto_14
    sput-boolean v1, Landroid/support/v4/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    .line 182
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1d

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    sput-boolean v0, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    .line 347
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 348
    .local v0, "version":I
    if-lt v0, v2, :cond_2c

    .line 349
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;

    invoke-direct {v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplApi21;-><init>()V

    sput-object v1, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    goto :goto_33

    .line 351
    :cond_2c
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplBase;

    invoke-direct {v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImplBase;-><init>()V

    sput-object v1, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    .line 353
    .end local v0    # "version":I
    :goto_33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 358
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 359
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 362
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v4/widget/DrawerLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 363
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 366
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 185
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    .line 191
    const/high16 v0, -0x67000000

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    .line 193
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    .line 201
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 203
    const/4 v1, 0x3

    iput v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    .line 204
    iput v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    .line 205
    iput v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    .line 206
    iput v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    .line 228
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    .line 229
    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    .line 230
    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    .line 231
    iput-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    .line 367
    const/high16 v2, 0x40000

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->setDescendantFocusability(I)V

    .line 368
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 369
    .local v2, "density":F
    const/high16 v3, 0x42800000    # 64.0f

    mul-float v3, v3, v2

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I

    .line 370
    const/high16 v3, 0x43c80000    # 400.0f

    mul-float v3, v3, v2

    .line 372
    .local v3, "minVel":F
    new-instance v4, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-direct {v4, p0, v1}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .line 373
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    const/4 v5, 0x5

    invoke-direct {v1, p0, v5}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;-><init>(Landroid/support/v4/widget/DrawerLayout;I)V

    iput-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    .line 375
    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {p0, v5, v4}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v6

    iput-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 376
    invoke-virtual {v6, v0}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 377
    invoke-virtual {v6, v3}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 378
    invoke-virtual {v4, v6}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroid/support/v4/widget/ViewDragHelper;)V

    .line 380
    invoke-static {p0, v5, v1}, Landroid/support/v4/widget/ViewDragHelper;->create(Landroid/view/ViewGroup;FLandroid/support/v4/widget/ViewDragHelper$Callback;)Landroid/support/v4/widget/ViewDragHelper;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 381
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/support/v4/widget/ViewDragHelper;->setEdgeTrackingEnabled(I)V

    .line 382
    invoke-virtual {v4, v3}, Landroid/support/v4/widget/ViewDragHelper;->setMinVelocity(F)V

    .line 383
    invoke-virtual {v1, v4}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->setDragger(Landroid/support/v4/widget/ViewDragHelper;)V

    .line 386
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->setFocusableInTouchMode(Z)V

    .line 388
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 391
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;

    invoke-direct {v0, p0}, Landroid/support/v4/widget/DrawerLayout$AccessibilityDelegate;-><init>(Landroid/support/v4/widget/DrawerLayout;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 392
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewGroupCompat;->setMotionEventSplittingEnabled(Landroid/view/ViewGroup;Z)V

    .line 393
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 394
    sget-object v0, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    invoke-interface {v0, p0}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->configureApplyInsets(Landroid/view/View;)V

    .line 395
    invoke-interface {v0, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->getDefaultStatusBarBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 398
    :cond_9a
    const/high16 v0, 0x41200000    # 10.0f

    mul-float v0, v0, v2

    iput v0, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    .line 401
    return-void
.end method

.method static synthetic access$400()[I
    .registers 1

    .line 94
    sget-object v0, Landroid/support/v4/widget/DrawerLayout;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method static synthetic access$500()Z
    .registers 1

    .line 94
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    return v0
.end method

.method static synthetic access$600(Landroid/support/v4/widget/DrawerLayout;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/widget/DrawerLayout;

    .line 94
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/view/View;)Z
    .registers 2
    .param p0, "x0"    # Landroid/view/View;

    .line 94
    invoke-static {p0}, Landroid/support/v4/widget/DrawerLayout;->includeChildForAccessibility(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private findVisibleDrawer()Landroid/view/View;
    .registers 5

    .line 1807
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1808
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1b

    .line 1809
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1810
    .local v2, "child":Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_18

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 1811
    return-object v2

    .line 1808
    .end local v2    # "child":Landroid/view/View;
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1814
    .end local v1    # "i":I
    :cond_1b
    const/4 v1, 0x0

    return-object v1
.end method

.method static gravityToString(I)Ljava/lang/String;
    .registers 3
    .param p0, "gravity"    # I

    .line 988
    and-int/lit8 v0, p0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 989
    const-string v0, "LEFT"

    return-object v0

    .line 991
    :cond_8
    and-int/lit8 v0, p0, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_10

    .line 992
    const-string v0, "RIGHT"

    return-object v0

    .line 994
    :cond_10
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static hasOpaqueBackground(Landroid/view/View;)Z
    .registers 5
    .param p0, "v"    # Landroid/view/View;

    .line 1280
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1281
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 1282
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_f

    const/4 v1, 0x1

    :cond_f
    return v1

    .line 1284
    :cond_10
    return v1
.end method

.method private hasPeekingDrawer()Z
    .registers 5

    .line 1733
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1734
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1c

    .line 1735
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1736
    .local v2, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    # getter for: Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z
    invoke-static {v2}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$200(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 1737
    const/4 v3, 0x1

    return v3

    .line 1734
    .end local v2    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1740
    .end local v1    # "i":I
    :cond_1c
    const/4 v1, 0x0

    return v1
.end method

.method private hasVisibleDrawer()Z
    .registers 2

    .line 1803
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static includeChildForAccessibility(Landroid/view/View;)Z
    .registers 3
    .param p0, "child"    # Landroid/view/View;

    .line 1938
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_10

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private mirror(Landroid/graphics/drawable/Drawable;I)Z
    .registers 4
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "layoutDirection"    # I

    .line 1164
    if-eqz p1, :cond_e

    invoke-static {p1}, Landroid/support/v4/graphics/drawable/DrawableCompat;->isAutoMirrored(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_e

    .line 1168
    :cond_9
    invoke-static {p1, p2}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setLayoutDirection(Landroid/graphics/drawable/Drawable;I)V

    .line 1169
    const/4 v0, 0x1

    return v0

    .line 1165
    :cond_e
    :goto_e
    const/4 v0, 0x0

    return v0
.end method

.method private resolveLeftShadow()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1122
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 1124
    .local v0, "layoutDirection":I
    if-nez v0, :cond_10

    .line 1125
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1a

    .line 1127
    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1128
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 1131
    :cond_10
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1a

    .line 1133
    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1134
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 1137
    :cond_1a
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method private resolveRightShadow()Landroid/graphics/drawable/Drawable;
    .registers 3

    .line 1141
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 1142
    .local v0, "layoutDirection":I
    if-nez v0, :cond_10

    .line 1143
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1a

    .line 1145
    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1146
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 1149
    :cond_10
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1a

    .line 1151
    invoke-direct {p0, v1, v0}, Landroid/support/v4/widget/DrawerLayout;->mirror(Landroid/graphics/drawable/Drawable;I)Z

    .line 1152
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    return-object v1

    .line 1155
    :cond_1a
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    return-object v1
.end method

.method private resolveShadowDrawables()V
    .registers 2

    .line 1114
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_5

    .line 1115
    return-void

    .line 1117
    :cond_5
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveLeftShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    .line 1118
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveRightShadow()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    .line 1119
    return-void
.end method

.method private updateChildrenImportantForAccessibility(Landroid/view/View;Z)V
    .registers 7
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "isDrawerOpen"    # Z

    .line 882
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 883
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_23

    .line 884
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 885
    .local v2, "child":Landroid/view/View;
    if-nez p2, :cond_13

    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_13
    if-eqz p2, :cond_1c

    if-ne v2, p1, :cond_1c

    .line 889
    :cond_17
    const/4 v3, 0x1

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_20

    .line 892
    :cond_1c
    const/4 v3, 0x4

    invoke-static {v2, v3}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 883
    .end local v2    # "child":Landroid/view/View;
    :goto_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 896
    .end local v1    # "i":I
    :cond_23
    return-void
.end method


# virtual methods
.method public addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    .line 544
    if-nez p1, :cond_3

    .line 545
    return-void

    .line 547
    :cond_3
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_e

    .line 548
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    .line 550
    :cond_e
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 10
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .line 1769
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_9

    .line 1770
    return-void

    .line 1775
    :cond_9
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1776
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 1777
    .local v1, "isDrawerOpen":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v0, :cond_2e

    .line 1778
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1779
    .local v3, "child":Landroid/view/View;
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 1780
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 1781
    const/4 v1, 0x1

    .line 1782
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_2b

    .line 1785
    :cond_26
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1777
    .end local v3    # "child":Landroid/view/View;
    :cond_2b
    :goto_2b
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 1789
    .end local v2    # "i":I
    :cond_2e
    if-nez v1, :cond_4d

    .line 1790
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1791
    .local v2, "nonDrawerViewsCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_37
    if-ge v3, v2, :cond_4d

    .line 1792
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 1793
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4a

    .line 1794
    invoke-virtual {v4, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 1791
    .end local v4    # "child":Landroid/view/View;
    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_37

    .line 1799
    .end local v2    # "nonDrawerViewsCount":I
    .end local v3    # "i":I
    :cond_4d
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mNonDrawerViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1800
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1910
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1912
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v0

    .line 1913
    .local v0, "openDrawer":Landroid/view/View;
    if-nez v0, :cond_15

    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_15

    .line 1921
    :cond_10
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    goto :goto_19

    .line 1916
    :cond_15
    :goto_15
    const/4 v1, 0x4

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 1927
    :goto_19
    sget-boolean v1, Landroid/support/v4/widget/DrawerLayout;->CAN_HIDE_DESCENDANTS:Z

    if-nez v1, :cond_22

    .line 1928
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mChildAccessibilityDelegate:Landroid/support/v4/widget/DrawerLayout$ChildAccessibilityDelegate;

    invoke-static {p1, v1}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 1930
    :cond_22
    return-void
.end method

.method cancelChildViewTouch()V
    .registers 12

    .line 1819
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-nez v0, :cond_29

    .line 1820
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    .line 1821
    .local v9, "now":J
    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v9

    move-wide v3, v9

    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    .line 1823
    .local v0, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1824
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    if-ge v2, v1, :cond_23

    .line 1825
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1824
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 1827
    .end local v2    # "i":I
    :cond_23
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 1828
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1830
    .end local v0    # "cancelEvent":Landroid/view/MotionEvent;
    .end local v1    # "childCount":I
    .end local v9    # "now":J
    :cond_29
    return-void
.end method

.method checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z
    .registers 5
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "checkFor"    # I

    .line 933
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v0

    .line 934
    .local v0, "absGravity":I
    and-int v1, v0, p2

    if-ne v1, p2, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1759
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

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

.method public closeDrawer(I)V
    .registers 6
    .param p1, "gravity"    # I

    .line 1658
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1659
    .local v0, "drawerView":Landroid/view/View;
    if-eqz v0, :cond_a

    .line 1663
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 1664
    return-void

    .line 1660
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No drawer view found with gravity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public closeDrawer(Landroid/view/View;)V
    .registers 6
    .param p1, "drawerView"    # Landroid/view/View;

    .line 1630
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 1634
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1635
    .local v0, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v1, :cond_19

    .line 1636
    const/4 v1, 0x0

    # setter for: Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$002(Landroid/support/v4/widget/DrawerLayout$LayoutParams;F)F

    .line 1637
    const/4 v1, 0x0

    # setter for: Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$102(Landroid/support/v4/widget/DrawerLayout$LayoutParams;I)I

    goto :goto_40

    .line 1639
    :cond_19
    const/4 v1, 0x4

    # |= operator for: Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$176(Landroid/support/v4/widget/DrawerLayout$LayoutParams;I)I

    .line 1641
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1642
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_40

    .line 1645
    :cond_33
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 1648
    :goto_40
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1649
    return-void

    .line 1631
    .end local v0    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_44
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a sliding drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public closeDrawers()V
    .registers 2

    .line 1545
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1546
    return-void
.end method

.method closeDrawers(Z)V
    .registers 11
    .param p1, "peekingOnly"    # Z

    .line 1549
    const/4 v0, 0x0

    .line 1550
    .local v0, "needsInvalidate":Z
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 1551
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_4f

    .line 1552
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1553
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1555
    .local v4, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_4c

    if-eqz p1, :cond_21

    # getter for: Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z
    invoke-static {v4}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$200(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)Z

    move-result v5

    if-nez v5, :cond_21

    .line 1556
    goto :goto_4c

    .line 1559
    :cond_21
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    .line 1561
    .local v5, "childWidth":I
    const/4 v6, 0x3

    invoke-virtual {p0, v3, v6}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v6

    if-eqz v6, :cond_39

    .line 1562
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    neg-int v7, v5

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6, v3, v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v6

    or-int/2addr v0, v6

    goto :goto_48

    .line 1565
    :cond_39
    iget-object v6, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v7

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v6, v3, v7, v8}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    move-result v6

    or-int/2addr v0, v6

    .line 1569
    :goto_48
    const/4 v6, 0x0

    # setter for: Landroid/support/v4/widget/DrawerLayout$LayoutParams;->isPeeking:Z
    invoke-static {v4, v6}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$202(Landroid/support/v4/widget/DrawerLayout$LayoutParams;Z)Z

    .line 1551
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    .end local v5    # "childWidth":I
    :cond_4c
    :goto_4c
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1572
    .end local v2    # "i":I
    :cond_4f
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v2}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1573
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v2}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1575
    if-eqz v0, :cond_5e

    .line 1576
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1578
    :cond_5e
    return-void
.end method

.method public computeScroll()V
    .registers 6

    .line 1265
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 1266
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 1267
    .local v1, "scrimOpacity":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v0, :cond_1d

    .line 1268
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    # getter for: Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F
    invoke-static {v3}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v3

    .line 1269
    .local v3, "onscreen":F
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 1267
    .end local v3    # "onscreen":F
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 1271
    .end local v2    # "i":I
    :cond_1d
    iput v1, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    .line 1274
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v2

    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v4, v3}, Landroid/support/v4/widget/ViewDragHelper;->continueSettling(Z)Z

    move-result v3

    or-int/2addr v2, v3

    if-eqz v2, :cond_32

    .line 1275
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1277
    :cond_32
    return-void
.end method

.method dispatchOnDrawerClosed(Landroid/view/View;)V
    .registers 7
    .param p1, "drawerView"    # Landroid/view/View;

    .line 830
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 831
    .local v0, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    # getter for: Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$100(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_40

    .line 832
    const/4 v1, 0x0

    # setter for: Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$102(Landroid/support/v4/widget/DrawerLayout$LayoutParams;I)I

    .line 834
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v2, :cond_2c

    .line 837
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .line 838
    .local v2, "listenerCount":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_1c
    if-ltz v3, :cond_2c

    .line 839
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v4, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerClosed(Landroid/view/View;)V

    .line 838
    add-int/lit8 v3, v3, -0x1

    goto :goto_1c

    .line 843
    .end local v2    # "listenerCount":I
    .end local v3    # "i":I
    :cond_2c
    invoke-direct {p0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 848
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 849
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 850
    .local v1, "rootView":Landroid/view/View;
    if-eqz v1, :cond_40

    .line 851
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 855
    .end local v1    # "rootView":Landroid/view/View;
    :cond_40
    return-void
.end method

.method dispatchOnDrawerOpened(Landroid/view/View;)V
    .registers 7
    .param p1, "drawerView"    # Landroid/view/View;

    .line 858
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 859
    .local v0, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    # getter for: Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$100(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-nez v1, :cond_3c

    .line 860
    # setter for: Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I
    invoke-static {v0, v2}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$102(Landroid/support/v4/widget/DrawerLayout$LayoutParams;I)I

    .line 861
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v1, :cond_2b

    .line 864
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 865
    .local v1, "listenerCount":I
    add-int/lit8 v3, v1, -0x1

    .local v3, "i":I
    :goto_1b
    if-ltz v3, :cond_2b

    .line 866
    iget-object v4, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v4, p1}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerOpened(Landroid/view/View;)V

    .line 865
    add-int/lit8 v3, v3, -0x1

    goto :goto_1b

    .line 870
    .end local v1    # "listenerCount":I
    .end local v3    # "i":I
    :cond_2b
    invoke-direct {p0, p1, v2}, Landroid/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    .line 873
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 874
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->sendAccessibilityEvent(I)V

    .line 877
    :cond_39
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 879
    :cond_3c
    return-void
.end method

.method dispatchOnDrawerSlide(Landroid/view/View;F)V
    .registers 6
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .line 899
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v0, :cond_1a

    .line 902
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 903
    .local v0, "listenerCount":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_1a

    .line 904
    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v2, p1, p2}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerSlide(Landroid/view/View;F)V

    .line 903
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 907
    .end local v0    # "listenerCount":I
    .end local v1    # "i":I
    :cond_1a
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 24
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 1348
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v9

    .line 1349
    .local v9, "height":I
    invoke-virtual {v0, v8}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v10

    .line 1350
    .local v10, "drawingContent":Z
    const/4 v1, 0x0

    .local v1, "clipLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    .line 1352
    .local v2, "clipRight":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    .line 1353
    .local v11, "restoreCount":I
    const/4 v3, 0x3

    if-eqz v10, :cond_63

    .line 1354
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v4

    .line 1355
    .local v4, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1f
    if-ge v5, v4, :cond_58

    .line 1356
    invoke-virtual {v0, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1357
    .local v6, "v":Landroid/view/View;
    if-eq v6, v8, :cond_55

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v12

    if-nez v12, :cond_55

    invoke-static {v6}, Landroid/support/v4/widget/DrawerLayout;->hasOpaqueBackground(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_55

    invoke-virtual {v0, v6}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v12

    if-eqz v12, :cond_55

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v12

    if-ge v12, v9, :cond_40

    .line 1360
    goto :goto_55

    .line 1363
    :cond_40
    invoke-virtual {v0, v6, v3}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v12

    if-eqz v12, :cond_4e

    .line 1364
    invoke-virtual {v6}, Landroid/view/View;->getRight()I

    move-result v12

    .line 1365
    .local v12, "vright":I
    if-le v12, v1, :cond_4d

    move v1, v12

    .line 1366
    .end local v12    # "vright":I
    :cond_4d
    goto :goto_55

    .line 1367
    :cond_4e
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v12

    .line 1368
    .local v12, "vleft":I
    if-ge v12, v2, :cond_55

    move v2, v12

    .line 1355
    .end local v6    # "v":Landroid/view/View;
    .end local v12    # "vleft":I
    :cond_55
    :goto_55
    add-int/lit8 v5, v5, 0x1

    goto :goto_1f

    .line 1371
    .end local v5    # "i":I
    :cond_58
    const/4 v5, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v6

    invoke-virtual {v7, v1, v5, v2, v6}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    move v12, v1

    move v13, v2

    goto :goto_65

    .line 1353
    .end local v4    # "childCount":I
    :cond_63
    move v12, v1

    move v13, v2

    .line 1373
    .end local v1    # "clipLeft":I
    .end local v2    # "clipRight":I
    .local v12, "clipLeft":I
    .local v13, "clipRight":I
    :goto_65
    invoke-super/range {p0 .. p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v14

    .line 1374
    .local v14, "result":Z
    invoke-virtual {v7, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 1376
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v2, 0x0

    cmpl-float v4, v1, v2

    if-lez v4, :cond_aa

    if-eqz v10, :cond_aa

    .line 1377
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    const/high16 v3, -0x1000000

    and-int/2addr v3, v2

    ushr-int/lit8 v15, v3, 0x18

    .line 1378
    .local v15, "baseAlpha":I
    int-to-float v3, v15

    mul-float v3, v3, v1

    float-to-int v6, v3

    .line 1379
    .local v6, "imag":I
    shl-int/lit8 v1, v6, 0x18

    const v3, 0xffffff

    and-int/2addr v2, v3

    or-int v5, v1, v2

    .line 1380
    .local v5, "color":I
    iget-object v1, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 1382
    int-to-float v2, v12

    int-to-float v4, v13

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v3, v0, Landroid/support/v4/widget/DrawerLayout;->mScrimPaint:Landroid/graphics/Paint;

    move/from16 v17, v1

    move-object/from16 v1, p1

    move-object/from16 v16, v3

    const/4 v3, 0x0

    move/from16 v18, v5

    .end local v5    # "color":I
    .local v18, "color":I
    move/from16 v5, v17

    move/from16 v17, v6

    .end local v6    # "imag":I
    .local v17, "imag":I
    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 1383
    .end local v15    # "baseAlpha":I
    .end local v17    # "imag":I
    .end local v18    # "color":I
    goto/16 :goto_142

    :cond_aa
    iget-object v1, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    const/high16 v5, 0x3f800000    # 1.0f

    if-eqz v1, :cond_f2

    invoke-virtual {v0, v8, v3}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_f2

    .line 1385
    iget-object v1, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1386
    .local v1, "shadowWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getRight()I

    move-result v3

    .line 1387
    .local v3, "childRight":I
    iget-object v6, v0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v6}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v6

    .line 1388
    .local v6, "drawerPeekDistance":I
    int-to-float v15, v3

    int-to-float v4, v6

    div-float/2addr v15, v4

    invoke-static {v15, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1390
    .local v2, "alpha":F
    iget-object v4, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v5

    add-int v15, v3, v1

    move/from16 v17, v1

    .end local v1    # "shadowWidth":I
    .local v17, "shadowWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {v4, v3, v5, v15, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1392
    iget-object v1, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v4, v4, v2

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1393
    iget-object v1, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeftResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .end local v2    # "alpha":F
    .end local v3    # "childRight":I
    .end local v6    # "drawerPeekDistance":I
    .end local v17    # "shadowWidth":I
    goto :goto_141

    .line 1394
    :cond_f2
    iget-object v1, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_141

    const/4 v1, 0x5

    invoke-virtual {v0, v8, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_141

    .line 1396
    iget-object v1, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    .line 1397
    .restart local v1    # "shadowWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLeft()I

    move-result v3

    .line 1398
    .local v3, "childLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v4

    sub-int/2addr v4, v3

    .line 1399
    .local v4, "showing":I
    iget-object v6, v0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v6}, Landroid/support/v4/widget/ViewDragHelper;->getEdgeSize()I

    move-result v6

    .line 1400
    .restart local v6    # "drawerPeekDistance":I
    int-to-float v15, v4

    int-to-float v2, v6

    div-float/2addr v15, v2

    invoke-static {v15, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v5, 0x0

    invoke-static {v5, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 1402
    .restart local v2    # "alpha":F
    iget-object v5, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    sub-int v15, v3, v1

    move/from16 v17, v1

    .end local v1    # "shadowWidth":I
    .restart local v17    # "shadowWidth":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTop()I

    move-result v1

    move/from16 v18, v4

    .end local v4    # "showing":I
    .local v18, "showing":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getBottom()I

    move-result v4

    invoke-virtual {v5, v15, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1404
    iget-object v1, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float v4, v4, v2

    float-to-int v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1405
    iget-object v1, v0, Landroid/support/v4/widget/DrawerLayout;->mShadowRightResolved:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_142

    .line 1394
    .end local v2    # "alpha":F
    .end local v3    # "childLeft":I
    .end local v6    # "drawerPeekDistance":I
    .end local v17    # "shadowWidth":I
    .end local v18    # "showing":I
    :cond_141
    :goto_141
    nop

    .line 1407
    :goto_142
    return v14
.end method

.method findDrawerWithGravity(I)Landroid/view/View;
    .registers 8
    .param p1, "gravity"    # I

    .line 968
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v0, v0, 0x7

    .line 970
    .local v0, "absHorizGravity":I
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    .line 971
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_f
    if-ge v2, v1, :cond_21

    .line 972
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 973
    .local v3, "child":Landroid/view/View;
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v4

    .line 974
    .local v4, "childAbsGravity":I
    and-int/lit8 v5, v4, 0x7

    if-ne v5, v0, :cond_1e

    .line 975
    return-object v3

    .line 971
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childAbsGravity":I
    :cond_1e
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 978
    .end local v2    # "i":I
    :cond_21
    const/4 v2, 0x0

    return-object v2
.end method

.method findOpenDrawer()Landroid/view/View;
    .registers 7

    .line 938
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v0

    .line 939
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_1d

    .line 940
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 941
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 942
    .local v3, "childLp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    # getter for: Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I
    invoke-static {v3}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$100(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I

    move-result v4

    const/4 v5, 0x1

    and-int/2addr v4, v5

    if-ne v4, v5, :cond_1a

    .line 943
    return-object v2

    .line 939
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childLp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 946
    .end local v1    # "i":I
    :cond_1d
    const/4 v1, 0x0

    return-object v1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .line 1745
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 1764
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1750
    instance-of v0, p1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    if-eqz v0, :cond_d

    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)V

    goto :goto_1f

    :cond_d
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1a

    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    goto :goto_1f

    :cond_1a
    new-instance v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    invoke-direct {v0, p1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1f
    return-object v0
.end method

.method public getDrawerElevation()F
    .registers 2

    .line 427
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_7

    .line 428
    iget v0, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    return v0

    .line 430
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public getDrawerLockMode(I)I
    .registers 5
    .param p1, "edgeGravity"    # I

    .line 685
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    .line 687
    .local v0, "layoutDirection":I
    const/4 v1, 0x3

    sparse-switch p1, :sswitch_data_48

    goto :goto_45

    .line 719
    :sswitch_9
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    if-eq v2, v1, :cond_e

    .line 720
    return v2

    .line 722
    :cond_e
    if-nez v0, :cond_13

    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    goto :goto_15

    :cond_13
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    .line 724
    .local v2, "endLockMode":I
    :goto_15
    if-eq v2, v1, :cond_45

    .line 725
    return v2

    .line 709
    .end local v2    # "endLockMode":I
    :sswitch_18
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    if-eq v2, v1, :cond_1d

    .line 710
    return v2

    .line 712
    :cond_1d
    if-nez v0, :cond_22

    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    goto :goto_24

    :cond_22
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    .line 714
    .local v2, "startLockMode":I
    :goto_24
    if-eq v2, v1, :cond_45

    .line 715
    return v2

    .line 699
    .end local v2    # "startLockMode":I
    :sswitch_27
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    if-eq v2, v1, :cond_2c

    .line 700
    return v2

    .line 702
    :cond_2c
    if-nez v0, :cond_31

    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    goto :goto_33

    :cond_31
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    .line 704
    .local v2, "rightLockMode":I
    :goto_33
    if-eq v2, v1, :cond_45

    .line 705
    return v2

    .line 689
    .end local v2    # "rightLockMode":I
    :sswitch_36
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    if-eq v2, v1, :cond_3b

    .line 690
    return v2

    .line 692
    :cond_3b
    if-nez v0, :cond_40

    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    goto :goto_42

    :cond_40
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    .line 694
    .local v2, "leftLockMode":I
    :goto_42
    if-eq v2, v1, :cond_45

    .line 695
    return v2

    .line 730
    .end local v2    # "leftLockMode":I
    :cond_45
    :goto_45
    const/4 v1, 0x0

    return v1

    nop

    :sswitch_data_48
    .sparse-switch
        0x3 -> :sswitch_36
        0x5 -> :sswitch_27
        0x800003 -> :sswitch_18
        0x800005 -> :sswitch_9
    .end sparse-switch
.end method

.method public getDrawerLockMode(Landroid/view/View;)I
    .registers 5
    .param p1, "drawerView"    # Landroid/view/View;

    .line 742
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 745
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 746
    .local v0, "drawerGravity":I
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(I)I

    move-result v1

    return v1

    .line 743
    .end local v0    # "drawerGravity":I
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDrawerTitle(I)Ljava/lang/CharSequence;
    .registers 4
    .param p1, "edgeGravity"    # I

    .line 779
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 781
    .local v0, "absGravity":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    .line 782
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    return-object v1

    .line 783
    :cond_e
    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    .line 784
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    return-object v1

    .line 786
    :cond_14
    const/4 v1, 0x0

    return-object v1
.end method

.method getDrawerViewAbsoluteGravity(Landroid/view/View;)I
    .registers 4
    .param p1, "drawerView"    # Landroid/view/View;

    .line 928
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 929
    .local v0, "gravity":I
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    return v1
.end method

.method getDrawerViewOffset(Landroid/view/View;)F
    .registers 3
    .param p1, "drawerView"    # Landroid/view/View;

    .line 920
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    # getter for: Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v0

    return v0
.end method

.method public getStatusBarBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    .line 1304
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method isContentView(Landroid/view/View;)Z
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 1411
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isDrawerOpen(I)Z
    .registers 4
    .param p1, "drawerGravity"    # I

    .line 1694
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1695
    .local v0, "drawerView":Landroid/view/View;
    if-eqz v0, :cond_b

    .line 1696
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v1

    return v1

    .line 1698
    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method public isDrawerOpen(Landroid/view/View;)Z
    .registers 5
    .param p1, "drawer"    # Landroid/view/View;

    .line 1677
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1680
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1681
    .local v0, "drawerLp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    # getter for: Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$100(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I

    move-result v1

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_15

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    return v2

    .line 1678
    .end local v0    # "drawerLp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isDrawerView(Landroid/view/View;)Z
    .registers 6
    .param p1, "child"    # Landroid/view/View;

    .line 1415
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 1416
    .local v0, "gravity":I
    invoke-static {p1}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    .line 1418
    .local v1, "absGravity":I
    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x1

    if-eqz v2, :cond_16

    .line 1420
    return v3

    .line 1422
    :cond_16
    and-int/lit8 v2, v1, 0x5

    if-eqz v2, :cond_1b

    .line 1424
    return v3

    .line 1426
    :cond_1b
    const/4 v2, 0x0

    return v2
.end method

.method public isDrawerVisible(I)Z
    .registers 4
    .param p1, "drawerGravity"    # I

    .line 1725
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1726
    .local v0, "drawerView":Landroid/view/View;
    if-eqz v0, :cond_b

    .line 1727
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->isDrawerVisible(Landroid/view/View;)Z

    move-result v1

    return v1

    .line 1729
    :cond_b
    const/4 v1, 0x0

    return v1
.end method

.method public isDrawerVisible(Landroid/view/View;)Z
    .registers 5
    .param p1, "drawer"    # Landroid/view/View;

    .line 1710
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 1713
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    # getter for: Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_17

    const/4 v0, 0x1

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :goto_18
    return v0

    .line 1711
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method moveDrawerToOffset(Landroid/view/View;F)V
    .registers 9
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .line 950
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewOffset(Landroid/view/View;)F

    move-result v0

    .line 951
    .local v0, "oldOffset":F
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 952
    .local v1, "width":I
    int-to-float v2, v1

    mul-float v2, v2, v0

    float-to-int v2, v2

    .line 953
    .local v2, "oldPos":I
    int-to-float v3, v1

    mul-float v3, v3, p2

    float-to-int v3, v3

    .line 954
    .local v3, "newPos":I
    sub-int v4, v3, v2

    .line 956
    .local v4, "dx":I
    const/4 v5, 0x3

    invoke-virtual {p0, p1, v5}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v5

    if-eqz v5, :cond_1b

    move v5, v4

    goto :goto_1c

    :cond_1b
    neg-int v5, v4

    :goto_1c
    invoke-virtual {p1, v5}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 958
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 959
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 1005
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1006
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 1007
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 999
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 1000
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 1001
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 1336
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 1337
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_24

    .line 1338
    sget-object v0, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    invoke-interface {v0, v1}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->getTopInset(Ljava/lang/Object;)I

    move-result v0

    .line 1339
    .local v0, "inset":I
    if-lez v0, :cond_24

    .line 1340
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v3, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1341
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1344
    .end local v0    # "inset":I
    :cond_24
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 12
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1431
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionMasked(Landroid/view/MotionEvent;)I

    move-result v0

    .line 1434
    .local v0, "action":I
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    iget-object v2, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v2, p1}, Landroid/support/v4/widget/ViewDragHelper;->shouldInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    or-int/2addr v1, v2

    .line 1437
    .local v1, "interceptForDrag":Z
    const/4 v2, 0x0

    .line 1439
    .local v2, "interceptForTap":Z
    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_6e

    goto :goto_5d

    .line 1458
    :pswitch_18
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/support/v4/widget/ViewDragHelper;->checkTouchSlop(I)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 1459
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    .line 1460
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mRightCallback:Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;

    invoke-virtual {v5}, Landroid/support/v4/widget/DrawerLayout$ViewDragCallback;->removeCallbacks()V

    goto :goto_5d

    .line 1467
    :pswitch_2c
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1468
    iput-boolean v4, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1469
    iput-boolean v4, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_5d

    .line 1441
    :pswitch_34
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 1442
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 1443
    .local v6, "y":F
    iput v5, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    .line 1444
    iput v6, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    .line 1445
    iget v7, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimOpacity:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-lez v7, :cond_58

    .line 1446
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    float-to-int v8, v5

    float-to-int v9, v6

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v7

    .line 1447
    .local v7, "child":Landroid/view/View;
    if-eqz v7, :cond_58

    invoke-virtual {p0, v7}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_58

    .line 1448
    const/4 v2, 0x1

    .line 1451
    .end local v7    # "child":Landroid/view/View;
    :cond_58
    iput-boolean v4, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1452
    iput-boolean v4, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1453
    nop

    .line 1473
    .end local v5    # "x":F
    .end local v6    # "y":F
    :cond_5d
    :goto_5d
    if-nez v1, :cond_6d

    if-nez v2, :cond_6d

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->hasPeekingDrawer()Z

    move-result v5

    if-nez v5, :cond_6d

    iget-boolean v5, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    if-eqz v5, :cond_6c

    goto :goto_6d

    :cond_6c
    const/4 v3, 0x0

    :cond_6d
    :goto_6d
    return v3

    :pswitch_data_6e
    .packed-switch 0x0
        :pswitch_34
        :pswitch_2c
        :pswitch_18
        :pswitch_2c
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1834
    const/4 v0, 0x4

    if-ne p1, v0, :cond_e

    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->hasVisibleDrawer()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1835
    invoke-static {p2}, Landroid/support/v4/view/KeyEventCompat;->startTracking(Landroid/view/KeyEvent;)V

    .line 1836
    const/4 v0, 0x1

    return v0

    .line 1838
    :cond_e
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .line 1843
    const/4 v0, 0x4

    if-ne p1, v0, :cond_18

    .line 1844
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->findVisibleDrawer()Landroid/view/View;

    move-result-object v0

    .line 1845
    .local v0, "visibleDrawer":Landroid/view/View;
    if-eqz v0, :cond_12

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v1

    if-nez v1, :cond_12

    .line 1846
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers()V

    .line 1848
    :cond_12
    if-eqz v0, :cond_16

    const/4 v1, 0x1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    :goto_17
    return v1

    .line 1850
    .end local v0    # "visibleDrawer":Landroid/view/View;
    :cond_18
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .registers 23
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1174
    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    .line 1175
    sub-int v2, p4, p2

    .line 1176
    .local v2, "width":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v3

    .line 1177
    .local v3, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_c
    if-ge v4, v3, :cond_e3

    .line 1178
    invoke-virtual {v0, v4}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1180
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    const/16 v8, 0x8

    if-ne v7, v8, :cond_1c

    .line 1181
    goto/16 :goto_de

    .line 1184
    :cond_1c
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1186
    .local v7, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    invoke-virtual {v0, v6}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_3f

    .line 1187
    iget v5, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    iget v8, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    iget v9, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v9, v10

    iget v10, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v6, v5, v8, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto/16 :goto_de

    .line 1191
    :cond_3f
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 1192
    .local v8, "childWidth":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 1196
    .local v9, "childHeight":I
    const/4 v10, 0x3

    invoke-virtual {v0, v6, v10}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v10

    if-eqz v10, :cond_5e

    .line 1197
    neg-int v10, v8

    int-to-float v11, v8

    # getter for: Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F
    invoke-static {v7}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v12

    mul-float v11, v11, v12

    float-to-int v11, v11

    add-int/2addr v10, v11

    .line 1198
    .local v10, "childLeft":I
    add-int v11, v8, v10

    int-to-float v11, v11

    int-to-float v12, v8

    div-float/2addr v11, v12

    .local v11, "newOffset":F
    goto :goto_6d

    .line 1200
    .end local v10    # "childLeft":I
    .end local v11    # "newOffset":F
    :cond_5e
    int-to-float v10, v8

    # getter for: Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F
    invoke-static {v7}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v11

    mul-float v10, v10, v11

    float-to-int v10, v10

    sub-int v10, v2, v10

    .line 1201
    .restart local v10    # "childLeft":I
    sub-int v11, v2, v10

    int-to-float v11, v11

    int-to-float v12, v8

    div-float/2addr v11, v12

    .line 1204
    .restart local v11    # "newOffset":F
    :goto_6d
    # getter for: Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F
    invoke-static {v7}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v12

    cmpl-float v12, v11, v12

    if-eqz v12, :cond_77

    const/4 v12, 0x1

    goto :goto_78

    :cond_77
    const/4 v12, 0x0

    .line 1206
    .local v12, "changeOffset":Z
    :goto_78
    iget v13, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    and-int/lit8 v13, v13, 0x70

    .line 1208
    .local v13, "vgrav":I
    sparse-switch v13, :sswitch_data_ea

    .line 1211
    iget v1, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    add-int v5, v10, v8

    iget v14, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    add-int/2addr v14, v9

    invoke-virtual {v6, v10, v1, v5, v14}, Landroid/view/View;->layout(IIII)V

    .line 1213
    goto :goto_c3

    .line 1217
    :sswitch_8a
    sub-int v14, p5, p3

    .line 1218
    .local v14, "height":I
    iget v15, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v15, v14, v15

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    sub-int v15, v15, v16

    add-int v1, v10, v8

    iget v5, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v5, v14, v5

    invoke-virtual {v6, v10, v15, v1, v5}, Landroid/view/View;->layout(IIII)V

    .line 1222
    goto :goto_c3

    .line 1226
    .end local v14    # "height":I
    :sswitch_a0
    sub-int v1, p5, p3

    .line 1227
    .local v1, "height":I
    sub-int v5, v1, v9

    div-int/lit8 v5, v5, 0x2

    .line 1231
    .local v5, "childTop":I
    iget v14, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    if-ge v5, v14, :cond_ad

    .line 1232
    iget v5, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    goto :goto_bb

    .line 1233
    :cond_ad
    add-int v14, v5, v9

    iget v15, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v15, v1, v15

    if-le v14, v15, :cond_bb

    .line 1234
    iget v14, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int v14, v1, v14

    sub-int v5, v14, v9

    .line 1236
    :cond_bb
    :goto_bb
    add-int v14, v10, v8

    add-int v15, v5, v9

    invoke-virtual {v6, v10, v5, v14, v15}, Landroid/view/View;->layout(IIII)V

    .line 1238
    nop

    .line 1242
    .end local v1    # "height":I
    .end local v5    # "childTop":I
    :goto_c3
    if-eqz v12, :cond_c8

    .line 1243
    invoke-virtual {v0, v6, v11}, Landroid/support/v4/widget/DrawerLayout;->setDrawerViewOffset(Landroid/view/View;F)V

    .line 1246
    :cond_c8
    # getter for: Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F
    invoke-static {v7}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v1

    const/4 v5, 0x0

    cmpl-float v1, v1, v5

    if-lez v1, :cond_d3

    const/4 v5, 0x0

    goto :goto_d4

    :cond_d3
    const/4 v5, 0x4

    :goto_d4
    move v1, v5

    .line 1247
    .local v1, "newVisibility":I
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v1, :cond_de

    .line 1248
    invoke-virtual {v6, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1177
    .end local v1    # "newVisibility":I
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    .end local v8    # "childWidth":I
    .end local v9    # "childHeight":I
    .end local v10    # "childLeft":I
    .end local v11    # "newOffset":F
    .end local v12    # "changeOffset":Z
    .end local v13    # "vgrav":I
    :cond_de
    :goto_de
    add-int/lit8 v4, v4, 0x1

    const/4 v1, 0x1

    goto/16 :goto_c

    .line 1252
    .end local v4    # "i":I
    :cond_e3
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    .line 1253
    iput-boolean v1, v0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    .line 1254
    return-void

    nop

    :sswitch_data_ea
    .sparse-switch
        0x10 -> :sswitch_a0
        0x50 -> :sswitch_8a
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1011
    move-object/from16 v0, p0

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 1012
    .local v1, "widthMode":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 1013
    .local v2, "heightMode":I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 1014
    .local v3, "widthSize":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 1016
    .local v4, "heightSize":I
    const/high16 v5, 0x40000000    # 2.0f

    if-ne v1, v5, :cond_18

    if-eq v2, v5, :cond_36

    .line 1017
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->isInEditMode()Z

    move-result v6

    if-eqz v6, :cond_184

    .line 1022
    const/high16 v6, -0x80000000

    if-ne v1, v6, :cond_25

    .line 1023
    const/high16 v1, 0x40000000    # 2.0f

    goto :goto_2b

    .line 1024
    :cond_25
    if-nez v1, :cond_2b

    .line 1025
    const/high16 v1, 0x40000000    # 2.0f

    .line 1026
    const/16 v3, 0x12c

    .line 1028
    :cond_2b
    :goto_2b
    if-ne v2, v6, :cond_30

    .line 1029
    const/high16 v2, 0x40000000    # 2.0f

    goto :goto_36

    .line 1031
    :cond_30
    if-nez v2, :cond_36

    .line 1032
    const/high16 v2, 0x40000000    # 2.0f

    .line 1033
    const/16 v4, 0x12c

    .line 1041
    :cond_36
    :goto_36
    invoke-virtual {v0, v3, v4}, Landroid/support/v4/widget/DrawerLayout;->setMeasuredDimension(II)V

    .line 1043
    iget-object v6, v0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    if-eqz v6, :cond_45

    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_45

    const/4 v6, 0x1

    goto :goto_46

    :cond_45
    const/4 v6, 0x0

    .line 1044
    .local v6, "applyInsets":Z
    :goto_46
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v9

    .line 1048
    .local v9, "layoutDirection":I
    const/4 v10, 0x0

    .line 1049
    .local v10, "hasDrawerOnLeftEdge":Z
    const/4 v11, 0x0

    .line 1050
    .local v11, "hasDrawerOnRightEdge":Z
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v12

    .line 1051
    .local v12, "childCount":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_51
    if-ge v13, v12, :cond_183

    .line 1052
    invoke-virtual {v0, v13}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1054
    .local v14, "child":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    const/16 v7, 0x8

    if-ne v15, v7, :cond_64

    .line 1055
    move/from16 v17, v1

    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_ab

    .line 1058
    :cond_64
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1060
    .local v7, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    if-eqz v6, :cond_87

    .line 1061
    iget v15, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    invoke-static {v15, v9}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v15

    .line 1062
    .local v15, "cgrav":I
    invoke-static {v14}, Landroid/support/v4/view/ViewCompat;->getFitsSystemWindows(Landroid/view/View;)Z

    move-result v16

    if-eqz v16, :cond_80

    .line 1063
    sget-object v8, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    iget-object v5, v0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    invoke-interface {v8, v14, v5, v15}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->dispatchChildInsets(Landroid/view/View;Ljava/lang/Object;I)V

    goto :goto_87

    .line 1065
    :cond_80
    sget-object v5, Landroid/support/v4/widget/DrawerLayout;->IMPL:Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;

    iget-object v8, v0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    invoke-interface {v5, v7, v8, v15}, Landroid/support/v4/widget/DrawerLayout$DrawerLayoutCompatImpl;->applyMarginInsets(Landroid/view/ViewGroup$MarginLayoutParams;Ljava/lang/Object;I)V

    .line 1069
    .end local v15    # "cgrav":I
    :cond_87
    :goto_87
    invoke-virtual {v0, v14}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 1071
    iget v5, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    sub-int v5, v3, v5

    iget v8, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v5, v8

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1073
    .local v5, "contentWidthSpec":I
    iget v15, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    sub-int v15, v4, v15

    move/from16 v17, v1

    .end local v1    # "widthMode":I
    .local v17, "widthMode":I
    iget v1, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v15, v1

    invoke-static {v15, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1075
    .local v1, "contentHeightSpec":I
    invoke-virtual {v14, v5, v1}, Landroid/view/View;->measure(II)V

    .line 1076
    .end local v1    # "contentHeightSpec":I
    .end local v5    # "contentWidthSpec":I
    nop

    .line 1051
    .end local v7    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    .end local v14    # "child":Landroid/view/View;
    .end local v17    # "widthMode":I
    .local v1, "widthMode":I
    :goto_ab
    move/from16 v8, p1

    move/from16 v1, p2

    move/from16 v18, v2

    .end local v1    # "widthMode":I
    .restart local v17    # "widthMode":I
    goto/16 :goto_146

    .line 1076
    .end local v17    # "widthMode":I
    .restart local v1    # "widthMode":I
    .restart local v7    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    .restart local v14    # "child":Landroid/view/View;
    :cond_b3
    move/from16 v17, v1

    const/high16 v8, 0x40000000    # 2.0f

    .end local v1    # "widthMode":I
    .restart local v17    # "widthMode":I
    invoke-virtual {v0, v14}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_152

    .line 1077
    sget-boolean v1, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v1, :cond_ce

    .line 1078
    invoke-static {v14}, Landroid/support/v4/view/ViewCompat;->getElevation(Landroid/view/View;)F

    move-result v1

    iget v5, v0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    cmpl-float v1, v1, v5

    if-eqz v1, :cond_ce

    .line 1079
    invoke-static {v14, v5}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 1082
    :cond_ce
    invoke-virtual {v0, v14}, Landroid/support/v4/widget/DrawerLayout;->getDrawerViewAbsoluteGravity(Landroid/view/View;)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    .line 1086
    .local v1, "childGravity":I
    const/4 v5, 0x3

    if-ne v1, v5, :cond_d9

    const/4 v5, 0x1

    goto :goto_da

    :cond_d9
    const/4 v5, 0x0

    .line 1087
    .local v5, "isLeftEdgeDrawer":Z
    :goto_da
    if-eqz v5, :cond_de

    if-nez v10, :cond_e5

    :cond_de
    if-nez v5, :cond_11c

    if-nez v11, :cond_e5

    move/from16 v18, v2

    goto :goto_11e

    .line 1089
    :cond_e5
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v18, v2

    .end local v2    # "heightMode":I
    .local v18, "heightMode":I
    const-string v2, "Child drawer has absolute gravity "

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, " but this "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, "DrawerLayout"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, " already has a "

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, "drawer view along that edge"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1087
    .end local v18    # "heightMode":I
    .restart local v2    # "heightMode":I
    :cond_11c
    move/from16 v18, v2

    .line 1093
    .end local v2    # "heightMode":I
    .restart local v18    # "heightMode":I
    :goto_11e
    if-eqz v5, :cond_122

    .line 1094
    const/4 v10, 0x1

    goto :goto_123

    .line 1096
    :cond_122
    const/4 v11, 0x1

    .line 1098
    :goto_123
    iget v2, v0, Landroid/support/v4/widget/DrawerLayout;->mMinDrawerMargin:I

    iget v15, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v15

    iget v15, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v15

    iget v15, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->width:I

    move/from16 v8, p1

    invoke-static {v8, v2, v15}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v2

    .line 1101
    .local v2, "drawerWidthSpec":I
    iget v15, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->topMargin:I

    iget v0, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v15, v0

    iget v0, v7, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->height:I

    move/from16 v19, v1

    move/from16 v1, p2

    .end local v1    # "childGravity":I
    .local v19, "childGravity":I
    invoke-static {v1, v15, v0}, Landroid/support/v4/widget/DrawerLayout;->getChildMeasureSpec(III)I

    move-result v0

    .line 1104
    .local v0, "drawerHeightSpec":I
    invoke-virtual {v14, v2, v0}, Landroid/view/View;->measure(II)V

    .line 1105
    .end local v0    # "drawerHeightSpec":I
    .end local v2    # "drawerWidthSpec":I
    .end local v5    # "isLeftEdgeDrawer":Z
    .end local v19    # "childGravity":I
    nop

    .line 1051
    .end local v7    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    .end local v14    # "child":Landroid/view/View;
    :goto_146
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    const/high16 v5, 0x40000000    # 2.0f

    goto/16 :goto_51

    .line 1106
    .end local v18    # "heightMode":I
    .local v2, "heightMode":I
    .restart local v7    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    .restart local v14    # "child":Landroid/view/View;
    :cond_152
    move/from16 v18, v2

    .end local v2    # "heightMode":I
    .restart local v18    # "heightMode":I
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Child "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " at index "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " does not have a valid layout_gravity - must be Gravity.LEFT, "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "Gravity.RIGHT or Gravity.NO_GRAVITY"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1111
    .end local v7    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    .end local v13    # "i":I
    .end local v14    # "child":Landroid/view/View;
    .end local v17    # "widthMode":I
    .end local v18    # "heightMode":I
    .local v1, "widthMode":I
    .restart local v2    # "heightMode":I
    :cond_183
    return-void

    .line 1036
    .end local v6    # "applyInsets":Z
    .end local v9    # "layoutDirection":I
    .end local v10    # "hasDrawerOnLeftEdge":Z
    .end local v11    # "hasDrawerOnRightEdge":Z
    .end local v12    # "childCount":I
    :cond_184
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "DrawerLayout must be measured with MeasureSpec.EXACTLY."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_18d

    :goto_18c
    throw v5

    :goto_18d
    goto :goto_18c
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1855
    move-object v0, p1

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$SavedState;

    .line 1856
    .local v0, "ss":Landroid/support/v4/widget/DrawerLayout$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/widget/DrawerLayout$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1858
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    if-eqz v1, :cond_19

    .line 1859
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    .line 1860
    .local v1, "toOpen":Landroid/view/View;
    if-eqz v1, :cond_19

    .line 1861
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 1865
    .end local v1    # "toOpen":Landroid/view/View;
    :cond_19
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_23

    .line 1866
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1868
    :cond_23
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    if-eq v1, v2, :cond_2d

    .line 1869
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    const/4 v3, 0x5

    invoke-virtual {p0, v1, v3}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1871
    :cond_2d
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I

    if-eq v1, v2, :cond_39

    .line 1872
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I

    const v3, 0x800003

    invoke-virtual {p0, v1, v3}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1874
    :cond_39
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I

    if-eq v1, v2, :cond_45

    .line 1875
    iget v1, v0, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I

    const v2, 0x800005

    invoke-virtual {p0, v1, v2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 1877
    :cond_45
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .registers 2
    .param p1, "layoutDirection"    # I

    .line 1331
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveShadowDrawables()V

    .line 1332
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 12

    .line 1881
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1882
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/support/v4/widget/DrawerLayout$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/widget/DrawerLayout$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1884
    .local v1, "ss":Landroid/support/v4/widget/DrawerLayout$SavedState;
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v2

    .line 1885
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_e
    if-ge v3, v2, :cond_39

    .line 1886
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1887
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1889
    .local v5, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    # getter for: Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I
    invoke-static {v5}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$100(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v6, v8, :cond_24

    const/4 v6, 0x1

    goto :goto_25

    :cond_24
    const/4 v6, 0x0

    .line 1891
    .local v6, "isOpenedAndNotClosing":Z
    :goto_25
    # getter for: Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I
    invoke-static {v5}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$100(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2d

    const/4 v7, 0x1

    .line 1892
    .local v7, "isClosedAndOpening":Z
    :cond_2d
    if-nez v6, :cond_35

    if-eqz v7, :cond_32

    goto :goto_35

    .line 1885
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    .end local v6    # "isOpenedAndNotClosing":Z
    .end local v7    # "isClosedAndOpening":Z
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1895
    .restart local v4    # "child":Landroid/view/View;
    .restart local v5    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    .restart local v6    # "isOpenedAndNotClosing":Z
    .restart local v7    # "isClosedAndOpening":Z
    :cond_35
    :goto_35
    iget v8, v5, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    iput v8, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->openDrawerGravity:I

    .line 1900
    .end local v3    # "i":I
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    .end local v6    # "isOpenedAndNotClosing":Z
    .end local v7    # "isClosedAndOpening":Z
    :cond_39
    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    iput v3, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeLeft:I

    .line 1901
    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    iput v3, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeRight:I

    .line 1902
    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    iput v3, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeStart:I

    .line 1903
    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    iput v3, v1, Landroid/support/v4/widget/DrawerLayout$SavedState;->lockModeEnd:I

    .line 1905
    return-object v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1478
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1479
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0, p1}, Landroid/support/v4/widget/ViewDragHelper;->processTouchEvent(Landroid/view/MotionEvent;)V

    .line 1481
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1482
    .local v0, "action":I
    const/4 v1, 0x1

    .line 1484
    .local v1, "wantTouchEvents":Z
    and-int/lit16 v2, v0, 0xff

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_7a

    :pswitch_16
    goto :goto_79

    .line 1518
    :pswitch_17
    invoke-virtual {p0, v3}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1519
    iput-boolean v4, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1520
    iput-boolean v4, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    goto :goto_79

    .line 1496
    :pswitch_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1497
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    .line 1498
    .local v5, "y":F
    const/4 v6, 0x1

    .line 1499
    .local v6, "peekingOnly":Z
    iget-object v7, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    float-to-int v8, v2

    float-to-int v9, v5

    invoke-virtual {v7, v8, v9}, Landroid/support/v4/widget/ViewDragHelper;->findTopChildUnder(II)Landroid/view/View;

    move-result-object v7

    .line 1500
    .local v7, "touchedView":Landroid/view/View;
    if-eqz v7, :cond_62

    invoke-virtual {p0, v7}, Landroid/support/v4/widget/DrawerLayout;->isContentView(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_62

    .line 1501
    iget v8, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    sub-float v8, v2, v8

    .line 1502
    .local v8, "dx":F
    iget v9, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    sub-float v9, v5, v9

    .line 1503
    .local v9, "dy":F
    iget-object v10, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v10}, Landroid/support/v4/widget/ViewDragHelper;->getTouchSlop()I

    move-result v10

    .line 1504
    .local v10, "slop":I
    mul-float v11, v8, v8

    mul-float v12, v9, v9

    add-float/2addr v11, v12

    mul-int v12, v10, v10

    int-to-float v12, v12

    cmpg-float v11, v11, v12

    if-gez v11, :cond_62

    .line 1506
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->findOpenDrawer()Landroid/view/View;

    move-result-object v11

    .line 1507
    .local v11, "openDrawer":Landroid/view/View;
    if-eqz v11, :cond_62

    .line 1508
    invoke-virtual {p0, v11}, Landroid/support/v4/widget/DrawerLayout;->getDrawerLockMode(Landroid/view/View;)I

    move-result v12

    const/4 v13, 0x2

    if-ne v12, v13, :cond_60

    goto :goto_61

    :cond_60
    const/4 v3, 0x0

    :goto_61
    move v6, v3

    .line 1512
    .end local v8    # "dx":F
    .end local v9    # "dy":F
    .end local v10    # "slop":I
    .end local v11    # "openDrawer":Landroid/view/View;
    :cond_62
    invoke-virtual {p0, v6}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1513
    iput-boolean v4, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1514
    goto :goto_79

    .line 1486
    .end local v2    # "x":F
    .end local v5    # "y":F
    .end local v6    # "peekingOnly":Z
    .end local v7    # "touchedView":Landroid/view/View;
    :pswitch_68
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 1487
    .restart local v2    # "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 1488
    .local v3, "y":F
    iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionX:F

    .line 1489
    iput v3, p0, Landroid/support/v4/widget/DrawerLayout;->mInitialMotionY:F

    .line 1490
    iput-boolean v4, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1491
    iput-boolean v4, p0, Landroid/support/v4/widget/DrawerLayout;->mChildrenCanceledTouch:Z

    .line 1492
    nop

    .line 1525
    .end local v2    # "x":F
    .end local v3    # "y":F
    :goto_79
    return v1

    :pswitch_data_7a
    .packed-switch 0x0
        :pswitch_68
        :pswitch_1f
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method public openDrawer(I)V
    .registers 6
    .param p1, "gravity"    # I

    .line 1616
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v0

    .line 1617
    .local v0, "drawerView":Landroid/view/View;
    if-eqz v0, :cond_a

    .line 1621
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 1622
    return-void

    .line 1618
    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No drawer view found with gravity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Landroid/support/v4/widget/DrawerLayout;->gravityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openDrawer(Landroid/view/View;)V
    .registers 6
    .param p1, "drawerView"    # Landroid/view/View;

    .line 1586
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_49

    .line 1590
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 1591
    .local v0, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    iget-boolean v1, p0, Landroid/support/v4/widget/DrawerLayout;->mFirstLayout:Z

    if-eqz v1, :cond_1d

    .line 1592
    const/high16 v1, 0x3f800000    # 1.0f

    # setter for: Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$002(Landroid/support/v4/widget/DrawerLayout$LayoutParams;F)F

    .line 1593
    const/4 v1, 0x1

    # setter for: Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$102(Landroid/support/v4/widget/DrawerLayout$LayoutParams;I)I

    .line 1595
    invoke-direct {p0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->updateChildrenImportantForAccessibility(Landroid/view/View;Z)V

    goto :goto_45

    .line 1597
    :cond_1d
    const/4 v1, 0x2

    # |= operator for: Landroid/support/v4/widget/DrawerLayout$LayoutParams;->openState:I
    invoke-static {v0, v1}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$176(Landroid/support/v4/widget/DrawerLayout$LayoutParams;I)I

    .line 1599
    const/4 v1, 0x3

    invoke-virtual {p0, p1, v1}, Landroid/support/v4/widget/DrawerLayout;->checkDrawerViewAbsoluteGravity(Landroid/view/View;I)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 1600
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    goto :goto_45

    .line 1602
    :cond_33
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-virtual {v1, p1, v2, v3}, Landroid/support/v4/widget/ViewDragHelper;->smoothSlideViewTo(Landroid/view/View;II)Z

    .line 1606
    :goto_45
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1607
    return-void

    .line 1587
    .end local v0    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a sliding drawer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    .line 561
    if-nez p1, :cond_3

    .line 562
    return-void

    .line 564
    :cond_3
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-nez v0, :cond_8

    .line 566
    return-void

    .line 568
    :cond_8
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 569
    return-void
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 3
    .param p1, "disallowIntercept"    # Z

    .line 1533
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 1535
    iput-boolean p1, p0, Landroid/support/v4/widget/DrawerLayout;->mDisallowInterceptRequested:Z

    .line 1536
    if-eqz p1, :cond_b

    .line 1537
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->closeDrawers(Z)V

    .line 1539
    :cond_b
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .line 1258
    iget-boolean v0, p0, Landroid/support/v4/widget/DrawerLayout;->mInLayout:Z

    if-nez v0, :cond_7

    .line 1259
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 1261
    :cond_7
    return-void
.end method

.method public setChildInsets(Ljava/lang/Object;Z)V
    .registers 4
    .param p1, "insets"    # Ljava/lang/Object;
    .param p2, "draw"    # Z

    .line 439
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLastInsets:Ljava/lang/Object;

    .line 440
    iput-boolean p2, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawStatusBarBackground:Z

    .line 441
    if-nez p2, :cond_e

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->setWillNotDraw(Z)V

    .line 442
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->requestLayout()V

    .line 443
    return-void
.end method

.method public setDrawerElevation(F)V
    .registers 5
    .param p1, "elevation"    # F

    .line 410
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    .line 411
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 412
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 413
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 414
    iget v2, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerElevation:F

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    .line 411
    .end local v1    # "child":Landroid/view/View;
    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 417
    .end local v0    # "i":I
    :cond_1b
    return-void
.end method

.method public setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/support/v4/widget/DrawerLayout$DrawerListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 526
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    if-eqz v0, :cond_7

    .line 527
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->removeDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 529
    :cond_7
    if-eqz p1, :cond_c

    .line 530
    invoke-virtual {p0, p1}, Landroid/support/v4/widget/DrawerLayout;->addDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 534
    :cond_c
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mListener:Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    .line 535
    return-void
.end method

.method public setDrawerLockMode(I)V
    .registers 3
    .param p1, "lockMode"    # I

    .line 585
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 586
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 587
    return-void
.end method

.method public setDrawerLockMode(II)V
    .registers 5
    .param p1, "lockMode"    # I
    .param p2, "edgeGravity"    # I

    .line 609
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p2, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 612
    .local v0, "absGravity":I
    sparse-switch p2, :sswitch_data_3e

    goto :goto_18

    .line 623
    :sswitch_c
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeEnd:I

    goto :goto_18

    .line 620
    :sswitch_f
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeStart:I

    .line 621
    goto :goto_18

    .line 617
    :sswitch_12
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeRight:I

    .line 618
    goto :goto_18

    .line 614
    :sswitch_15
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mLockModeLeft:I

    .line 615
    nop

    .line 627
    :goto_18
    if-eqz p1, :cond_25

    .line 629
    const/4 v1, 0x3

    if-ne v0, v1, :cond_20

    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    goto :goto_22

    :cond_20
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    .line 630
    .local v1, "helper":Landroid/support/v4/widget/ViewDragHelper;
    :goto_22
    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->cancel()V

    .line 632
    .end local v1    # "helper":Landroid/support/v4/widget/ViewDragHelper;
    :cond_25
    packed-switch p1, :pswitch_data_50

    goto :goto_3c

    .line 634
    :pswitch_29
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    .line 635
    .local v1, "toOpen":Landroid/view/View;
    if-eqz v1, :cond_3c

    .line 636
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    goto :goto_3c

    .line 640
    .end local v1    # "toOpen":Landroid/view/View;
    :pswitch_33
    invoke-virtual {p0, v0}, Landroid/support/v4/widget/DrawerLayout;->findDrawerWithGravity(I)Landroid/view/View;

    move-result-object v1

    .line 641
    .local v1, "toClose":Landroid/view/View;
    if-eqz v1, :cond_3c

    .line 642
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 647
    .end local v1    # "toClose":Landroid/view/View;
    :cond_3c
    :goto_3c
    return-void

    nop

    :sswitch_data_3e
    .sparse-switch
        0x3 -> :sswitch_15
        0x5 -> :sswitch_12
        0x800003 -> :sswitch_f
        0x800005 -> :sswitch_c
    .end sparse-switch

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_33
        :pswitch_29
    .end packed-switch
.end method

.method public setDrawerLockMode(ILandroid/view/View;)V
    .registers 6
    .param p1, "lockMode"    # I
    .param p2, "drawerView"    # Landroid/view/View;

    .line 668
    invoke-virtual {p0, p2}, Landroid/support/v4/widget/DrawerLayout;->isDrawerView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 672
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    iget v0, v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->gravity:I

    .line 673
    .local v0, "gravity":I
    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/DrawerLayout;->setDrawerLockMode(II)V

    .line 674
    return-void

    .line 669
    .end local v0    # "gravity":I
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "drawer with appropriate layout_gravity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDrawerShadow(II)V
    .registers 4
    .param p1, "resId"    # I
    .param p2, "gravity"    # I

    .line 499
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/widget/DrawerLayout;->setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V

    .line 500
    return-void
.end method

.method public setDrawerShadow(Landroid/graphics/drawable/Drawable;I)V
    .registers 5
    .param p1, "shadowDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "gravity"    # I

    .line 465
    sget-boolean v0, Landroid/support/v4/widget/DrawerLayout;->SET_DRAWER_SHADOW_FROM_ELEVATION:Z

    if-eqz v0, :cond_5

    .line 467
    return-void

    .line 469
    :cond_5
    const v0, 0x800003

    and-int v1, p2, v0

    if-ne v1, v0, :cond_f

    .line 470
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowStart:Landroid/graphics/drawable/Drawable;

    goto :goto_28

    .line 471
    :cond_f
    const v0, 0x800005

    and-int v1, p2, v0

    if-ne v1, v0, :cond_19

    .line 472
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowEnd:Landroid/graphics/drawable/Drawable;

    goto :goto_28

    .line 473
    :cond_19
    and-int/lit8 v0, p2, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_21

    .line 474
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowLeft:Landroid/graphics/drawable/Drawable;

    goto :goto_28

    .line 475
    :cond_21
    and-int/lit8 v0, p2, 0x5

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2f

    .line 476
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mShadowRight:Landroid/graphics/drawable/Drawable;

    .line 480
    :goto_28
    invoke-direct {p0}, Landroid/support/v4/widget/DrawerLayout;->resolveShadowDrawables()V

    .line 481
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 482
    return-void

    .line 478
    :cond_2f
    return-void
.end method

.method public setDrawerTitle(ILjava/lang/CharSequence;)V
    .registers 5
    .param p1, "edgeGravity"    # I
    .param p2, "title"    # Ljava/lang/CharSequence;

    .line 760
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v0

    .line 762
    .local v0, "absGravity":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_e

    .line 763
    iput-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleLeft:Ljava/lang/CharSequence;

    goto :goto_13

    .line 764
    :cond_e
    const/4 v1, 0x5

    if-ne v0, v1, :cond_13

    .line 765
    iput-object p2, p0, Landroid/support/v4/widget/DrawerLayout;->mTitleRight:Ljava/lang/CharSequence;

    .line 767
    :cond_13
    :goto_13
    return-void
.end method

.method setDrawerViewOffset(Landroid/view/View;F)V
    .registers 5
    .param p1, "drawerView"    # Landroid/view/View;
    .param p2, "slideOffset"    # F

    .line 910
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 911
    .local v0, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    # getter for: Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F
    invoke-static {v0}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v1

    cmpl-float v1, p2, v1

    if-nez v1, :cond_f

    .line 912
    return-void

    .line 915
    :cond_f
    # setter for: Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F
    invoke-static {v0, p2}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$002(Landroid/support/v4/widget/DrawerLayout$LayoutParams;F)F

    .line 916
    invoke-virtual {p0, p1, p2}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerSlide(Landroid/view/View;F)V

    .line 917
    return-void
.end method

.method public setScrimColor(I)V
    .registers 2
    .param p1, "color"    # I

    .line 508
    iput p1, p0, Landroid/support/v4/widget/DrawerLayout;->mScrimColor:I

    .line 509
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 510
    return-void
.end method

.method public setStatusBarBackground(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 1314
    if-eqz p1, :cond_b

    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1315
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1316
    return-void
.end method

.method public setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .registers 2
    .param p1, "bg"    # Landroid/graphics/drawable/Drawable;

    .line 1294
    iput-object p1, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1295
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1296
    return-void
.end method

.method public setStatusBarBackgroundColor(I)V
    .registers 3
    .param p1, "color"    # I

    .line 1326
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    iput-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mStatusBarBackground:Landroid/graphics/drawable/Drawable;

    .line 1327
    invoke-virtual {p0}, Landroid/support/v4/widget/DrawerLayout;->invalidate()V

    .line 1328
    return-void
.end method

.method updateDrawerState(IILandroid/view/View;)V
    .registers 10
    .param p1, "forGravity"    # I
    .param p2, "activeState"    # I
    .param p3, "activeDrawer"    # Landroid/view/View;

    .line 794
    iget-object v0, p0, Landroid/support/v4/widget/DrawerLayout;->mLeftDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v0}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v0

    .line 795
    .local v0, "leftState":I
    iget-object v1, p0, Landroid/support/v4/widget/DrawerLayout;->mRightDragger:Landroid/support/v4/widget/ViewDragHelper;

    invoke-virtual {v1}, Landroid/support/v4/widget/ViewDragHelper;->getViewDragState()I

    move-result v1

    .line 798
    .local v1, "rightState":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_1c

    if-ne v1, v2, :cond_12

    goto :goto_1c

    .line 800
    :cond_12
    const/4 v2, 0x2

    if-eq v0, v2, :cond_1a

    if-ne v1, v2, :cond_18

    goto :goto_1a

    .line 803
    :cond_18
    const/4 v2, 0x0

    .local v2, "state":I
    goto :goto_1d

    .line 801
    .end local v2    # "state":I
    :cond_1a
    :goto_1a
    const/4 v2, 0x2

    .restart local v2    # "state":I
    goto :goto_1d

    .line 799
    .end local v2    # "state":I
    :cond_1c
    :goto_1c
    const/4 v2, 0x1

    .line 806
    .restart local v2    # "state":I
    :goto_1d
    if-eqz p3, :cond_41

    if-nez p2, :cond_41

    .line 807
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/v4/widget/DrawerLayout$LayoutParams;

    .line 808
    .local v3, "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    # getter for: Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F
    invoke-static {v3}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-nez v4, :cond_34

    .line 809
    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerClosed(Landroid/view/View;)V

    goto :goto_41

    .line 810
    :cond_34
    # getter for: Landroid/support/v4/widget/DrawerLayout$LayoutParams;->onScreen:F
    invoke-static {v3}, Landroid/support/v4/widget/DrawerLayout$LayoutParams;->access$000(Landroid/support/v4/widget/DrawerLayout$LayoutParams;)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    cmpl-float v4, v4, v5

    if-nez v4, :cond_41

    .line 811
    invoke-virtual {p0, p3}, Landroid/support/v4/widget/DrawerLayout;->dispatchOnDrawerOpened(Landroid/view/View;)V

    .line 815
    .end local v3    # "lp":Landroid/support/v4/widget/DrawerLayout$LayoutParams;
    :cond_41
    :goto_41
    iget v3, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerState:I

    if-eq v2, v3, :cond_61

    .line 816
    iput v2, p0, Landroid/support/v4/widget/DrawerLayout;->mDrawerState:I

    .line 818
    iget-object v3, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    if-eqz v3, :cond_61

    .line 821
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 822
    .local v3, "listenerCount":I
    add-int/lit8 v4, v3, -0x1

    .local v4, "i":I
    :goto_51
    if-ltz v4, :cond_61

    .line 823
    iget-object v5, p0, Landroid/support/v4/widget/DrawerLayout;->mListeners:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/widget/DrawerLayout$DrawerListener;

    invoke-interface {v5, v2}, Landroid/support/v4/widget/DrawerLayout$DrawerListener;->onDrawerStateChanged(I)V

    .line 822
    add-int/lit8 v4, v4, -0x1

    goto :goto_51

    .line 827
    .end local v3    # "listenerCount":I
    .end local v4    # "i":I
    :cond_61
    return-void
.end method
