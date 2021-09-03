.class public Ltds/androidx/recyclerview/widget/RecyclerView;
.super Landroid/view/ViewGroup;
.source "RecyclerView.java"

# interfaces
.implements Ltds/androidx/core/view/ScrollingView;
.implements Ltds/androidx/core/view/NestedScrollingChild2;
.implements Ltds/androidx/core/view/NestedScrollingChild3;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;,
        Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;,
        Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;,
        Ltds/androidx/recyclerview/widget/RecyclerView$OnFlingListener;,
        Ltds/androidx/recyclerview/widget/RecyclerView$State;,
        Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;,
        Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObservable;,
        Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;,
        Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObserver;,
        Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;,
        Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;,
        Ltds/androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;,
        Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerListener;,
        Ltds/androidx/recyclerview/widget/RecyclerView$OnScrollListener;,
        Ltds/androidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;,
        Ltds/androidx/recyclerview/widget/RecyclerView$OnItemTouchListener;,
        Ltds/androidx/recyclerview/widget/RecyclerView$ItemDecoration;,
        Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;,
        Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;,
        Ltds/androidx/recyclerview/widget/RecyclerView$ViewCacheExtension;,
        Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;,
        Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;,
        Ltds/androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;,
        Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;,
        Ltds/androidx/recyclerview/widget/RecyclerView$ViewFlinger;,
        Ltds/androidx/recyclerview/widget/RecyclerView$Orientation;
    }
.end annotation


# static fields
.field static final ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

.field static final ALLOW_THREAD_GAP_WORK:Z

.field static final DEBUG:Z = false

.field static final DEFAULT_ORIENTATION:I = 0x1

.field static final DISPATCH_TEMP_DETACH:Z = false

.field private static final FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

.field static final FORCE_INVALIDATE_DISPLAY_LIST:Z

.field static final FOREVER_NS:J = 0x7fffffffffffffffL

.field public static final HORIZONTAL:I = 0x0

.field private static final IGNORE_DETACHED_FOCUSED_CHILD:Z

.field private static final INVALID_POINTER:I = -0x1

.field public static final INVALID_TYPE:I = -0x1

.field private static final LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static final MAX_SCROLL_DURATION:I = 0x7d0

.field private static final NESTED_SCROLLING_ATTRS:[I

.field public static final NO_ID:J = -0x1L

.field public static final NO_POSITION:I = -0x1

.field static final POST_UPDATES_ON_ANIMATION:Z

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field static final TAG:Ljava/lang/String; = "RecyclerView"

.field public static final TOUCH_SLOP_DEFAULT:I = 0x0

.field public static final TOUCH_SLOP_PAGING:I = 0x1

.field static final TRACE_BIND_VIEW_TAG:Ljava/lang/String; = "RV OnBindView"

.field static final TRACE_CREATE_VIEW_TAG:Ljava/lang/String; = "RV CreateView"

.field private static final TRACE_HANDLE_ADAPTER_UPDATES_TAG:Ljava/lang/String; = "RV PartialInvalidate"

.field static final TRACE_NESTED_PREFETCH_TAG:Ljava/lang/String; = "RV Nested Prefetch"

.field private static final TRACE_ON_DATA_SET_CHANGE_LAYOUT_TAG:Ljava/lang/String; = "RV FullInvalidate"

.field private static final TRACE_ON_LAYOUT_TAG:Ljava/lang/String; = "RV OnLayout"

.field static final TRACE_PREFETCH_TAG:Ljava/lang/String; = "RV Prefetch"

.field static final TRACE_SCROLL_TAG:Ljava/lang/String; = "RV Scroll"

.field public static final UNDEFINED_DURATION:I = -0x80000000

.field static final VERBOSE_TRACING:Z = false

.field public static final VERTICAL:I = 0x1

.field static final sQuinticInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

.field mAdapterHelper:Ltds/androidx/recyclerview/widget/AdapterHelper;

.field mAdapterUpdateDuringMeasure:Z

.field private mBottomGlow:Landroid/widget/EdgeEffect;

.field private mChildDrawingOrderCallback:Ltds/androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

.field mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

.field mClipToPadding:Z

.field mDataSetHasChangedAfterLayout:Z

.field mDispatchItemsChangedEvent:Z

.field private mDispatchScrollCounter:I

.field private mEatenAccessibilityChangeFlags:I

.field private mEdgeEffectFactory:Ltds/androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

.field mEnableFastScroller:Z

.field mFirstLayoutComplete:Z

.field mGapWorker:Ltds/androidx/recyclerview/widget/GapWorker;

.field mHasFixedSize:Z

.field private mIgnoreMotionEventTillDown:Z

.field private mInitialTouchX:I

.field private mInitialTouchY:I

.field private mInterceptRequestLayoutDepth:I

.field private mInterceptingOnItemTouchListener:Ltds/androidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

.field mIsAttached:Z

.field mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

.field private mItemAnimatorListener:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

.field private mItemAnimatorRunner:Ljava/lang/Runnable;

.field final mItemDecorations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ItemDecoration;",
            ">;"
        }
    .end annotation
.end field

.field mItemsAddedOrRemoved:Z

.field mItemsChanged:Z

.field private mLastAutoMeasureNonExactMeasuredHeight:I

.field private mLastAutoMeasureNonExactMeasuredWidth:I

.field private mLastAutoMeasureSkippedDueToExact:Z

.field private mLastTouchX:I

.field private mLastTouchY:I

.field mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private mLayoutOrScrollCounter:I

.field mLayoutSuppressed:Z

.field mLayoutWasDefered:Z

.field private mLeftGlow:Landroid/widget/EdgeEffect;

.field private final mMaxFlingVelocity:I

.field private final mMinFlingVelocity:I

.field private final mMinMaxLayoutPositions:[I

.field private final mNestedOffsets:[I

.field private final mObserver:Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

.field private mOnChildAttachStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltds/androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnFlingListener:Ltds/androidx/recyclerview/widget/RecyclerView$OnFlingListener;

.field private final mOnItemTouchListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltds/androidx/recyclerview/widget/RecyclerView$OnItemTouchListener;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingAccessibilityImportanceChange:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field mPendingSavedState:Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;

.field mPostedAnimatorRunner:Z

.field mPrefetchRegistry:Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

.field private mPreserveFocusAfterLayout:Z

.field final mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

.field mRecyclerListener:Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerListener;

.field final mRecyclerListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerListener;",
            ">;"
        }
    .end annotation
.end field

.field final mReusableIntPair:[I

.field private mRightGlow:Landroid/widget/EdgeEffect;

.field private mScaledHorizontalScrollFactor:F

.field private mScaledVerticalScrollFactor:F

.field private mScrollListener:Ltds/androidx/recyclerview/widget/RecyclerView$OnScrollListener;

.field private mScrollListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltds/androidx/recyclerview/widget/RecyclerView$OnScrollListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mScrollOffset:[I

.field private mScrollPointerId:I

.field private mScrollState:I

.field private mScrollingChildHelper:Ltds/androidx/core/view/NestedScrollingChildHelper;

.field final mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

.field final mTempRect:Landroid/graphics/Rect;

.field private final mTempRect2:Landroid/graphics/Rect;

.field final mTempRectF:Landroid/graphics/RectF;

.field private mTopGlow:Landroid/widget/EdgeEffect;

.field private mTouchSlop:I

.field final mUpdateChildViewsRunnable:Ljava/lang/Runnable;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field final mViewFlinger:Ltds/androidx/recyclerview/widget/RecyclerView$ViewFlinger;

.field private final mViewInfoProcessCallback:Ltds/androidx/recyclerview/widget/ViewInfoStore$ProcessCallback;

.field final mViewInfoStore:Ltds/androidx/recyclerview/widget/ViewInfoStore;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 208
    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x1010436

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Ltds/androidx/recyclerview/widget/RecyclerView;->NESTED_SCROLLING_ATTRS:[I

    .line 218
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-eq v1, v2, :cond_20

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-eq v1, v2, :cond_20

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x14

    if-ne v1, v2, :cond_1e

    goto :goto_20

    :cond_1e
    move v1, v3

    goto :goto_21

    :cond_20
    :goto_20
    move v1, v0

    :goto_21
    sput-boolean v1, Ltds/androidx/recyclerview/widget/RecyclerView;->FORCE_INVALIDATE_DISPLAY_LIST:Z

    .line 225
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_2b

    move v1, v0

    goto :goto_2c

    :cond_2b
    move v1, v3

    :goto_2c
    sput-boolean v1, Ltds/androidx/recyclerview/widget/RecyclerView;->ALLOW_SIZE_IN_UNSPECIFIED_SPEC:Z

    .line 227
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_36

    move v1, v0

    goto :goto_37

    :cond_36
    move v1, v3

    :goto_37
    sput-boolean v1, Ltds/androidx/recyclerview/widget/RecyclerView;->POST_UPDATES_ON_ANIMATION:Z

    .line 233
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_41

    move v1, v0

    goto :goto_42

    :cond_41
    move v1, v3

    :goto_42
    sput-boolean v1, Ltds/androidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    .line 239
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xf

    if-gt v1, v2, :cond_4c

    move v1, v0

    goto :goto_4d

    :cond_4c
    move v1, v3

    :goto_4d
    sput-boolean v1, Ltds/androidx/recyclerview/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    .line 249
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-gt v1, v2, :cond_55

    move v1, v0

    goto :goto_56

    :cond_55
    move v1, v3

    :goto_56
    sput-boolean v1, Ltds/androidx/recyclerview/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    .line 352
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    aput-object v2, v1, v3

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v1, v0

    const/4 v0, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    sput-object v1, Ltds/androidx/recyclerview/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 596
    new-instance v0, Ltds/androidx/recyclerview/widget/RecyclerView$3;

    invoke-direct {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$3;-><init>()V

    sput-object v0, Ltds/androidx/recyclerview/widget/RecyclerView;->sQuinticInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 668
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 669
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 672
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 673
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 676
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 355
    new-instance v0, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-direct {v0, p0}, Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;-><init>(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mObserver:Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    .line 357
    new-instance v0, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-direct {v0, p0}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;-><init>(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    .line 374
    new-instance v0, Ltds/androidx/recyclerview/widget/ViewInfoStore;

    invoke-direct {v0}, Ltds/androidx/recyclerview/widget/ViewInfoStore;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Ltds/androidx/recyclerview/widget/ViewInfoStore;

    .line 388
    new-instance v0, Ltds/androidx/recyclerview/widget/RecyclerView$1;

    invoke-direct {v0, p0}, Ltds/androidx/recyclerview/widget/RecyclerView$1;-><init>(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mUpdateChildViewsRunnable:Ljava/lang/Runnable;

    .line 408
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    .line 409
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    .line 410
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRectF:Landroid/graphics/RectF;

    .line 417
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    .line 419
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    .line 435
    const/4 v0, 0x0

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    .line 465
    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 474
    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    .line 484
    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 493
    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 495
    new-instance v1, Ltds/androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    invoke-direct {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;-><init>()V

    iput-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Ltds/androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    .line 499
    new-instance v1, Ltds/androidx/recyclerview/widget/DefaultItemAnimator;

    invoke-direct {v1}, Ltds/androidx/recyclerview/widget/DefaultItemAnimator;-><init>()V

    iput-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 529
    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollState:I

    .line 530
    const/4 v1, -0x1

    iput v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 542
    const/4 v2, 0x1

    iput v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    .line 543
    iput v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    .line 545
    const/4 v2, 0x1

    iput-boolean v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 547
    new-instance v3, Ltds/androidx/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-direct {v3, p0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewFlinger;-><init>(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    iput-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewFlinger:Ltds/androidx/recyclerview/widget/RecyclerView$ViewFlinger;

    .line 550
    sget-boolean v3, Ltds/androidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v3, :cond_80

    new-instance v3, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    invoke-direct {v3}, Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;-><init>()V

    goto :goto_81

    :cond_80
    const/4 v3, 0x0

    :goto_81
    iput-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mPrefetchRegistry:Ltds/androidx/recyclerview/widget/GapWorker$LayoutPrefetchRegistryImpl;

    .line 553
    new-instance v3, Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-direct {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$State;-><init>()V

    iput-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 559
    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 560
    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    .line 561
    new-instance v3, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;

    invoke-direct {v3, p0}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;-><init>(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    iput-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimatorListener:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    .line 563
    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 569
    const/4 v3, 0x2

    new-array v4, v3, [I

    iput-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    .line 572
    new-array v4, v3, [I

    iput-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    .line 573
    new-array v4, v3, [I

    iput-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    .line 576
    new-array v4, v3, [I

    iput-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    .line 583
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    .line 586
    new-instance v4, Ltds/androidx/recyclerview/widget/RecyclerView$2;

    invoke-direct {v4, p0}, Ltds/androidx/recyclerview/widget/RecyclerView$2;-><init>(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    iput-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    .line 623
    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredWidth:I

    .line 624
    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredHeight:I

    .line 629
    new-instance v4, Ltds/androidx/recyclerview/widget/RecyclerView$4;

    invoke-direct {v4, p0}, Ltds/androidx/recyclerview/widget/RecyclerView$4;-><init>(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    iput-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewInfoProcessCallback:Ltds/androidx/recyclerview/widget/ViewInfoStore$ProcessCallback;

    .line 677
    invoke-virtual {p0, v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->setScrollContainer(Z)V

    .line 678
    invoke-virtual {p0, v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->setFocusableInTouchMode(Z)V

    .line 680
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v4

    .line 681
    .local v4, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v5

    iput v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    .line 682
    nop

    .line 683
    invoke-static {v4, p1}, Ltds/androidx/core/view/ViewConfigurationCompat;->getScaledHorizontalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v5

    iput v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    .line 684
    nop

    .line 685
    invoke-static {v4, p1}, Ltds/androidx/core/view/ViewConfigurationCompat;->getScaledVerticalScrollFactor(Landroid/view/ViewConfiguration;Landroid/content/Context;)F

    move-result v5

    iput v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    .line 686
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v5

    iput v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    .line 687
    invoke-virtual {v4}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v5

    iput v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    .line 688
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getOverScrollMode()I

    move-result v5

    if-ne v5, v3, :cond_f3

    move v3, v2

    goto :goto_f4

    :cond_f3
    move v3, v0

    :goto_f4
    invoke-virtual {p0, v3}, Ltds/androidx/recyclerview/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 690
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimatorListener:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {v3, v5}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->setListener(Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 691
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->initAdapterManager()V

    .line 692
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->initChildrenHelper()V

    .line 693
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->initAutofill()V

    .line 695
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 696
    const-string v5, "accessibility"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/accessibility/AccessibilityManager;

    iput-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 703
    const/4 v3, 0x0

    .line 704
    .local v3, "layoutManagerName":Ljava/lang/String;
    const/4 v11, -0x1

    .line 706
    .local v11, "descendantFocusability":I
    if-ne v11, v1, :cond_11e

    .line 707
    const/high16 v1, 0x40000

    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->setDescendantFocusability(I)V

    .line 709
    :cond_11e
    iput-boolean v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 710
    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mEnableFastScroller:Z

    .line 726
    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, p1

    move-object v7, v3

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v5 .. v10}, Ltds/androidx/recyclerview/widget/RecyclerView;->createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V

    .line 728
    const/4 v0, 0x1

    .line 729
    .local v0, "nestedScrollingEnabled":Z
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 734
    const/4 v0, 0x1

    .line 738
    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 739
    return-void
.end method

.method static synthetic access$000(Ltds/androidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p0, "x0"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # Landroid/view/ViewGroup$LayoutParams;

    .line 199
    invoke-virtual {p0, p1, p2, p3}, Ltds/androidx/recyclerview/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic access$100(Ltds/androidx/recyclerview/widget/RecyclerView;I)V
    .registers 2
    .param p0, "x0"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p1, "x1"    # I

    .line 199
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->detachViewFromParent(I)V

    return-void
.end method

.method static synthetic access$200(Ltds/androidx/recyclerview/widget/RecyclerView;)Z
    .registers 2
    .param p0, "x0"    # Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 199
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->awakenScrollBars()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ltds/androidx/recyclerview/widget/RecyclerView;II)V
    .registers 3
    .param p0, "x0"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 199
    invoke-virtual {p0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView;->setMeasuredDimension(II)V

    return-void
.end method

.method private addAnimatingView(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 8
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1481
    iget-object v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1482
    .local v0, "view":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v2, 0x1

    if-ne v1, p0, :cond_b

    move v1, v2

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 1483
    .local v1, "alreadyParented":Z
    :goto_c
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1484
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v3

    if-eqz v3, :cond_26

    .line 1486
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    const/4 v4, -0x1

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5, v2}, Ltds/androidx/recyclerview/widget/ChildHelper;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    goto :goto_33

    .line 1487
    :cond_26
    if-nez v1, :cond_2e

    .line 1488
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v0, v2}, Ltds/androidx/recyclerview/widget/ChildHelper;->addView(Landroid/view/View;Z)V

    goto :goto_33

    .line 1490
    :cond_2e
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v0}, Ltds/androidx/recyclerview/widget/ChildHelper;->hide(Landroid/view/View;)V

    .line 1492
    :goto_33
    return-void
.end method

.method private animateChange(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V
    .registers 9
    .param p1, "oldHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "newHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p3, "preInfo"    # Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p4, "postInfo"    # Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p5, "oldHolderDisappearing"    # Z
    .param p6, "newHolderDisappearing"    # Z

    .line 4506
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 4507
    if-eqz p5, :cond_9

    .line 4508
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->addAnimatingView(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4510
    :cond_9
    if-eq p1, p2, :cond_1f

    .line 4511
    if-eqz p6, :cond_10

    .line 4512
    invoke-direct {p0, p2}, Ltds/androidx/recyclerview/widget/RecyclerView;->addAnimatingView(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4514
    :cond_10
    iput-object p2, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 4516
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->addAnimatingView(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4517
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v1, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4518
    invoke-virtual {p2, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 4519
    iput-object p1, p2, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 4521
    :cond_1f
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3, p4}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->animateChange(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 4522
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    .line 4524
    :cond_2a
    return-void
.end method

.method private cancelScroll()V
    .registers 2

    .line 3569
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->resetScroll()V

    .line 3570
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 3571
    return-void
.end method

.method static clearNestedRecyclerViewIfNotNested(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 4
    .param p0, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 5994
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_24

    .line 5995
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 5996
    .local v0, "item":Landroid/view/View;
    :goto_c
    if-eqz v0, :cond_21

    .line 5997
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v0, v1, :cond_13

    .line 5998
    return-void

    .line 6001
    :cond_13
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 6002
    .local v1, "parent":Landroid/view/ViewParent;
    instance-of v2, v1, Landroid/view/View;

    if-eqz v2, :cond_1f

    .line 6003
    move-object v0, v1

    check-cast v0, Landroid/view/View;

    goto :goto_20

    .line 6005
    :cond_1f
    const/4 v0, 0x0

    .line 6007
    .end local v1    # "parent":Landroid/view/ViewParent;
    :goto_20
    goto :goto_c

    .line 6008
    :cond_21
    const/4 v1, 0x0

    iput-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mNestedRecyclerView:Ljava/lang/ref/WeakReference;

    .line 6010
    .end local v0    # "item":Landroid/view/View;
    :cond_24
    return-void
.end method

.method private createLayoutManager(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;II)V
    .registers 16
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .line 797
    const-string v0, ": Could not instantiate the LayoutManager: "

    if-eqz p2, :cond_131

    .line 798
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 799
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_131

    .line 800
    invoke-direct {p0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView;->getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 803
    :try_start_12
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->isInEditMode()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 805
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .local v1, "classLoader":Ljava/lang/ClassLoader;
    goto :goto_25

    .line 807
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    :cond_21
    invoke-virtual {p1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 809
    .restart local v1    # "classLoader":Ljava/lang/ClassLoader;
    :goto_25
    nop

    .line 810
    const/4 v2, 0x0

    invoke-static {p2, v2, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 811
    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v3
    :try_end_31
    .catch Ljava/lang/ClassNotFoundException; {:try_start_12 .. :try_end_31} :catch_10f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_12 .. :try_end_31} :catch_ef
    .catch Ljava/lang/InstantiationException; {:try_start_12 .. :try_end_31} :catch_cf
    .catch Ljava/lang/IllegalAccessException; {:try_start_12 .. :try_end_31} :catch_ad
    .catch Ljava/lang/ClassCastException; {:try_start_12 .. :try_end_31} :catch_8b

    .line 813
    .local v3, "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;>;"
    const/4 v4, 0x0

    .line 815
    .local v4, "constructorArgs":[Ljava/lang/Object;
    const/4 v5, 0x1

    :try_start_33
    sget-object v6, Ltds/androidx/recyclerview/widget/RecyclerView;->LAYOUT_MANAGER_CONSTRUCTOR_SIGNATURE:[Ljava/lang/Class;

    .line 816
    invoke-virtual {v3, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    .line 817
    .local v6, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;>;"
    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v2

    aput-object p3, v7, v5

    const/4 v8, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8
    :try_end_4e
    .catch Ljava/lang/NoSuchMethodException; {:try_start_33 .. :try_end_4e} :catch_50
    .catch Ljava/lang/ClassNotFoundException; {:try_start_33 .. :try_end_4e} :catch_10f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_33 .. :try_end_4e} :catch_ef
    .catch Ljava/lang/InstantiationException; {:try_start_33 .. :try_end_4e} :catch_cf
    .catch Ljava/lang/IllegalAccessException; {:try_start_33 .. :try_end_4e} :catch_ad
    .catch Ljava/lang/ClassCastException; {:try_start_33 .. :try_end_4e} :catch_8b

    move-object v4, v7

    .line 826
    goto :goto_58

    .line 818
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;>;"
    :catch_50
    move-exception v6

    .line 820
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    :try_start_51
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2
    :try_end_57
    .catch Ljava/lang/NoSuchMethodException; {:try_start_51 .. :try_end_57} :catch_66
    .catch Ljava/lang/ClassNotFoundException; {:try_start_51 .. :try_end_57} :catch_10f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_51 .. :try_end_57} :catch_ef
    .catch Ljava/lang/InstantiationException; {:try_start_51 .. :try_end_57} :catch_cf
    .catch Ljava/lang/IllegalAccessException; {:try_start_51 .. :try_end_57} :catch_ad
    .catch Ljava/lang/ClassCastException; {:try_start_51 .. :try_end_57} :catch_8b

    .line 825
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;>;"
    move-object v6, v2

    .line 827
    .end local v2    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;>;"
    .local v6, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;>;"
    :goto_58
    :try_start_58
    invoke-virtual {v6, v5}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 828
    invoke-virtual {v6, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p0, v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->setLayoutManager(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 844
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v3    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;>;"
    .end local v4    # "constructorArgs":[Ljava/lang/Object;
    .end local v6    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;>;"
    goto/16 :goto_131

    .line 821
    .restart local v1    # "classLoader":Ljava/lang/ClassLoader;
    .restart local v3    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;>;"
    .restart local v4    # "constructorArgs":[Ljava/lang/Object;
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    :catch_66
    move-exception v2

    .line 822
    .local v2, "e1":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v2, v6}, Ljava/lang/NoSuchMethodException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 823
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": Error creating LayoutManager "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local p0    # "this":Ltds/androidx/recyclerview/widget/RecyclerView;
    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "className":Ljava/lang/String;
    .end local p3    # "attrs":Landroid/util/AttributeSet;
    .end local p4    # "defStyleAttr":I
    .end local p5    # "defStyleRes":I
    throw v5
    :try_end_8b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_58 .. :try_end_8b} :catch_10f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_58 .. :try_end_8b} :catch_ef
    .catch Ljava/lang/InstantiationException; {:try_start_58 .. :try_end_8b} :catch_cf
    .catch Ljava/lang/IllegalAccessException; {:try_start_58 .. :try_end_8b} :catch_ad
    .catch Ljava/lang/ClassCastException; {:try_start_58 .. :try_end_8b} :catch_8b

    .line 841
    .end local v1    # "classLoader":Ljava/lang/ClassLoader;
    .end local v2    # "e1":Ljava/lang/NoSuchMethodException;
    .end local v3    # "layoutManagerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;>;"
    .end local v4    # "constructorArgs":[Ljava/lang/Object;
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    .restart local p0    # "this":Ltds/androidx/recyclerview/widget/RecyclerView;
    .restart local p1    # "context":Landroid/content/Context;
    .restart local p2    # "className":Ljava/lang/String;
    .restart local p3    # "attrs":Landroid/util/AttributeSet;
    .restart local p4    # "defStyleAttr":I
    .restart local p5    # "defStyleRes":I
    :catch_8b
    move-exception v0

    .line 842
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Class is not a LayoutManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 838
    .end local v0    # "e":Ljava/lang/ClassCastException;
    :catch_ad
    move-exception v0

    .line 839
    .local v0, "e":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Cannot access non-public constructor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 835
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_cf
    move-exception v1

    .line 836
    .local v1, "e":Ljava/lang/InstantiationException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 832
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_ef
    move-exception v1

    .line 833
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 829
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_10f
    move-exception v0

    .line 830
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": Unable to find LayoutManager "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 847
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_131
    :goto_131
    return-void
.end method

.method private didChildRangeChange(II)Z
    .registers 7
    .param p1, "minPositionPreLayout"    # I
    .param p2, "maxPositionPreLayout"    # I

    .line 4452
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 4453
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    if-ne v2, p1, :cond_11

    aget v0, v0, v3

    if-eq v0, p2, :cond_12

    :cond_11
    move v1, v3

    :cond_12
    return v1
.end method

.method private dispatchContentChangedIfNecessary()V
    .registers 4

    .line 3806
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 3807
    .local v0, "flags":I
    const/4 v1, 0x0

    iput v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mEatenAccessibilityChangeFlags:I

    .line 3808
    if-eqz v0, :cond_19

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->isAccessibilityEnabled()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 3809
    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 3810
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    const/16 v2, 0x800

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setEventType(I)V

    .line 3812
    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->sendAccessibilityEventUnchecked(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3814
    .end local v1    # "event":Landroid/view/accessibility/AccessibilityEvent;
    :cond_19
    return-void
.end method

.method private dispatchLayoutStep1()V
    .registers 11

    .line 4154
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 4155
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->fillRemainingScrollValues(Ltds/androidx/recyclerview/widget/RecyclerView$State;)V

    .line 4156
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    const/4 v2, 0x0

    iput-boolean v2, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 4157
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 4158
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Ltds/androidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ViewInfoStore;->clear()V

    .line 4159
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 4160
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 4161
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->saveFocusInfo()V

    .line 4162
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v3, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v3, :cond_2c

    iget-boolean v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v3, :cond_2c

    goto :goto_2d

    :cond_2c
    move v1, v2

    :goto_2d
    iput-boolean v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    .line 4163
    iput-boolean v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    iput-boolean v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    .line 4164
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    iput-boolean v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 4165
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    .line 4166
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    invoke-direct {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->findMinMaxChildLayoutPositions([I)V

    .line 4168
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_b5

    .line 4170
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 4171
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_55
    if-ge v1, v0, :cond_b5

    .line 4172
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v1}, Ltds/androidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4173
    .local v3, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_b2

    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v4

    if-eqz v4, :cond_76

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v4}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-nez v4, :cond_76

    .line 4174
    goto :goto_b2

    .line 4176
    :cond_76
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 4178
    invoke-static {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v6

    .line 4179
    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v7

    .line 4177
    invoke-virtual {v4, v5, v3, v6, v7}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Ltds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v4

    .line 4180
    .local v4, "animationInfo":Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Ltds/androidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v5, v3, v4}, Ltds/androidx/recyclerview/widget/ViewInfoStore;->addToPreLayout(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 4181
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v5, v5, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v5, :cond_b2

    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v5

    if-eqz v5, :cond_b2

    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v5

    if-nez v5, :cond_b2

    .line 4182
    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-nez v5, :cond_b2

    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isInvalid()Z

    move-result v5

    if-nez v5, :cond_b2

    .line 4183
    invoke-virtual {p0, v3}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)J

    move-result-wide v5

    .line 4191
    .local v5, "key":J
    iget-object v7, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Ltds/androidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v7, v5, v6, v3}, Ltds/androidx/recyclerview/widget/ViewInfoStore;->addToOldChangeHolders(JLtds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4171
    .end local v3    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v4    # "animationInfo":Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v5    # "key":J
    :cond_b2
    :goto_b2
    add-int/lit8 v1, v1, 0x1

    goto :goto_55

    .line 4195
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_b5
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v0, :cond_121

    .line 4202
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->saveOldPositions()V

    .line 4203
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    .line 4204
    .local v0, "didStructureChange":Z
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v2, v1, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    .line 4206
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1, v3, v4}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutChildren(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)V

    .line 4207
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v0, v1, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    .line 4209
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_d4
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_11d

    .line 4210
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v1}, Ltds/androidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4211
    .local v3, "child":Landroid/view/View;
    invoke-static {v3}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 4212
    .local v4, "viewHolder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-virtual {v4}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_ed

    .line 4213
    goto :goto_11a

    .line 4215
    :cond_ed
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Ltds/androidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v5, v4}, Ltds/androidx/recyclerview/widget/ViewInfoStore;->isInPreLayout(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v5

    if-nez v5, :cond_11a

    .line 4216
    invoke-static {v4}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->buildAdapterChangeFlagsForAnimations(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v5

    .line 4217
    .local v5, "flags":I
    const/16 v6, 0x2000

    .line 4218
    invoke-virtual {v4, v6}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v6

    .line 4219
    .local v6, "wasHidden":Z
    if-nez v6, :cond_103

    .line 4220
    or-int/lit16 v5, v5, 0x1000

    .line 4222
    :cond_103
    iget-object v7, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    iget-object v8, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 4223
    invoke-virtual {v4}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v9

    .line 4222
    invoke-virtual {v7, v8, v4, v5, v9}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->recordPreLayoutInformation(Ltds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v7

    .line 4224
    .local v7, "animationInfo":Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    if-eqz v6, :cond_115

    .line 4225
    invoke-virtual {p0, v4, v7}, Ltds/androidx/recyclerview/widget/RecyclerView;->recordAnimationInfoIfBouncedHiddenView(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_11a

    .line 4227
    :cond_115
    iget-object v8, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Ltds/androidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v8, v4, v7}, Ltds/androidx/recyclerview/widget/ViewInfoStore;->addToAppearedInPreLayoutHolders(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 4209
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "viewHolder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v5    # "flags":I
    .end local v6    # "wasHidden":Z
    .end local v7    # "animationInfo":Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :cond_11a
    :goto_11a
    add-int/lit8 v1, v1, 0x1

    goto :goto_d4

    .line 4232
    .end local v1    # "i":I
    :cond_11d
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->clearOldPositions()V

    .line 4233
    .end local v0    # "didStructureChange":Z
    goto :goto_124

    .line 4234
    :cond_121
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->clearOldPositions()V

    .line 4236
    :goto_124
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 4237
    invoke-virtual {p0, v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 4238
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    const/4 v1, 0x2

    iput v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    .line 4239
    return-void
.end method

.method private dispatchLayoutStep2()V
    .registers 5

    .line 4246
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 4247
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 4248
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 4249
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Ltds/androidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 4250
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    iput v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    .line 4251
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    const/4 v1, 0x0

    iput v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mDeletedInvisibleItemCountSincePreviousLayout:I

    .line 4252
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;

    if-eqz v0, :cond_3e

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->canRestoreState()Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 4253
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    if-eqz v0, :cond_3b

    .line 4254
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;

    iget-object v2, v2, Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    invoke-virtual {v0, v2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 4256
    :cond_3b
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;

    .line 4259
    :cond_3e
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 4260
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, v2, v3}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutChildren(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)V

    .line 4262
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    .line 4265
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v2, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v2, :cond_5b

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_5b

    const/4 v2, 0x1

    goto :goto_5c

    :cond_5b
    move v2, v1

    :goto_5c
    iput-boolean v2, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 4266
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    const/4 v2, 0x4

    iput v2, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    .line 4267
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 4268
    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 4269
    return-void
.end method

.method private dispatchLayoutStep3()V
    .registers 20

    .line 4276
    move-object/from16 v7, p0

    iget-object v0, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->assertLayoutStep(I)V

    .line 4277
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 4278
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 4279
    iget-object v0, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    const/4 v8, 0x1

    iput v8, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    .line 4280
    iget-object v0, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v0, :cond_99

    .line 4284
    iget-object v0, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    sub-int/2addr v0, v8

    move v9, v0

    .local v9, "i":I
    :goto_21
    if-ltz v9, :cond_92

    .line 4285
    iget-object v0, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0, v9}, Ltds/androidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v10

    .line 4286
    .local v10, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-virtual {v10}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 4287
    goto :goto_8f

    .line 4289
    :cond_34
    invoke-virtual {v7, v10}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)J

    move-result-wide v11

    .line 4290
    .local v11, "key":J
    iget-object v0, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    iget-object v1, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 4291
    invoke-virtual {v0, v1, v10}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->recordPostLayoutInformation(Ltds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v13

    .line 4292
    .local v13, "animationInfo":Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v0, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Ltds/androidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v0, v11, v12}, Ltds/androidx/recyclerview/widget/ViewInfoStore;->getFromOldChangeHolders(J)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v14

    .line 4293
    .local v14, "oldChangeViewHolder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v14, :cond_8a

    invoke-virtual {v14}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_8a

    .line 4304
    iget-object v0, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Ltds/androidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v0, v14}, Ltds/androidx/recyclerview/widget/ViewInfoStore;->isDisappearing(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v15

    .line 4306
    .local v15, "oldDisappearing":Z
    iget-object v0, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Ltds/androidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v0, v10}, Ltds/androidx/recyclerview/widget/ViewInfoStore;->isDisappearing(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v16

    .line 4307
    .local v16, "newDisappearing":Z
    if-eqz v15, :cond_64

    if-ne v14, v10, :cond_64

    .line 4309
    iget-object v0, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Ltds/androidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v0, v10, v13}, Ltds/androidx/recyclerview/widget/ViewInfoStore;->addToPostLayout(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    goto :goto_89

    .line 4311
    :cond_64
    iget-object v0, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Ltds/androidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v0, v14}, Ltds/androidx/recyclerview/widget/ViewInfoStore;->popFromPreLayout(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v17

    .line 4314
    .local v17, "preInfo":Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    iget-object v0, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Ltds/androidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v0, v10, v13}, Ltds/androidx/recyclerview/widget/ViewInfoStore;->addToPostLayout(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 4315
    iget-object v0, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Ltds/androidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v0, v10}, Ltds/androidx/recyclerview/widget/ViewInfoStore;->popFromPostLayout(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object v18

    .line 4316
    .local v18, "postInfo":Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    if-nez v17, :cond_7b

    .line 4317
    invoke-direct {v7, v11, v12, v10, v14}, Ltds/androidx/recyclerview/widget/RecyclerView;->handleMissingPreInfoForChangeError(JLtds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_89

    .line 4319
    :cond_7b
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v10

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move v5, v15

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Ltds/androidx/recyclerview/widget/RecyclerView;->animateChange(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;ZZ)V

    .line 4323
    .end local v15    # "oldDisappearing":Z
    .end local v16    # "newDisappearing":Z
    .end local v17    # "preInfo":Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v18    # "postInfo":Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    :goto_89
    goto :goto_8f

    .line 4324
    :cond_8a
    iget-object v0, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Ltds/androidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v0, v10, v13}, Ltds/androidx/recyclerview/widget/ViewInfoStore;->addToPostLayout(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 4284
    .end local v10    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v11    # "key":J
    .end local v13    # "animationInfo":Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .end local v14    # "oldChangeViewHolder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :goto_8f
    add-int/lit8 v9, v9, -0x1

    goto :goto_21

    .line 4329
    .end local v9    # "i":I
    :cond_92
    iget-object v0, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Ltds/androidx/recyclerview/widget/ViewInfoStore;

    iget-object v1, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewInfoProcessCallback:Ltds/androidx/recyclerview/widget/ViewInfoStore$ProcessCallback;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/ViewInfoStore;->process(Ltds/androidx/recyclerview/widget/ViewInfoStore$ProcessCallback;)V

    .line 4332
    :cond_99
    iget-object v0, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 4333
    iget-object v0, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    iput v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mPreviousLayoutItemCount:I

    .line 4334
    const/4 v0, 0x0

    iput-boolean v0, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 4335
    iput-boolean v0, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    .line 4336
    iget-object v1, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v0, v1, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 4338
    iget-object v1, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v0, v1, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 4339
    iget-object v1, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iput-boolean v0, v1, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    .line 4340
    iget-object v1, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    if-eqz v1, :cond_c4

    .line 4341
    iget-object v1, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->mChangedScrap:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 4343
    :cond_c4
    iget-object v1, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-boolean v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    if-eqz v1, :cond_d7

    .line 4346
    iget-object v1, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iput v0, v1, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxCountObserved:I

    .line 4347
    iget-object v1, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iput-boolean v0, v1, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mPrefetchMaxObservedInInitialPrefetch:Z

    .line 4348
    iget-object v1, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 4351
    :cond_d7
    iget-object v1, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v2, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1, v2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->onLayoutCompleted(Ltds/androidx/recyclerview/widget/RecyclerView$State;)V

    .line 4352
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 4353
    invoke-virtual {v7, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 4354
    iget-object v1, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Ltds/androidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/ViewInfoStore;->clear()V

    .line 4355
    iget-object v1, v7, Ltds/androidx/recyclerview/widget/RecyclerView;->mMinMaxLayoutPositions:[I

    aget v2, v1, v0

    aget v1, v1, v8

    invoke-direct {v7, v2, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->didChildRangeChange(II)Z

    move-result v1

    if-eqz v1, :cond_f8

    .line 4356
    invoke-virtual {v7, v0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 4358
    :cond_f8
    invoke-direct/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->recoverFocusFromState()V

    .line 4359
    invoke-direct/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->resetFocusInfo()V

    .line 4360
    return-void
.end method

.method private dispatchToOnItemTouchListeners(Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 3235
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Ltds/androidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    if-nez v0, :cond_11

    .line 3236
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_c

    .line 3237
    const/4 v0, 0x0

    return v0

    .line 3239
    :cond_c
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 3241
    :cond_11
    invoke-interface {v0, p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$OnItemTouchListener;->onTouchEvent(Ltds/androidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V

    .line 3242
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3243
    .local v0, "action":I
    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1e

    if-ne v0, v2, :cond_21

    .line 3244
    :cond_1e
    const/4 v1, 0x0

    iput-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Ltds/androidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 3246
    :cond_21
    return v2
.end method

.method private findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z
    .registers 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 3264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 3265
    .local v0, "action":I
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3266
    .local v1, "listenerCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_b
    if-ge v2, v1, :cond_25

    .line 3267
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltds/androidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 3268
    .local v3, "listener":Ltds/androidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
    invoke-interface {v3, p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$OnItemTouchListener;->onInterceptTouchEvent(Ltds/androidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_22

    const/4 v4, 0x3

    if-eq v0, v4, :cond_22

    .line 3269
    iput-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Ltds/androidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 3270
    const/4 v4, 0x1

    return v4

    .line 3266
    .end local v3    # "listener":Ltds/androidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
    :cond_22
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 3273
    .end local v2    # "i":I
    :cond_25
    const/4 v2, 0x0

    return v2
.end method

.method private findMinMaxChildLayoutPositions([I)V
    .registers 10
    .param p1, "into"    # [I

    .line 4426
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 4427
    .local v0, "count":I
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    .line 4428
    const/4 v3, -0x1

    aput v3, p1, v1

    .line 4429
    aput v3, p1, v2

    .line 4430
    return-void

    .line 4432
    :cond_10
    const v3, 0x7fffffff

    .line 4433
    .local v3, "minPositionPreLayout":I
    const/high16 v4, -0x80000000

    .line 4434
    .local v4, "maxPositionPreLayout":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_16
    if-ge v5, v0, :cond_36

    .line 4435
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v6, v5}, Ltds/androidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-static {v6}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v6

    .line 4436
    .local v6, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-virtual {v6}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v7

    if-eqz v7, :cond_29

    .line 4437
    goto :goto_33

    .line 4439
    :cond_29
    invoke-virtual {v6}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v7

    .line 4440
    .local v7, "pos":I
    if-ge v7, v3, :cond_30

    .line 4441
    move v3, v7

    .line 4443
    :cond_30
    if-le v7, v4, :cond_33

    .line 4444
    move v4, v7

    .line 4434
    .end local v6    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v7    # "pos":I
    :cond_33
    :goto_33
    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 4447
    .end local v5    # "i":I
    :cond_36
    aput v3, p1, v1

    .line 4448
    aput v4, p1, v2

    .line 4449
    return-void
.end method

.method static findNestedRecyclerView(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView;
    .registers 7
    .param p0, "view"    # Landroid/view/View;

    .line 5972
    instance-of v0, p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 5973
    return-object v1

    .line 5975
    :cond_6
    instance-of v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_e

    .line 5976
    move-object v0, p0

    check-cast v0, Ltds/androidx/recyclerview/widget/RecyclerView;

    return-object v0

    .line 5978
    :cond_e
    move-object v0, p0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5979
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 5980
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_16
    if-ge v3, v2, :cond_26

    .line 5981
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 5982
    .local v4, "child":Landroid/view/View;
    invoke-static {v4}, Ltds/androidx/recyclerview/widget/RecyclerView;->findNestedRecyclerView(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView;

    move-result-object v5

    .line 5983
    .local v5, "descendant":Ltds/androidx/recyclerview/widget/RecyclerView;
    if-eqz v5, :cond_23

    .line 5984
    return-object v5

    .line 5980
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "descendant":Ltds/androidx/recyclerview/widget/RecyclerView;
    :cond_23
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 5987
    .end local v3    # "i":I
    :cond_26
    return-object v1
.end method

.method private findNextViewToFocus()Landroid/view/View;
    .registers 7

    .line 4023
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mFocusedItemPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mFocusedItemPosition:I

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 4026
    .local v0, "startFocusSearchIndex":I
    :goto_d
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v1

    .line 4027
    .local v1, "itemCount":I
    move v2, v0

    .local v2, "i":I
    :goto_14
    if-ge v2, v1, :cond_2b

    .line 4028
    invoke-virtual {p0, v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4029
    .local v3, "nextFocus":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-nez v3, :cond_1d

    .line 4030
    goto :goto_2b

    .line 4032
    :cond_1d
    iget-object v4, v3, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 4033
    iget-object v4, v3, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v4

    .line 4027
    :cond_28
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 4036
    .end local v2    # "i":I
    .end local v3    # "nextFocus":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_2b
    :goto_2b
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 4037
    .local v2, "limit":I
    add-int/lit8 v3, v2, -0x1

    .local v3, "i":I
    :goto_31
    const/4 v4, 0x0

    if-ltz v3, :cond_49

    .line 4038
    invoke-virtual {p0, v3}, Ltds/androidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 4039
    .local v5, "nextFocus":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-nez v5, :cond_3b

    .line 4040
    return-object v4

    .line 4042
    :cond_3b
    iget-object v4, v5, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    if-eqz v4, :cond_46

    .line 4043
    iget-object v4, v5, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    return-object v4

    .line 4037
    :cond_46
    add-int/lit8 v3, v3, -0x1

    goto :goto_31

    .line 4046
    .end local v3    # "i":I
    .end local v5    # "nextFocus":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_49
    return-object v4
.end method

.method static getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 2
    .param p0, "child"    # Landroid/view/View;

    .line 4937
    if-nez p0, :cond_4

    .line 4938
    const/4 v0, 0x0

    return-object v0

    .line 4940
    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mViewHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method static getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "outBounds"    # Landroid/graphics/Rect;

    .line 5221
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 5222
    .local v0, "lp":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 5223
    .local v1, "insets":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v3, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int/2addr v2, v3

    .line 5224
    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v3

    iget v4, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int/2addr v3, v4

    .line 5225
    invoke-virtual {p0}, Landroid/view/View;->getRight()I

    move-result v4

    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v5

    iget v5, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v4, v5

    .line 5226
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    move-result v5

    iget v6, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iget v6, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v5, v6

    .line 5223
    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    .line 5227
    return-void
.end method

.method private getDeepestFocusedViewWithId(Landroid/view/View;)I
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 4124
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 4125
    .local v0, "lastKnownId":I
    :goto_4
    invoke-virtual {p1}, Landroid/view/View;->isFocused()Z

    move-result v1

    if-nez v1, :cond_27

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_27

    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_27

    .line 4126
    move-object v1, p1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    .line 4127
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 4128
    .local v1, "id":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_26

    .line 4129
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 4131
    .end local v1    # "id":I
    :cond_26
    goto :goto_4

    .line 4132
    :cond_27
    return v0
.end method

.method private getFullClassName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "className"    # Ljava/lang/String;

    .line 850
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_1f

    .line 851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 853
    :cond_1f
    const-string v0, "."

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 854
    return-object p2

    .line 856
    :cond_28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getScrollingChildHelper()Ltds/androidx/core/view/NestedScrollingChildHelper;
    .registers 2

    .line 13674
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollingChildHelper:Ltds/androidx/core/view/NestedScrollingChildHelper;

    if-nez v0, :cond_b

    .line 13675
    new-instance v0, Ltds/androidx/core/view/NestedScrollingChildHelper;

    invoke-direct {v0, p0}, Ltds/androidx/core/view/NestedScrollingChildHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollingChildHelper:Ltds/androidx/core/view/NestedScrollingChildHelper;

    .line 13677
    :cond_b
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollingChildHelper:Ltds/androidx/core/view/NestedScrollingChildHelper;

    return-object v0
.end method

.method private handleMissingPreInfoForChangeError(JLtds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 15
    .param p1, "key"    # J
    .param p3, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p4, "oldChangeViewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 4380
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 4381
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_7f

    .line 4382
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Ltds/androidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4383
    .local v2, "view":Landroid/view/View;
    invoke-static {v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4384
    .local v3, "other":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-ne v3, p3, :cond_16

    .line 4385
    goto :goto_7c

    .line 4387
    :cond_16
    invoke-virtual {p0, v3}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)J

    move-result-wide v4

    .line 4388
    .local v4, "otherKey":J
    cmp-long v6, v4, p1

    if-nez v6, :cond_7c

    .line 4389
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    const-string v7, " \n View Holder 2:"

    if-eqz v6, :cond_53

    invoke-virtual {v6}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v6

    if-eqz v6, :cond_53

    .line 4390
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4393
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4395
    :cond_53
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 4399
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 4381
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "other":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v4    # "otherKey":J
    :cond_7c
    :goto_7c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4404
    .end local v1    # "i":I
    :cond_7f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Problem while matching changed view holders with the newones. The pre-layout information for the change holder "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cannot be found but it is necessary for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 4406
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4404
    const-string v2, "RecyclerView"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4407
    return-void
.end method

.method private hasUpdatedView()Z
    .registers 5

    .line 2019
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 2020
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_27

    .line 2021
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Ltds/androidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 2022
    .local v2, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_24

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 2023
    goto :goto_24

    .line 2025
    :cond_1c
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v3

    if-eqz v3, :cond_24

    .line 2026
    const/4 v3, 0x1

    return v3

    .line 2020
    .end local v2    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_24
    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 2029
    .end local v1    # "i":I
    :cond_27
    const/4 v1, 0x0

    return v1
.end method

.method private initAutofill()V
    .registers 2

    .line 760
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat;->getImportantForAutofill(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_b

    .line 761
    const/16 v0, 0x8

    invoke-static {p0, v0}, Ltds/androidx/core/view/ViewCompat;->setImportantForAutofill(Landroid/view/View;I)V

    .line 764
    :cond_b
    return-void
.end method

.method private initChildrenHelper()V
    .registers 3

    .line 860
    new-instance v0, Ltds/androidx/recyclerview/widget/ChildHelper;

    new-instance v1, Ltds/androidx/recyclerview/widget/RecyclerView$5;

    invoke-direct {v1, p0}, Ltds/androidx/recyclerview/widget/RecyclerView$5;-><init>(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Ltds/androidx/recyclerview/widget/ChildHelper;-><init>(Ltds/androidx/recyclerview/widget/ChildHelper$Callback;)V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    .line 980
    return-void
.end method

.method private isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z
    .registers 11
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "next"    # Landroid/view/View;
    .param p3, "direction"    # I

    .line 2949
    const/4 v0, 0x0

    if-eqz p2, :cond_112

    if-eq p2, p0, :cond_112

    if-ne p2, p1, :cond_9

    goto/16 :goto_112

    .line 2953
    :cond_9
    invoke-virtual {p0, p2}, Ltds/androidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_10

    .line 2954
    return v0

    .line 2956
    :cond_10
    const/4 v1, 0x1

    if-nez p1, :cond_14

    .line 2957
    return v1

    .line 2960
    :cond_14
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1b

    .line 2961
    return v1

    .line 2964
    :cond_1b
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2965
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, v0, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2966
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2967
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 2968
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v2

    if-ne v2, v1, :cond_49

    const/4 v2, -0x1

    goto :goto_4a

    :cond_49
    move v2, v1

    .line 2969
    .local v2, "rtl":I
    :goto_4a
    const/4 v3, 0x0

    .line 2970
    .local v3, "rightness":I
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-lt v4, v5, :cond_5f

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-gt v4, v5, :cond_6b

    :cond_5f
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-ge v4, v5, :cond_6b

    .line 2973
    const/4 v3, 0x1

    goto :goto_8a

    .line 2974
    :cond_6b
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-gt v4, v5, :cond_7f

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    if-lt v4, v5, :cond_8a

    :cond_7f
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-le v4, v5, :cond_8a

    .line 2977
    const/4 v3, -0x1

    .line 2979
    :cond_8a
    :goto_8a
    const/4 v4, 0x0

    .line 2980
    .local v4, "downness":I
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-lt v5, v6, :cond_9f

    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-gt v5, v6, :cond_ab

    :cond_9f
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-ge v5, v6, :cond_ab

    .line 2983
    const/4 v4, 0x1

    goto :goto_ca

    .line 2984
    :cond_ab
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-gt v5, v6, :cond_bf

    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    if-lt v5, v6, :cond_ca

    :cond_bf
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect2:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    if-le v5, v6, :cond_ca

    .line 2987
    const/4 v4, -0x1

    .line 2989
    :cond_ca
    :goto_ca
    sparse-switch p3, :sswitch_data_114

    .line 3003
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid direction: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2997
    :sswitch_ee
    if-lez v4, :cond_f1

    move v0, v1

    :cond_f1
    return v0

    .line 2993
    :sswitch_f2
    if-lez v3, :cond_f5

    move v0, v1

    :cond_f5
    return v0

    .line 2995
    :sswitch_f6
    if-gez v4, :cond_f9

    move v0, v1

    :cond_f9
    return v0

    .line 2991
    :sswitch_fa
    if-gez v3, :cond_fd

    move v0, v1

    :cond_fd
    return v0

    .line 2999
    :sswitch_fe
    if-gtz v4, :cond_106

    if-nez v4, :cond_107

    mul-int v5, v3, v2

    if-lez v5, :cond_107

    :cond_106
    move v0, v1

    :cond_107
    return v0

    .line 3001
    :sswitch_108
    if-ltz v4, :cond_110

    if-nez v4, :cond_111

    mul-int v5, v3, v2

    if-gez v5, :cond_111

    :cond_110
    move v0, v1

    :cond_111
    return v0

    .line 2950
    .end local v2    # "rtl":I
    .end local v3    # "rightness":I
    .end local v4    # "downness":I
    :cond_112
    :goto_112
    return v0

    nop

    :sswitch_data_114
    .sparse-switch
        0x1 -> :sswitch_108
        0x2 -> :sswitch_fe
        0x11 -> :sswitch_fa
        0x21 -> :sswitch_f6
        0x42 -> :sswitch_f2
        0x82 -> :sswitch_ee
    .end sparse-switch
.end method

.method private nestedScrollByInternal(IILandroid/view/MotionEvent;I)V
    .registers 16
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "motionEvent"    # Landroid/view/MotionEvent;
    .param p4, "type"    # I

    .line 1889
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_c

    .line 1890
    const-string v0, "RecyclerView"

    const-string v1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1892
    return-void

    .line 1894
    :cond_c
    iget-boolean v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v1, :cond_11

    .line 1895
    return-void

    .line 1897
    :cond_11
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 1898
    const/4 v3, 0x1

    aput v2, v1, v3

    .line 1899
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 1900
    .local v0, "canScrollHorizontal":Z
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    .line 1902
    .local v1, "canScrollVertical":Z
    const/4 v4, 0x0

    .line 1903
    .local v4, "nestedScrollAxis":I
    if-eqz v0, :cond_28

    .line 1904
    or-int/lit8 v4, v4, 0x1

    .line 1906
    :cond_28
    if-eqz v1, :cond_2c

    .line 1907
    or-int/lit8 v4, v4, 0x2

    .line 1909
    :cond_2c
    invoke-virtual {p0, v4, p4}, Ltds/androidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    .line 1910
    if-eqz v0, :cond_33

    move v6, p1

    goto :goto_34

    :cond_33
    move v6, v2

    :goto_34
    if-eqz v1, :cond_38

    move v7, p2

    goto :goto_39

    :cond_38
    move v7, v2

    :goto_39
    iget-object v8, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    iget-object v9, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    move-object v5, p0

    move v10, p4

    invoke-virtual/range {v5 .. v10}, Ltds/androidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v5

    if-eqz v5, :cond_4d

    .line 1915
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v6, v5, v2

    sub-int/2addr p1, v6

    .line 1916
    aget v3, v5, v3

    sub-int/2addr p2, v3

    .line 1919
    :cond_4d
    if-eqz v0, :cond_51

    move v3, p1

    goto :goto_52

    :cond_51
    move v3, v2

    :goto_52
    if-eqz v1, :cond_55

    move v2, p2

    :cond_55
    invoke-virtual {p0, v3, v2, p3, p4}, Ltds/androidx/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;I)Z

    .line 1923
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mGapWorker:Ltds/androidx/recyclerview/widget/GapWorker;

    if-eqz v2, :cond_63

    if-nez p1, :cond_60

    if-eqz p2, :cond_63

    .line 1924
    :cond_60
    invoke-virtual {v2, p0, p1, p2}, Ltds/androidx/recyclerview/widget/GapWorker;->postFromTraversal(Ltds/androidx/recyclerview/widget/RecyclerView;II)V

    .line 1926
    :cond_63
    invoke-virtual {p0, p4}, Ltds/androidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 1927
    return-void
.end method

.method private onPointerUp(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 3574
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 3575
    .local v0, "actionIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    if-ne v1, v2, :cond_2d

    .line 3577
    if-nez v0, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    .line 3578
    .local v1, "newIndex":I
    :goto_11
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 3579
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 3580
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    add-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    .line 3582
    .end local v1    # "newIndex":I
    :cond_2d
    return-void
.end method

.method private predictiveItemAnimationsEnabled()Z
    .registers 2

    .line 3871
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_e

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->supportsPredictiveItemAnimations()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private processAdapterUpdatesAndSetAnimationFlags()V
    .registers 6

    .line 3881
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_12

    .line 3884
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Ltds/androidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/AdapterHelper;->reset()V

    .line 3885
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    if-eqz v0, :cond_12

    .line 3886
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->onItemsChanged(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    .line 3892
    :cond_12
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3893
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Ltds/androidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/AdapterHelper;->preProcess()V

    goto :goto_23

    .line 3895
    :cond_1e
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Ltds/androidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 3897
    :goto_23
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemsAddedOrRemoved:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_30

    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemsChanged:Z

    if-eqz v0, :cond_2e

    goto :goto_30

    :cond_2e
    move v0, v1

    goto :goto_31

    :cond_30
    :goto_30
    move v0, v2

    .line 3898
    .local v0, "animationTypeSupported":Z
    :goto_31
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v4, :cond_55

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v4, :cond_55

    iget-boolean v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_47

    if-nez v0, :cond_47

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-boolean v4, v4, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRequestedSimpleAnimations:Z

    if-eqz v4, :cond_55

    :cond_47
    iget-boolean v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v4, :cond_53

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    .line 3904
    invoke-virtual {v4}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v4

    if-eqz v4, :cond_55

    :cond_53
    move v4, v2

    goto :goto_56

    :cond_55
    move v4, v1

    :goto_56
    iput-boolean v4, v3, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    .line 3905
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v4, v3, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mRunSimpleAnimations:Z

    if-eqz v4, :cond_6c

    if-eqz v0, :cond_6c

    iget-boolean v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v4, :cond_6c

    .line 3908
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->predictiveItemAnimationsEnabled()Z

    move-result v4

    if-eqz v4, :cond_6c

    move v1, v2

    goto :goto_6d

    :cond_6c
    nop

    :goto_6d
    iput-boolean v1, v3, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    .line 3909
    return-void
.end method

.method private pullGlows(FFFF)V
    .registers 11
    .param p1, "x"    # F
    .param p2, "overscrollX"    # F
    .param p3, "y"    # F
    .param p4, "overscrollY"    # F

    .line 2645
    const/4 v0, 0x0

    .line 2646
    .local v0, "invalidate":Z
    const/4 v1, 0x0

    cmpg-float v2, p2, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-gez v2, :cond_22

    .line 2647
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->ensureLeftGlow()V

    .line 2648
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-float v4, p2

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, p3, v5

    sub-float v5, v3, v5

    invoke-static {v2, v4, v5}, Ltds/androidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 2649
    const/4 v0, 0x1

    goto :goto_3d

    .line 2650
    :cond_22
    cmpl-float v2, p2, v1

    if-lez v2, :cond_3d

    .line 2651
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->ensureRightGlow()V

    .line 2652
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p2, v4

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float v5, p3, v5

    invoke-static {v2, v4, v5}, Ltds/androidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 2653
    const/4 v0, 0x1

    .line 2656
    :cond_3d
    :goto_3d
    cmpg-float v2, p4, v1

    if-gez v2, :cond_59

    .line 2657
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->ensureTopGlow()V

    .line 2658
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-float v3, p4

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p1, v4

    invoke-static {v2, v3, v4}, Ltds/androidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 2659
    const/4 v0, 0x1

    goto :goto_75

    .line 2660
    :cond_59
    cmpl-float v2, p4, v1

    if-lez v2, :cond_75

    .line 2661
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->ensureBottomGlow()V

    .line 2662
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float v4, p4, v4

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v5, p1, v5

    sub-float/2addr v3, v5

    invoke-static {v2, v4, v3}, Ltds/androidx/core/widget/EdgeEffectCompat;->onPull(Landroid/widget/EdgeEffect;FF)V

    .line 2663
    const/4 v0, 0x1

    .line 2666
    :cond_75
    :goto_75
    if-nez v0, :cond_7f

    cmpl-float v2, p2, v1

    if-nez v2, :cond_7f

    cmpl-float v1, p4, v1

    if-eqz v1, :cond_82

    .line 2667
    :cond_7f
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2669
    :cond_82
    return-void
.end method

.method private recoverFocusFromState()V
    .registers 8

    .line 4050
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v0, :cond_b5

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_b5

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 4051
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_b5

    .line 4052
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x20000

    if-ne v0, v1, :cond_26

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_26

    goto/16 :goto_b5

    .line 4060
    :cond_26
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->isFocused()Z

    move-result v0

    if-nez v0, :cond_55

    .line 4061
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 4062
    .local v0, "focusedChild":Landroid/view/View;
    sget-boolean v1, Ltds/androidx/recyclerview/widget/RecyclerView;->IGNORE_DETACHED_FOCUSED_CHILD:Z

    if-eqz v1, :cond_4c

    .line 4063
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_40

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_4c

    .line 4075
    :cond_40
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v1

    if-nez v1, :cond_55

    .line 4078
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->requestFocus()Z

    .line 4079
    return-void

    .line 4081
    :cond_4c
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v1, v0}, Ltds/androidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 4084
    return-void

    .line 4087
    .end local v0    # "focusedChild":Landroid/view/View;
    :cond_55
    const/4 v0, 0x0

    .line 4091
    .local v0, "focusTarget":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget-wide v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mFocusedItemId:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_70

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v1

    if-eqz v1, :cond_70

    .line 4092
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget-wide v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mFocusedItemId:J

    invoke-virtual {p0, v1, v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->findViewHolderForItemId(J)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4094
    :cond_70
    const/4 v1, 0x0

    .line 4095
    .local v1, "viewToFocus":Landroid/view/View;
    if-eqz v0, :cond_89

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    iget-object v5, v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v5}, Ltds/androidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_89

    iget-object v2, v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 4096
    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-nez v2, :cond_86

    goto :goto_89

    .line 4109
    :cond_86
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    goto :goto_95

    .line 4097
    :cond_89
    :goto_89
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v2

    if-lez v2, :cond_95

    .line 4104
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->findNextViewToFocus()Landroid/view/View;

    move-result-object v1

    .line 4112
    :cond_95
    :goto_95
    if-eqz v1, :cond_b4

    .line 4113
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget v2, v2, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mFocusedSubChildId:I

    int-to-long v5, v2

    cmp-long v2, v5, v3

    if-eqz v2, :cond_b1

    .line 4114
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget v2, v2, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mFocusedSubChildId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 4115
    .local v2, "child":Landroid/view/View;
    if-eqz v2, :cond_b1

    invoke-virtual {v2}, Landroid/view/View;->isFocusable()Z

    move-result v3

    if-eqz v3, :cond_b1

    .line 4116
    move-object v1, v2

    .line 4119
    .end local v2    # "child":Landroid/view/View;
    :cond_b1
    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 4121
    :cond_b4
    return-void

    .line 4057
    .end local v0    # "focusTarget":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v1    # "viewToFocus":Landroid/view/View;
    :cond_b5
    :goto_b5
    return-void
.end method

.method private releaseGlows()V
    .registers 3

    .line 2672
    const/4 v0, 0x0

    .line 2673
    .local v0, "needsInvalidate":Z
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_e

    .line 2674
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2675
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    .line 2677
    :cond_e
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_1c

    .line 2678
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2679
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2681
    :cond_1c
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_2a

    .line 2682
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2683
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2685
    :cond_2a
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_38

    .line 2686
    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2687
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2689
    :cond_38
    if-eqz v0, :cond_3d

    .line 2690
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2692
    :cond_3d
    return-void
.end method

.method private requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V
    .registers 14
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 3025
    if-eqz p2, :cond_4

    move-object v0, p2

    goto :goto_5

    :cond_4
    move-object v0, p1

    .line 3026
    .local v0, "rectView":Landroid/view/View;
    :goto_5
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3031
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 3032
    .local v1, "focusedLayoutParams":Landroid/view/ViewGroup$LayoutParams;
    instance-of v2, v1, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v2, :cond_48

    .line 3034
    move-object v2, v1

    check-cast v2, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 3035
    .local v2, "lp":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget-boolean v3, v2, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v3, :cond_48

    .line 3036
    iget-object v3, v2, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 3037
    .local v3, "insets":Landroid/graphics/Rect;
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->left:I

    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->left:I

    .line 3038
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->right:I

    iget v7, v3, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->right:I

    .line 3039
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->top:I

    iget v7, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->top:I

    .line 3040
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v5, Landroid/graphics/Rect;->bottom:I

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    iput v6, v5, Landroid/graphics/Rect;->bottom:I

    .line 3044
    .end local v2    # "lp":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    .end local v3    # "insets":Landroid/graphics/Rect;
    :cond_48
    if-eqz p2, :cond_54

    .line 3045
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p2, v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3046
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3048
    :cond_54
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v8, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-boolean v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    const/4 v3, 0x1

    xor-int/lit8 v9, v2, 0x1

    if-nez p2, :cond_61

    move v10, v3

    goto :goto_62

    :cond_61
    move v10, v4

    :goto_62
    move-object v6, p0

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Ltds/androidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    .line 3050
    return-void
.end method

.method private resetFocusInfo()V
    .registers 4

    .line 4007
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    const-wide/16 v1, -0x1

    iput-wide v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mFocusedItemId:J

    .line 4008
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    const/4 v1, -0x1

    iput v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mFocusedItemPosition:I

    .line 4009
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iput v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mFocusedSubChildId:I

    .line 4010
    return-void
.end method

.method private resetScroll()V
    .registers 2

    .line 3561
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    .line 3562
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 3564
    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 3565
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->releaseGlows()V

    .line 3566
    return-void
.end method

.method private saveFocusInfo()V
    .registers 6

    .line 3986
    const/4 v0, 0x0

    .line 3987
    .local v0, "child":Landroid/view/View;
    iget-boolean v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    if-eqz v1, :cond_13

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_13

    .line 3988
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    .line 3991
    :cond_13
    if-nez v0, :cond_17

    const/4 v1, 0x0

    goto :goto_1b

    :cond_17
    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 3992
    .local v1, "focusedVh":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :goto_1b
    if-nez v1, :cond_21

    .line 3993
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->resetFocusInfo()V

    goto :goto_55

    .line 3995
    :cond_21
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v3

    goto :goto_32

    :cond_30
    const-wide/16 v3, -0x1

    :goto_32
    iput-wide v3, v2, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mFocusedItemId:J

    .line 3999
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v3, :cond_3c

    const/4 v3, -0x1

    goto :goto_49

    .line 4000
    :cond_3c
    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_45

    iget v3, v1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mOldPosition:I

    goto :goto_49

    .line 4001
    :cond_45
    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v3

    :goto_49
    iput v3, v2, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mFocusedItemPosition:I

    .line 4002
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget-object v3, v1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v3}, Ltds/androidx/recyclerview/widget/RecyclerView;->getDeepestFocusedViewWithId(Landroid/view/View;)I

    move-result v3

    iput v3, v2, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mFocusedSubChildId:I

    .line 4004
    :goto_55
    return-void
.end method

.method private setAdapterInternal(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;ZZ)V
    .registers 7
    .param p1, "adapter"    # Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;
    .param p2, "compatibleWithPrevious"    # Z
    .param p3, "removeAndRecycleViews"    # Z

    .line 1213
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_e

    .line 1214
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mObserver:Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 1215
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p0}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    .line 1217
    :cond_e
    if-eqz p2, :cond_12

    if-eqz p3, :cond_15

    .line 1218
    :cond_12
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->removeAndRecycleViews()V

    .line 1220
    :cond_15
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Ltds/androidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/AdapterHelper;->reset()V

    .line 1221
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1222
    .local v0, "oldAdapter":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1223
    if-eqz p1, :cond_28

    .line 1224
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mObserver:Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerViewDataObserver;

    invoke-virtual {p1, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Ltds/androidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 1225
    invoke-virtual {p1, p0}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    .line 1227
    :cond_28
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_31

    .line 1228
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->onAdapterChanged(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 1230
    :cond_31
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1, v0, v2, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->onAdapterChanged(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;Z)V

    .line 1231
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    const/4 v2, 0x1

    iput-boolean v2, v1, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    .line 1232
    return-void
.end method

.method private stopScrollersInternal()V
    .registers 2

    .line 2616
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewFlinger:Ltds/androidx/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewFlinger;->stop()V

    .line 2617
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_c

    .line 2618
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->stopSmoothScroller()V

    .line 2620
    :cond_c
    return-void
.end method


# virtual methods
.method absorbGlows(II)V
    .registers 5
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .line 2718
    if-gez p1, :cond_14

    .line 2719
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->ensureLeftGlow()V

    .line 2720
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2721
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_26

    .line 2723
    :cond_14
    if-lez p1, :cond_26

    .line 2724
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->ensureRightGlow()V

    .line 2725
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 2726
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 2730
    :cond_26
    :goto_26
    if-gez p2, :cond_3a

    .line 2731
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->ensureTopGlow()V

    .line 2732
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 2733
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    neg-int v1, p2

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_4c

    .line 2735
    :cond_3a
    if-lez p2, :cond_4c

    .line 2736
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->ensureBottomGlow()V

    .line 2737
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 2738
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v0, p2}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 2742
    :cond_4c
    :goto_4c
    if-nez p1, :cond_50

    if-eqz p2, :cond_53

    .line 2743
    :cond_50
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2745
    :cond_53
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 5
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

    .line 3059
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p0, p1, p2, p3}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->onAddFocusables(Ltds/androidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;II)Z

    move-result v0

    if-nez v0, :cond_d

    .line 3060
    :cond_a
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 3062
    :cond_d
    return-void
.end method

.method public addItemDecoration(Ltds/androidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .registers 3
    .param p1, "decor"    # Ltds/androidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 1647
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->addItemDecoration(Ltds/androidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V

    .line 1648
    return-void
.end method

.method public addItemDecoration(Ltds/androidx/recyclerview/widget/RecyclerView$ItemDecoration;I)V
    .registers 5
    .param p1, "decor"    # Ltds/androidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .param p2, "index"    # I

    .line 1618
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_9

    .line 1619
    const-string v1, "Cannot add item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1622
    :cond_9
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1623
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 1625
    :cond_15
    if-gez p2, :cond_1d

    .line 1626
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_22

    .line 1628
    :cond_1d
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1630
    :goto_22
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1631
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 1632
    return-void
.end method

.method public addOnChildAttachStateChangeListener(Ltds/androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .registers 3
    .param p1, "listener"    # Ltds/androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    .line 1317
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 1318
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    .line 1320
    :cond_b
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1321
    return-void
.end method

.method public addOnItemTouchListener(Ltds/androidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V
    .registers 3
    .param p1, "listener"    # Ltds/androidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 3195
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3196
    return-void
.end method

.method public addOnScrollListener(Ltds/androidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .registers 3
    .param p1, "listener"    # Ltds/androidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 1755
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 1756
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    .line 1758
    :cond_b
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1759
    return-void
.end method

.method public addRecyclerListener(Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerListener;)V
    .registers 4
    .param p1, "listener"    # Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerListener;

    .line 1273
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    const-string v1, "\'listener\' arg cannot be null."

    invoke-static {v0, v1}, Ltds/androidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1275
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1276
    return-void
.end method

.method animateAppearance(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5
    .param p1, "itemHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "preLayoutInfo"    # Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "postLayoutInfo"    # Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 4488
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 4489
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->animateAppearance(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 4490
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    .line 4492
    :cond_f
    return-void
.end method

.method animateDisappearance(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 5
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "preLayoutInfo"    # Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .param p3, "postLayoutInfo"    # Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 4496
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->addAnimatingView(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4497
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 4498
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0, p1, p2, p3}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->animateDisappearance(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4499
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->postAnimationRunner()V

    .line 4501
    :cond_12
    return-void
.end method

.method assertInLayoutOrScroll(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .line 3146
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_40

    .line 3147
    if-nez p1, :cond_25

    .line 3148
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call this method unless RecyclerView is computing a layout or scrolling"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3149
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3151
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3154
    :cond_40
    return-void
.end method

.method assertNotInLayoutOrScroll(Ljava/lang/String;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;

    .line 3164
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3165
    if-nez p1, :cond_25

    .line 3166
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot call this method while RecyclerView is computing a layout or scrolling"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3167
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3169
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3171
    :cond_2b
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    if-lez v0, :cond_52

    .line 3172
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3177
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 3172
    const-string v1, "RecyclerView"

    const-string v2, "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3179
    :cond_52
    return-void
.end method

.method canReuseUpdatedViewHolder(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 4
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 4799
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_11

    .line 4800
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getUnmodifiedPayloads()Ljava/util/List;

    move-result-object v1

    .line 4799
    invoke-virtual {v0, p1, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->canReuseUpdatedViewHolder(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 4
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 4625
    instance-of v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    if-eqz v0, :cond_11

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-object v1, p1

    check-cast v1, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->checkLayoutParams(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    return v0
.end method

.method clearOldPositions()V
    .registers 5

    .line 4679
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4680
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1f

    .line 4681
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Ltds/androidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 4682
    .local v2, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 4683
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->clearOldPosition()V

    .line 4680
    .end local v2    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4686
    .end local v1    # "i":I
    :cond_1f
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->clearOldPositions()V

    .line 4687
    return-void
.end method

.method public clearOnChildAttachStateChangeListeners()V
    .registers 2

    .line 1341
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 1342
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1344
    :cond_7
    return-void
.end method

.method public clearOnScrollListeners()V
    .registers 2

    .line 1776
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 1777
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1779
    :cond_7
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .registers 3

    .line 2137
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2138
    return v1

    .line 2140
    :cond_6
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->computeHorizontalScrollExtent(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    :cond_14
    return v1
.end method

.method public computeHorizontalScrollOffset()I
    .registers 3

    .line 2112
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2113
    return v1

    .line 2115
    :cond_6
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->computeHorizontalScrollOffset(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    :cond_14
    return v1
.end method

.method public computeHorizontalScrollRange()I
    .registers 3

    .line 2160
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2161
    return v1

    .line 2163
    :cond_6
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->computeHorizontalScrollRange(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    :cond_14
    return v1
.end method

.method public computeVerticalScrollExtent()I
    .registers 3

    .line 2209
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2210
    return v1

    .line 2212
    :cond_6
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->computeVerticalScrollExtent(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    :cond_14
    return v1
.end method

.method public computeVerticalScrollOffset()I
    .registers 3

    .line 2185
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2186
    return v1

    .line 2188
    :cond_6
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->computeVerticalScrollOffset(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    :cond_14
    return v1
.end method

.method public computeVerticalScrollRange()I
    .registers 3

    .line 2232
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2233
    return v1

    .line 2235
    :cond_6
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->computeVerticalScrollRange(Ltds/androidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    :cond_14
    return v1
.end method

.method considerReleasingGlowsOnScroll(II)V
    .registers 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 2695
    const/4 v0, 0x0

    .line 2696
    .local v0, "needsInvalidate":Z
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_18

    if-lez p1, :cond_18

    .line 2697
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2698
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    .line 2700
    :cond_18
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_30

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_30

    if-gez p1, :cond_30

    .line 2701
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2702
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2704
    :cond_30
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_48

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_48

    if-lez p2, :cond_48

    .line 2705
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2706
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2708
    :cond_48
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v1, :cond_60

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    if-nez v1, :cond_60

    if-gez p2, :cond_60

    .line 2709
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2710
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    invoke-virtual {v1}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2712
    :cond_60
    if-eqz v0, :cond_65

    .line 2713
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2715
    :cond_65
    return-void
.end method

.method consumePendingUpdateOperations()V
    .registers 4

    .line 1978
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    const-string v1, "RV FullInvalidate"

    if-eqz v0, :cond_67

    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_b

    goto :goto_67

    .line 1984
    :cond_b
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Ltds/androidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1985
    return-void

    .line 1990
    :cond_14
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Ltds/androidx/recyclerview/widget/AdapterHelper;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ltds/androidx/recyclerview/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Ltds/androidx/recyclerview/widget/AdapterHelper;

    const/16 v2, 0xb

    .line 1991
    invoke-virtual {v0, v2}, Ltds/androidx/recyclerview/widget/AdapterHelper;->hasAnyUpdateTypes(I)Z

    move-result v0

    if-nez v0, :cond_55

    .line 1993
    const-string v0, "RV PartialInvalidate"

    invoke-static {v0}, Ltds/androidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1994
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 1995
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 1996
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Ltds/androidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/AdapterHelper;->preProcess()V

    .line 1997
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    if-nez v0, :cond_4a

    .line 1998
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->hasUpdatedView()Z

    move-result v0

    if-eqz v0, :cond_45

    .line 1999
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    goto :goto_4a

    .line 2002
    :cond_45
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Ltds/androidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/AdapterHelper;->consumePostponedUpdates()V

    .line 2005
    :cond_4a
    :goto_4a
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 2006
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 2007
    invoke-static {}, Ltds/androidx/core/os/TraceCompat;->endSection()V

    goto :goto_66

    .line 2008
    :cond_55
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Ltds/androidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 2009
    invoke-static {v1}, Ltds/androidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 2010
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 2011
    invoke-static {}, Ltds/androidx/core/os/TraceCompat;->endSection()V

    .line 2013
    :cond_66
    :goto_66
    return-void

    .line 1979
    :cond_67
    :goto_67
    invoke-static {v1}, Ltds/androidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1980
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 1981
    invoke-static {}, Ltds/androidx/core/os/TraceCompat;->endSection()V

    .line 1982
    return-void
.end method

.method defaultOnMeasure(II)V
    .registers 6
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .line 3737
    nop

    .line 3738
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    .line 3739
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat;->getMinimumWidth(Landroid/view/View;)I

    move-result v1

    .line 3737
    invoke-static {p1, v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v0

    .line 3740
    .local v0, "width":I
    nop

    .line 3741
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    .line 3742
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat;->getMinimumHeight(Landroid/view/View;)I

    move-result v2

    .line 3740
    invoke-static {p2, v1, v2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->chooseSize(III)I

    move-result v1

    .line 3744
    .local v1, "height":I
    invoke-virtual {p0, v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->setMeasuredDimension(II)V

    .line 3745
    return-void
.end method

.method dispatchChildAttached(Landroid/view/View;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;

    .line 7821
    invoke-static {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 7822
    .local v0, "viewHolder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->onChildAttachedToWindow(Landroid/view/View;)V

    .line 7823
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_10

    if-eqz v0, :cond_10

    .line 7824
    invoke-virtual {v1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 7826
    :cond_10
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v1, :cond_2a

    .line 7827
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 7828
    .local v1, "cnt":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_1a
    if-ltz v2, :cond_2a

    .line 7829
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltds/androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v3, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewAttachedToWindow(Landroid/view/View;)V

    .line 7828
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 7832
    .end local v1    # "cnt":I
    .end local v2    # "i":I
    :cond_2a
    return-void
.end method

.method dispatchChildDetached(Landroid/view/View;)V
    .registers 6
    .param p1, "child"    # Landroid/view/View;

    .line 7806
    invoke-static {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 7807
    .local v0, "viewHolder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->onChildDetachedFromWindow(Landroid/view/View;)V

    .line 7808
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_10

    if-eqz v0, :cond_10

    .line 7809
    invoke-virtual {v1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 7811
    :cond_10
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-eqz v1, :cond_2a

    .line 7812
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 7813
    .local v1, "cnt":I
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_1a
    if-ltz v2, :cond_2a

    .line 7814
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltds/androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    invoke-interface {v3, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;->onChildViewDetachedFromWindow(Landroid/view/View;)V

    .line 7813
    add-int/lit8 v2, v2, -0x1

    goto :goto_1a

    .line 7817
    .end local v1    # "cnt":I
    .end local v2    # "i":I
    :cond_2a
    return-void
.end method

.method dispatchLayout()V
    .registers 5

    .line 3937
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    const-string v1, "RecyclerView"

    if-nez v0, :cond_c

    .line 3938
    const-string v0, "No adapter attached; skipping layout"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3940
    return-void

    .line 3942
    :cond_c
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_16

    .line 3943
    const-string v0, "No layout manager attached; skipping layout"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3945
    return-void

    .line 3947
    :cond_16
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3953
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureSkippedDueToExact:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_32

    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredWidth:I

    .line 3954
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v3

    if-ne v0, v3, :cond_30

    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredHeight:I

    .line 3955
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v3

    if-eq v0, v3, :cond_32

    :cond_30
    move v0, v2

    goto :goto_33

    :cond_32
    move v0, v1

    .line 3956
    .local v0, "needsRemeasureDueToExactSkip":Z
    :goto_33
    iput v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredWidth:I

    .line 3957
    iput v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredHeight:I

    .line 3958
    iput-boolean v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureSkippedDueToExact:Z

    .line 3960
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    if-ne v1, v2, :cond_4b

    .line 3961
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 3962
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    .line 3963
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    goto :goto_7c

    .line 3964
    :cond_4b
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Ltds/androidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/AdapterHelper;->hasUpdates()Z

    move-result v1

    if-nez v1, :cond_74

    if-nez v0, :cond_74

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3966
    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_74

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3967
    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_6e

    goto :goto_74

    .line 3980
    :cond_6e
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    goto :goto_7c

    .line 3976
    :cond_74
    :goto_74
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->setExactMeasureSpecsFrom(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    .line 3977
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3982
    :goto_7c
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep3()V

    .line 3983
    return-void
.end method

.method public dispatchNestedFling(FFZ)Z
    .registers 5
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F
    .param p3, "consumed"    # Z

    .line 11731
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ltds/androidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ltds/androidx/core/view/NestedScrollingChildHelper;->dispatchNestedFling(FFZ)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreFling(FF)Z
    .registers 4
    .param p1, "velocityX"    # F
    .param p2, "velocityY"    # F

    .line 11736
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ltds/androidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ltds/androidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreFling(FF)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[I)Z
    .registers 6
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I

    .line 11719
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ltds/androidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ltds/androidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedPreScroll(II[I[II)Z
    .registers 12
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I
    .param p4, "offsetInWindow"    # [I
    .param p5, "type"    # I

    .line 11725
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ltds/androidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ltds/androidx/core/view/NestedScrollingChildHelper;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    return v0
.end method

.method public final dispatchNestedScroll(IIII[II[I)V
    .registers 16
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I
    .param p6, "type"    # I
    .param p7, "consumed"    # [I

    .line 11713
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ltds/androidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Ltds/androidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II[I)V

    .line 11715
    return-void
.end method

.method public dispatchNestedScroll(IIII[I)Z
    .registers 12
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I

    .line 11699
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ltds/androidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Ltds/androidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[I)Z

    move-result v0

    return v0
.end method

.method public dispatchNestedScroll(IIII[II)Z
    .registers 14
    .param p1, "dxConsumed"    # I
    .param p2, "dyConsumed"    # I
    .param p3, "dxUnconsumed"    # I
    .param p4, "dyUnconsumed"    # I
    .param p5, "offsetInWindow"    # [I
    .param p6, "type"    # I

    .line 11706
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ltds/androidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Ltds/androidx/core/view/NestedScrollingChildHelper;->dispatchNestedScroll(IIII[II)Z

    move-result v0

    return v0
.end method

.method dispatchOnScrollStateChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .line 5321
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_7

    .line 5322
    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->onScrollStateChanged(I)V

    .line 5327
    :cond_7
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 5330
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollListener:Ltds/androidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v0, :cond_11

    .line 5331
    invoke-virtual {v0, p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Ltds/androidx/recyclerview/widget/RecyclerView;I)V

    .line 5333
    :cond_11
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_2b

    .line 5334
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_1b
    if-ltz v0, :cond_2b

    .line 5335
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltds/androidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v1, p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Ltds/androidx/recyclerview/widget/RecyclerView;I)V

    .line 5334
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b

    .line 5338
    .end local v0    # "i":I
    :cond_2b
    return-void
.end method

.method dispatchOnScrolled(II)V
    .registers 7
    .param p1, "hresult"    # I
    .param p2, "vresult"    # I

    .line 5279
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 5284
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getScrollX()I

    move-result v0

    .line 5285
    .local v0, "scrollX":I
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getScrollY()I

    move-result v1

    .line 5286
    .local v1, "scrollY":I
    sub-int v2, v0, p1

    sub-int v3, v1, p2

    invoke-virtual {p0, v0, v1, v2, v3}, Ltds/androidx/recyclerview/widget/RecyclerView;->onScrollChanged(IIII)V

    .line 5289
    invoke-virtual {p0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView;->onScrolled(II)V

    .line 5293
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollListener:Ltds/androidx/recyclerview/widget/RecyclerView$OnScrollListener;

    if-eqz v2, :cond_1f

    .line 5294
    invoke-virtual {v2, p0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Ltds/androidx/recyclerview/widget/RecyclerView;II)V

    .line 5296
    :cond_1f
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v2, :cond_39

    .line 5297
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_29
    if-ltz v2, :cond_39

    .line 5298
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltds/androidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v3, p0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Ltds/androidx/recyclerview/widget/RecyclerView;II)V

    .line 5297
    add-int/lit8 v2, v2, -0x1

    goto :goto_29

    .line 5301
    .end local v2    # "i":I
    :cond_39
    iget v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mDispatchScrollCounter:I

    .line 5302
    return-void
.end method

.method dispatchPendingImportantForAccessibilityChanges()V
    .registers 5

    .line 11611
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_2b

    .line 11612
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 11613
    .local v1, "viewHolder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget-object v2, v1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-ne v2, p0, :cond_28

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 11614
    goto :goto_28

    .line 11616
    :cond_21
    iget v2, v1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 11617
    .local v2, "state":I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_28

    .line 11619
    iput v3, v1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 11611
    .end local v1    # "viewHolder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v2    # "state":I
    :cond_28
    :goto_28
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 11623
    .end local v0    # "i":I
    :cond_2b
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 11624
    return-void
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 3841
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 3842
    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1468
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 1469
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 1460
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V

    .line 1461
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 11
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 4554
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 4556
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4557
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1c

    .line 4558
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/RecyclerView$ItemDecoration;

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v2, p1, p0, v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$State;)V

    .line 4557
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 4562
    .end local v1    # "i":I
    :cond_1c
    const/4 v1, 0x0

    .line 4563
    .local v1, "needsInvalidate":Z
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_58

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_58

    .line 4564
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 4565
    .local v2, "restore":I
    iget-boolean v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v5, :cond_36

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v5

    goto :goto_37

    :cond_36
    move v5, v4

    .line 4566
    .local v5, "padding":I
    :goto_37
    const/high16 v6, 0x43870000    # 270.0f

    invoke-virtual {p1, v6}, Landroid/graphics/Canvas;->rotate(F)V

    .line 4567
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v6

    neg-int v6, v6

    add-int/2addr v6, v5

    int-to-float v6, v6

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4568
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v6, :cond_53

    invoke-virtual {v6, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v6

    if-eqz v6, :cond_53

    move v6, v3

    goto :goto_54

    :cond_53
    move v6, v4

    :goto_54
    move v1, v6

    .line 4569
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4571
    .end local v2    # "restore":I
    .end local v5    # "padding":I
    :cond_58
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_88

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_88

    .line 4572
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 4573
    .restart local v2    # "restore":I
    iget-boolean v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v5, :cond_77

    .line 4574
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4576
    :cond_77
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_83

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_83

    move v5, v3

    goto :goto_84

    :cond_83
    move v5, v4

    :goto_84
    or-int/2addr v1, v5

    .line 4577
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4579
    .end local v2    # "restore":I
    :cond_88
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_c1

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_c1

    .line 4580
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 4581
    .restart local v2    # "restore":I
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v5

    .line 4582
    .local v5, "width":I
    iget-boolean v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v6, :cond_a3

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v6

    goto :goto_a4

    :cond_a3
    move v6, v4

    .line 4583
    .local v6, "padding":I
    :goto_a4
    const/high16 v7, 0x42b40000    # 90.0f

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->rotate(F)V

    .line 4584
    neg-int v7, v6

    int-to-float v7, v7

    neg-int v8, v5

    int-to-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4585
    iget-object v7, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v7, :cond_bc

    invoke-virtual {v7, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v7

    if-eqz v7, :cond_bc

    move v7, v3

    goto :goto_bd

    :cond_bc
    move v7, v4

    :goto_bd
    or-int/2addr v1, v7

    .line 4586
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4588
    .end local v2    # "restore":I
    .end local v5    # "width":I
    .end local v6    # "padding":I
    :cond_c1
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v2, :cond_111

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_111

    .line 4589
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 4590
    .restart local v2    # "restore":I
    const/high16 v5, 0x43340000    # 180.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 4591
    iget-boolean v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v5, :cond_f2

    .line 4592
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v5

    neg-int v5, v5

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v6

    neg-int v6, v6

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_101

    .line 4594
    :cond_f2
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v6

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4596
    :goto_101
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v5, :cond_10c

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    if-eqz v5, :cond_10c

    goto :goto_10d

    :cond_10c
    move v3, v4

    :goto_10d
    or-int/2addr v1, v3

    .line 4597
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 4603
    .end local v2    # "restore":I
    :cond_111
    if-nez v1, :cond_128

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v2, :cond_128

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_128

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 4604
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_128

    .line 4605
    const/4 v1, 0x1

    .line 4608
    :cond_128
    if-eqz v1, :cond_12d

    .line 4609
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 4611
    :cond_12d
    return-void
.end method

.method public drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .line 5155
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method ensureBottomGlow()V
    .registers 5

    .line 2788
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    .line 2789
    return-void

    .line 2791
    :cond_5
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Ltds/androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;->createEdgeEffect(Ltds/androidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    .line 2792
    iget-boolean v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_32

    .line 2793
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2794
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2793
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_3d

    .line 2796
    :cond_32
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2798
    :goto_3d
    return-void
.end method

.method ensureLeftGlow()V
    .registers 5

    .line 2748
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    .line 2749
    return-void

    .line 2751
    :cond_5
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Ltds/androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;->createEdgeEffect(Ltds/androidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 2752
    iget-boolean v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_32

    .line 2753
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2754
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2753
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_3d

    .line 2756
    :cond_32
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2758
    :goto_3d
    return-void
.end method

.method ensureRightGlow()V
    .registers 5

    .line 2761
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    .line 2762
    return-void

    .line 2764
    :cond_5
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Ltds/androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;->createEdgeEffect(Ltds/androidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    .line 2765
    iget-boolean v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_32

    .line 2766
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2767
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2766
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_3d

    .line 2769
    :cond_32
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2771
    :goto_3d
    return-void
.end method

.method ensureTopGlow()V
    .registers 5

    .line 2774
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    if-eqz v0, :cond_5

    .line 2775
    return-void

    .line 2777
    :cond_5
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Ltds/androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;->createEdgeEffect(Ltds/androidx/recyclerview/widget/RecyclerView;I)Landroid/widget/EdgeEffect;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    .line 2778
    iget-boolean v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eqz v1, :cond_32

    .line 2779
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 2780
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 2779
    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    goto :goto_3d

    .line 2782
    :cond_32
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2785
    :goto_3d
    return-void
.end method

.method exceptionLabel()Ljava/lang/String;
    .registers 3

    .line 746
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/view/ViewGroup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", adapter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", layout:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", context:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 749
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 746
    return-object v0
.end method

.method final fillRemainingScrollValues(Ltds/androidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5
    .param p1, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 4136
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_22

    .line 4137
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewFlinger:Ltds/androidx/recyclerview/widget/RecyclerView$ViewFlinger;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewFlinger;->mOverScroller:Landroid/widget/OverScroller;

    .line 4138
    .local v0, "scroller":Landroid/widget/OverScroller;
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalX()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrX()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mRemainingScrollHorizontal:I

    .line 4139
    invoke-virtual {v0}, Landroid/widget/OverScroller;->getFinalY()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p1, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mRemainingScrollVertical:I

    .line 4140
    .end local v0    # "scroller":Landroid/widget/OverScroller;
    goto :goto_27

    .line 4141
    :cond_22
    const/4 v0, 0x0

    iput v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mRemainingScrollHorizontal:I

    .line 4142
    iput v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mRemainingScrollVertical:I

    .line 4144
    :goto_27
    return-void
.end method

.method public findChildViewUnder(FF)Landroid/view/View;
    .registers 9
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 5138
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 5139
    .local v0, "count":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_44

    .line 5140
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Ltds/androidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5141
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v3

    .line 5142
    .local v3, "translationX":F
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v4

    .line 5143
    .local v4, "translationY":F
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_41

    .line 5144
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v3

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_41

    .line 5145
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpl-float v5, p2, v5

    if-ltz v5, :cond_41

    .line 5146
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v5, v4

    cmpg-float v5, p2, v5

    if-gtz v5, :cond_41

    .line 5147
    return-object v2

    .line 5139
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "translationX":F
    .end local v4    # "translationY":F
    :cond_41
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 5150
    .end local v1    # "i":I
    :cond_44
    const/4 v1, 0x0

    return-object v1
.end method

.method public findContainingItemView(Landroid/view/View;)Landroid/view/View;
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 4914
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4915
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_4
    if-eqz v0, :cond_14

    if-eq v0, p0, :cond_14

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_14

    .line 4916
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    .line 4917
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_4

    .line 4919
    :cond_14
    if-ne v0, p0, :cond_18

    move-object v1, p1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :goto_19
    return-object v1
.end method

.method public findContainingViewHolder(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 4931
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    .line 4932
    .local v0, "itemView":Landroid/view/View;
    if-nez v0, :cond_8

    const/4 v1, 0x0

    goto :goto_c

    :cond_8
    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    :goto_c
    return-object v1
.end method

.method public findViewHolderForAdapterPosition(I)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 8
    .param p1, "position"    # I

    .line 5049
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-eqz v0, :cond_6

    .line 5050
    const/4 v0, 0x0

    return-object v0

    .line 5052
    :cond_6
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 5054
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 5055
    .local v1, "hidden":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_e
    if-ge v2, v0, :cond_38

    .line 5056
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v2}, Ltds/androidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 5057
    .local v3, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_35

    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_35

    .line 5058
    invoke-virtual {p0, v3}, Ltds/androidx/recyclerview/widget/RecyclerView;->getAdapterPositionInRecyclerView(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v4

    if-ne v4, p1, :cond_35

    .line 5059
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    iget-object v5, v3, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ltds/androidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_34

    .line 5060
    move-object v1, v3

    goto :goto_35

    .line 5062
    :cond_34
    return-object v3

    .line 5055
    .end local v3    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_35
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 5066
    .end local v2    # "i":I
    :cond_38
    return-object v1
.end method

.method public findViewHolderForItemId(J)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 9
    .param p1, "id"    # J

    .line 5111
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_40

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_40

    .line 5114
    :cond_b
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 5115
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 5116
    .local v1, "hidden":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v0, :cond_3f

    .line 5117
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v2}, Ltds/androidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 5118
    .local v3, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_3c

    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_3c

    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-nez v4, :cond_3c

    .line 5119
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    iget-object v5, v3, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ltds/androidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3b

    .line 5120
    move-object v1, v3

    goto :goto_3c

    .line 5122
    :cond_3b
    return-object v3

    .line 5116
    .end local v3    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_3c
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 5126
    .end local v2    # "i":I
    :cond_3f
    return-object v1

    .line 5112
    .end local v0    # "childCount":I
    .end local v1    # "hidden":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_40
    :goto_40
    const/4 v0, 0x0

    return-object v0
.end method

.method public findViewHolderForLayoutPosition(I)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3
    .param p1, "position"    # I

    .line 5027
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public findViewHolderForPosition(I)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4999
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->findViewHolderForPosition(IZ)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method findViewHolderForPosition(IZ)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 9
    .param p1, "position"    # I
    .param p2, "checkNewPosition"    # Z

    .line 5071
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 5072
    .local v0, "childCount":I
    const/4 v1, 0x0

    .line 5073
    .local v1, "hidden":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_8
    if-ge v2, v0, :cond_3a

    .line 5074
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v2}, Ltds/androidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 5075
    .local v3, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_37

    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v4

    if-nez v4, :cond_37

    .line 5076
    if-eqz p2, :cond_23

    .line 5077
    iget v4, v3, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-eq v4, p1, :cond_2a

    .line 5078
    goto :goto_37

    .line 5080
    :cond_23
    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v4

    if-eq v4, p1, :cond_2a

    .line 5081
    goto :goto_37

    .line 5083
    :cond_2a
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    iget-object v5, v3, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v4, v5}, Ltds/androidx/recyclerview/widget/ChildHelper;->isHidden(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_36

    .line 5084
    move-object v1, v3

    goto :goto_37

    .line 5086
    :cond_36
    return-object v3

    .line 5073
    .end local v3    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_37
    :goto_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 5093
    .end local v2    # "i":I
    :cond_3a
    return-object v1
.end method

.method public fling(II)Z
    .registers 10
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .line 2553
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 2554
    const-string v0, "RecyclerView"

    const-string v2, "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    return v1

    .line 2558
    :cond_d
    iget-boolean v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v2, :cond_12

    .line 2559
    return v1

    .line 2562
    :cond_12
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 2563
    .local v0, "canScrollHorizontal":Z
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    .line 2565
    .local v2, "canScrollVertical":Z
    if-eqz v0, :cond_26

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_27

    .line 2566
    :cond_26
    const/4 p1, 0x0

    .line 2568
    :cond_27
    if-eqz v2, :cond_31

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    if-ge v3, v4, :cond_32

    .line 2569
    :cond_31
    const/4 p2, 0x0

    .line 2571
    :cond_32
    if-nez p1, :cond_37

    if-nez p2, :cond_37

    .line 2573
    return v1

    .line 2576
    :cond_37
    int-to-float v3, p1

    int-to-float v4, p2

    invoke-virtual {p0, v3, v4}, Ltds/androidx/recyclerview/widget/RecyclerView;->dispatchNestedPreFling(FF)Z

    move-result v3

    if-nez v3, :cond_82

    .line 2577
    const/4 v3, 0x1

    if-nez v0, :cond_47

    if-eqz v2, :cond_45

    goto :goto_47

    :cond_45
    move v4, v1

    goto :goto_48

    :cond_47
    :goto_47
    move v4, v3

    .line 2578
    .local v4, "canScroll":Z
    :goto_48
    int-to-float v5, p1

    int-to-float v6, p2

    invoke-virtual {p0, v5, v6, v4}, Ltds/androidx/recyclerview/widget/RecyclerView;->dispatchNestedFling(FFZ)Z

    .line 2580
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mOnFlingListener:Ltds/androidx/recyclerview/widget/RecyclerView$OnFlingListener;

    if-eqz v5, :cond_58

    invoke-virtual {v5, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$OnFlingListener;->onFling(II)Z

    move-result v5

    if-eqz v5, :cond_58

    .line 2581
    return v3

    .line 2584
    :cond_58
    if-eqz v4, :cond_82

    .line 2585
    const/4 v1, 0x0

    .line 2586
    .local v1, "nestedScrollAxis":I
    if-eqz v0, :cond_5f

    .line 2587
    or-int/lit8 v1, v1, 0x1

    .line 2589
    :cond_5f
    if-eqz v2, :cond_63

    .line 2590
    or-int/lit8 v1, v1, 0x2

    .line 2592
    :cond_63
    invoke-virtual {p0, v1, v3}, Ltds/androidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    .line 2594
    iget v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v6, v5

    invoke-static {p1, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 2595
    iget v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    neg-int v6, v5

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result p2

    .line 2596
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewFlinger:Ltds/androidx/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v5, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewFlinger;->fling(II)V

    .line 2597
    return v3

    .line 2600
    .end local v1    # "nestedScrollAxis":I
    .end local v4    # "canScroll":Z
    :cond_82
    return v1
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 14
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .line 2863
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->onInterceptFocusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2864
    .local v0, "result":Landroid/view/View;
    if-eqz v0, :cond_9

    .line 2865
    return-object v0

    .line 2867
    :cond_9
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1f

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1f

    .line 2868
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v1

    if-nez v1, :cond_1f

    iget-boolean v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez v1, :cond_1f

    move v1, v2

    goto :goto_20

    :cond_1f
    move v1, v3

    .line 2870
    .local v1, "canRunFocusFailure":Z
    :goto_20
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v4

    .line 2871
    .local v4, "ff":Landroid/view/FocusFinder;
    const/4 v5, 0x0

    if-eqz v1, :cond_9b

    const/4 v6, 0x2

    if-eq p2, v6, :cond_2c

    if-ne p2, v2, :cond_9b

    .line 2875
    :cond_2c
    const/4 v7, 0x0

    .line 2876
    .local v7, "needsFocusFailureLayout":Z
    iget-object v8, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v8}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v8

    if-eqz v8, :cond_4b

    .line 2877
    if-ne p2, v6, :cond_3a

    const/16 v8, 0x82

    goto :goto_3c

    :cond_3a
    const/16 v8, 0x21

    .line 2879
    .local v8, "absDir":I
    :goto_3c
    invoke-virtual {v4, p0, p1, v8}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    .line 2880
    .local v9, "found":Landroid/view/View;
    if-nez v9, :cond_44

    move v10, v2

    goto :goto_45

    :cond_44
    move v10, v3

    :goto_45
    move v7, v10

    .line 2881
    sget-boolean v10, Ltds/androidx/recyclerview/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v10, :cond_4b

    .line 2883
    move p2, v8

    .line 2886
    .end local v8    # "absDir":I
    .end local v9    # "found":Landroid/view/View;
    :cond_4b
    if-nez v7, :cond_7b

    iget-object v8, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v8}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v8

    if-eqz v8, :cond_7b

    .line 2887
    iget-object v8, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v8}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getLayoutDirection()I

    move-result v8

    if-ne v8, v2, :cond_5f

    move v8, v2

    goto :goto_60

    :cond_5f
    move v8, v3

    .line 2888
    .local v8, "rtl":Z
    :goto_60
    if-ne p2, v6, :cond_64

    move v6, v2

    goto :goto_65

    :cond_64
    move v6, v3

    :goto_65
    xor-int/2addr v6, v8

    if-eqz v6, :cond_6b

    const/16 v6, 0x42

    goto :goto_6d

    :cond_6b
    const/16 v6, 0x11

    .line 2890
    .local v6, "absDir":I
    :goto_6d
    invoke-virtual {v4, p0, p1, v6}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v9

    .line 2891
    .restart local v9    # "found":Landroid/view/View;
    if-nez v9, :cond_74

    goto :goto_75

    :cond_74
    move v2, v3

    :goto_75
    move v7, v2

    .line 2892
    sget-boolean v2, Ltds/androidx/recyclerview/widget/RecyclerView;->FORCE_ABS_FOCUS_SEARCH_DIRECTION:Z

    if-eqz v2, :cond_7b

    .line 2894
    move p2, v6

    .line 2897
    .end local v6    # "absDir":I
    .end local v8    # "rtl":Z
    .end local v9    # "found":Landroid/view/View;
    :cond_7b
    if-eqz v7, :cond_96

    .line 2898
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2899
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 2900
    .local v2, "focusedItemView":Landroid/view/View;
    if-nez v2, :cond_87

    .line 2902
    return-object v5

    .line 2904
    :cond_87
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 2905
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v8, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v9, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v6, p1, p2, v8, v9}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    .line 2906
    invoke-virtual {p0, v3}, Ltds/androidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 2908
    .end local v2    # "focusedItemView":Landroid/view/View;
    :cond_96
    invoke-virtual {v4, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2909
    .end local v7    # "needsFocusFailureLayout":Z
    goto :goto_bd

    .line 2910
    :cond_9b
    invoke-virtual {v4, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 2911
    if-nez v0, :cond_bd

    if-eqz v1, :cond_bd

    .line 2912
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2913
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->findContainingItemView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 2914
    .restart local v2    # "focusedItemView":Landroid/view/View;
    if-nez v2, :cond_ad

    .line 2916
    return-object v5

    .line 2918
    :cond_ad
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 2919
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v7, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v8, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v6, p1, p2, v7, v8}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->onFocusSearchFailed(Landroid/view/View;ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)Landroid/view/View;

    move-result-object v0

    .line 2920
    invoke-virtual {p0, v3}, Ltds/androidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 2923
    .end local v2    # "focusedItemView":Landroid/view/View;
    :cond_bd
    :goto_bd
    if-eqz v0, :cond_d4

    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v2

    if-nez v2, :cond_d4

    .line 2924
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getFocusedChild()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_d0

    .line 2927
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    return-object v2

    .line 2933
    :cond_d0
    invoke-direct {p0, v0, v5}, Ltds/androidx/recyclerview/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    .line 2934
    return-object p1

    .line 2936
    :cond_d4
    invoke-direct {p0, p1, v0, p2}, Ltds/androidx/recyclerview/widget/RecyclerView;->isPreferredNextFocus(Landroid/view/View;Landroid/view/View;I)Z

    move-result v2

    if-eqz v2, :cond_dc

    move-object v2, v0

    goto :goto_e0

    .line 2937
    :cond_dc
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2936
    :goto_e0
    return-object v2
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 4

    .line 4630
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_9

    .line 4633
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->generateDefaultLayoutParams()Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0

    .line 4631
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecyclerView has no LayoutManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 4638
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_d

    .line 4641
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/content/Context;Landroid/util/AttributeSet;)Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0

    .line 4639
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecyclerView has no LayoutManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 5
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 4646
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_9

    .line 4649
    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    move-result-object v0

    return-object v0

    .line 4647
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RecyclerView has no LayoutManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .registers 2

    .line 789
    const-string v0, "RecyclerView"

    return-object v0
.end method

.method public getAdapter()Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;
    .registers 2

    .line 1242
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    return-object v0
.end method

.method getAdapterPositionInRecyclerView(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .registers 4
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 11627
    const/16 v0, 0x20c

    invoke-virtual {p1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->hasAnyOfTheFlags(I)Z

    move-result v0

    if-nez v0, :cond_18

    .line 11629
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isBound()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_18

    .line 11632
    :cond_f
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Ltds/androidx/recyclerview/widget/AdapterHelper;

    iget v1, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/AdapterHelper;->applyPendingUpdatesToPosition(I)I

    move-result v0

    return v0

    .line 11630
    :cond_18
    :goto_18
    const/4 v0, -0x1

    return v0
.end method

.method public getBaseline()I
    .registers 2

    .line 1297
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_9

    .line 1298
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getBaseline()I

    move-result v0

    return v0

    .line 1300
    :cond_9
    invoke-super {p0}, Landroid/view/ViewGroup;->getBaseline()I

    move-result v0

    return v0
.end method

.method getChangedHolderKey(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)J
    .registers 4
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 4483
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    goto :goto_10

    :cond_d
    iget v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    int-to-long v0, v0

    :goto_10
    return-wide v0
.end method

.method public getChildAdapterPosition(Landroid/view/View;)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 4959
    invoke-static {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4960
    .local v0, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v1

    goto :goto_c

    :cond_b
    const/4 v1, -0x1

    :goto_c
    return v1
.end method

.method protected getChildDrawingOrder(II)I
    .registers 4
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 13645
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildDrawingOrderCallback:Ltds/androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_9

    .line 13646
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v0

    return v0

    .line 13648
    :cond_9
    invoke-interface {v0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;->onGetChildDrawingOrder(II)I

    move-result v0

    return v0
.end method

.method public getChildItemId(Landroid/view/View;)J
    .registers 5
    .param p1, "child"    # Landroid/view/View;

    .line 4985
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_18

    .line 4988
    :cond_d
    invoke-static {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4989
    .local v0, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v1

    :cond_17
    return-wide v1

    .line 4986
    .end local v0    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_18
    :goto_18
    return-wide v1
.end method

.method public getChildLayoutPosition(Landroid/view/View;)I
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 4974
    invoke-static {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4975
    .local v0, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    move-result v1

    goto :goto_c

    :cond_b
    const/4 v1, -0x1

    :goto_c
    return v1
.end method

.method public getChildPosition(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4949
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 6
    .param p1, "child"    # Landroid/view/View;

    .line 4893
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4894
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_2c

    if-ne v0, p0, :cond_9

    goto :goto_2c

    .line 4895
    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not a direct child of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4898
    :cond_2c
    :goto_2c
    invoke-static {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    return-object v1
.end method

.method public getClipToPadding()Z
    .registers 2

    .line 1113
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    return v0
.end method

.method public getDecoratedBoundsWithMargins(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outBounds"    # Landroid/graphics/Rect;

    .line 5217
    invoke-static {p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView;->getDecoratedBoundsWithMarginsInt(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 5218
    return-void
.end method

.method public getEdgeEffectFactory()Ltds/androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;
    .registers 2

    .line 2828
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Ltds/androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    return-object v0
.end method

.method public getItemAnimator()Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;
    .registers 2

    .line 3856
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    return-object v0
.end method

.method getItemDecorInsetsForChild(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 10
    .param p1, "child"    # Landroid/view/View;

    .line 5230
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 5231
    .local v0, "lp":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;
    iget-boolean v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    if-nez v1, :cond_d

    .line 5232
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object v1

    .line 5235
    :cond_d
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$State;->isPreLayout()Z

    move-result v1

    if-eqz v1, :cond_24

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->isItemChanged()Z

    move-result v1

    if-nez v1, :cond_21

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->isViewInvalid()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 5237
    :cond_21
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    return-object v1

    .line 5239
    :cond_24
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 5240
    .local v1, "insets":Landroid/graphics/Rect;
    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 5241
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 5242
    .local v3, "decorCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_31
    if-ge v4, v3, :cond_6e

    .line 5243
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 5244
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltds/androidx/recyclerview/widget/RecyclerView$ItemDecoration;

    iget-object v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget-object v7, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v5, v6, p1, p0, v7}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$State;)V

    .line 5245
    iget v5, v1, Landroid/graphics/Rect;->left:I

    iget-object v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->left:I

    .line 5246
    iget v5, v1, Landroid/graphics/Rect;->top:I

    iget-object v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->top:I

    .line 5247
    iget v5, v1, Landroid/graphics/Rect;->right:I

    iget-object v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 5248
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTempRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v5, v6

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 5242
    add-int/lit8 v4, v4, 0x1

    goto :goto_31

    .line 5250
    .end local v4    # "i":I
    :cond_6e
    iput-boolean v2, v0, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 5251
    return-object v1
.end method

.method public getItemDecorationAt(I)Ltds/androidx/recyclerview/widget/RecyclerView$ItemDecoration;
    .registers 6
    .param p1, "index"    # I

    .line 1659
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    .line 1660
    .local v0, "size":I
    if-ltz p1, :cond_11

    if-ge p1, v0, :cond_11

    .line 1664
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltds/androidx/recyclerview/widget/RecyclerView$ItemDecoration;

    return-object v1

    .line 1661
    :cond_11
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is an invalid index for size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getItemDecorationCount()I
    .registers 2

    .line 1673
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;
    .registers 2

    .line 1525
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public getMaxFlingVelocity()I
    .registers 2

    .line 2638
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    return v0
.end method

.method public getMinFlingVelocity()I
    .registers 2

    .line 2628
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mMinFlingVelocity:I

    return v0
.end method

.method getNanoTime()J
    .registers 3

    .line 6019
    sget-boolean v0, Ltds/androidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_9

    .line 6020
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    return-wide v0

    .line 6022
    :cond_9
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getOnFlingListener()Ltds/androidx/recyclerview/widget/RecyclerView$OnFlingListener;
    .registers 2

    .line 1419
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mOnFlingListener:Ltds/androidx/recyclerview/widget/RecyclerView$OnFlingListener;

    return-object v0
.end method

.method public getPreserveFocusAfterLayout()Z
    .registers 2

    .line 4866
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    return v0
.end method

.method public getRecycledViewPool()Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;
    .registers 2

    .line 1538
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->getRecycledViewPool()Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    return-object v0
.end method

.method public getScrollState()I
    .registers 2

    .line 1585
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollState:I

    return v0
.end method

.method public hasFixedSize()Z
    .registers 2

    .line 1085
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    return v0
.end method

.method public hasNestedScrollingParent()Z
    .registers 2

    .line 11688
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ltds/androidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Ltds/androidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent()Z

    move-result v0

    return v0
.end method

.method public hasNestedScrollingParent(I)Z
    .registers 3
    .param p1, "type"    # I

    .line 11693
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ltds/androidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltds/androidx/core/view/NestedScrollingChildHelper;->hasNestedScrollingParent(I)Z

    move-result v0

    return v0
.end method

.method public hasPendingAdapterUpdates()Z
    .registers 2

    .line 5354
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Ltds/androidx/recyclerview/widget/AdapterHelper;

    .line 5355
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/AdapterHelper;->hasPendingUpdates()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 5354
    :goto_14
    return v0
.end method

.method initAdapterManager()V
    .registers 3

    .line 983
    new-instance v0, Ltds/androidx/recyclerview/widget/AdapterHelper;

    new-instance v1, Ltds/androidx/recyclerview/widget/RecyclerView$6;

    invoke-direct {v1, p0}, Ltds/androidx/recyclerview/widget/RecyclerView$6;-><init>(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    invoke-direct {v0, v1}, Ltds/androidx/recyclerview/widget/AdapterHelper;-><init>(Ltds/androidx/recyclerview/widget/AdapterHelper$Callback;)V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Ltds/androidx/recyclerview/widget/AdapterHelper;

    .line 1063
    return-void
.end method

.method invalidateGlows()V
    .registers 2

    .line 2801
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mBottomGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTopGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRightGlow:Landroid/widget/EdgeEffect;

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLeftGlow:Landroid/widget/EdgeEffect;

    .line 2802
    return-void
.end method

.method public invalidateItemDecorations()V
    .registers 3

    .line 4844
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    .line 4845
    return-void

    .line 4847
    :cond_9
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_12

    .line 4848
    const-string v1, "Cannot invalidate item decorations during a scroll or layout"

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 4851
    :cond_12
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 4852
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 4853
    return-void
.end method

.method isAccessibilityEnabled()Z
    .registers 2

    .line 3802
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isAnimating()Z
    .registers 2

    .line 4661
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isAttachedToWindow()Z
    .registers 2

    .line 3135
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    return v0
.end method

.method public isComputingLayout()Z
    .registers 2

    .line 3836
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isLayoutFrozen()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2392
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->isLayoutSuppressed()Z

    move-result v0

    return v0
.end method

.method public final isLayoutSuppressed()Z
    .registers 2

    .line 2355
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    return v0
.end method

.method public isNestedScrollingEnabled()Z
    .registers 2

    .line 11663
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ltds/androidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Ltds/androidx/core/view/NestedScrollingChildHelper;->isNestedScrollingEnabled()Z

    move-result v0

    return v0
.end method

.method jumpToPositionForSmoothScroller(I)V
    .registers 3
    .param p1, "position"    # I

    .line 1805
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_5

    .line 1806
    return-void

    .line 1811
    :cond_5
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 1812
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1813
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->awakenScrollBars()Z

    .line 1814
    return-void
.end method

.method markItemDecorInsetsDirty()V
    .registers 6

    .line 4544
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4545
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1b

    .line 4546
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Ltds/androidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4547
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v4, 0x1

    iput-boolean v4, v3, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 4545
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4549
    .end local v1    # "i":I
    :cond_1b
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->markItemDecorInsetsDirty()V

    .line 4550
    return-void
.end method

.method markKnownViewsInvalid()V
    .registers 5

    .line 4828
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4829
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_22

    .line 4830
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Ltds/androidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 4831
    .local v2, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_1f

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1f

    .line 4832
    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4829
    .end local v2    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4835
    .end local v1    # "i":I
    :cond_22
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 4836
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->markKnownViewsInvalid()V

    .line 4837
    return-void
.end method

.method public nestedScrollBy(II)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1874
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->nestedScrollByInternal(IILandroid/view/MotionEvent;I)V

    .line 1875
    return-void
.end method

.method public offsetChildrenHorizontal(I)V
    .registers 5
    .param p1, "dx"    # I

    .line 5203
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 5204
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 5205
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Ltds/androidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 5204
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 5207
    .end local v1    # "i":I
    :cond_15
    return-void
.end method

.method public offsetChildrenVertical(I)V
    .registers 5
    .param p1, "dy"    # I

    .line 5165
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 5166
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 5167
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Ltds/androidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 5166
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 5169
    .end local v1    # "i":I
    :cond_15
    return-void
.end method

.method offsetPositionRecordsForInsert(II)V
    .registers 8
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I

    .line 4724
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4725
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_2b

    .line 4726
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Ltds/androidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 4727
    .local v2, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v2, :cond_28

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_28

    iget v3, v2, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v3, p1, :cond_28

    .line 4732
    const/4 v3, 0x0

    invoke-virtual {v2, p2, v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 4733
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    const/4 v4, 0x1

    iput-boolean v4, v3, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    .line 4725
    .end local v2    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4736
    .end local v1    # "i":I
    :cond_2b
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v1, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->offsetPositionRecordsForInsert(II)V

    .line 4737
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 4738
    return-void
.end method

.method offsetPositionRecordsForMove(II)V
    .registers 11
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 4690
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4692
    .local v0, "childCount":I
    if-ge p1, p2, :cond_c

    .line 4693
    move v1, p1

    .line 4694
    .local v1, "start":I
    move v2, p2

    .line 4695
    .local v2, "end":I
    const/4 v3, -0x1

    .local v3, "inBetweenOffset":I
    goto :goto_f

    .line 4697
    .end local v1    # "start":I
    .end local v2    # "end":I
    .end local v3    # "inBetweenOffset":I
    :cond_c
    move v1, p2

    .line 4698
    .restart local v1    # "start":I
    move v2, p1

    .line 4699
    .restart local v2    # "end":I
    const/4 v3, 0x1

    .line 4702
    .restart local v3    # "inBetweenOffset":I
    :goto_f
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_10
    if-ge v4, v0, :cond_3d

    .line 4703
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v5, v4}, Ltds/androidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v5

    .line 4704
    .local v5, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v5, :cond_3a

    iget v6, v5, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v6, v1, :cond_3a

    iget v6, v5, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-le v6, v2, :cond_27

    .line 4705
    goto :goto_3a

    .line 4711
    :cond_27
    iget v6, v5, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    const/4 v7, 0x0

    if-ne v6, p1, :cond_32

    .line 4712
    sub-int v6, p2, p1

    invoke-virtual {v5, v6, v7}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    goto :goto_35

    .line 4714
    :cond_32
    invoke-virtual {v5, v3, v7}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 4717
    :goto_35
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    const/4 v7, 0x1

    iput-boolean v7, v6, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    .line 4702
    .end local v5    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_3a
    :goto_3a
    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    .line 4719
    .end local v4    # "i":I
    :cond_3d
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v4, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->offsetPositionRecordsForMove(II)V

    .line 4720
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 4721
    return-void
.end method

.method offsetPositionRecordsForRemove(IIZ)V
    .registers 11
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "applyToPreLayout"    # Z

    .line 4742
    add-int v0, p1, p2

    .line 4743
    .local v0, "positionEnd":I
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v1

    .line 4744
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v1, :cond_3c

    .line 4745
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v2}, Ltds/androidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 4746
    .local v3, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_39

    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v4

    if-nez v4, :cond_39

    .line 4747
    iget v4, v3, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    const/4 v5, 0x1

    if-lt v4, v0, :cond_2b

    .line 4753
    neg-int v4, p2

    invoke-virtual {v3, v4, p3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->offsetPosition(IZ)V

    .line 4754
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v5, v4, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    goto :goto_39

    .line 4755
    :cond_2b
    iget v4, v3, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v4, p1, :cond_39

    .line 4760
    add-int/lit8 v4, p1, -0x1

    neg-int v6, p2

    invoke-virtual {v3, v4, v6, p3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->flagRemovedAndOffsetPosition(IIZ)V

    .line 4762
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v5, v4, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mStructureChanged:Z

    .line 4744
    .end local v3    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_39
    :goto_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 4766
    .end local v2    # "i":I
    :cond_3c
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v2, p1, p2, p3}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->offsetPositionRecordsForRemove(IIZ)V

    .line 4767
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 4768
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 6

    .line 3076
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 3077
    const/4 v0, 0x0

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3078
    const/4 v1, 0x1

    iput-boolean v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 3079
    iget-boolean v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v2, :cond_14

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->isLayoutRequested()Z

    move-result v2

    if-nez v2, :cond_14

    goto :goto_15

    :cond_14
    move v1, v0

    :goto_15
    iput-boolean v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 3080
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1e

    .line 3081
    invoke-virtual {v1, p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    .line 3083
    :cond_1e
    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 3085
    sget-boolean v0, Ltds/androidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_65

    .line 3087
    sget-object v0, Ltds/androidx/recyclerview/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltds/androidx/recyclerview/widget/GapWorker;

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mGapWorker:Ltds/androidx/recyclerview/widget/GapWorker;

    .line 3088
    if-nez v0, :cond_60

    .line 3089
    new-instance v0, Ltds/androidx/recyclerview/widget/GapWorker;

    invoke-direct {v0}, Ltds/androidx/recyclerview/widget/GapWorker;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mGapWorker:Ltds/androidx/recyclerview/widget/GapWorker;

    .line 3093
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat;->getDisplay(Landroid/view/View;)Landroid/view/Display;

    move-result-object v0

    .line 3094
    .local v0, "display":Landroid/view/Display;
    const/high16 v1, 0x42700000    # 60.0f

    .line 3095
    .local v1, "refreshRate":F
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->isInEditMode()Z

    move-result v2

    if-nez v2, :cond_50

    if-eqz v0, :cond_50

    .line 3096
    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v2

    .line 3097
    .local v2, "displayRefreshRate":F
    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_50

    .line 3098
    move v1, v2

    .line 3101
    .end local v2    # "displayRefreshRate":F
    :cond_50
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mGapWorker:Ltds/androidx/recyclerview/widget/GapWorker;

    const v3, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v3, v1

    float-to-long v3, v3

    iput-wide v3, v2, Ltds/androidx/recyclerview/widget/GapWorker;->mFrameIntervalNs:J

    .line 3102
    sget-object v2, Ltds/androidx/recyclerview/widget/GapWorker;->sGapWorker:Ljava/lang/ThreadLocal;

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mGapWorker:Ltds/androidx/recyclerview/widget/GapWorker;

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 3104
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "refreshRate":F
    :cond_60
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mGapWorker:Ltds/androidx/recyclerview/widget/GapWorker;

    invoke-virtual {v0, p0}, Ltds/androidx/recyclerview/widget/GapWorker;->add(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    .line 3106
    :cond_65
    return-void
.end method

.method public onChildAttachedToWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "child"    # Landroid/view/View;

    .line 5182
    return-void
.end method

.method public onChildDetachedFromWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "child"    # Landroid/view/View;

    .line 5194
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 3110
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 3111
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_a

    .line 3112
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 3114
    :cond_a
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 3115
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    .line 3116
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_19

    .line 3117
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 3119
    :cond_19
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3120
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 3121
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Ltds/androidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ViewInfoStore;->onDetach()V

    .line 3123
    sget-boolean v0, Ltds/androidx/recyclerview/widget/RecyclerView;->ALLOW_THREAD_GAP_WORK:Z

    if-eqz v0, :cond_36

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mGapWorker:Ltds/androidx/recyclerview/widget/GapWorker;

    if-eqz v0, :cond_36

    .line 3125
    invoke-virtual {v0, p0}, Ltds/androidx/recyclerview/widget/GapWorker;->remove(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    .line 3126
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mGapWorker:Ltds/androidx/recyclerview/widget/GapWorker;

    .line 3128
    :cond_36
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .registers 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .line 4615
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 4617
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4618
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_a
    if-ge v1, v0, :cond_1c

    .line 4619
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/RecyclerView$ItemDecoration;

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v2, p1, p0, v3}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$State;)V

    .line 4618
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 4621
    .end local v1    # "i":I
    :cond_1c
    return-void
.end method

.method onEnterLayoutOrScroll()V
    .registers 2

    .line 3779
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3780
    return-void
.end method

.method onExitLayoutOrScroll()V
    .registers 2

    .line 3783
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll(Z)V

    .line 3784
    return-void
.end method

.method onExitLayoutOrScroll(Z)V
    .registers 4
    .param p1, "enableChangeEvents"    # Z

    .line 3787
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3788
    if-ge v0, v1, :cond_13

    .line 3793
    const/4 v0, 0x0

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutOrScrollCounter:I

    .line 3794
    if-eqz p1, :cond_13

    .line 3795
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->dispatchContentChangedIfNecessary()V

    .line 3796
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->dispatchPendingImportantForAccessibilityChanges()V

    .line 3799
    :cond_13
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 3586
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 3587
    return v1

    .line 3589
    :cond_6
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_b

    .line 3590
    return v1

    .line 3592
    :cond_b
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_82

    .line 3594
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_3d

    .line 3595
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 3598
    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    neg-float v0, v0

    .local v0, "vScroll":F
    goto :goto_2c

    .line 3600
    .end local v0    # "vScroll":F
    :cond_2b
    const/4 v0, 0x0

    .line 3602
    .restart local v0    # "vScroll":F
    :goto_2c
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    if-eqz v2, :cond_3b

    .line 3603
    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v2

    .local v2, "hScroll":F
    goto :goto_6d

    .line 3605
    .end local v2    # "hScroll":F
    :cond_3b
    const/4 v2, 0x0

    .restart local v2    # "hScroll":F
    goto :goto_6d

    .line 3607
    .end local v0    # "vScroll":F
    .end local v2    # "hScroll":F
    :cond_3d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v0

    const/high16 v2, 0x400000

    and-int/2addr v0, v2

    if-eqz v0, :cond_6b

    .line 3608
    const/16 v0, 0x1a

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    .line 3609
    .local v0, "axisScroll":F
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v2, :cond_59

    .line 3612
    neg-float v2, v0

    .line 3613
    .local v2, "vScroll":F
    const/4 v3, 0x0

    move v0, v2

    move v2, v3

    .local v3, "hScroll":F
    goto :goto_6a

    .line 3614
    .end local v2    # "vScroll":F
    .end local v3    # "hScroll":F
    :cond_59
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v2

    if-eqz v2, :cond_66

    .line 3615
    const/4 v2, 0x0

    .line 3616
    .restart local v2    # "vScroll":F
    move v3, v0

    move v0, v2

    move v2, v3

    .restart local v3    # "hScroll":F
    goto :goto_6a

    .line 3618
    .end local v2    # "vScroll":F
    .end local v3    # "hScroll":F
    :cond_66
    const/4 v2, 0x0

    .line 3619
    .restart local v2    # "vScroll":F
    const/4 v3, 0x0

    move v0, v2

    move v2, v3

    .line 3621
    .local v0, "vScroll":F
    .local v2, "hScroll":F
    :goto_6a
    goto :goto_6d

    .line 3622
    .end local v0    # "vScroll":F
    .end local v2    # "hScroll":F
    :cond_6b
    const/4 v0, 0x0

    .line 3623
    .restart local v0    # "vScroll":F
    const/4 v2, 0x0

    .line 3626
    .restart local v2    # "hScroll":F
    :goto_6d
    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-nez v4, :cond_76

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_82

    .line 3627
    :cond_76
    iget v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScaledHorizontalScrollFactor:F

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iget v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScaledVerticalScrollFactor:F

    mul-float/2addr v4, v0

    float-to-int v4, v4

    const/4 v5, 0x1

    invoke-direct {p0, v3, v4, p1, v5}, Ltds/androidx/recyclerview/widget/RecyclerView;->nestedScrollByInternal(IILandroid/view/MotionEvent;I)V

    .line 3631
    .end local v0    # "vScroll":F
    .end local v2    # "hScroll":F
    :cond_82
    return v1
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 3278
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 3281
    return v1

    .line 3286
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Ltds/androidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 3287
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->findInterceptingOnItemTouchListener(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    .line 3288
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->cancelScroll()V

    .line 3289
    return v2

    .line 3292
    :cond_14
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_19

    .line 3293
    return v1

    .line 3296
    :cond_19
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 3297
    .local v0, "canScrollHorizontally":Z
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v3

    .line 3299
    .local v3, "canScrollVertically":Z
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v4, :cond_2d

    .line 3300
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v4

    iput-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3302
    :cond_2d
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v4, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3304
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 3305
    .local v4, "action":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v5

    .line 3307
    .local v5, "actionIndex":I
    const/high16 v6, 0x3f000000    # 0.5f

    packed-switch v4, :pswitch_data_11e

    :pswitch_3f
    goto/16 :goto_117

    .line 3371
    :pswitch_41
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    .line 3373
    goto/16 :goto_117

    .line 3336
    :pswitch_46
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 3337
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    add-float/2addr v7, v6

    float-to-int v7, v7

    iput v7, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v7, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 3338
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    add-float/2addr v7, v6

    float-to-int v6, v7

    iput v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    .line 3339
    goto/16 :goto_117

    .line 3382
    :pswitch_62
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->cancelScroll()V

    goto/16 :goto_117

    .line 3342
    :pswitch_67
    iget v7, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    .line 3343
    .local v7, "index":I
    if-gez v7, :cond_90

    .line 3344
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error processing scroll; pointer index for id "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "RecyclerView"

    invoke-static {v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3346
    return v1

    .line 3349
    :cond_90
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    add-float/2addr v8, v6

    float-to-int v8, v8

    .line 3350
    .local v8, "x":I
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v9

    add-float/2addr v9, v6

    float-to-int v6, v9

    .line 3351
    .local v6, "y":I
    iget v9, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-eq v9, v2, :cond_c8

    .line 3352
    iget v9, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    sub-int v9, v8, v9

    .line 3353
    .local v9, "dx":I
    iget v10, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    sub-int v10, v6, v10

    .line 3354
    .local v10, "dy":I
    const/4 v11, 0x0

    .line 3355
    .local v11, "startScroll":Z
    if-eqz v0, :cond_b6

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v12

    iget v13, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    if-le v12, v13, :cond_b6

    .line 3356
    iput v8, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 3357
    const/4 v11, 0x1

    .line 3359
    :cond_b6
    if-eqz v3, :cond_c3

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v12

    iget v13, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    if-le v12, v13, :cond_c3

    .line 3360
    iput v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    .line 3361
    const/4 v11, 0x1

    .line 3363
    :cond_c3
    if-eqz v11, :cond_c8

    .line 3364
    invoke-virtual {p0, v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 3368
    .end local v6    # "y":I
    .end local v7    # "index":I
    .end local v8    # "x":I
    .end local v9    # "dx":I
    .end local v10    # "dy":I
    .end local v11    # "startScroll":Z
    :cond_c8
    goto :goto_117

    .line 3376
    :pswitch_c9
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->clear()V

    .line 3377
    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 3379
    goto :goto_117

    .line 3309
    :pswitch_d2
    iget-boolean v7, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v7, :cond_d8

    .line 3310
    iput-boolean v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 3312
    :cond_d8
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 3313
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    add-float/2addr v7, v6

    float-to-int v7, v7

    iput v7, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v7, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 3314
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    add-float/2addr v7, v6

    float-to-int v6, v7

    iput v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    .line 3316
    iget v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollState:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_104

    .line 3317
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    invoke-interface {v6, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3318
    invoke-virtual {p0, v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 3319
    invoke-virtual {p0, v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->stopNestedScroll(I)V

    .line 3323
    :cond_104
    iget-object v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    aput v1, v6, v2

    aput v1, v6, v1

    .line 3325
    const/4 v6, 0x0

    .line 3326
    .local v6, "nestedScrollAxis":I
    if-eqz v0, :cond_10f

    .line 3327
    or-int/lit8 v6, v6, 0x1

    .line 3329
    :cond_10f
    if-eqz v3, :cond_113

    .line 3330
    or-int/lit8 v6, v6, 0x2

    .line 3332
    :cond_113
    invoke-virtual {p0, v6, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    .line 3333
    nop

    .line 3385
    .end local v6    # "nestedScrollAxis":I
    :goto_117
    iget v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne v6, v2, :cond_11c

    move v1, v2

    :cond_11c
    return v1

    nop

    :pswitch_data_11e
    .packed-switch 0x0
        :pswitch_d2
        :pswitch_c9
        :pswitch_67
        :pswitch_62
        :pswitch_3f
        :pswitch_46
        :pswitch_41
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 7
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 4528
    const-string v0, "RV OnLayout"

    invoke-static {v0}, Ltds/androidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 4529
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 4530
    invoke-static {}, Ltds/androidx/core/os/TraceCompat;->endSection()V

    .line 4531
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    .line 4532
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .line 3636
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_8

    .line 3637
    invoke-virtual {p0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView;->defaultOnMeasure(II)V

    .line 3638
    return-void

    .line 3640
    :cond_8
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->isAutoMeasureEnabled()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_82

    .line 3641
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 3642
    .local v0, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 3651
    .local v3, "heightMode":I
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v5, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v6, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v4, v5, v6, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;II)V

    .line 3655
    const/high16 v4, 0x40000000    # 2.0f

    if-ne v0, v4, :cond_28

    if-ne v3, v4, :cond_28

    move v2, v1

    :cond_28
    iput-boolean v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureSkippedDueToExact:Z

    .line 3657
    if-nez v2, :cond_81

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    if-nez v2, :cond_31

    goto :goto_81

    .line 3661
    :cond_31
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget v2, v2, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mLayoutStep:I

    if-ne v2, v1, :cond_3a

    .line 3662
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep1()V

    .line 3666
    :cond_3a
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 3667
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v1, v2, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3668
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3671
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    .line 3675
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->shouldMeasureTwice()Z

    move-result v2

    if-eqz v2, :cond_74

    .line 3676
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 3677
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v5

    invoke-static {v5, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 3678
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v6

    invoke-static {v6, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 3676
    invoke-virtual {v2, v5, v4}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasureSpecs(II)V

    .line 3679
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v1, v2, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mIsMeasuring:Z

    .line 3680
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->dispatchLayoutStep2()V

    .line 3682
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->setMeasuredDimensionFromChildren(II)V

    .line 3685
    :cond_74
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v1

    iput v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredWidth:I

    .line 3686
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    iput v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastAutoMeasureNonExactMeasuredHeight:I

    .line 3687
    .end local v0    # "widthMode":I
    .end local v3    # "heightMode":I
    goto :goto_f0

    .line 3658
    .restart local v0    # "widthMode":I
    .restart local v3    # "heightMode":I
    :cond_81
    :goto_81
    return-void

    .line 3688
    .end local v0    # "widthMode":I
    .end local v3    # "heightMode":I
    :cond_82
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    if-eqz v0, :cond_90

    .line 3689
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, v1, v2, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;II)V

    .line 3690
    return-void

    .line 3693
    :cond_90
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    if-eqz v0, :cond_ba

    .line 3694
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 3695
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 3696
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->processAdapterUpdatesAndSetAnimationFlags()V

    .line 3697
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 3699
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v0, :cond_ab

    .line 3700
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    goto :goto_b4

    .line 3703
    :cond_ab
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapterHelper:Ltds/androidx/recyclerview/widget/AdapterHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/AdapterHelper;->consumeUpdatesInOnePass()V

    .line 3704
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v2, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 3706
    :goto_b4
    iput-boolean v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapterUpdateDuringMeasure:Z

    .line 3707
    invoke-virtual {p0, v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    goto :goto_cc

    .line 3708
    :cond_ba
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mRunPredictiveAnimations:Z

    if-eqz v0, :cond_cc

    .line 3714
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->setMeasuredDimension(II)V

    .line 3715
    return-void

    .line 3718
    :cond_cc
    :goto_cc
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_d9

    .line 3719
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    iput v0, v1, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    goto :goto_dd

    .line 3721
    :cond_d9
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iput v2, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mItemCount:I

    .line 3723
    :goto_dd
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 3724
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, v1, v3, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->onMeasure(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;II)V

    .line 3725
    invoke-virtual {p0, v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 3726
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iput-boolean v2, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mInPreLayout:Z

    .line 3728
    :goto_f0
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 4
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 3066
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 3069
    const/4 v0, 0x0

    return v0

    .line 3071
    :cond_8
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1438
    instance-of v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;

    if-nez v0, :cond_8

    .line 1439
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1440
    return-void

    .line 1443
    :cond_8
    move-object v0, p1

    check-cast v0, Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;

    .line 1444
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1452
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 1453
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 1424
    new-instance v0, Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1425
    .local v0, "state":Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mPendingSavedState:Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;

    if-eqz v1, :cond_11

    .line 1426
    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;->copyFrom(Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;)V

    goto :goto_1f

    .line 1427
    :cond_11
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1c

    .line 1428
    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    iput-object v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    goto :goto_1f

    .line 1430
    :cond_1c
    const/4 v1, 0x0

    iput-object v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$SavedState;->mLayoutState:Landroid/os/Parcelable;

    .line 1433
    :goto_1f
    return-object v0
.end method

.method public onScrollStateChanged(I)V
    .registers 2
    .param p1, "state"    # I

    .line 5316
    return-void
.end method

.method public onScrolled(II)V
    .registers 3
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 5276
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 3749
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 3750
    if-ne p1, p3, :cond_7

    if-eq p2, p4, :cond_a

    .line 3751
    :cond_7
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->invalidateGlows()V

    .line 3754
    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 23
    .param p1, "e"    # Landroid/view/MotionEvent;

    .line 3400
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    iget-boolean v0, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    const/4 v8, 0x0

    if-nez v0, :cond_20c

    iget-boolean v0, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    if-eqz v0, :cond_f

    goto/16 :goto_20c

    .line 3403
    :cond_f
    invoke-direct/range {p0 .. p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->dispatchToOnItemTouchListeners(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v9, 0x1

    if-eqz v0, :cond_1a

    .line 3404
    invoke-direct/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->cancelScroll()V

    .line 3405
    return v9

    .line 3408
    :cond_1a
    iget-object v0, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_1f

    .line 3409
    return v8

    .line 3412
    :cond_1f
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v10

    .line 3413
    .local v10, "canScrollHorizontally":Z
    iget-object v0, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v11

    .line 3415
    .local v11, "canScrollVertically":Z
    iget-object v0, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_33

    .line 3416
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 3418
    :cond_33
    const/4 v12, 0x0

    .line 3420
    .local v12, "eventAddedToVelocityTracker":Z
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v13

    .line 3421
    .local v13, "action":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v14

    .line 3423
    .local v14, "actionIndex":I
    if-nez v13, :cond_44

    .line 3424
    iget-object v0, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    aput v8, v0, v9

    aput v8, v0, v8

    .line 3426
    :cond_44
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v15

    .line 3427
    .local v15, "vtev":Landroid/view/MotionEvent;
    iget-object v0, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    aget v1, v0, v8

    int-to-float v1, v1

    aget v0, v0, v9

    int-to-float v0, v0

    invoke-virtual {v15, v1, v0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 3429
    const/high16 v0, 0x3f000000    # 0.5f

    packed-switch v13, :pswitch_data_20e

    :pswitch_58
    goto/16 :goto_200

    .line 3527
    :pswitch_5a
    invoke-direct/range {p0 .. p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->onPointerUp(Landroid/view/MotionEvent;)V

    .line 3529
    goto/16 :goto_200

    .line 3447
    :pswitch_5f
    invoke-virtual {v7, v14}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 3448
    invoke-virtual {v7, v14}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v1, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 3449
    invoke-virtual {v7, v14}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput v0, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    .line 3451
    goto/16 :goto_200

    .line 3547
    :pswitch_7b
    invoke-direct/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->cancelScroll()V

    goto/16 :goto_200

    .line 3454
    :pswitch_80
    iget v1, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v7, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v5

    .line 3455
    .local v5, "index":I
    if-gez v5, :cond_a9

    .line 3456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error processing scroll; pointer index for id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found. Did any MotionEvents get skipped?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RecyclerView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    return v8

    .line 3461
    :cond_a9
    invoke-virtual {v7, v5}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    add-float/2addr v1, v0

    float-to-int v4, v1

    .line 3462
    .local v4, "x":I
    invoke-virtual {v7, v5}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    add-float/2addr v1, v0

    float-to-int v3, v1

    .line 3463
    .local v3, "y":I
    iget v0, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    sub-int/2addr v0, v4

    .line 3464
    .local v0, "dx":I
    iget v1, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    sub-int/2addr v1, v3

    .line 3466
    .local v1, "dy":I
    iget v2, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-eq v2, v9, :cond_fb

    .line 3467
    const/4 v2, 0x0

    .line 3468
    .local v2, "startScroll":Z
    if-eqz v10, :cond_d7

    .line 3469
    if-lez v0, :cond_cd

    .line 3470
    iget v9, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    sub-int v9, v0, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_d4

    .line 3472
    :cond_cd
    iget v9, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    add-int/2addr v9, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3474
    :goto_d4
    if-eqz v0, :cond_d7

    .line 3475
    const/4 v2, 0x1

    .line 3478
    :cond_d7
    if-eqz v11, :cond_ee

    .line 3479
    if-lez v1, :cond_e4

    .line 3480
    iget v9, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    sub-int v9, v1, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_eb

    .line 3482
    :cond_e4
    iget v9, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    add-int/2addr v9, v1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 3484
    :goto_eb
    if-eqz v1, :cond_ee

    .line 3485
    const/4 v2, 0x1

    .line 3488
    :cond_ee
    if-eqz v2, :cond_f5

    .line 3489
    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Ltds/androidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    goto :goto_f6

    .line 3488
    :cond_f5
    const/4 v9, 0x1

    .line 3493
    .end local v2    # "startScroll":Z
    :goto_f6
    move/from16 v16, v0

    move/from16 v17, v1

    goto :goto_ff

    .line 3466
    :cond_fb
    move/from16 v16, v0

    move/from16 v17, v1

    .line 3493
    .end local v0    # "dx":I
    .end local v1    # "dy":I
    .local v16, "dx":I
    .local v17, "dy":I
    :goto_ff
    iget v0, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne v0, v9, :cond_191

    .line 3494
    iget-object v2, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v8, v2, v8

    .line 3495
    aput v8, v2, v9

    .line 3496
    if-eqz v10, :cond_10e

    move/from16 v1, v16

    goto :goto_10f

    :cond_10e
    move v1, v8

    :goto_10f
    if-eqz v11, :cond_114

    move/from16 v9, v17

    goto :goto_115

    :cond_114
    move v9, v8

    :goto_115
    iget-object v0, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    const/16 v18, 0x0

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v20, v2

    move v2, v9

    move v9, v3

    .end local v3    # "y":I
    .local v9, "y":I
    move-object/from16 v3, v20

    move/from16 v20, v4

    .end local v4    # "x":I
    .local v20, "x":I
    move-object/from16 v4, v19

    move/from16 v19, v5

    .end local v5    # "index":I
    .local v19, "index":I
    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Ltds/androidx/recyclerview/widget/RecyclerView;->dispatchNestedPreScroll(II[I[II)Z

    move-result v0

    if-eqz v0, :cond_15a

    .line 3501
    iget-object v0, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v1, v0, v8

    sub-int v16, v16, v1

    .line 3502
    const/4 v1, 0x1

    aget v0, v0, v1

    sub-int v17, v17, v0

    .line 3504
    iget-object v0, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    aget v2, v0, v8

    iget-object v3, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    aget v4, v3, v8

    add-int/2addr v2, v4

    aput v2, v0, v8

    .line 3505
    aget v2, v0, v1

    aget v3, v3, v1

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 3507
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    move/from16 v0, v16

    move/from16 v2, v17

    goto :goto_15f

    .line 3496
    :cond_15a
    const/4 v1, 0x1

    move/from16 v0, v16

    move/from16 v2, v17

    .line 3510
    .end local v16    # "dx":I
    .end local v17    # "dy":I
    .restart local v0    # "dx":I
    .local v2, "dy":I
    :goto_15f
    iget-object v3, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    aget v4, v3, v8

    sub-int v4, v20, v4

    iput v4, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 3511
    aget v3, v3, v1

    sub-int v3, v9, v3

    iput v3, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    .line 3513
    if-eqz v10, :cond_171

    move v1, v0

    goto :goto_172

    :cond_171
    move v1, v8

    :goto_172
    if-eqz v11, :cond_176

    move v3, v2

    goto :goto_177

    :cond_176
    move v3, v8

    :goto_177
    invoke-virtual {v6, v1, v3, v7, v8}, Ltds/androidx/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;I)Z

    move-result v1

    if-eqz v1, :cond_185

    .line 3517
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 3519
    :cond_185
    iget-object v1, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mGapWorker:Ltds/androidx/recyclerview/widget/GapWorker;

    if-eqz v1, :cond_196

    if-nez v0, :cond_18d

    if-eqz v2, :cond_196

    .line 3520
    :cond_18d
    invoke-virtual {v1, v6, v0, v2}, Ltds/androidx/recyclerview/widget/GapWorker;->postFromTraversal(Ltds/androidx/recyclerview/widget/RecyclerView;II)V

    goto :goto_196

    .line 3493
    .end local v0    # "dx":I
    .end local v2    # "dy":I
    .end local v9    # "y":I
    .end local v19    # "index":I
    .end local v20    # "x":I
    .restart local v3    # "y":I
    .restart local v4    # "x":I
    .restart local v5    # "index":I
    .restart local v16    # "dx":I
    .restart local v17    # "dy":I
    :cond_191
    move v9, v3

    move/from16 v20, v4

    move/from16 v19, v5

    .line 3524
    .end local v3    # "y":I
    .end local v4    # "x":I
    .end local v5    # "index":I
    .end local v16    # "dx":I
    .end local v17    # "dy":I
    :cond_196
    :goto_196
    goto :goto_200

    .line 3532
    :pswitch_197
    iget-object v0, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v15}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3533
    const/4 v12, 0x1

    .line 3534
    iget-object v0, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mMaxFlingVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 3535
    const/4 v0, 0x0

    if-eqz v10, :cond_1b4

    iget-object v1, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v2, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 3536
    invoke-virtual {v1, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    neg-float v1, v1

    goto :goto_1b5

    :cond_1b4
    move v1, v0

    .line 3537
    .local v1, "xvel":F
    :goto_1b5
    if-eqz v11, :cond_1c1

    iget-object v2, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v3, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 3538
    invoke-virtual {v2, v3}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v2

    neg-float v2, v2

    goto :goto_1c2

    :cond_1c1
    move v2, v0

    .line 3539
    .local v2, "yvel":F
    :goto_1c2
    cmpl-float v3, v1, v0

    if-nez v3, :cond_1ca

    cmpl-float v0, v2, v0

    if-eqz v0, :cond_1d2

    :cond_1ca
    float-to-int v0, v1

    float-to-int v3, v2

    invoke-virtual {v6, v0, v3}, Ltds/androidx/recyclerview/widget/RecyclerView;->fling(II)Z

    move-result v0

    if-nez v0, :cond_1d5

    .line 3540
    :cond_1d2
    invoke-virtual {v6, v8}, Ltds/androidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 3542
    :cond_1d5
    invoke-direct/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->resetScroll()V

    .line 3544
    .end local v1    # "xvel":F
    .end local v2    # "yvel":F
    goto :goto_200

    .line 3431
    :pswitch_1d9
    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollPointerId:I

    .line 3432
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v1, v0

    float-to-int v1, v1

    iput v1, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iput v1, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mInitialTouchX:I

    .line 3433
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    iput v0, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mInitialTouchY:I

    .line 3435
    const/4 v0, 0x0

    .line 3436
    .local v0, "nestedScrollAxis":I
    if-eqz v10, :cond_1f8

    .line 3437
    or-int/lit8 v0, v0, 0x1

    .line 3439
    :cond_1f8
    if-eqz v11, :cond_1fc

    .line 3440
    or-int/lit8 v0, v0, 0x2

    .line 3442
    :cond_1fc
    invoke-virtual {v6, v0, v8}, Ltds/androidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    .line 3444
    .end local v0    # "nestedScrollAxis":I
    nop

    .line 3552
    :goto_200
    if-nez v12, :cond_207

    .line 3553
    iget-object v0, v6, Ltds/androidx/recyclerview/widget/RecyclerView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v15}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 3555
    :cond_207
    invoke-virtual {v15}, Landroid/view/MotionEvent;->recycle()V

    .line 3557
    const/4 v0, 0x1

    return v0

    .line 3401
    .end local v10    # "canScrollHorizontally":Z
    .end local v11    # "canScrollVertically":Z
    .end local v12    # "eventAddedToVelocityTracker":Z
    .end local v13    # "action":I
    .end local v14    # "actionIndex":I
    .end local v15    # "vtev":Landroid/view/MotionEvent;
    :cond_20c
    :goto_20c
    return v8

    nop

    :pswitch_data_20e
    .packed-switch 0x0
        :pswitch_1d9
        :pswitch_197
        :pswitch_80
        :pswitch_7b
        :pswitch_58
        :pswitch_5f
        :pswitch_5a
    .end packed-switch
.end method

.method postAnimationRunner()V
    .registers 2

    .line 3864
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_10

    .line 3865
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimatorRunner:Ljava/lang/Runnable;

    invoke-static {p0, v0}, Ltds/androidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 3866
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 3868
    :cond_10
    return-void
.end method

.method processDataSetCompletelyChanged(Z)V
    .registers 3
    .param p1, "dispatchItemsChanged"    # Z

    .line 4818
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    or-int/2addr v0, p1

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mDispatchItemsChangedEvent:Z

    .line 4819
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mDataSetHasChangedAfterLayout:Z

    .line 4820
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->markKnownViewsInvalid()V

    .line 4821
    return-void
.end method

.method recordAnimationInfoIfBouncedHiddenView(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V
    .registers 6
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "animationInfo"    # Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    .line 4416
    const/4 v0, 0x0

    const/16 v1, 0x2000

    invoke-virtual {p1, v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->setFlags(II)V

    .line 4417
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget-boolean v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mTrackOldChangeHolders:Z

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isUpdated()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 4418
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_27

    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v0

    if-nez v0, :cond_27

    .line 4419
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChangedHolderKey(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)J

    move-result-wide v0

    .line 4420
    .local v0, "key":J
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Ltds/androidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v2, v0, v1, p1}, Ltds/androidx/recyclerview/widget/ViewInfoStore;->addToOldChangeHolders(JLtds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 4422
    .end local v0    # "key":J
    :cond_27
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewInfoStore:Ltds/androidx/recyclerview/widget/ViewInfoStore;

    invoke-virtual {v0, p1, p2}, Ltds/androidx/recyclerview/widget/ViewInfoStore;->addToPreLayout(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemHolderInfo;)V

    .line 4423
    return-void
.end method

.method removeAndRecycleViews()V
    .registers 3

    .line 1186
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_7

    .line 1187
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 1193
    :cond_7
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_17

    .line 1194
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1195
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1198
    :cond_17
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->clear()V

    .line 1199
    return-void
.end method

.method removeAnimatingView(Landroid/view/View;)Z
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 1502
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 1503
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/ChildHelper;->removeViewIfHidden(Landroid/view/View;)Z

    move-result v0

    .line 1504
    .local v0, "removed":Z
    if-eqz v0, :cond_19

    .line 1505
    invoke-static {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 1506
    .local v1, "viewHolder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->unscrapView(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1507
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v2, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->recycleViewHolderInternal(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 1513
    .end local v1    # "viewHolder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_19
    xor-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 1514
    return v0
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "animate"    # Z

    .line 4459
    invoke-static {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 4460
    .local v0, "vh":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_38

    .line 4461
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 4462
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    goto :goto_38

    .line 4463
    :cond_10
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_38

    .line 4464
    :cond_17
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called removeDetachedView with a view which is not flagged as tmp detached."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4465
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4472
    :cond_38
    :goto_38
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 4474
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 4475
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeDetachedView(Landroid/view/View;Z)V

    .line 4476
    return-void
.end method

.method public removeItemDecoration(Ltds/androidx/recyclerview/widget/RecyclerView$ItemDecoration;)V
    .registers 4
    .param p1, "decor"    # Ltds/androidx/recyclerview/widget/RecyclerView$ItemDecoration;

    .line 1700
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_9

    .line 1701
    const-string v1, "Cannot remove item decoration during a scroll  or layout"

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 1704
    :cond_9
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1705
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 1706
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->setWillNotDraw(Z)V

    .line 1708
    :cond_23
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->markItemDecorInsetsDirty()V

    .line 1709
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 1710
    return-void
.end method

.method public removeItemDecorationAt(I)V
    .registers 6
    .param p1, "index"    # I

    .line 1682
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getItemDecorationCount()I

    move-result v0

    .line 1683
    .local v0, "size":I
    if-ltz p1, :cond_10

    if-ge p1, v0, :cond_10

    .line 1687
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getItemDecorationAt(I)Ltds/androidx/recyclerview/widget/RecyclerView$ItemDecoration;

    move-result-object v1

    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Ltds/androidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 1688
    return-void

    .line 1684
    :cond_10
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is an invalid index for size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeOnChildAttachStateChangeListener(Ltds/androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V
    .registers 3
    .param p1, "listener"    # Ltds/androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;

    .line 1330
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mOnChildAttachStateListeners:Ljava/util/List;

    if-nez v0, :cond_5

    .line 1331
    return-void

    .line 1333
    :cond_5
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1334
    return-void
.end method

.method public removeOnItemTouchListener(Ltds/androidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V
    .registers 3
    .param p1, "listener"    # Ltds/androidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 3204
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3205
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Ltds/androidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    if-ne v0, p1, :cond_c

    .line 3206
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mInterceptingOnItemTouchListener:Ltds/androidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 3208
    :cond_c
    return-void
.end method

.method public removeOnScrollListener(Ltds/androidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .registers 3
    .param p1, "listener"    # Ltds/androidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 1767
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollListeners:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 1768
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1770
    :cond_7
    return-void
.end method

.method public removeRecyclerListener(Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerListener;)V
    .registers 3
    .param p1, "listener"    # Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerListener;

    .line 1284
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecyclerListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1285
    return-void
.end method

.method repositionShadowingViews()V
    .registers 10

    .line 5639
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ChildHelper;->getChildCount()I

    move-result v0

    .line 5640
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_42

    .line 5641
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Ltds/androidx/recyclerview/widget/ChildHelper;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 5642
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 5643
    .local v3, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v3, :cond_3f

    iget-object v4, v3, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v4, :cond_3f

    .line 5644
    iget-object v4, v3, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 5645
    .local v4, "shadowingView":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 5646
    .local v5, "left":I
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v6

    .line 5647
    .local v6, "top":I
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v7

    if-ne v5, v7, :cond_31

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v7

    if-eq v6, v7, :cond_3f

    .line 5648
    :cond_31
    nop

    .line 5649
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    add-int/2addr v7, v5

    .line 5650
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v8

    add-int/2addr v8, v6

    .line 5648
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/view/View;->layout(IIII)V

    .line 5640
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v4    # "shadowingView":Landroid/view/View;
    .end local v5    # "left":I
    .end local v6    # "top":I
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 5654
    .end local v1    # "i":I
    :cond_42
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .line 3008
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->onRequestChildFocus(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$State;Landroid/view/View;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz p2, :cond_f

    .line 3009
    invoke-direct {p0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView;->requestChildOnScreen(Landroid/view/View;Landroid/view/View;)V

    .line 3011
    :cond_f
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 3012
    return-void
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .line 3054
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0, p1, p2, p3}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->requestChildRectangleOnScreen(Ltds/androidx/recyclerview/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 5
    .param p1, "disallowIntercept"    # Z

    .line 3390
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 3391
    .local v0, "listenerCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_17

    .line 3392
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mOnItemTouchListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 3393
    .local v2, "listener":Ltds/androidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
    invoke-interface {v2, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$OnItemTouchListener;->onRequestDisallowInterceptTouchEvent(Z)V

    .line 3391
    .end local v2    # "listener":Ltds/androidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 3395
    .end local v1    # "i":I
    :cond_17
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 3396
    return-void
.end method

.method public requestLayout()V
    .registers 2

    .line 4536
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    if-nez v0, :cond_c

    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez v0, :cond_c

    .line 4537
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    goto :goto_f

    .line 4539
    :cond_c
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 4541
    :goto_f
    return-void
.end method

.method saveOldPositions()V
    .registers 5

    .line 4665
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4666
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1f

    .line 4667
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v2, v1}, Ltds/androidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 4672
    .local v2, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v3

    if-nez v3, :cond_1c

    .line 4673
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->saveOldPosition()V

    .line 4666
    .end local v2    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4676
    .end local v1    # "i":I
    :cond_1f
    return-void
.end method

.method public scrollBy(II)V
    .registers 9
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1851
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_c

    .line 1852
    const-string v0, "RecyclerView"

    const-string v1, "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1854
    return-void

    .line 1856
    :cond_c
    iget-boolean v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v1, :cond_11

    .line 1857
    return-void

    .line 1859
    :cond_11
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    .line 1860
    .local v0, "canScrollHorizontal":Z
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v1

    .line 1861
    .local v1, "canScrollVertical":Z
    if-nez v0, :cond_1f

    if-eqz v1, :cond_2e

    .line 1862
    :cond_1f
    const/4 v2, 0x0

    if-eqz v0, :cond_24

    move v3, p1

    goto :goto_25

    :cond_24
    move v3, v2

    :goto_25
    if-eqz v1, :cond_29

    move v4, p2

    goto :goto_2a

    :cond_29
    move v4, v2

    :goto_2a
    const/4 v5, 0x0

    invoke-virtual {p0, v3, v4, v5, v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->scrollByInternal(IILandroid/view/MotionEvent;I)Z

    .line 1865
    :cond_2e
    return-void
.end method

.method scrollByInternal(IILandroid/view/MotionEvent;I)Z
    .registers 25
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "ev"    # Landroid/view/MotionEvent;
    .param p4, "type"    # I

    .line 2044
    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    move-object/from16 v11, p3

    const/4 v0, 0x0

    .line 2045
    .local v0, "unconsumedX":I
    const/4 v1, 0x0

    .line 2046
    .local v1, "unconsumedY":I
    const/4 v2, 0x0

    .line 2047
    .local v2, "consumedX":I
    const/4 v3, 0x0

    .line 2049
    .local v3, "consumedY":I
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 2050
    iget-object v4, v8, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v4, :cond_2d

    .line 2051
    iget-object v4, v8, Ltds/androidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v13, v4, v13

    .line 2052
    aput v13, v4, v12

    .line 2053
    invoke-virtual {v8, v9, v10, v4}, Ltds/androidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    .line 2054
    iget-object v4, v8, Ltds/androidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v2, v4, v13

    .line 2055
    aget v3, v4, v12

    .line 2056
    sub-int v0, v9, v2

    .line 2057
    sub-int v1, v10, v3

    move v14, v0

    move v15, v1

    move v7, v2

    move v6, v3

    goto :goto_31

    .line 2050
    :cond_2d
    move v14, v0

    move v15, v1

    move v7, v2

    move v6, v3

    .line 2059
    .end local v0    # "unconsumedX":I
    .end local v1    # "unconsumedY":I
    .end local v2    # "consumedX":I
    .end local v3    # "consumedY":I
    .local v6, "consumedY":I
    .local v7, "consumedX":I
    .local v14, "unconsumedX":I
    .local v15, "unconsumedY":I
    :goto_31
    iget-object v0, v8, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemDecorations:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3c

    .line 2060
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 2063
    :cond_3c
    iget-object v5, v8, Ltds/androidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aput v13, v5, v13

    .line 2064
    aput v13, v5, v12

    .line 2065
    iget-object v4, v8, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    move-object/from16 v0, p0

    move v1, v7

    move v2, v6

    move v3, v14

    move-object/from16 v16, v4

    move v4, v15

    move-object/from16 v17, v5

    move-object/from16 v5, v16

    move/from16 v18, v6

    .end local v6    # "consumedY":I
    .local v18, "consumedY":I
    move/from16 v6, p4

    move/from16 v19, v7

    .end local v7    # "consumedX":I
    .local v19, "consumedX":I
    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Ltds/androidx/recyclerview/widget/RecyclerView;->dispatchNestedScroll(IIII[II[I)V

    .line 2067
    iget-object v0, v8, Ltds/androidx/recyclerview/widget/RecyclerView;->mReusableIntPair:[I

    aget v1, v0, v13

    sub-int/2addr v14, v1

    .line 2068
    aget v1, v0, v12

    sub-int/2addr v15, v1

    .line 2069
    aget v1, v0, v13

    if-nez v1, :cond_6e

    aget v0, v0, v12

    if-eqz v0, :cond_6c

    goto :goto_6e

    :cond_6c
    move v0, v13

    goto :goto_6f

    :cond_6e
    :goto_6e
    move v0, v12

    .line 2072
    .local v0, "consumedNestedScroll":Z
    :goto_6f
    iget v1, v8, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    iget-object v2, v8, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollOffset:[I

    aget v3, v2, v13

    sub-int/2addr v1, v3

    iput v1, v8, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastTouchX:I

    .line 2073
    iget v1, v8, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    aget v3, v2, v12

    sub-int/2addr v1, v3

    iput v1, v8, Ltds/androidx/recyclerview/widget/RecyclerView;->mLastTouchY:I

    .line 2074
    iget-object v1, v8, Ltds/androidx/recyclerview/widget/RecyclerView;->mNestedOffsets:[I

    aget v3, v1, v13

    aget v4, v2, v13

    add-int/2addr v3, v4

    aput v3, v1, v13

    .line 2075
    aget v3, v1, v12

    aget v2, v2, v12

    add-int/2addr v3, v2

    aput v3, v1, v12

    .line 2077
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getOverScrollMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_b0

    .line 2078
    if-eqz v11, :cond_ad

    const/16 v1, 0x2002

    invoke-static {v11, v1}, Ltds/androidx/core/view/MotionEventCompat;->isFromSource(Landroid/view/MotionEvent;I)Z

    move-result v1

    if-nez v1, :cond_ad

    .line 2079
    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    int-to-float v2, v14

    invoke-virtual/range {p3 .. p3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    int-to-float v4, v15

    invoke-direct {v8, v1, v2, v3, v4}, Ltds/androidx/recyclerview/widget/RecyclerView;->pullGlows(FFFF)V

    .line 2081
    :cond_ad
    invoke-virtual/range {p0 .. p2}, Ltds/androidx/recyclerview/widget/RecyclerView;->considerReleasingGlowsOnScroll(II)V

    .line 2083
    :cond_b0
    move/from16 v2, v19

    .end local v19    # "consumedX":I
    .restart local v2    # "consumedX":I
    if-nez v2, :cond_b9

    move/from16 v3, v18

    .end local v18    # "consumedY":I
    .restart local v3    # "consumedY":I
    if-eqz v3, :cond_be

    goto :goto_bb

    .end local v3    # "consumedY":I
    .restart local v18    # "consumedY":I
    :cond_b9
    move/from16 v3, v18

    .line 2084
    .end local v18    # "consumedY":I
    .restart local v3    # "consumedY":I
    :goto_bb
    invoke-virtual {v8, v2, v3}, Ltds/androidx/recyclerview/widget/RecyclerView;->dispatchOnScrolled(II)V

    .line 2086
    :cond_be
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->awakenScrollBars()Z

    move-result v1

    if-nez v1, :cond_c7

    .line 2087
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 2089
    :cond_c7
    if-nez v0, :cond_cf

    if-nez v2, :cond_cf

    if-eqz v3, :cond_ce

    goto :goto_cf

    :cond_ce
    move v12, v13

    :cond_cf
    :goto_cf
    return v12
.end method

.method scrollStep(II[I)V
    .registers 9
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "consumed"    # [I

    .line 1942
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->startInterceptRequestLayout()V

    .line 1943
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->onEnterLayoutOrScroll()V

    .line 1945
    const-string v0, "RV Scroll"

    invoke-static {v0}, Ltds/androidx/core/os/TraceCompat;->beginSection(Ljava/lang/String;)V

    .line 1946
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->fillRemainingScrollValues(Ltds/androidx/recyclerview/widget/RecyclerView$State;)V

    .line 1948
    const/4 v0, 0x0

    .line 1949
    .local v0, "consumedX":I
    const/4 v1, 0x0

    .line 1950
    .local v1, "consumedY":I
    if-eqz p1, :cond_1e

    .line 1951
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v2, p1, v3, v4}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollHorizontallyBy(ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)I

    move-result v0

    .line 1953
    :cond_1e
    if-eqz p2, :cond_2a

    .line 1954
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v2, p2, v3, v4}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollVerticallyBy(ILtds/androidx/recyclerview/widget/RecyclerView$Recycler;Ltds/androidx/recyclerview/widget/RecyclerView$State;)I

    move-result v1

    .line 1957
    :cond_2a
    invoke-static {}, Ltds/androidx/core/os/TraceCompat;->endSection()V

    .line 1958
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->repositionShadowingViews()V

    .line 1960
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->onExitLayoutOrScroll()V

    .line 1961
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->stopInterceptRequestLayout(Z)V

    .line 1963
    if-eqz p3, :cond_3e

    .line 1964
    aput v0, p3, v2

    .line 1965
    const/4 v2, 0x1

    aput v1, p3, v2

    .line 1967
    :cond_3e
    return-void
.end method

.method public scrollTo(II)V
    .registers 5
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 1845
    const-string v0, "RecyclerView"

    const-string v1, "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1847
    return-void
.end method

.method public scrollToPosition(I)V
    .registers 4
    .param p1, "position"    # I

    .line 1791
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_5

    .line 1792
    return-void

    .line 1794
    :cond_5
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 1795
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_14

    .line 1796
    const-string v0, "RecyclerView"

    const-string v1, "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    return-void

    .line 1800
    :cond_14
    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1801
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->awakenScrollBars()Z

    .line 1802
    return-void
.end method

.method public setAdapter(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;)V
    .registers 4
    .param p1, "adapter"    # Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    .line 1175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 1176
    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->setAdapterInternal(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;ZZ)V

    .line 1177
    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    .line 1178
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 1179
    return-void
.end method

.method public setChildDrawingOrderCallback(Ltds/androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;)V
    .registers 3
    .param p1, "childDrawingOrderCallback"    # Ltds/androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 1726
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildDrawingOrderCallback:Ltds/androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    if-ne p1, v0, :cond_5

    .line 1727
    return-void

    .line 1729
    :cond_5
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildDrawingOrderCallback:Ltds/androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 1730
    if-eqz p1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->setChildrenDrawingOrderEnabled(Z)V

    .line 1731
    return-void
.end method

.method setChildImportantForAccessibilityInternal(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)Z
    .registers 4
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "importantForAccessibility"    # I

    .line 11602
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 11603
    iput p2, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPendingAccessibilityState:I

    .line 11604
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mPendingAccessibilityImportanceChange:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11605
    const/4 v0, 0x0

    return v0

    .line 11607
    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method public setClipToPadding(Z)V
    .registers 3
    .param p1, "clipToPadding"    # Z

    .line 1090
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    if-eq p1, v0, :cond_7

    .line 1091
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->invalidateGlows()V

    .line 1093
    :cond_7
    iput-boolean p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mClipToPadding:Z

    .line 1094
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 1095
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_13

    .line 1096
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 1098
    :cond_13
    return-void
.end method

.method public setEdgeEffectFactory(Ltds/androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V
    .registers 2
    .param p1, "edgeEffectFactory"    # Ltds/androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    .line 2814
    invoke-static {p1}, Ltds/androidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2815
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mEdgeEffectFactory:Ltds/androidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    .line 2816
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->invalidateGlows()V

    .line 2817
    return-void
.end method

.method public setHasFixedSize(Z)V
    .registers 2
    .param p1, "hasFixedSize"    # Z

    .line 1077
    iput-boolean p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mHasFixedSize:Z

    .line 1078
    return-void
.end method

.method public setItemAnimator(Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;)V
    .registers 4
    .param p1, "animator"    # Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 3768
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_d

    .line 3769
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 3770
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->setListener(Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 3772
    :cond_d
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 3773
    if-eqz p1, :cond_16

    .line 3774
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimatorListener:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;

    invoke-virtual {p1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->setListener(Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;)V

    .line 3776
    :cond_16
    return-void
.end method

.method public setItemViewCacheSize(I)V
    .registers 3
    .param p1, "size"    # I

    .line 1575
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->setViewCacheSize(I)V

    .line 1576
    return-void
.end method

.method public setLayoutFrozen(Z)V
    .registers 2
    .param p1, "frozen"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2383
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->suppressLayout(Z)V

    .line 2384
    return-void
.end method

.method public setLayoutManager(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 5
    .param p1, "layout"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 1359
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-ne p1, v0, :cond_5

    .line 1360
    return-void

    .line 1362
    :cond_5
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 1365
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v0, :cond_3a

    .line 1367
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_13

    .line 1368
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->endAnimations()V

    .line 1370
    :cond_13
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleAllViews(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1371
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->removeAndRecycleScrapInt(Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1372
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->clear()V

    .line 1374
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_31

    .line 1375
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->dispatchDetachedFromWindow(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;)V

    .line 1377
    :cond_31
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->setRecyclerView(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    .line 1378
    iput-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    goto :goto_3f

    .line 1380
    :cond_3a
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->clear()V

    .line 1383
    :goto_3f
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ChildHelper;->removeAllViewsUnfiltered()V

    .line 1384
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 1385
    if-eqz p1, :cond_84

    .line 1386
    iget-object v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_5b

    .line 1391
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->setRecyclerView(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    .line 1392
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-eqz v0, :cond_84

    .line 1393
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->dispatchAttachedToWindow(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    goto :goto_84

    .line 1387
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LayoutManager "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is already attached to a RecyclerView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 1389
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1396
    :cond_84
    :goto_84
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->updateViewCacheSize()V

    .line 1397
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 1398
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .registers 5
    .param p1, "transition"    # Landroid/animation/LayoutTransition;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2401
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_33

    .line 2405
    const/4 v0, 0x0

    if-nez p1, :cond_d

    .line 2406
    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->suppressLayout(Z)V

    .line 2407
    return-void

    .line 2409
    :cond_d
    const/4 v1, 0x4

    .line 2410
    .local v1, "layoutTransitionChanging":I
    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v0

    if-nez v0, :cond_33

    .line 2411
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v2

    if-nez v2, :cond_33

    const/4 v2, 0x2

    .line 2412
    invoke-virtual {p1, v2}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v2

    if-nez v2, :cond_33

    const/4 v2, 0x3

    .line 2413
    invoke-virtual {p1, v2}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v2

    if-nez v2, :cond_33

    .line 2414
    invoke-virtual {p1, v1}, Landroid/animation/LayoutTransition;->getAnimator(I)Landroid/animation/Animator;

    move-result-object v2

    if-nez v2, :cond_33

    .line 2415
    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->suppressLayout(Z)V

    .line 2416
    return-void

    .line 2421
    .end local v1    # "layoutTransitionChanging":I
    :cond_33
    if-nez p1, :cond_3a

    .line 2422
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 2428
    return-void

    .line 2424
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setNestedScrollingEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 11658
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ltds/androidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltds/androidx/core/view/NestedScrollingChildHelper;->setNestedScrollingEnabled(Z)V

    .line 11659
    return-void
.end method

.method public setOnFlingListener(Ltds/androidx/recyclerview/widget/RecyclerView$OnFlingListener;)V
    .registers 2
    .param p1, "onFlingListener"    # Ltds/androidx/recyclerview/widget/RecyclerView$OnFlingListener;

    .line 1409
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mOnFlingListener:Ltds/androidx/recyclerview/widget/RecyclerView$OnFlingListener;

    .line 1410
    return-void
.end method

.method public setOnScrollListener(Ltds/androidx/recyclerview/widget/RecyclerView$OnScrollListener;)V
    .registers 2
    .param p1, "listener"    # Ltds/androidx/recyclerview/widget/RecyclerView$OnScrollListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1742
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollListener:Ltds/androidx/recyclerview/widget/RecyclerView$OnScrollListener;

    .line 1743
    return-void
.end method

.method public setPreserveFocusAfterLayout(Z)V
    .registers 2
    .param p1, "preserveFocusAfterLayout"    # Z

    .line 4883
    iput-boolean p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mPreserveFocusAfterLayout:Z

    .line 4884
    return-void
.end method

.method public setRecycledViewPool(Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V
    .registers 3
    .param p1, "pool"    # Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    .line 1550
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->setRecycledViewPool(Ltds/androidx/recyclerview/widget/RecyclerView$RecycledViewPool;)V

    .line 1551
    return-void
.end method

.method public setRecyclerListener(Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerListener;)V
    .registers 2
    .param p1, "listener"    # Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1259
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecyclerListener:Ltds/androidx/recyclerview/widget/RecyclerView$RecyclerListener;

    .line 1260
    return-void
.end method

.method setScrollState(I)V
    .registers 3
    .param p1, "state"    # I

    .line 1589
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollState:I

    if-ne p1, v0, :cond_5

    .line 1590
    return-void

    .line 1596
    :cond_5
    iput p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mScrollState:I

    .line 1597
    const/4 v0, 0x2

    if-eq p1, v0, :cond_d

    .line 1598
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->stopScrollersInternal()V

    .line 1600
    :cond_d
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->dispatchOnScrollStateChanged(I)V

    .line 1601
    return-void
.end method

.method public setScrollingTouchSlop(I)V
    .registers 5
    .param p1, "slopConstant"    # I

    .line 1126
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 1127
    .local v0, "vc":Landroid/view/ViewConfiguration;
    packed-switch p1, :pswitch_data_3a

    .line 1129
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setScrollingTouchSlop(): bad argument constant "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; using default value"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RecyclerView"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_31

    .line 1137
    :pswitch_2a
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v1

    iput v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    goto :goto_38

    .line 1133
    :goto_31
    :pswitch_31
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mTouchSlop:I

    .line 1134
    nop

    .line 1140
    :goto_38
    return-void

    nop

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_31
        :pswitch_2a
    .end packed-switch
.end method

.method public setViewCacheExtension(Ltds/androidx/recyclerview/widget/RecyclerView$ViewCacheExtension;)V
    .registers 3
    .param p1, "extension"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewCacheExtension;

    .line 1560
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->setViewCacheExtension(Ltds/androidx/recyclerview/widget/RecyclerView$ViewCacheExtension;)V

    .line 1561
    return-void
.end method

.method public smoothScrollBy(II)V
    .registers 4
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 2437
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;)V

    .line 2438
    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;)V
    .registers 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;

    .line 2449
    const/high16 v0, -0x80000000

    invoke-virtual {p0, p1, p2, p3, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;I)V

    .line 2450
    return-void
.end method

.method public smoothScrollBy(IILandroid/view/animation/Interpolator;I)V
    .registers 11
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p4, "duration"    # I

    .line 2468
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Ltds/androidx/recyclerview/widget/RecyclerView;->smoothScrollBy(IILandroid/view/animation/Interpolator;IZ)V

    .line 2469
    return-void
.end method

.method smoothScrollBy(IILandroid/view/animation/Interpolator;IZ)V
    .registers 9
    .param p1, "dx"    # I
    .param p2, "dy"    # I
    .param p3, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p4, "duration"    # I
    .param p5, "withNestedScrolling"    # Z

    .line 2506
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_c

    .line 2507
    const-string v0, "RecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    return-void

    .line 2511
    :cond_c
    iget-boolean v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v1, :cond_11

    .line 2512
    return-void

    .line 2514
    :cond_11
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v0

    if-nez v0, :cond_18

    .line 2515
    const/4 p1, 0x0

    .line 2517
    :cond_18
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v0

    if-nez v0, :cond_21

    .line 2518
    const/4 p2, 0x0

    .line 2520
    :cond_21
    if-nez p1, :cond_25

    if-eqz p2, :cond_49

    .line 2521
    :cond_25
    const/high16 v0, -0x80000000

    const/4 v1, 0x1

    if-eq p4, v0, :cond_2f

    if-lez p4, :cond_2d

    goto :goto_2f

    :cond_2d
    const/4 v0, 0x0

    goto :goto_30

    :cond_2f
    :goto_2f
    move v0, v1

    .line 2522
    .local v0, "durationSuggestsAnimation":Z
    :goto_30
    if-eqz v0, :cond_46

    .line 2523
    if-eqz p5, :cond_40

    .line 2524
    const/4 v2, 0x0

    .line 2525
    .local v2, "nestedScrollAxis":I
    if-eqz p1, :cond_39

    .line 2526
    or-int/lit8 v2, v2, 0x1

    .line 2528
    :cond_39
    if-eqz p2, :cond_3d

    .line 2529
    or-int/lit8 v2, v2, 0x2

    .line 2531
    :cond_3d
    invoke-virtual {p0, v2, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->startNestedScroll(II)Z

    .line 2533
    .end local v2    # "nestedScrollAxis":I
    :cond_40
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewFlinger:Ltds/androidx/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v1, p1, p2, p4, p3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    goto :goto_49

    .line 2535
    :cond_46
    invoke-virtual {p0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 2538
    .end local v0    # "durationSuggestsAnimation":Z
    :cond_49
    :goto_49
    return-void
.end method

.method public smoothScrollToPosition(I)V
    .registers 4
    .param p1, "position"    # I

    .line 1832
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_5

    .line 1833
    return-void

    .line 1835
    :cond_5
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-nez v0, :cond_11

    .line 1836
    const-string v0, "RecyclerView"

    const-string v1, "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1838
    return-void

    .line 1840
    :cond_11
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    invoke-virtual {v0, p0, v1, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->smoothScrollToPosition(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$State;I)V

    .line 1841
    return-void
.end method

.method startInterceptRequestLayout()V
    .registers 3

    .line 2250
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    .line 2251
    if-ne v0, v1, :cond_f

    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez v0, :cond_f

    .line 2252
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 2254
    :cond_f
    return-void
.end method

.method public startNestedScroll(I)Z
    .registers 3
    .param p1, "axes"    # I

    .line 11668
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ltds/androidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltds/androidx/core/view/NestedScrollingChildHelper;->startNestedScroll(I)Z

    move-result v0

    return v0
.end method

.method public startNestedScroll(II)Z
    .registers 4
    .param p1, "axes"    # I
    .param p2, "type"    # I

    .line 11673
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ltds/androidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ltds/androidx/core/view/NestedScrollingChildHelper;->startNestedScroll(II)Z

    move-result v0

    return v0
.end method

.method stopInterceptRequestLayout(Z)V
    .registers 5
    .param p1, "performLayoutChildren"    # Z

    .line 2267
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_7

    .line 2274
    iput v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    .line 2276
    :cond_7
    const/4 v0, 0x0

    if-nez p1, :cond_10

    iget-boolean v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez v2, :cond_10

    .line 2285
    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 2287
    :cond_10
    iget v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    if-ne v2, v1, :cond_2f

    .line 2289
    if-eqz p1, :cond_29

    iget-boolean v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    if-eqz v2, :cond_29

    iget-boolean v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez v2, :cond_29

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v2, :cond_29

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v2, :cond_29

    .line 2291
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->dispatchLayout()V

    .line 2293
    :cond_29
    iget-boolean v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-nez v2, :cond_2f

    .line 2294
    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 2297
    :cond_2f
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    sub-int/2addr v0, v1

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mInterceptRequestLayoutDepth:I

    .line 2298
    return-void
.end method

.method public stopNestedScroll()V
    .registers 2

    .line 11678
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ltds/androidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0}, Ltds/androidx/core/view/NestedScrollingChildHelper;->stopNestedScroll()V

    .line 11679
    return-void
.end method

.method public stopNestedScroll(I)V
    .registers 3
    .param p1, "type"    # I

    .line 11683
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getScrollingChildHelper()Ltds/androidx/core/view/NestedScrollingChildHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Ltds/androidx/core/view/NestedScrollingChildHelper;->stopNestedScroll(I)V

    .line 11684
    return-void
.end method

.method public stopScroll()V
    .registers 2

    .line 2608
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->setScrollState(I)V

    .line 2609
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->stopScrollersInternal()V

    .line 2610
    return-void
.end method

.method public final suppressLayout(Z)V
    .registers 12
    .param p1, "suppress"    # Z

    .line 2327
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eq p1, v0, :cond_39

    .line 2328
    const-string v0, "Do not suppressLayout in layout or scroll"

    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 2329
    if-nez p1, :cond_20

    .line 2330
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 2331
    iget-boolean v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    if-eqz v1, :cond_1d

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_1d

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mAdapter:Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v1, :cond_1d

    .line 2332
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 2334
    :cond_1d
    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    goto :goto_39

    .line 2336
    :cond_20
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2337
    .local v0, "now":J
    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v0

    move-wide v4, v0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v2

    .line 2339
    .local v2, "cancelEvent":Landroid/view/MotionEvent;
    invoke-virtual {p0, v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2340
    const/4 v3, 0x1

    iput-boolean v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    .line 2341
    iput-boolean v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mIgnoreMotionEventTillDown:Z

    .line 2342
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->stopScroll()V

    .line 2345
    .end local v0    # "now":J
    .end local v2    # "cancelEvent":Landroid/view/MotionEvent;
    :cond_39
    :goto_39
    return-void
.end method

.method public swapAdapter(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;Z)V
    .registers 4
    .param p1, "adapter"    # Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;
    .param p2, "removeAndRecycleExistingViews"    # Z

    .line 1158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->setLayoutFrozen(Z)V

    .line 1159
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2}, Ltds/androidx/recyclerview/widget/RecyclerView;->setAdapterInternal(Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;ZZ)V

    .line 1160
    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->processDataSetCompletelyChanged(Z)V

    .line 1161
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 1162
    return-void
.end method

.method viewRangeUpdate(IILjava/lang/Object;)V
    .registers 11
    .param p1, "positionStart"    # I
    .param p2, "itemCount"    # I
    .param p3, "payload"    # Ljava/lang/Object;

    .line 4777
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ChildHelper;->getUnfilteredChildCount()I

    move-result v0

    .line 4778
    .local v0, "childCount":I
    add-int v1, p1, p2

    .line 4780
    .local v1, "positionEnd":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-ge v2, v0, :cond_39

    .line 4781
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mChildHelper:Ltds/androidx/recyclerview/widget/ChildHelper;

    invoke-virtual {v3, v2}, Ltds/androidx/recyclerview/widget/ChildHelper;->getUnfilteredChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 4782
    .local v3, "child":Landroid/view/View;
    invoke-static {v3}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v4

    .line 4783
    .local v4, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v4, :cond_36

    invoke-virtual {v4}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 4784
    goto :goto_36

    .line 4786
    :cond_1e
    iget v5, v4, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-lt v5, p1, :cond_36

    iget v5, v4, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mPosition:I

    if-ge v5, v1, :cond_36

    .line 4789
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 4790
    invoke-virtual {v4, p3}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->addChangePayload(Ljava/lang/Object;)V

    .line 4792
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;

    const/4 v6, 0x1

    iput-boolean v6, v5, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutParams;->mInsetsDirty:Z

    .line 4780
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_36
    :goto_36
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 4795
    .end local v2    # "i":I
    :cond_39
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView;->mRecycler:Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;

    invoke-virtual {v2, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView$Recycler;->viewRangeUpdate(II)V

    .line 4796
    return-void
.end method
