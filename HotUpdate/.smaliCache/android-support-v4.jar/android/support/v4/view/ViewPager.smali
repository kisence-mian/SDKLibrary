.class public Landroid/support/v4/view/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/ViewPager$ViewPositionComparator;,
        Landroid/support/v4/view/ViewPager$LayoutParams;,
        Landroid/support/v4/view/ViewPager$PagerObserver;,
        Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;,
        Landroid/support/v4/view/ViewPager$SavedState;,
        Landroid/support/v4/view/ViewPager$Decor;,
        Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;,
        Landroid/support/v4/view/ViewPager$PageTransformer;,
        Landroid/support/v4/view/ViewPager$SimpleOnPageChangeListener;,
        Landroid/support/v4/view/ViewPager$OnPageChangeListener;,
        Landroid/support/v4/view/ViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/support/v4/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false

.field private static final DEFAULT_GUTTER_SIZE:I = 0x10

.field private static final DEFAULT_OFFSCREEN_PAGES:I = 0x1

.field private static final DRAW_ORDER_DEFAULT:I = 0x0

.field private static final DRAW_ORDER_FORWARD:I = 0x1

.field private static final DRAW_ORDER_REVERSE:I = 0x2

.field private static final INVALID_POINTER:I = -0x1

.field private static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z = false

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Landroid/support/v4/view/ViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field private mAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field private mCurItem:I

.field private mDecorChildCount:I

.field private mDefaultGutterSize:I

.field private mDrawingOrder:I

.field private mDrawingOrderedChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mEndScrollRunnable:Ljava/lang/Runnable;

.field private mExpectedAdapterCount:I

.field private mFakeDragBeginTime:J

.field private mFakeDragging:Z

.field private mFirstLayout:Z

.field private mFirstOffset:F

.field private mFlingDistance:I

.field private mGutterSize:I

.field private mInLayout:Z

.field private mInitialMotionX:F

.field private mInitialMotionY:F

.field private mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsScrollStarted:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v4/view/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

.field private mOnPageChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/view/ViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPageMargin:I

.field private mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

.field private final mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 105
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/view/ViewPager;->LAYOUT_ATTRS:[I

    .line 123
    new-instance v0, Landroid/support/v4/view/ViewPager$1;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$1;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 130
    new-instance v0, Landroid/support/v4/view/ViewPager$2;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$2;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 233
    new-instance v0, Landroid/support/v4/view/ViewPager$ViewPositionComparator;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Landroid/support/v4/view/ViewPager;->sPositionComparator:Landroid/support/v4/view/ViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 354
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 140
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 145
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 146
    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 161
    const v1, -0x800001

    iput v1, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    .line 162
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    .line 171
    const/4 v1, 0x1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 189
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 216
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 251
    new-instance v1, Landroid/support/v4/view/ViewPager$3;

    invoke-direct {v1, p0}, Landroid/support/v4/view/ViewPager$3;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 258
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 355
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->initViewPager()V

    .line 356
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 359
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 138
    new-instance v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 140
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 144
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 145
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 146
    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 161
    const v1, -0x800001

    iput v1, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    .line 162
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    .line 171
    const/4 v1, 0x1

    iput v1, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 189
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 216
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 217
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 251
    new-instance v1, Landroid/support/v4/view/ViewPager$3;

    invoke-direct {v1, p0}, Landroid/support/v4/view/ViewPager$3;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 258
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 360
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->initViewPager()V

    .line 361
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/view/ViewPager;I)V
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/view/ViewPager;
    .param p1, "x1"    # I

    .line 91
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/support/v4/view/ViewPager;)Landroid/support/v4/view/PagerAdapter;
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/view/ViewPager;

    .line 91
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method static synthetic access$300(Landroid/support/v4/view/ViewPager;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/v4/view/ViewPager;

    .line 91
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    return v0
.end method

.method static synthetic access$400()[I
    .registers 1

    .line 91
    sget-object v0, Landroid/support/v4/view/ViewPager;->LAYOUT_ATTRS:[I

    return-object v0
.end method

.method private calculatePageOffsets(Landroid/support/v4/view/ViewPager$ItemInfo;ILandroid/support/v4/view/ViewPager$ItemInfo;)V
    .registers 15
    .param p1, "curItem"    # Landroid/support/v4/view/ViewPager$ItemInfo;
    .param p2, "curIndex"    # I
    .param p3, "oldCurInfo"    # Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1231
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 1232
    .local v0, "N":I
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v1

    .line 1233
    .local v1, "width":I
    if-lez v1, :cond_12

    iget v2, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    .line 1235
    .local v2, "marginOffset":F
    :goto_13
    if-eqz p3, :cond_b6

    .line 1236
    iget v3, p3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 1238
    .local v3, "oldCurPosition":I
    iget v4, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge v3, v4, :cond_6c

    .line 1239
    const/4 v4, 0x0

    .line 1240
    .local v4, "itemIndex":I
    const/4 v5, 0x0

    .line 1241
    .local v5, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v6, p3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v7, p3, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v7

    add-float/2addr v6, v2

    .line 1242
    .local v6, "offset":F
    add-int/lit8 v7, v3, 0x1

    .line 1243
    .local v7, "pos":I
    :goto_25
    iget v8, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-gt v7, v8, :cond_b6

    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_b6

    .line 1244
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1245
    :goto_3a
    iget v8, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v7, v8, :cond_54

    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_54

    .line 1246
    add-int/lit8 v4, v4, 0x1

    .line 1247
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_3a

    .line 1249
    :cond_54
    :goto_54
    iget v8, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge v7, v8, :cond_63

    .line 1252
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v8, v7}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v8

    add-float/2addr v8, v2

    add-float/2addr v6, v8

    .line 1253
    add-int/lit8 v7, v7, 0x1

    goto :goto_54

    .line 1255
    :cond_63
    iput v6, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1256
    iget v8, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    add-float/2addr v6, v8

    .line 1243
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    .line 1258
    .end local v4    # "itemIndex":I
    .end local v5    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v6    # "offset":F
    .end local v7    # "pos":I
    :cond_6c
    iget v4, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v3, v4, :cond_b6

    .line 1259
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1260
    .restart local v4    # "itemIndex":I
    const/4 v5, 0x0

    .line 1261
    .restart local v5    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v6, p3, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1262
    .restart local v6    # "offset":F
    add-int/lit8 v7, v3, -0x1

    .line 1263
    .restart local v7    # "pos":I
    :goto_7d
    iget v8, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-lt v7, v8, :cond_b6

    if-ltz v4, :cond_b6

    .line 1264
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1265
    :goto_8c
    iget v8, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge v7, v8, :cond_9e

    if-lez v4, :cond_9e

    .line 1266
    add-int/lit8 v4, v4, -0x1

    .line 1267
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_8c

    .line 1269
    :cond_9e
    :goto_9e
    iget v8, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v7, v8, :cond_ad

    .line 1272
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v8, v7}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v8

    add-float/2addr v8, v2

    sub-float/2addr v6, v8

    .line 1273
    add-int/lit8 v7, v7, -0x1

    goto :goto_9e

    .line 1275
    :cond_ad
    iget v8, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    sub-float/2addr v6, v8

    .line 1276
    iput v6, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1263
    add-int/lit8 v7, v7, -0x1

    goto :goto_7d

    .line 1282
    .end local v3    # "oldCurPosition":I
    .end local v4    # "itemIndex":I
    .end local v5    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v6    # "offset":F
    .end local v7    # "pos":I
    :cond_b6
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1283
    .local v3, "itemCount":I
    iget v4, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1284
    .local v4, "offset":F
    iget v5, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v5, v5, -0x1

    .line 1285
    .local v5, "pos":I
    iget v6, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-nez v6, :cond_c9

    iget v6, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    goto :goto_cc

    :cond_c9
    const v6, -0x800001

    :goto_cc
    iput v6, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    .line 1286
    iget v6, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v7, v0, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    if-ne v6, v7, :cond_dd

    iget v6, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v7, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v7

    sub-float/2addr v6, v8

    goto :goto_e0

    :cond_dd
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    :goto_e0
    iput v6, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    .line 1289
    add-int/lit8 v6, p2, -0x1

    .local v6, "i":I
    :goto_e4
    if-ltz v6, :cond_10f

    .line 1290
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1291
    .local v7, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_ee
    iget v9, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v5, v9, :cond_fe

    .line 1292
    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v10, v5, -0x1

    .end local v5    # "pos":I
    .local v10, "pos":I
    invoke-virtual {v9, v5}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v5

    add-float/2addr v5, v2

    sub-float/2addr v4, v5

    move v5, v10

    goto :goto_ee

    .line 1294
    .end local v10    # "pos":I
    .restart local v5    # "pos":I
    :cond_fe
    iget v9, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    sub-float/2addr v4, v9

    .line 1295
    iput v4, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1296
    iget v9, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-nez v9, :cond_10a

    iput v4, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    .line 1289
    .end local v7    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_10a
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_e4

    .line 1298
    .end local v6    # "i":I
    :cond_10f
    iget v6, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v7, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v7

    add-float/2addr v6, v2

    .line 1299
    .end local v4    # "offset":F
    .local v6, "offset":F
    iget v4, p1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v4, v4, 0x1

    .line 1301
    .end local v5    # "pos":I
    .local v4, "pos":I
    add-int/lit8 v5, p2, 0x1

    .local v5, "i":I
    :goto_11b
    if-ge v5, v3, :cond_14c

    .line 1302
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1303
    .restart local v7    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_125
    iget v9, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ge v4, v9, :cond_135

    .line 1304
    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    add-int/lit8 v10, v4, 0x1

    .end local v4    # "pos":I
    .restart local v10    # "pos":I
    invoke-virtual {v9, v4}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v4

    add-float/2addr v4, v2

    add-float/2addr v6, v4

    move v4, v10

    goto :goto_125

    .line 1306
    .end local v10    # "pos":I
    .restart local v4    # "pos":I
    :cond_135
    iget v9, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v10, v0, -0x1

    if-ne v9, v10, :cond_141

    .line 1307
    iget v9, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v6

    sub-float/2addr v9, v8

    iput v9, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    .line 1309
    :cond_141
    iput v6, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 1310
    iget v9, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    add-float/2addr v6, v9

    .line 1301
    .end local v7    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_11b

    .line 1313
    .end local v5    # "i":I
    :cond_14c
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/support/v4/view/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 1314
    return-void
.end method

.method private completeScroll(Z)V
    .registers 9
    .param p1, "postEvents"    # Z

    .line 1889
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    .line 1890
    .local v0, "needPopulate":Z
    :goto_a
    if-eqz v0, :cond_3d

    .line 1892
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1893
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    xor-int/2addr v1, v3

    .line 1894
    .local v1, "wasScrolling":Z
    if-eqz v1, :cond_3d

    .line 1895
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1896
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    .line 1897
    .local v3, "oldX":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v4

    .line 1898
    .local v4, "oldY":I
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1899
    .local v5, "x":I
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1900
    .local v6, "y":I
    if-ne v3, v5, :cond_35

    if-eq v4, v6, :cond_3d

    .line 1901
    :cond_35
    invoke-virtual {p0, v5, v6}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1902
    if-eq v5, v3, :cond_3d

    .line 1903
    invoke-direct {p0, v5}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    .line 1908
    .end local v1    # "wasScrolling":Z
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_3d
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 1909
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_40
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5a

    .line 1910
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1911
    .local v3, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-boolean v4, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v4, :cond_57

    .line 1912
    const/4 v0, 0x1

    .line 1913
    iput-boolean v2, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    .line 1909
    .end local v3    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 1916
    .end local v1    # "i":I
    :cond_5a
    if-eqz v0, :cond_69

    .line 1917
    if-eqz p1, :cond_64

    .line 1918
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v1}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_69

    .line 1920
    :cond_64
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1923
    :cond_69
    :goto_69
    return-void
.end method

.method private determineTargetPage(IFII)I
    .registers 10
    .param p1, "currentPage"    # I
    .param p2, "pageOffset"    # F
    .param p3, "velocity"    # I
    .param p4, "deltaX"    # I

    .line 2314
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mFlingDistance:I

    if-le v0, v1, :cond_17

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mMinimumVelocity:I

    if-le v0, v1, :cond_17

    .line 2315
    if-lez p3, :cond_14

    move v0, p1

    goto :goto_16

    :cond_14
    add-int/lit8 v0, p1, 0x1

    .local v0, "targetPage":I
    :goto_16
    goto :goto_27

    .line 2317
    .end local v0    # "targetPage":I
    :cond_17
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-lt p1, v0, :cond_1f

    const v0, 0x3ecccccd    # 0.4f

    goto :goto_22

    :cond_1f
    const v0, 0x3f19999a    # 0.6f

    .line 2318
    .local v0, "truncator":F
    :goto_22
    int-to-float v1, p1

    add-float/2addr v1, p2

    add-float/2addr v1, v0

    float-to-int v1, v1

    move v0, v1

    .line 2321
    .local v0, "targetPage":I
    :goto_27
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_52

    .line 2322
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2323
    .local v1, "firstItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2326
    .local v2, "lastItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v3, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v4, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2329
    .end local v1    # "firstItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v2    # "lastItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_52
    return v0
.end method

.method private dispatchOnPageScrolled(IFI)V
    .registers 7
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .line 1838
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_7

    .line 1839
    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1841
    :cond_7
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_22

    .line 1842
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "z":I
    :goto_10
    if-ge v1, v0, :cond_22

    .line 1843
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 1844
    .local v2, "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    if-eqz v2, :cond_1f

    .line 1845
    invoke-interface {v2, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1842
    .end local v2    # "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1849
    .end local v0    # "z":I
    .end local v1    # "i":I
    :cond_22
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_29

    .line 1850
    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1852
    :cond_29
    return-void
.end method

.method private dispatchOnPageSelected(I)V
    .registers 5
    .param p1, "position"    # I

    .line 1855
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_7

    .line 1856
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1858
    :cond_7
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_22

    .line 1859
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "z":I
    :goto_10
    if-ge v1, v0, :cond_22

    .line 1860
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 1861
    .local v2, "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    if-eqz v2, :cond_1f

    .line 1862
    invoke-interface {v2, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1859
    .end local v2    # "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1866
    .end local v0    # "z":I
    .end local v1    # "i":I
    :cond_22
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_29

    .line 1867
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1869
    :cond_29
    return-void
.end method

.method private dispatchOnScrollStateChanged(I)V
    .registers 5
    .param p1, "state"    # I

    .line 1872
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_7

    .line 1873
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1875
    :cond_7
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_22

    .line 1876
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "z":I
    :goto_10
    if-ge v1, v0, :cond_22

    .line 1877
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 1878
    .local v2, "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    if-eqz v2, :cond_1f

    .line 1879
    invoke-interface {v2, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1876
    .end local v2    # "listener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1883
    .end local v0    # "z":I
    .end local v1    # "i":I
    :cond_22
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_29

    .line 1884
    invoke-interface {v0, p1}, Landroid/support/v4/view/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1886
    :cond_29
    return-void
.end method

.method private enableLayers(Z)V
    .registers 7
    .param p1, "enable"    # Z

    .line 1930
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    .line 1931
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_17

    .line 1932
    if-eqz p1, :cond_b

    const/4 v2, 0x2

    goto :goto_c

    :cond_b
    const/4 v2, 0x0

    .line 1934
    .local v2, "layerType":I
    :goto_c
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Landroid/support/v4/view/ViewCompat;->setLayerType(Landroid/view/View;ILandroid/graphics/Paint;)V

    .line 1931
    .end local v2    # "layerType":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1936
    .end local v1    # "i":I
    :cond_17
    return-void
.end method

.method private endDrag()V
    .registers 2

    .line 2568
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 2569
    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 2571
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_f

    .line 2572
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2573
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2575
    :cond_f
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .registers 7
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "child"    # Landroid/view/View;

    .line 2749
    if-nez p1, :cond_8

    .line 2750
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object p1, v0

    .line 2752
    :cond_8
    if-nez p2, :cond_f

    .line 2753
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 2754
    return-object p1

    .line 2756
    :cond_f
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2757
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2758
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2759
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2761
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2762
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_2b
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5d

    if-eq v0, p0, :cond_5d

    .line 2763
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2764
    .local v1, "group":Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2765
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2766
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2767
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2769
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2770
    .end local v1    # "group":Landroid/view/ViewGroup;
    goto :goto_2b

    .line 2771
    :cond_5d
    return-object p1
.end method

.method private getClientWidth()I
    .registers 3

    .line 539
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;
    .registers 15

    .line 2271
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v0

    .line 2272
    .local v0, "width":I
    const/4 v1, 0x0

    if-lez v0, :cond_f

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_10

    :cond_f
    const/4 v2, 0x0

    .line 2273
    .local v2, "scrollOffset":F
    :goto_10
    if-lez v0, :cond_17

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v1, v1

    int-to-float v3, v0

    div-float/2addr v1, v3

    .line 2274
    .local v1, "marginOffset":F
    :cond_17
    const/4 v3, -0x1

    .line 2275
    .local v3, "lastPos":I
    const/4 v4, 0x0

    .line 2276
    .local v4, "lastOffset":F
    const/4 v5, 0x0

    .line 2277
    .local v5, "lastWidth":F
    const/4 v6, 0x1

    .line 2279
    .local v6, "first":Z
    const/4 v7, 0x0

    .line 2280
    .local v7, "lastItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1d
    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_75

    .line 2281
    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2283
    .local v9, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    if-nez v6, :cond_4c

    iget v10, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    add-int/lit8 v11, v3, 0x1

    if-eq v10, v11, :cond_4c

    .line 2285
    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->mTempItem:Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2286
    add-float v10, v4, v5

    add-float/2addr v10, v1

    iput v10, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 2287
    add-int/lit8 v10, v3, 0x1

    iput v10, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 2288
    iget-object v10, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v11, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    invoke-virtual {v10, v11}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v10

    iput v10, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    .line 2289
    add-int/lit8 v8, v8, -0x1

    .line 2291
    :cond_4c
    iget v10, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 2293
    .local v10, "offset":F
    move v11, v10

    .line 2294
    .local v11, "leftBound":F
    iget v12, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v10

    add-float/2addr v12, v1

    .line 2295
    .local v12, "rightBound":F
    if-nez v6, :cond_5b

    cmpl-float v13, v2, v11

    if-ltz v13, :cond_5a

    goto :goto_5b

    .line 2300
    :cond_5a
    return-object v7

    .line 2296
    :cond_5b
    :goto_5b
    cmpg-float v13, v2, v12

    if-ltz v13, :cond_74

    iget-object v13, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v8, v13, :cond_6a

    goto :goto_74

    .line 2302
    :cond_6a
    const/4 v6, 0x0

    .line 2303
    iget v3, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 2304
    move v4, v10

    .line 2305
    iget v5, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    .line 2306
    move-object v7, v9

    .line 2280
    .end local v9    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v10    # "offset":F
    .end local v11    # "leftBound":F
    .end local v12    # "rightBound":F
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    .line 2297
    .restart local v9    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v10    # "offset":F
    .restart local v11    # "leftBound":F
    .restart local v12    # "rightBound":F
    :cond_74
    :goto_74
    return-object v9

    .line 2309
    .end local v8    # "i":I
    .end local v9    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v10    # "offset":F
    .end local v11    # "leftBound":F
    .end local v12    # "rightBound":F
    :cond_75
    return-object v7
.end method

.method private isGutterDrag(FF)Z
    .registers 6
    .param p1, "x"    # F
    .param p2, "dx"    # F

    .line 1926
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mGutterSize:I

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_c

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1c

    :cond_c
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v0

    iget v2, p0, Landroid/support/v4/view/ViewPager;->mGutterSize:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1e

    cmpg-float v0, p2, v1

    if-gez v0, :cond_1e

    :cond_1c
    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    :goto_1f
    return v0
.end method

.method private onSecondaryPointerUp(Landroid/view/MotionEvent;)V
    .registers 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 2553
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v0

    .line 2554
    .local v0, "pointerIndex":I
    invoke-static {p1, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    .line 2555
    .local v1, "pointerId":I
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_24

    .line 2558
    if-nez v0, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 2559
    .local v2, "newPointerIndex":I
    :goto_11
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2560
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2561
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_24

    .line 2562
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2565
    .end local v2    # "newPointerIndex":I
    :cond_24
    return-void
.end method

.method private pageScrolled(I)Z
    .registers 11
    .param p1, "xpos"    # I

    .line 1738
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_1c

    .line 1739
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    .line 1740
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2}, Landroid/support/v4/view/ViewPager;->onPageScrolled(IFI)V

    .line 1741
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    if-eqz v0, :cond_16

    .line 1745
    return v2

    .line 1742
    :cond_16
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1747
    :cond_1c
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v0

    .line 1748
    .local v0, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v3

    .line 1749
    .local v3, "width":I
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    add-int v5, v3, v4

    .line 1750
    .local v5, "widthWithMargin":I
    int-to-float v4, v4

    int-to-float v6, v3

    div-float/2addr v4, v6

    .line 1751
    .local v4, "marginOffset":F
    iget v6, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 1752
    .local v6, "currentPage":I
    int-to-float v7, p1

    int-to-float v8, v3

    div-float/2addr v7, v8

    iget v8, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v7, v8

    iget v8, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v4

    div-float/2addr v7, v8

    .line 1754
    .local v7, "pageOffset":F
    int-to-float v8, v5

    mul-float v8, v8, v7

    float-to-int v8, v8

    .line 1756
    .local v8, "offsetPixels":I
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    .line 1757
    invoke-virtual {p0, v6, v7, v8}, Landroid/support/v4/view/ViewPager;->onPageScrolled(IFI)V

    .line 1758
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    if-eqz v2, :cond_46

    .line 1762
    const/4 v1, 0x1

    return v1

    .line 1759
    :cond_46
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private performDrag(F)Z
    .registers 18
    .param p1, "x"    # F

    .line 2220
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    .line 2222
    .local v2, "needsInvalidate":Z
    iget v3, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    sub-float/2addr v3, v1

    .line 2223
    .local v3, "deltaX":F
    iput v1, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2225
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    .line 2226
    .local v4, "oldScrollX":F
    add-float v5, v4, v3

    .line 2227
    .local v5, "scrollX":F
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v6

    .line 2229
    .local v6, "width":I
    int-to-float v7, v6

    iget v8, v0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    mul-float v7, v7, v8

    .line 2230
    .local v7, "leftBound":F
    int-to-float v8, v6

    iget v9, v0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    mul-float v8, v8, v9

    .line 2231
    .local v8, "rightBound":F
    const/4 v9, 0x1

    .line 2232
    .local v9, "leftAbsolute":Z
    const/4 v10, 0x1

    .line 2234
    .local v10, "rightAbsolute":Z
    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2235
    .local v11, "firstItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v12, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2236
    .local v12, "lastItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v13, v11, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-eqz v13, :cond_42

    .line 2237
    const/4 v9, 0x0

    .line 2238
    iget v13, v11, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    int-to-float v14, v6

    mul-float v7, v13, v14

    .line 2240
    :cond_42
    iget v13, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v14, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v14}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-eq v13, v14, :cond_54

    .line 2241
    const/4 v10, 0x0

    .line 2242
    iget v13, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    int-to-float v14, v6

    mul-float v8, v13, v14

    .line 2245
    :cond_54
    cmpg-float v13, v5, v7

    if-gez v13, :cond_6a

    .line 2246
    if-eqz v9, :cond_68

    .line 2247
    sub-float v13, v7, v5

    .line 2248
    .local v13, "over":F
    iget-object v14, v0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v1, v6

    div-float/2addr v15, v1

    invoke-virtual {v14, v15}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v2

    .line 2250
    .end local v13    # "over":F
    :cond_68
    move v5, v7

    goto :goto_7f

    .line 2251
    :cond_6a
    cmpl-float v1, v5, v8

    if-lez v1, :cond_7f

    .line 2252
    if-eqz v10, :cond_7e

    .line 2253
    sub-float v1, v5, v8

    .line 2254
    .local v1, "over":F
    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v14

    int-to-float v15, v6

    div-float/2addr v14, v15

    invoke-virtual {v13, v14}, Landroid/support/v4/widget/EdgeEffectCompat;->onPull(F)Z

    move-result v2

    .line 2256
    .end local v1    # "over":F
    :cond_7e
    move v5, v8

    .line 2259
    :cond_7f
    :goto_7f
    iget v1, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    float-to-int v13, v5

    int-to-float v13, v13

    sub-float v13, v5, v13

    add-float/2addr v1, v13

    iput v1, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2260
    float-to-int v1, v5

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v13

    invoke-virtual {v0, v1, v13}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 2261
    float-to-int v1, v5

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    .line 2263
    return v2
.end method

.method private recomputeScrollPosition(IIII)V
    .registers 11
    .param p1, "width"    # I
    .param p2, "oldWidth"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    .line 1577
    if-lez p2, :cond_4d

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4d

    .line 1578
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_22

    .line 1579
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    mul-int v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_7f

    .line 1581
    :cond_22
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    .line 1582
    .local v0, "widthWithMargin":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p4

    .line 1584
    .local v1, "oldWidthWithMargin":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    .line 1585
    .local v2, "xpos":I
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 1586
    .local v3, "pageOffset":F
    int-to-float v4, v0

    mul-float v4, v4, v3

    float-to-int v4, v4

    .line 1588
    .local v4, "newOffsetPixels":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1589
    .end local v0    # "widthWithMargin":I
    .end local v1    # "oldWidthWithMargin":I
    .end local v2    # "xpos":I
    .end local v3    # "pageOffset":F
    .end local v4    # "newOffsetPixels":I
    goto :goto_7f

    .line 1591
    :cond_4d
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v0

    .line 1592
    .local v0, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v0, :cond_5e

    iget v1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v2, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_5f

    :cond_5e
    const/4 v1, 0x0

    .line 1593
    .local v1, "scrollOffset":F
    :goto_5f
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, v1

    float-to-int v2, v2

    .line 1595
    .local v2, "scrollPos":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v3

    if-eq v2, v3, :cond_7f

    .line 1596
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    .line 1597
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1600
    .end local v0    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v1    # "scrollOffset":F
    .end local v2    # "scrollPos":I
    :cond_7f
    :goto_7f
    return-void
.end method

.method private removeNonDecorViews()V
    .registers 5

    .line 515
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 516
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 517
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 518
    .local v2, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v3, v2, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_1a

    .line 519
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->removeViewAt(I)V

    .line 520
    add-int/lit8 v0, v0, -0x1

    .line 515
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 523
    .end local v0    # "i":I
    :cond_1d
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .registers 3
    .param p1, "disallowIntercept"    # Z

    .line 2213
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2214
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_9

    .line 2215
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2217
    :cond_9
    return-void
.end method

.method private resetTouch()Z
    .registers 3

    .line 2206
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2207
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->endDrag()V

    .line 2208
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v0

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v1}, Landroid/support/v4/widget/EdgeEffectCompat;->onRelease()Z

    move-result v1

    or-int/2addr v0, v1

    .line 2209
    .local v0, "needsInvalidate":Z
    return v0
.end method

.method private scrollToItem(IZIZ)V
    .registers 12
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "velocity"    # I
    .param p4, "dispatchSelected"    # Z

    .line 615
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v0

    .line 616
    .local v0, "curInfo":Landroid/support/v4/view/ViewPager$ItemInfo;
    const/4 v1, 0x0

    .line 617
    .local v1, "destX":I
    if-eqz v0, :cond_1d

    .line 618
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v2

    .line 619
    .local v2, "width":I
    int-to-float v3, v2

    iget v4, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    iget v5, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v6, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float v3, v3, v4

    float-to-int v1, v3

    .line 622
    .end local v2    # "width":I
    :cond_1d
    const/4 v2, 0x0

    if-eqz p2, :cond_29

    .line 623
    invoke-virtual {p0, v1, v2, p3}, Landroid/support/v4/view/ViewPager;->smoothScrollTo(III)V

    .line 624
    if-eqz p4, :cond_37

    .line 625
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchOnPageSelected(I)V

    goto :goto_37

    .line 628
    :cond_29
    if-eqz p4, :cond_2e

    .line 629
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchOnPageSelected(I)V

    .line 631
    :cond_2e
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    .line 632
    invoke-virtual {p0, v1, v2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 633
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    .line 635
    :cond_37
    :goto_37
    return-void
.end method

.method private setScrollState(I)V
    .registers 3
    .param p1, "newState"    # I

    .line 451
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_5

    .line 452
    return-void

    .line 455
    :cond_5
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mScrollState:I

    .line 456
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    if-eqz v0, :cond_13

    .line 458
    if-eqz p1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->enableLayers(Z)V

    .line 460
    :cond_13
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchOnScrollStateChanged(I)V

    .line 461
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 2578
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_6

    .line 2579
    iput-boolean p1, p0, Landroid/support/v4/view/ViewPager;->mScrollingCacheEnabled:Z

    .line 2590
    :cond_6
    return-void
.end method

.method private sortChildDrawingOrder()V
    .registers 5

    .line 1215
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    if-eqz v0, :cond_2d

    .line 1216
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_10

    .line 1217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    goto :goto_13

    .line 1219
    :cond_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1221
    :goto_13
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    .line 1222
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    if-ge v1, v0, :cond_26

    .line 1223
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1224
    .local v2, "child":Landroid/view/View;
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1222
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 1226
    .end local v1    # "i":I
    :cond_26
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v2, Landroid/support/v4/view/ViewPager;->sPositionComparator:Landroid/support/v4/view/ViewPager$ViewPositionComparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1228
    .end local v0    # "childCount":I
    :cond_2d
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 11
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

    .line 2795
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2797
    .local v0, "focusableCount":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDescendantFocusability()I

    move-result v1

    .line 2799
    .local v1, "descendantFocusability":I
    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_2f

    .line 2800
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2f

    .line 2801
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2802
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2c

    .line 2803
    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 2804
    .local v4, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v4, :cond_2c

    iget v5, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v6, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v5, v6, :cond_2c

    .line 2805
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2800
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2815
    .end local v2    # "i":I
    :cond_2f
    const/high16 v2, 0x40000

    if-ne v1, v2, :cond_39

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_57

    .line 2821
    :cond_39
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_40

    .line 2822
    return-void

    .line 2824
    :cond_40
    and-int/lit8 v2, p3, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_52

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_52

    .line 2826
    return-void

    .line 2828
    :cond_52
    if-eqz p1, :cond_57

    .line 2829
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2832
    :cond_57
    return-void
.end method

.method addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;
    .registers 5
    .param p1, "position"    # I
    .param p2, "index"    # I

    .line 941
    new-instance v0, Landroid/support/v4/view/ViewPager$ItemInfo;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$ItemInfo;-><init>()V

    .line 942
    .local v0, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iput p1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 943
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Landroid/support/v4/view/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 944
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v1, p1}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    .line 945
    if-ltz p2, :cond_28

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_22

    goto :goto_28

    .line 948
    :cond_22
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2d

    .line 946
    :cond_28
    :goto_28
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 950
    :goto_2d
    return-object v0
.end method

.method public addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 662
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 663
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 665
    :cond_b
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 666
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 2842
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 2843
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2844
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_20

    .line 2845
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v2

    .line 2846
    .local v2, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v2, :cond_20

    iget v3, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v4, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v3, v4, :cond_20

    .line 2847
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2842
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2851
    .end local v0    # "i":I
    :cond_23
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1401
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1402
    invoke-virtual {p0, p3}, Landroid/support/v4/view/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1404
    :cond_a
    move-object v0, p3

    check-cast v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1405
    .local v0, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    instance-of v2, p1, Landroid/support/v4/view/ViewPager$Decor;

    or-int/2addr v1, v2

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    .line 1406
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    if-eqz v1, :cond_2e

    .line 1407
    if-eqz v0, :cond_27

    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_1f

    goto :goto_27

    .line 1408
    :cond_1f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1410
    :cond_27
    :goto_27
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1411
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_31

    .line 1413
    :cond_2e
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1423
    :goto_31
    return-void
.end method

.method public arrowScroll(I)Z
    .registers 8
    .param p1, "direction"    # I

    .line 2683
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2684
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_8

    .line 2685
    const/4 v0, 0x0

    goto :goto_69

    .line 2686
    :cond_8
    if-eqz v0, :cond_69

    .line 2687
    const/4 v1, 0x0

    .line 2688
    .local v1, "isChild":Z
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .local v2, "parent":Landroid/view/ViewParent;
    :goto_f
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1c

    .line 2690
    if-ne v2, p0, :cond_17

    .line 2691
    const/4 v1, 0x1

    .line 2692
    goto :goto_1c

    .line 2689
    :cond_17
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_f

    .line 2695
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_1c
    :goto_1c
    if-nez v1, :cond_69

    .line 2697
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2698
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2699
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .local v3, "parent":Landroid/view/ViewParent;
    :goto_32
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_4c

    .line 2701
    const-string v4, " => "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2700
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_32

    .line 2703
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_4c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ViewPager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    const/4 v0, 0x0

    .line 2709
    .end local v1    # "isChild":Z
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_69
    :goto_69
    const/4 v1, 0x0

    .line 2711
    .local v1, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2713
    .local v2, "nextFocused":Landroid/view/View;
    const/16 v3, 0x42

    const/16 v4, 0x11

    if-eqz v2, :cond_ba

    if-eq v2, v0, :cond_ba

    .line 2714
    if-ne p1, v4, :cond_9a

    .line 2717
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v2}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2718
    .local v3, "nextLeft":I
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v0}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 2719
    .local v4, "currLeft":I
    if-eqz v0, :cond_95

    if-lt v3, v4, :cond_95

    .line 2720
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageLeft()Z

    move-result v1

    goto :goto_99

    .line 2722
    :cond_95
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 2724
    .end local v3    # "nextLeft":I
    .end local v4    # "currLeft":I
    :cond_99
    :goto_99
    goto :goto_ce

    :cond_9a
    if-ne p1, v3, :cond_99

    .line 2727
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v2}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2728
    .restart local v3    # "nextLeft":I
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v0}, Landroid/support/v4/view/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 2729
    .restart local v4    # "currLeft":I
    if-eqz v0, :cond_b5

    if-gt v3, v4, :cond_b5

    .line 2730
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageRight()Z

    move-result v1

    goto :goto_b9

    .line 2732
    :cond_b5
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 2734
    .end local v3    # "nextLeft":I
    .end local v4    # "currLeft":I
    :goto_b9
    goto :goto_ce

    .line 2735
    :cond_ba
    if-eq p1, v4, :cond_ca

    const/4 v4, 0x1

    if-ne p1, v4, :cond_c0

    goto :goto_ca

    .line 2738
    :cond_c0
    if-eq p1, v3, :cond_c5

    const/4 v3, 0x2

    if-ne p1, v3, :cond_ce

    .line 2740
    :cond_c5
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageRight()Z

    move-result v1

    goto :goto_ce

    .line 2737
    :cond_ca
    :goto_ca
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->pageLeft()Z

    move-result v1

    .line 2742
    :cond_ce
    :goto_ce
    if-eqz v1, :cond_d7

    .line 2743
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/support/v4/view/ViewPager;->playSoundEffect(I)V

    .line 2745
    :cond_d7
    return v1
.end method

.method public beginFakeDrag()Z
    .registers 13

    .line 2436
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_6

    .line 2437
    const/4 v0, 0x0

    return v0

    .line 2439
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    .line 2440
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 2441
    const/4 v1, 0x0

    iput v1, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    iput v1, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    .line 2442
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1c

    .line 2443
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1f

    .line 2445
    :cond_1c
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 2447
    :goto_1f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2448
    .local v10, "time":J
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v4, v10

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 2449
    .local v1, "ev":Landroid/view/MotionEvent;
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2450
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 2451
    iput-wide v10, p0, Landroid/support/v4/view/ViewPager;->mFakeDragBeginTime:J

    .line 2452
    return v0
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .registers 20
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .line 2620
    move-object v0, p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_5c

    .line 2621
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2622
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 2623
    .local v3, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 2624
    .local v4, "scrollY":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 2626
    .local v5, "count":I
    add-int/lit8 v6, v5, -0x1

    .local v6, "i":I
    :goto_17
    if-ltz v6, :cond_5c

    .line 2629
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 2630
    .local v13, "child":Landroid/view/View;
    add-int v7, p4, v3

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v7, v8, :cond_59

    add-int v7, p4, v3

    invoke-virtual {v13}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v7, v8, :cond_59

    add-int v7, p5, v4

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v7, v8, :cond_59

    add-int v7, p5, v4

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v7, v8, :cond_59

    const/4 v9, 0x1

    add-int v7, p4, v3

    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v11, v7, v8

    add-int v7, p5, v4

    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v12, v7, v8

    move-object v7, p0

    move-object v8, v13

    move/from16 v10, p3

    invoke-virtual/range {v7 .. v12}, Landroid/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v7

    if-eqz v7, :cond_59

    .line 2634
    return v2

    .line 2626
    .end local v13    # "child":Landroid/view/View;
    :cond_59
    add-int/lit8 v6, v6, -0x1

    goto :goto_17

    .line 2639
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v3    # "scrollX":I
    .end local v4    # "scrollY":I
    .end local v5    # "count":I
    .end local v6    # "i":I
    :cond_5c
    if-eqz p2, :cond_68

    move/from16 v1, p3

    neg-int v3, v1

    invoke-static {p1, v3}, Landroid/support/v4/view/ViewCompat;->canScrollHorizontally(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_6a

    goto :goto_6b

    :cond_68
    move/from16 v1, p3

    :cond_6a
    const/4 v2, 0x0

    :goto_6b
    return v2
.end method

.method public canScrollHorizontally(I)Z
    .registers 8
    .param p1, "direction"    # I

    .line 2593
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2594
    return v1

    .line 2597
    :cond_6
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v0

    .line 2598
    .local v0, "width":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v2

    .line 2599
    .local v2, "scrollX":I
    const/4 v3, 0x1

    if-gez p1, :cond_1b

    .line 2600
    int-to-float v4, v0

    iget v5, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    if-le v2, v4, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1

    .line 2601
    :cond_1b
    if-lez p1, :cond_27

    .line 2602
    int-to-float v4, v0

    iget v5, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    mul-float v4, v4, v5

    float-to-int v4, v4

    if-ge v2, v4, :cond_26

    const/4 v1, 0x1

    :cond_26
    return v1

    .line 2604
    :cond_27
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2921
    instance-of v0, p1, Landroid/support/v4/view/ViewPager$LayoutParams;

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

.method public clearOnPageChangeListeners()V
    .registers 2

    .line 684
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 685
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 687
    :cond_7
    return-void
.end method

.method public computeScroll()V
    .registers 6

    .line 1713
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mIsScrollStarted:Z

    .line 1714
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_41

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1715
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    .line 1716
    .local v0, "oldX":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v1

    .line 1717
    .local v1, "oldY":I
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1718
    .local v2, "x":I
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1720
    .local v3, "y":I
    if-ne v0, v2, :cond_2b

    if-eq v1, v3, :cond_3d

    .line 1721
    :cond_2b
    invoke-virtual {p0, v2, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1722
    invoke-direct {p0, v2}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 1723
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1724
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 1729
    :cond_3d
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1730
    return-void

    .line 1734
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_41
    invoke-direct {p0, v0}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    .line 1735
    return-void
.end method

.method dataSetChanged()V
    .registers 13

    .line 956
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 957
    .local v0, "adapterCount":I
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    .line 958
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_21

    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_21

    const/4 v1, 0x1

    goto :goto_22

    :cond_21
    const/4 v1, 0x0

    .line 960
    .local v1, "needPopulate":Z
    :goto_22
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    .line 962
    .local v2, "newCurrItem":I
    const/4 v5, 0x0

    .line 963
    .local v5, "isUpdating":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_26
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_82

    .line 964
    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 965
    .local v7, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v8, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v9, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    .line 967
    .local v8, "newPos":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_42

    .line 968
    goto :goto_80

    .line 971
    :cond_42
    const/4 v9, -0x2

    if-ne v8, v9, :cond_72

    .line 972
    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 973
    add-int/lit8 v6, v6, -0x1

    .line 975
    if-nez v5, :cond_54

    .line 976
    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v9, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 977
    const/4 v5, 0x1

    .line 980
    :cond_54
    iget-object v9, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v10, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v11, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v9, p0, v10, v11}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 981
    const/4 v1, 0x1

    .line 983
    iget v9, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    iget v10, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v9, v10, :cond_80

    .line 985
    iget v9, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v10, v0, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 986
    const/4 v1, 0x1

    goto :goto_80

    .line 991
    :cond_72
    iget v9, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-eq v9, v8, :cond_80

    .line 992
    iget v9, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v10, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v9, v10, :cond_7d

    .line 994
    move v2, v8

    .line 997
    :cond_7d
    iput v8, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 998
    const/4 v1, 0x1

    .line 963
    .end local v7    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v8    # "newPos":I
    :cond_80
    :goto_80
    add-int/2addr v6, v3

    goto :goto_26

    .line 1002
    .end local v6    # "i":I
    :cond_82
    if-eqz v5, :cond_89

    .line 1003
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v6, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1006
    :cond_89
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v7, Landroid/support/v4/view/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1008
    if-eqz v1, :cond_b3

    .line 1010
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v6

    .line 1011
    .local v6, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_97
    if-ge v7, v6, :cond_ad

    .line 1012
    invoke-virtual {p0, v7}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1013
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1014
    .local v9, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v10, v9, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_aa

    .line 1015
    const/4 v10, 0x0

    iput v10, v9, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    .line 1011
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    :cond_aa
    add-int/lit8 v7, v7, 0x1

    goto :goto_97

    .line 1019
    .end local v7    # "i":I
    :cond_ad
    invoke-virtual {p0, v2, v4, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 1020
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 1022
    .end local v6    # "childCount":I
    :cond_b3
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2645
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 8
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 2889
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_d

    .line 2890
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0

    .line 2894
    :cond_d
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    .line 2895
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_35

    .line 2896
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2897
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_32

    .line 2898
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v3

    .line 2899
    .local v3, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v3, :cond_32

    iget v4, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v5, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v4, v5, :cond_32

    invoke-virtual {v2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v4

    if-eqz v4, :cond_32

    .line 2901
    const/4 v4, 0x1

    return v4

    .line 2895
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_32
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 2906
    .end local v1    # "i":I
    :cond_35
    const/4 v1, 0x0

    return v1
.end method

.method distanceInfluenceForSnapDuration(F)F
    .registers 6
    .param p1, "f"    # F

    .line 860
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 861
    float-to-double v0, p1

    const-wide v2, 0x3fde28c7460698c7L    # 0.4712389167638204

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v0, v0, v2

    double-to-float p1, v0

    .line 862
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2334
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2335
    const/4 v0, 0x0

    .line 2337
    .local v0, "needsInvalidate":Z
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getOverScrollMode(Landroid/view/View;)I

    move-result v1

    .line 2338
    .local v1, "overScrollMode":I
    if-eqz v1, :cond_24

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v3

    if-le v3, v2, :cond_18

    goto :goto_24

    .line 2364
    :cond_18
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    .line 2365
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->finish()V

    goto/16 :goto_a9

    .line 2341
    :cond_24
    :goto_24
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_65

    .line 2342
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2343
    .local v2, "restoreCount":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2344
    .local v3, "height":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v4

    .line 2346
    .local v4, "width":I
    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2347
    neg-int v5, v3

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    int-to-float v7, v4

    mul-float v6, v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2348
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5, v3, v4}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2349
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2350
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2352
    .end local v2    # "restoreCount":I
    .end local v3    # "height":I
    .end local v4    # "width":I
    :cond_65
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v2}, Landroid/support/v4/widget/EdgeEffectCompat;->isFinished()Z

    move-result v2

    if-nez v2, :cond_a9

    .line 2353
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2354
    .restart local v2    # "restoreCount":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v3

    .line 2355
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 2357
    .local v4, "height":I
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2358
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    neg-float v6, v6

    int-to-float v7, v3

    mul-float v6, v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2359
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5, v4, v3}, Landroid/support/v4/widget/EdgeEffectCompat;->setSize(II)V

    .line 2360
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-virtual {v5, p1}, Landroid/support/v4/widget/EdgeEffectCompat;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2361
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2368
    .end local v2    # "restoreCount":I
    .end local v3    # "width":I
    .end local v4    # "height":I
    :cond_a9
    :goto_a9
    if-eqz v0, :cond_ae

    .line 2370
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2372
    :cond_ae
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    .line 848
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 849
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 850
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 851
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 853
    :cond_14
    return-void
.end method

.method public endFakeDrag()V
    .registers 11

    .line 2462
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_47

    .line 2466
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_40

    .line 2467
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2468
    .local v0, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v1, 0x3e8

    iget v2, p0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2469
    iget v1, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-static {v0, v1}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v1

    float-to-int v1, v1

    .line 2471
    .local v1, "initialVelocity":I
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 2472
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v3

    .line 2473
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v4

    .line 2474
    .local v4, "scrollX":I
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v5

    .line 2475
    .local v5, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v6, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 2476
    .local v6, "currentPage":I
    int-to-float v7, v4

    int-to-float v8, v3

    div-float/2addr v7, v8

    iget v8, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v7, v8

    iget v8, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v7, v8

    .line 2477
    .local v7, "pageOffset":F
    iget v8, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    iget v9, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    sub-float/2addr v8, v9

    float-to-int v8, v8

    .line 2478
    .local v8, "totalDelta":I
    invoke-direct {p0, v6, v7, v1, v8}, Landroid/support/v4/view/ViewPager;->determineTargetPage(IFII)I

    move-result v9

    .line 2480
    .local v9, "nextPage":I
    invoke-virtual {p0, v9, v2, v2, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 2482
    .end local v0    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v1    # "initialVelocity":I
    .end local v3    # "width":I
    .end local v4    # "scrollX":I
    .end local v5    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v6    # "currentPage":I
    .end local v7    # "pageOffset":F
    .end local v8    # "totalDelta":I
    .end local v9    # "nextPage":I
    :cond_40
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->endDrag()V

    .line 2484
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    .line 2485
    return-void

    .line 2463
    :cond_47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2657
    const/4 v0, 0x0

    .line 2658
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3a

    .line 2659
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_3c

    goto :goto_3a

    .line 2667
    :sswitch_f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_3a

    .line 2670
    invoke-static {p1}, Landroid/support/v4/view/KeyEventCompat;->hasNoModifiers(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 2671
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_3a

    .line 2672
    :cond_21
    const/4 v1, 0x1

    invoke-static {p1, v1}, Landroid/support/v4/view/KeyEventCompat;->hasModifiers(Landroid/view/KeyEvent;I)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 2673
    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_3a

    .line 2664
    :sswitch_2d
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2665
    goto :goto_3a

    .line 2661
    :sswitch_34
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Landroid/support/v4/view/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2679
    :cond_3a
    :goto_3a
    return v0

    nop

    :sswitch_data_3c
    .sparse-switch
        0x15 -> :sswitch_34
        0x16 -> :sswitch_2d
        0x3d -> :sswitch_f
    .end sparse-switch
.end method

.method public fakeDragBy(F)V
    .registers 21
    .param p1, "xOffset"    # F

    .line 2495
    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    if-eqz v1, :cond_92

    .line 2499
    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v1, :cond_b

    .line 2500
    return-void

    .line 2503
    :cond_b
    iget v1, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    add-float v1, v1, p1

    iput v1, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2505
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    .line 2506
    .local v1, "oldScrollX":F
    sub-float v2, v1, p1

    .line 2507
    .local v2, "scrollX":F
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v3

    .line 2509
    .local v3, "width":I
    int-to-float v4, v3

    iget v5, v0, Landroid/support/v4/view/ViewPager;->mFirstOffset:F

    mul-float v4, v4, v5

    .line 2510
    .local v4, "leftBound":F
    int-to-float v5, v3

    iget v6, v0, Landroid/support/v4/view/ViewPager;->mLastOffset:F

    mul-float v5, v5, v6

    .line 2512
    .local v5, "rightBound":F
    iget-object v6, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2513
    .local v6, "firstItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v7, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2514
    .local v7, "lastItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v8, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-eqz v8, :cond_46

    .line 2515
    iget v8, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    int-to-float v9, v3

    mul-float v4, v8, v9

    .line 2517
    :cond_46
    iget v8, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v9, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v9}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_57

    .line 2518
    iget v8, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    int-to-float v9, v3

    mul-float v5, v8, v9

    .line 2521
    :cond_57
    cmpg-float v8, v2, v4

    if-gez v8, :cond_5d

    .line 2522
    move v2, v4

    goto :goto_62

    .line 2523
    :cond_5d
    cmpl-float v8, v2, v5

    if-lez v8, :cond_62

    .line 2524
    move v2, v5

    .line 2527
    :cond_62
    :goto_62
    iget v8, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    float-to-int v9, v2

    int-to-float v9, v9

    sub-float v9, v2, v9

    add-float/2addr v8, v9

    iput v8, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2528
    float-to-int v8, v2

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 2529
    float-to-int v8, v2

    invoke-direct {v0, v8}, Landroid/support/v4/view/ViewPager;->pageScrolled(I)Z

    .line 2532
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 2533
    .local v17, "time":J
    iget-wide v9, v0, Landroid/support/v4/view/ViewPager;->mFakeDragBeginTime:J

    const/4 v13, 0x2

    iget v14, v0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide/from16 v11, v17

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 2535
    .local v8, "ev":Landroid/view/MotionEvent;
    iget-object v9, v0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2536
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 2537
    return-void

    .line 2496
    .end local v1    # "oldScrollX":F
    .end local v2    # "scrollX":F
    .end local v3    # "width":I
    .end local v4    # "leftBound":F
    .end local v5    # "rightBound":F
    .end local v6    # "firstItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v7    # "lastItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v8    # "ev":Landroid/view/MotionEvent;
    .end local v17    # "time":J
    :cond_92
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 2911
    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-direct {v0}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 2926
    new-instance v0, Landroid/support/v4/view/ViewPager$LayoutParams;

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/support/v4/view/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2916
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Landroid/support/v4/view/PagerAdapter;
    .registers 2

    .line 531
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 5
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 736
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    add-int/lit8 v0, p1, -0x1

    sub-int/2addr v0, p2

    goto :goto_a

    :cond_9
    move v0, p2

    .line 737
    .local v0, "index":I
    :goto_a
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$LayoutParams;

    iget v1, v1, Landroid/support/v4/view/ViewPager$LayoutParams;->childIndex:I

    .line 738
    .local v1, "result":I
    return v1
.end method

.method public getCurrentItem()I
    .registers 2

    .line 566
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .registers 2

    .line 761
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .registers 2

    .line 817
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 1446
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v1, v0

    .local v1, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_14

    .line 1447
    if-eqz v1, :cond_12

    instance-of v0, v1, Landroid/view/View;

    if-nez v0, :cond_e

    goto :goto_12

    .line 1450
    :cond_e
    move-object p1, v1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1448
    :cond_12
    :goto_12
    const/4 v0, 0x0

    return-object v0

    .line 1452
    :cond_14
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;
    .registers 6
    .param p1, "child"    # Landroid/view/View;

    .line 1435
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 1436
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1437
    .local v1, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v3, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Landroid/support/v4/view/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1438
    return-object v1

    .line 1435
    .end local v1    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1441
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;
    .registers 5
    .param p1, "position"    # I

    .line 1456
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 1457
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1458
    .local v1, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v2, v1, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_16

    .line 1459
    return-object v1

    .line 1456
    .end local v1    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1462
    .end local v0    # "i":I
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method initViewPager()V
    .registers 6

    .line 364
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 365
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setDescendantFocusability(I)V

    .line 366
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setFocusable(Z)V

    .line 367
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 368
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Landroid/widget/Scroller;

    sget-object v3, Landroid/support/v4/view/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v2, v1, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v2, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 369
    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    .line 370
    .local v2, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    .line 372
    .local v3, "density":F
    invoke-static {v2}, Landroid/support/v4/view/ViewConfigurationCompat;->getScaledPagingTouchSlop(Landroid/view/ViewConfiguration;)I

    move-result v4

    iput v4, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    .line 373
    const/high16 v4, 0x43c80000    # 400.0f

    mul-float v4, v4, v3

    float-to-int v4, v4

    iput v4, p0, Landroid/support/v4/view/ViewPager;->mMinimumVelocity:I

    .line 374
    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    .line 375
    new-instance v4, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v4, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mLeftEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 376
    new-instance v4, Landroid/support/v4/widget/EdgeEffectCompat;

    invoke-direct {v4, v1}, Landroid/support/v4/widget/EdgeEffectCompat;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Landroid/support/v4/view/ViewPager;->mRightEdge:Landroid/support/v4/widget/EdgeEffectCompat;

    .line 378
    const/high16 v4, 0x41c80000    # 25.0f

    mul-float v4, v4, v3

    float-to-int v4, v4

    iput v4, p0, Landroid/support/v4/view/ViewPager;->mFlingDistance:I

    .line 379
    const/high16 v4, 0x40000000    # 2.0f

    mul-float v4, v4, v3

    float-to-int v4, v4

    iput v4, p0, Landroid/support/v4/view/ViewPager;->mCloseEnough:I

    .line 380
    const/high16 v4, 0x41800000    # 16.0f

    mul-float v4, v4, v3

    float-to-int v4, v4

    iput v4, p0, Landroid/support/v4/view/ViewPager;->mDefaultGutterSize:I

    .line 382
    new-instance v4, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;

    invoke-direct {v4, p0}, Landroid/support/v4/view/ViewPager$MyAccessibilityDelegate;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-static {p0, v4}, Landroid/support/v4/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroid/support/v4/view/AccessibilityDelegateCompat;)V

    .line 384
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getImportantForAccessibility(Landroid/view/View;)I

    move-result v4

    if-nez v4, :cond_6f

    .line 386
    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setImportantForAccessibility(Landroid/view/View;I)V

    .line 390
    :cond_6f
    new-instance v0, Landroid/support/v4/view/ViewPager$4;

    invoke-direct {v0, p0}, Landroid/support/v4/view/ViewPager$4;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-static {p0, v0}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 438
    return-void
.end method

.method public isFakeDragging()Z
    .registers 2

    .line 2549
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 1467
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1468
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 1469
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 442
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 444
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_14

    .line 445
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 447
    :cond_14
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 448
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2376
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2379
    iget v1, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    if-lez v1, :cond_b8

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b8

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b8

    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_b8

    .line 2380
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v1

    .line 2381
    .local v1, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v2

    .line 2383
    .local v2, "width":I
    iget v3, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 2384
    .local v3, "marginOffset":F
    const/4 v4, 0x0

    .line 2385
    .local v4, "itemIndex":I
    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 2386
    .local v5, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v6, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    .line 2387
    .local v6, "offset":F
    iget-object v7, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2388
    .local v7, "itemCount":I
    iget v8, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 2389
    .local v8, "firstPos":I
    iget-object v9, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v10, v7, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/view/ViewPager$ItemInfo;

    iget v9, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 2390
    .local v9, "lastPos":I
    move v10, v8

    .local v10, "pos":I
    :goto_47
    if-ge v10, v9, :cond_b3

    .line 2391
    :goto_49
    iget v11, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-le v10, v11, :cond_5b

    if-ge v4, v7, :cond_5b

    .line 2392
    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v5, v11

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_49

    .line 2396
    :cond_5b
    iget v11, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v10, v11, :cond_6f

    .line 2397
    iget v11, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v12, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v11, v12

    int-to-float v12, v2

    mul-float v11, v11, v12

    .line 2398
    .local v11, "drawAt":F
    iget v12, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    iget v13, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float/2addr v12, v3

    move v6, v12

    .end local v6    # "offset":F
    .local v12, "offset":F
    goto :goto_7e

    .line 2400
    .end local v11    # "drawAt":F
    .end local v12    # "offset":F
    .restart local v6    # "offset":F
    :cond_6f
    iget-object v11, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v11, v10}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v11

    .line 2401
    .local v11, "widthFactor":F
    add-float v12, v6, v11

    int-to-float v13, v2

    mul-float v12, v12, v13

    .line 2402
    .local v12, "drawAt":F
    add-float v13, v11, v3

    add-float/2addr v6, v13

    move v11, v12

    .line 2405
    .end local v12    # "drawAt":F
    .local v11, "drawAt":F
    :goto_7e
    iget v12, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v13, v12

    add-float/2addr v13, v11

    int-to-float v14, v1

    cmpl-float v13, v13, v14

    if-lez v13, :cond_a2

    .line 2406
    iget-object v13, v0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    float-to-int v14, v11

    iget v15, v0, Landroid/support/v4/view/ViewPager;->mTopPageBounds:I

    int-to-float v12, v12

    add-float/2addr v12, v11

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v12, v12, v16

    float-to-int v12, v12

    move/from16 v16, v3

    .end local v3    # "marginOffset":F
    .local v16, "marginOffset":F
    iget v3, v0, Landroid/support/v4/view/ViewPager;->mBottomPageBounds:I

    invoke-virtual {v13, v14, v15, v12, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2408
    iget-object v3, v0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v12, p1

    invoke-virtual {v3, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_a6

    .line 2405
    .end local v16    # "marginOffset":F
    .restart local v3    # "marginOffset":F
    :cond_a2
    move-object/from16 v12, p1

    move/from16 v16, v3

    .line 2411
    .end local v3    # "marginOffset":F
    .restart local v16    # "marginOffset":F
    :goto_a6
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v11, v3

    if-lez v3, :cond_ae

    .line 2412
    goto :goto_ba

    .line 2390
    .end local v11    # "drawAt":F
    :cond_ae
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v16

    goto :goto_47

    .end local v16    # "marginOffset":F
    .restart local v3    # "marginOffset":F
    :cond_b3
    move-object/from16 v12, p1

    move/from16 v16, v3

    .end local v3    # "marginOffset":F
    .restart local v16    # "marginOffset":F
    goto :goto_ba

    .line 2379
    .end local v1    # "scrollX":I
    .end local v2    # "width":I
    .end local v4    # "itemIndex":I
    .end local v5    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v6    # "offset":F
    .end local v7    # "itemCount":I
    .end local v8    # "firstPos":I
    .end local v9    # "lastPos":I
    .end local v10    # "pos":I
    .end local v16    # "marginOffset":F
    :cond_b8
    move-object/from16 v12, p1

    .line 2416
    :goto_ba
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 21
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1946
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v8, v0, 0xff

    .line 1949
    .local v8, "action":I
    const/4 v9, 0x0

    const/4 v0, 0x3

    if-eq v8, v0, :cond_122

    const/4 v10, 0x1

    if-ne v8, v10, :cond_13

    goto/16 :goto_122

    .line 1958
    :cond_13
    if-eqz v8, :cond_1f

    .line 1959
    iget-boolean v0, v6, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_1a

    .line 1961
    return v10

    .line 1963
    :cond_1a
    iget-boolean v0, v6, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    if-eqz v0, :cond_1f

    .line 1965
    return v9

    .line 1969
    :cond_1f
    sparse-switch v8, :sswitch_data_128

    goto/16 :goto_110

    .line 2061
    :sswitch_24
    invoke-direct/range {p0 .. p1}, Landroid/support/v4/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_110

    .line 1980
    :sswitch_29
    iget v11, v6, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 1981
    .local v11, "activePointerId":I
    const/4 v0, -0x1

    if-ne v11, v0, :cond_30

    .line 1983
    goto/16 :goto_110

    .line 1986
    :cond_30
    invoke-static {v7, v11}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v12

    .line 1987
    .local v12, "pointerIndex":I
    invoke-static {v7, v12}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v13

    .line 1988
    .local v13, "x":F
    iget v0, v6, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    sub-float v14, v13, v0

    .line 1989
    .local v14, "dx":F
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 1990
    .local v15, "xDiff":F
    invoke-static {v7, v12}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 1991
    .local v5, "y":F
    iget v0, v6, Landroid/support/v4/view/ViewPager;->mInitialMotionY:F

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 1994
    .local v16, "yDiff":F
    const/16 v17, 0x0

    cmpl-float v0, v14, v17

    if-eqz v0, :cond_75

    iget v0, v6, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    invoke-direct {v6, v0, v14}, Landroid/support/v4/view/ViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_75

    const/4 v2, 0x0

    float-to-int v3, v14

    float-to-int v4, v13

    float-to-int v1, v5

    move-object/from16 v0, p0

    move/from16 v18, v1

    move-object/from16 v1, p0

    move v9, v5

    .end local v5    # "y":F
    .local v9, "y":F
    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/view/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 1997
    iput v13, v6, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 1998
    iput v9, v6, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 1999
    iput-boolean v10, v6, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 2000
    const/4 v0, 0x0

    return v0

    .line 1994
    .end local v9    # "y":F
    .restart local v5    # "y":F
    :cond_75
    move v9, v5

    .line 2002
    .end local v5    # "y":F
    .restart local v9    # "y":F
    :cond_76
    iget v0, v6, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v1, v0

    cmpl-float v1, v15, v1

    if-lez v1, :cond_a6

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v1, v1, v15

    cmpl-float v1, v1, v16

    if-lez v1, :cond_a6

    .line 2004
    iput-boolean v10, v6, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 2005
    invoke-direct {v6, v10}, Landroid/support/v4/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2006
    invoke-direct {v6, v10}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 2007
    cmpl-float v0, v14, v17

    if-lez v0, :cond_98

    iget v0, v6, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    iget v1, v6, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_9e

    :cond_98
    iget v0, v6, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    iget v1, v6, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_9e
    iput v0, v6, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2009
    iput v9, v6, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 2010
    invoke-direct {v6, v10}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_ad

    .line 2011
    :cond_a6
    int-to-float v0, v0

    cmpl-float v0, v16, v0

    if-lez v0, :cond_ad

    .line 2017
    iput-boolean v10, v6, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 2019
    :cond_ad
    :goto_ad
    iget-boolean v0, v6, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_110

    .line 2021
    invoke-direct {v6, v13}, Landroid/support/v4/view/ViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_110

    .line 2022
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_110

    .line 2033
    .end local v9    # "y":F
    .end local v11    # "activePointerId":I
    .end local v12    # "pointerIndex":I
    .end local v13    # "x":F
    .end local v14    # "dx":F
    .end local v15    # "xDiff":F
    .end local v16    # "yDiff":F
    :sswitch_bb
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    iput v0, v6, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2034
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Landroid/support/v4/view/ViewPager;->mInitialMotionY:F

    iput v0, v6, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 2035
    const/4 v0, 0x0

    invoke-static {v7, v0}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v1

    iput v1, v6, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2036
    iput-boolean v0, v6, Landroid/support/v4/view/ViewPager;->mIsUnableToDrag:Z

    .line 2038
    iput-boolean v10, v6, Landroid/support/v4/view/ViewPager;->mIsScrollStarted:Z

    .line 2039
    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 2040
    iget v0, v6, Landroid/support/v4/view/ViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_109

    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, v6, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Landroid/support/v4/view/ViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_109

    .line 2043
    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2044
    const/4 v0, 0x0

    iput-boolean v0, v6, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 2045
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 2046
    iput-boolean v10, v6, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 2047
    invoke-direct {v6, v10}, Landroid/support/v4/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2048
    invoke-direct {v6, v10}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    goto :goto_110

    .line 2050
    :cond_109
    const/4 v0, 0x0

    invoke-direct {v6, v0}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    .line 2051
    iput-boolean v0, v6, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 2057
    nop

    .line 2065
    :cond_110
    :goto_110
    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_11a

    .line 2066
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2068
    :cond_11a
    iget-object v0, v6, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2074
    iget-boolean v0, v6, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    return v0

    .line 1952
    :cond_122
    :goto_122
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->resetTouch()Z

    .line 1953
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_128
    .sparse-switch
        0x0 -> :sswitch_bb
        0x2 -> :sswitch_29
        0x6 -> :sswitch_24
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .registers 29
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 1604
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    .line 1605
    .local v1, "count":I
    sub-int v2, p4, p2

    .line 1606
    .local v2, "width":I
    sub-int v3, p5, p3

    .line 1607
    .local v3, "height":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v4

    .line 1608
    .local v4, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v5

    .line 1609
    .local v5, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v6

    .line 1610
    .local v6, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v7

    .line 1611
    .local v7, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v8

    .line 1613
    .local v8, "scrollX":I
    const/4 v9, 0x0

    .line 1617
    .local v9, "decorCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_20
    const/16 v11, 0x8

    if-ge v10, v1, :cond_c2

    .line 1618
    invoke-virtual {v0, v10}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1619
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eq v13, v11, :cond_be

    .line 1620
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1621
    .local v11, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    const/4 v13, 0x0

    .line 1622
    .local v13, "childLeft":I
    const/4 v14, 0x0

    .line 1623
    .local v14, "childTop":I
    iget-boolean v15, v11, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v15, :cond_ba

    .line 1624
    iget v15, v11, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v15, v15, 0x7

    .line 1625
    .local v15, "hgrav":I
    move/from16 v16, v13

    .end local v13    # "childLeft":I
    .local v16, "childLeft":I
    iget v13, v11, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v13, v13, 0x70

    .line 1626
    .local v13, "vgrav":I
    packed-switch v15, :pswitch_data_16a

    .line 1628
    :pswitch_47
    move-object/from16 v18, v11

    .end local v11    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    .local v18, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    move/from16 v17, v4

    .line 1629
    .end local v16    # "childLeft":I
    .local v17, "childLeft":I
    goto :goto_77

    .line 1639
    .end local v17    # "childLeft":I
    .end local v18    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    .restart local v11    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    .restart local v16    # "childLeft":I
    :pswitch_4c
    sub-int v17, v2, v6

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    sub-int v17, v17, v18

    .line 1640
    .end local v16    # "childLeft":I
    .restart local v17    # "childLeft":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v6, v6, v16

    move-object/from16 v18, v11

    goto :goto_77

    .line 1631
    .end local v17    # "childLeft":I
    .restart local v16    # "childLeft":I
    :pswitch_5d
    move/from16 v17, v4

    .line 1632
    .end local v16    # "childLeft":I
    .restart local v17    # "childLeft":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v4, v4, v16

    .line 1633
    move-object/from16 v18, v11

    goto :goto_77

    .line 1635
    .end local v17    # "childLeft":I
    .restart local v16    # "childLeft":I
    :pswitch_68
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v17, v2, v17

    move-object/from16 v18, v11

    .end local v11    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    .restart local v18    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    div-int/lit8 v11, v17, 0x2

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1637
    .end local v16    # "childLeft":I
    .restart local v17    # "childLeft":I
    nop

    .line 1643
    :goto_77
    sparse-switch v13, :sswitch_data_178

    .line 1645
    move v11, v5

    .line 1646
    .end local v14    # "childTop":I
    .local v11, "childTop":I
    goto :goto_9e

    .line 1656
    .end local v11    # "childTop":I
    .restart local v14    # "childTop":I
    :sswitch_7c
    sub-int v11, v3, v7

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    sub-int v11, v11, v16

    .line 1657
    .end local v14    # "childTop":I
    .restart local v11    # "childTop":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v7, v14

    goto :goto_9e

    .line 1648
    .end local v11    # "childTop":I
    .restart local v14    # "childTop":I
    :sswitch_8a
    move v11, v5

    .line 1649
    .end local v14    # "childTop":I
    .restart local v11    # "childTop":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v5, v14

    .line 1650
    goto :goto_9e

    .line 1652
    .end local v11    # "childTop":I
    .restart local v14    # "childTop":I
    :sswitch_91
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int v11, v3, v11

    div-int/lit8 v11, v11, 0x2

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1654
    .end local v14    # "childTop":I
    .restart local v11    # "childTop":I
    nop

    .line 1660
    :goto_9e
    add-int v14, v17, v8

    .line 1661
    .end local v17    # "childLeft":I
    .local v14, "childLeft":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    move/from16 v17, v4

    .end local v4    # "paddingLeft":I
    .local v17, "paddingLeft":I
    add-int v4, v14, v16

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    move/from16 v19, v5

    .end local v5    # "paddingTop":I
    .local v19, "paddingTop":I
    add-int v5, v11, v16

    invoke-virtual {v12, v14, v11, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 1664
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v17

    move/from16 v5, v19

    goto :goto_be

    .line 1623
    .end local v15    # "hgrav":I
    .end local v17    # "paddingLeft":I
    .end local v18    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v19    # "paddingTop":I
    .restart local v4    # "paddingLeft":I
    .restart local v5    # "paddingTop":I
    .local v11, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    .local v13, "childLeft":I
    .local v14, "childTop":I
    :cond_ba
    move-object/from16 v18, v11

    move/from16 v16, v13

    .line 1617
    .end local v11    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "childLeft":I
    .end local v14    # "childTop":I
    :cond_be
    :goto_be
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_20

    .line 1669
    .end local v10    # "i":I
    :cond_c2
    sub-int v10, v2, v4

    sub-int/2addr v10, v6

    .line 1671
    .local v10, "childWidth":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_c6
    if-ge v12, v1, :cond_14d

    .line 1672
    invoke-virtual {v0, v12}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1673
    .local v14, "child":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eq v15, v11, :cond_13b

    .line 1674
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1676
    .local v15, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v11, v15, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v11, :cond_134

    invoke-virtual {v0, v14}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v11

    move-object/from16 v17, v11

    .local v17, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v11, :cond_12b

    .line 1677
    int-to-float v11, v10

    move-object/from16 v13, v17

    move/from16 v17, v1

    .end local v1    # "count":I
    .local v13, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .local v17, "count":I
    iget v1, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    mul-float v11, v11, v1

    float-to-int v1, v11

    .line 1678
    .local v1, "loff":I
    add-int v11, v4, v1

    .line 1679
    .local v11, "childLeft":I
    move/from16 v19, v5

    .line 1680
    .local v19, "childTop":I
    move/from16 v20, v1

    .end local v1    # "loff":I
    .local v20, "loff":I
    iget-boolean v1, v15, Landroid/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v1, :cond_117

    .line 1683
    const/4 v1, 0x0

    iput-boolean v1, v15, Landroid/support/v4/view/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1684
    int-to-float v1, v10

    move/from16 v21, v2

    .end local v2    # "width":I
    .local v21, "width":I
    iget v2, v15, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    mul-float v1, v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1687
    .local v1, "widthSpec":I
    sub-int v18, v3, v5

    move/from16 v22, v4

    .end local v4    # "paddingLeft":I
    .local v22, "paddingLeft":I
    sub-int v4, v18, v7

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1690
    .local v2, "heightSpec":I
    invoke-virtual {v14, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_11b

    .line 1680
    .end local v1    # "widthSpec":I
    .end local v21    # "width":I
    .end local v22    # "paddingLeft":I
    .local v2, "width":I
    .restart local v4    # "paddingLeft":I
    :cond_117
    move/from16 v21, v2

    move/from16 v22, v4

    .line 1695
    .end local v2    # "width":I
    .end local v4    # "paddingLeft":I
    .restart local v21    # "width":I
    .restart local v22    # "paddingLeft":I
    :goto_11b
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v11

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move/from16 v4, v19

    .end local v19    # "childTop":I
    .local v4, "childTop":I
    add-int/2addr v2, v4

    invoke-virtual {v14, v11, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_141

    .line 1676
    .end local v11    # "childLeft":I
    .end local v13    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v20    # "loff":I
    .end local v21    # "width":I
    .end local v22    # "paddingLeft":I
    .local v1, "count":I
    .restart local v2    # "width":I
    .local v4, "paddingLeft":I
    .local v17, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_12b
    move/from16 v21, v2

    move/from16 v22, v4

    move-object/from16 v13, v17

    move/from16 v17, v1

    .end local v1    # "count":I
    .end local v2    # "width":I
    .end local v4    # "paddingLeft":I
    .restart local v13    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .local v17, "count":I
    .restart local v21    # "width":I
    .restart local v22    # "paddingLeft":I
    goto :goto_141

    .end local v13    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v17    # "count":I
    .end local v21    # "width":I
    .end local v22    # "paddingLeft":I
    .restart local v1    # "count":I
    .restart local v2    # "width":I
    .restart local v4    # "paddingLeft":I
    :cond_134
    move/from16 v17, v1

    move/from16 v21, v2

    move/from16 v22, v4

    .end local v1    # "count":I
    .end local v2    # "width":I
    .end local v4    # "paddingLeft":I
    .restart local v17    # "count":I
    .restart local v21    # "width":I
    .restart local v22    # "paddingLeft":I
    goto :goto_141

    .line 1673
    .end local v15    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v17    # "count":I
    .end local v21    # "width":I
    .end local v22    # "paddingLeft":I
    .restart local v1    # "count":I
    .restart local v2    # "width":I
    .restart local v4    # "paddingLeft":I
    :cond_13b
    move/from16 v17, v1

    move/from16 v21, v2

    move/from16 v22, v4

    .line 1671
    .end local v1    # "count":I
    .end local v2    # "width":I
    .end local v4    # "paddingLeft":I
    .end local v14    # "child":Landroid/view/View;
    .restart local v17    # "count":I
    .restart local v21    # "width":I
    .restart local v22    # "paddingLeft":I
    :goto_141
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, v17

    move/from16 v2, v21

    move/from16 v4, v22

    const/16 v11, 0x8

    goto/16 :goto_c6

    .end local v17    # "count":I
    .end local v21    # "width":I
    .end local v22    # "paddingLeft":I
    .restart local v1    # "count":I
    .restart local v2    # "width":I
    .restart local v4    # "paddingLeft":I
    :cond_14d
    move/from16 v17, v1

    move/from16 v21, v2

    move/from16 v22, v4

    .line 1701
    .end local v1    # "count":I
    .end local v2    # "width":I
    .end local v4    # "paddingLeft":I
    .end local v12    # "i":I
    .restart local v17    # "count":I
    .restart local v21    # "width":I
    .restart local v22    # "paddingLeft":I
    iput v5, v0, Landroid/support/v4/view/ViewPager;->mTopPageBounds:I

    .line 1702
    sub-int v1, v3, v7

    iput v1, v0, Landroid/support/v4/view/ViewPager;->mBottomPageBounds:I

    .line 1703
    iput v9, v0, Landroid/support/v4/view/ViewPager;->mDecorChildCount:I

    .line 1705
    iget-boolean v1, v0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_166

    .line 1706
    iget v1, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Landroid/support/v4/view/ViewPager;->scrollToItem(IZIZ)V

    goto :goto_167

    .line 1705
    :cond_166
    const/4 v2, 0x0

    .line 1708
    :goto_167
    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 1709
    return-void

    :pswitch_data_16a
    .packed-switch 0x1
        :pswitch_68
        :pswitch_47
        :pswitch_5d
        :pswitch_47
        :pswitch_4c
    .end packed-switch

    :sswitch_data_178
    .sparse-switch
        0x10 -> :sswitch_91
        0x30 -> :sswitch_8a
        0x50 -> :sswitch_7c
    .end sparse-switch
.end method

.method protected onMeasure(II)V
    .registers 23
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 1478
    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p1

    invoke-static {v1, v2}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v3

    move/from16 v4, p2

    invoke-static {v1, v4}, Landroid/support/v4/view/ViewPager;->getDefaultSize(II)I

    move-result v5

    invoke-virtual {v0, v3, v5}, Landroid/support/v4/view/ViewPager;->setMeasuredDimension(II)V

    .line 1481
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getMeasuredWidth()I

    move-result v3

    .line 1482
    .local v3, "measuredWidth":I
    div-int/lit8 v5, v3, 0xa

    .line 1483
    .local v5, "maxGutterSize":I
    iget v6, v0, Landroid/support/v4/view/ViewPager;->mDefaultGutterSize:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v0, Landroid/support/v4/view/ViewPager;->mGutterSize:I

    .line 1486
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1487
    .local v6, "childWidthSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getMeasuredHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    .line 1494
    .local v7, "childHeightSize":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v8

    .line 1495
    .local v8, "size":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3e
    const/16 v10, 0x8

    if-ge v9, v8, :cond_ef

    .line 1496
    invoke-virtual {v0, v9}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1497
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eq v13, v10, :cond_de

    .line 1498
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1499
    .local v10, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    if-eqz v10, :cond_d9

    iget-boolean v13, v10, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v13, :cond_d9

    .line 1500
    iget v13, v10, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v13, v13, 0x7

    .line 1501
    .local v13, "hgrav":I
    iget v14, v10, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v14, 0x70

    .line 1502
    .local v14, "vgrav":I
    const/high16 v15, -0x80000000

    .line 1503
    .local v15, "widthMode":I
    const/high16 v16, -0x80000000

    .line 1504
    .local v16, "heightMode":I
    const/16 v1, 0x30

    if-eq v14, v1, :cond_6f

    const/16 v1, 0x50

    if-ne v14, v1, :cond_6d

    goto :goto_6f

    :cond_6d
    const/4 v1, 0x0

    goto :goto_70

    :cond_6f
    :goto_6f
    const/4 v1, 0x1

    .line 1505
    .local v1, "consumeVertical":Z
    :goto_70
    const/4 v11, 0x3

    if-eq v13, v11, :cond_79

    const/4 v11, 0x5

    if-ne v13, v11, :cond_77

    goto :goto_79

    :cond_77
    const/4 v11, 0x0

    goto :goto_7a

    :cond_79
    :goto_79
    const/4 v11, 0x1

    .line 1507
    .local v11, "consumeHorizontal":Z
    :goto_7a
    if-eqz v1, :cond_7f

    .line 1508
    const/high16 v15, 0x40000000    # 2.0f

    goto :goto_83

    .line 1509
    :cond_7f
    if-eqz v11, :cond_83

    .line 1510
    const/high16 v16, 0x40000000    # 2.0f

    .line 1513
    :cond_83
    :goto_83
    move/from16 v17, v6

    .line 1514
    .local v17, "widthSize":I
    move/from16 v18, v7

    .line 1515
    .local v18, "heightSize":I
    iget v2, v10, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    move/from16 v19, v3

    .end local v3    # "measuredWidth":I
    .local v19, "measuredWidth":I
    const/4 v3, -0x2

    if-eq v2, v3, :cond_9b

    .line 1516
    const/high16 v15, 0x40000000    # 2.0f

    .line 1517
    iget v2, v10, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_98

    .line 1518
    iget v2, v10, Landroid/support/v4/view/ViewPager$LayoutParams;->width:I

    .end local v17    # "widthSize":I
    .local v2, "widthSize":I
    goto :goto_9d

    .line 1517
    .end local v2    # "widthSize":I
    .restart local v17    # "widthSize":I
    :cond_98
    move/from16 v2, v17

    goto :goto_9d

    .line 1515
    :cond_9b
    move/from16 v2, v17

    .line 1521
    .end local v17    # "widthSize":I
    .restart local v2    # "widthSize":I
    :goto_9d
    iget v3, v10, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_b4

    .line 1522
    const/high16 v16, 0x40000000    # 2.0f

    .line 1523
    iget v3, v10, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_af

    .line 1524
    iget v3, v10, Landroid/support/v4/view/ViewPager$LayoutParams;->height:I

    move v4, v3

    move/from16 v3, v16

    .end local v18    # "heightSize":I
    .local v3, "heightSize":I
    goto :goto_b8

    .line 1523
    .end local v3    # "heightSize":I
    .restart local v18    # "heightSize":I
    :cond_af
    move/from16 v3, v16

    move/from16 v4, v18

    goto :goto_b8

    .line 1521
    :cond_b4
    move/from16 v3, v16

    move/from16 v4, v18

    .line 1527
    .end local v16    # "heightMode":I
    .end local v18    # "heightSize":I
    .local v3, "heightMode":I
    .local v4, "heightSize":I
    :goto_b8
    move/from16 v16, v5

    .end local v5    # "maxGutterSize":I
    .local v16, "maxGutterSize":I
    invoke-static {v2, v15}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 1528
    .local v5, "widthSpec":I
    move/from16 v17, v2

    .end local v2    # "widthSize":I
    .restart local v17    # "widthSize":I
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1529
    .local v2, "heightSpec":I
    invoke-virtual {v12, v5, v2}, Landroid/view/View;->measure(II)V

    .line 1531
    if-eqz v1, :cond_d0

    .line 1532
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v7, v7, v18

    goto :goto_e2

    .line 1533
    :cond_d0
    if-eqz v11, :cond_e2

    .line 1534
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    sub-int v6, v6, v18

    goto :goto_e2

    .line 1499
    .end local v1    # "consumeVertical":Z
    .end local v2    # "heightSpec":I
    .end local v4    # "heightSize":I
    .end local v11    # "consumeHorizontal":Z
    .end local v13    # "hgrav":I
    .end local v14    # "vgrav":I
    .end local v15    # "widthMode":I
    .end local v16    # "maxGutterSize":I
    .end local v17    # "widthSize":I
    .end local v19    # "measuredWidth":I
    .local v3, "measuredWidth":I
    .local v5, "maxGutterSize":I
    :cond_d9
    move/from16 v19, v3

    move/from16 v16, v5

    .end local v3    # "measuredWidth":I
    .end local v5    # "maxGutterSize":I
    .restart local v16    # "maxGutterSize":I
    .restart local v19    # "measuredWidth":I
    goto :goto_e2

    .line 1497
    .end local v10    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v16    # "maxGutterSize":I
    .end local v19    # "measuredWidth":I
    .restart local v3    # "measuredWidth":I
    .restart local v5    # "maxGutterSize":I
    :cond_de
    move/from16 v19, v3

    move/from16 v16, v5

    .line 1495
    .end local v3    # "measuredWidth":I
    .end local v5    # "maxGutterSize":I
    .end local v12    # "child":Landroid/view/View;
    .restart local v16    # "maxGutterSize":I
    .restart local v19    # "measuredWidth":I
    :cond_e2
    :goto_e2
    add-int/lit8 v9, v9, 0x1

    move/from16 v2, p1

    move/from16 v4, p2

    move/from16 v5, v16

    move/from16 v3, v19

    const/4 v1, 0x0

    goto/16 :goto_3e

    .end local v16    # "maxGutterSize":I
    .end local v19    # "measuredWidth":I
    .restart local v3    # "measuredWidth":I
    .restart local v5    # "maxGutterSize":I
    :cond_ef
    move/from16 v19, v3

    move/from16 v16, v5

    .line 1540
    .end local v3    # "measuredWidth":I
    .end local v5    # "maxGutterSize":I
    .end local v9    # "i":I
    .restart local v16    # "maxGutterSize":I
    .restart local v19    # "measuredWidth":I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, v0, Landroid/support/v4/view/ViewPager;->mChildWidthMeasureSpec:I

    .line 1541
    invoke-static {v7, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, v0, Landroid/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

    .line 1544
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    .line 1545
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 1546
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    .line 1549
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    .line 1550
    .end local v8    # "size":I
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10f
    if-ge v3, v2, :cond_139

    .line 1551
    invoke-virtual {v0, v3}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1552
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v10, :cond_136

    .line 1556
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1557
    .local v5, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    if-eqz v5, :cond_127

    iget-boolean v8, v5, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v8, :cond_136

    .line 1558
    :cond_127
    int-to-float v8, v6

    iget v9, v5, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    mul-float v8, v8, v9

    float-to-int v8, v8

    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1560
    .local v8, "widthSpec":I
    iget v9, v0, Landroid/support/v4/view/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v4, v8, v9}, Landroid/view/View;->measure(II)V

    .line 1550
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v8    # "widthSpec":I
    :cond_136
    add-int/lit8 v3, v3, 0x1

    goto :goto_10f

    .line 1564
    .end local v3    # "i":I
    :cond_139
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .registers 16
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .line 1780
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mDecorChildCount:I

    if-lez v0, :cond_64

    .line 1781
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    .line 1782
    .local v0, "scrollX":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v1

    .line 1783
    .local v1, "paddingLeft":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v2

    .line 1784
    .local v2, "paddingRight":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v3

    .line 1785
    .local v3, "width":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v4

    .line 1786
    .local v4, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_19
    if-ge v5, v4, :cond_64

    .line 1787
    invoke-virtual {p0, v5}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1788
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1789
    .local v7, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v8, v7, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v8, :cond_2a

    goto :goto_61

    .line 1791
    :cond_2a
    iget v8, v7, Landroid/support/v4/view/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v8, v8, 0x7

    .line 1792
    .local v8, "hgrav":I
    const/4 v9, 0x0

    .line 1793
    .local v9, "childLeft":I
    packed-switch v8, :pswitch_data_9e

    .line 1795
    :pswitch_32
    move v10, v1

    .line 1796
    .end local v9    # "childLeft":I
    .local v10, "childLeft":I
    goto :goto_55

    .line 1806
    .end local v10    # "childLeft":I
    .restart local v9    # "childLeft":I
    :pswitch_34
    sub-int v10, v3, v2

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    sub-int/2addr v10, v11

    .line 1807
    .end local v9    # "childLeft":I
    .restart local v10    # "childLeft":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v2, v9

    goto :goto_55

    .line 1798
    .end local v10    # "childLeft":I
    .restart local v9    # "childLeft":I
    :pswitch_41
    move v10, v1

    .line 1799
    .end local v9    # "childLeft":I
    .restart local v10    # "childLeft":I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v1, v9

    .line 1800
    goto :goto_55

    .line 1802
    .end local v10    # "childLeft":I
    .restart local v9    # "childLeft":I
    :pswitch_48
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int v10, v3, v10

    div-int/lit8 v10, v10, 0x2

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1804
    .end local v9    # "childLeft":I
    .restart local v10    # "childLeft":I
    nop

    .line 1810
    :goto_55
    add-int/2addr v10, v0

    .line 1812
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v9, v10, v9

    .line 1813
    .local v9, "childOffset":I
    if-eqz v9, :cond_61

    .line 1814
    invoke-virtual {v6, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1786
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v8    # "hgrav":I
    .end local v9    # "childOffset":I
    .end local v10    # "childLeft":I
    :cond_61
    :goto_61
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 1819
    .end local v0    # "scrollX":I
    .end local v1    # "paddingLeft":I
    .end local v2    # "paddingRight":I
    .end local v3    # "width":I
    .end local v4    # "childCount":I
    .end local v5    # "i":I
    :cond_64
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v4/view/ViewPager;->dispatchOnPageScrolled(IFI)V

    .line 1821
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    if-eqz v0, :cond_99

    .line 1822
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v0

    .line 1823
    .restart local v0    # "scrollX":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    .line 1824
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_74
    if-ge v2, v1, :cond_99

    .line 1825
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1826
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1828
    .local v4, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    iget-boolean v5, v4, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v5, :cond_85

    goto :goto_96

    .line 1829
    :cond_85
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v5, v0

    int-to-float v5, v5

    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 1830
    .local v5, "transformPos":F
    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    invoke-interface {v6, v3, v5}, Landroid/support/v4/view/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    .line 1824
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    .end local v5    # "transformPos":F
    :goto_96
    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    .line 1834
    .end local v0    # "scrollX":I
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_99
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mCalledSuper:Z

    .line 1835
    return-void

    nop

    :pswitch_data_9e
    .packed-switch 0x1
        :pswitch_48
        :pswitch_32
        :pswitch_41
        :pswitch_32
        :pswitch_34
    .end packed-switch
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 12
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .line 2862
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v0

    .line 2863
    .local v0, "count":I
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_c

    .line 2864
    const/4 v1, 0x0

    .line 2865
    .local v1, "index":I
    const/4 v2, 0x1

    .line 2866
    .local v2, "increment":I
    move v3, v0

    .local v3, "end":I
    goto :goto_10

    .line 2868
    .end local v1    # "index":I
    .end local v2    # "increment":I
    .end local v3    # "end":I
    :cond_c
    add-int/lit8 v1, v0, -0x1

    .line 2869
    .restart local v1    # "index":I
    const/4 v2, -0x1

    .line 2870
    .restart local v2    # "increment":I
    const/4 v3, -0x1

    .line 2872
    .restart local v3    # "end":I
    :goto_10
    move v4, v1

    .local v4, "i":I
    :goto_11
    if-eq v4, v3, :cond_33

    .line 2873
    invoke-virtual {p0, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2874
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_31

    .line 2875
    invoke-virtual {p0, v5}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v6

    .line 2876
    .local v6, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v6, :cond_31

    iget v7, v6, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v8, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v7, v8, :cond_31

    .line 2877
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 2878
    const/4 v7, 0x1

    return v7

    .line 2872
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_31
    add-int/2addr v4, v2

    goto :goto_11

    .line 2883
    .end local v4    # "i":I
    :cond_33
    const/4 v4, 0x0

    return v4
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1381
    instance-of v0, p1, Landroid/support/v4/view/ViewPager$SavedState;

    if-nez v0, :cond_8

    .line 1382
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1383
    return-void

    .line 1386
    :cond_8
    move-object v0, p1

    check-cast v0, Landroid/support/v4/view/ViewPager$SavedState;

    .line 1387
    .local v0, "ss":Landroid/support/v4/view/ViewPager$SavedState;
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1389
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v1, :cond_25

    .line 1390
    iget-object v2, v0, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Landroid/support/v4/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1391
    iget v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_31

    .line 1393
    :cond_25
    iget v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    iput v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 1394
    iget-object v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1395
    iget-object v1, v0, Landroid/support/v4/view/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 1397
    :goto_31
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 1370
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1371
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Landroid/support/v4/view/ViewPager$SavedState;

    invoke-direct {v1, v0}, Landroid/support/v4/view/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1372
    .local v1, "ss":Landroid/support/v4/view/ViewPager$SavedState;
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    iput v2, v1, Landroid/support/v4/view/ViewPager$SavedState;->position:I

    .line 1373
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v2, :cond_17

    .line 1374
    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/view/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1376
    :cond_17
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 1568
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1571
    if-eq p1, p3, :cond_a

    .line 1572
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v0}, Landroid/support/v4/view/ViewPager;->recomputeScrollPosition(IIII)V

    .line 1574
    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 16
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 2079
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mFakeDragging:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 2083
    return v1

    .line 2086
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_14

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_14

    .line 2089
    return v2

    .line 2092
    :cond_14
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_151

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_151

    .line 2097
    :cond_20
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_2a

    .line 2098
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2100
    :cond_2a
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2103
    .local v0, "action":I
    const/4 v3, 0x0

    .line 2105
    .local v3, "needsInvalidate":Z
    and-int/lit16 v4, v0, 0xff

    packed-switch v4, :pswitch_data_152

    :pswitch_39
    goto/16 :goto_14b

    .line 2193
    :pswitch_3b
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2194
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v2

    iput v2, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    goto/16 :goto_14b

    .line 2186
    :pswitch_4c
    invoke-static {p1}, Landroid/support/v4/view/MotionEventCompat;->getActionIndex(Landroid/view/MotionEvent;)I

    move-result v2

    .line 2187
    .local v2, "index":I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 2188
    .local v4, "x":F
    iput v4, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2189
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v5

    iput v5, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2190
    goto/16 :goto_14b

    .line 2180
    .end local v2    # "index":I
    .end local v4    # "x":F
    :pswitch_5e
    iget-boolean v4, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v4, :cond_14b

    .line 2181
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-direct {p0, v4, v1, v2, v2}, Landroid/support/v4/view/ViewPager;->scrollToItem(IZIZ)V

    .line 2182
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->resetTouch()Z

    move-result v3

    goto/16 :goto_14b

    .line 2118
    :pswitch_6d
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-nez v2, :cond_cd

    .line 2119
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 2120
    .local v2, "pointerIndex":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_80

    .line 2122
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->resetTouch()Z

    move-result v3

    .line 2123
    goto/16 :goto_14b

    .line 2125
    :cond_80
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 2126
    .restart local v4    # "x":F
    iget v5, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 2127
    .local v5, "xDiff":F
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getY(Landroid/view/MotionEvent;I)F

    move-result v6

    .line 2128
    .local v6, "y":F
    iget v7, p0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    sub-float v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 2130
    .local v7, "yDiff":F
    iget v8, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v8, v8

    cmpl-float v8, v5, v8

    if-lez v8, :cond_cd

    cmpl-float v8, v5, v7

    if-lez v8, :cond_cd

    .line 2132
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    .line 2133
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2134
    iget v8, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    sub-float v9, v4, v8

    const/4 v10, 0x0

    cmpl-float v9, v9, v10

    if-lez v9, :cond_b6

    iget v9, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v9, v9

    add-float/2addr v8, v9

    goto :goto_ba

    :cond_b6
    iget v9, p0, Landroid/support/v4/view/ViewPager;->mTouchSlop:I

    int-to-float v9, v9

    sub-float/2addr v8, v9

    :goto_ba
    iput v8, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2136
    iput v6, p0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 2137
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 2138
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 2141
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    .line 2142
    .local v8, "parent":Landroid/view/ViewParent;
    if-eqz v8, :cond_cd

    .line 2143
    invoke-interface {v8, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2148
    .end local v2    # "pointerIndex":I
    .end local v4    # "x":F
    .end local v5    # "xDiff":F
    .end local v6    # "y":F
    .end local v7    # "yDiff":F
    .end local v8    # "parent":Landroid/view/ViewParent;
    :cond_cd
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_14b

    .line 2150
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v2

    .line 2152
    .local v2, "activePointerIndex":I
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v4

    .line 2153
    .restart local v4    # "x":F
    invoke-direct {p0, v4}, Landroid/support/v4/view/ViewPager;->performDrag(F)Z

    move-result v5

    or-int/2addr v3, v5

    .line 2154
    .end local v2    # "activePointerIndex":I
    .end local v4    # "x":F
    goto :goto_14b

    .line 2157
    :pswitch_e1
    iget-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mIsBeingDragged:Z

    if-eqz v2, :cond_14b

    .line 2158
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2159
    .local v2, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v4, 0x3e8

    iget v5, p0, Landroid/support/v4/view/ViewPager;->mMaximumVelocity:I

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2160
    iget v4, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-static {v2, v4}, Landroid/support/v4/view/VelocityTrackerCompat;->getXVelocity(Landroid/view/VelocityTracker;I)F

    move-result v4

    float-to-int v4, v4

    .line 2162
    .local v4, "initialVelocity":I
    iput-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 2163
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v5

    .line 2164
    .local v5, "width":I
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v6

    .line 2165
    .local v6, "scrollX":I
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->infoForCurrentScrollPosition()Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v7

    .line 2166
    .local v7, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v8, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    .line 2167
    .local v8, "currentPage":I
    int-to-float v9, v6

    int-to-float v10, v5

    div-float/2addr v9, v10

    iget v10, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v9, v10

    iget v10, v7, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v9, v10

    .line 2168
    .local v9, "pageOffset":F
    iget v10, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    invoke-static {p1, v10}, Landroid/support/v4/view/MotionEventCompat;->findPointerIndex(Landroid/view/MotionEvent;I)I

    move-result v10

    .line 2170
    .local v10, "activePointerIndex":I
    invoke-static {p1, v10}, Landroid/support/v4/view/MotionEventCompat;->getX(Landroid/view/MotionEvent;I)F

    move-result v11

    .line 2171
    .local v11, "x":F
    iget v12, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    sub-float v12, v11, v12

    float-to-int v12, v12

    .line 2172
    .local v12, "totalDelta":I
    invoke-direct {p0, v8, v9, v4, v12}, Landroid/support/v4/view/ViewPager;->determineTargetPage(IFII)I

    move-result v13

    .line 2174
    .local v13, "nextPage":I
    invoke-virtual {p0, v13, v1, v1, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 2176
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->resetTouch()Z

    move-result v3

    .line 2177
    .end local v2    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v4    # "initialVelocity":I
    .end local v5    # "width":I
    .end local v6    # "scrollX":I
    .end local v7    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v8    # "currentPage":I
    .end local v9    # "pageOffset":F
    .end local v10    # "activePointerIndex":I
    .end local v11    # "x":F
    .end local v12    # "totalDelta":I
    .end local v13    # "nextPage":I
    goto :goto_14b

    .line 2107
    :pswitch_12a
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2108
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 2109
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 2112
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionX:F

    iput v4, p0, Landroid/support/v4/view/ViewPager;->mLastMotionX:F

    .line 2113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Landroid/support/v4/view/ViewPager;->mInitialMotionY:F

    iput v4, p0, Landroid/support/v4/view/ViewPager;->mLastMotionY:F

    .line 2114
    invoke-static {p1, v2}, Landroid/support/v4/view/MotionEventCompat;->getPointerId(Landroid/view/MotionEvent;I)I

    move-result v2

    iput v2, p0, Landroid/support/v4/view/ViewPager;->mActivePointerId:I

    .line 2115
    nop

    .line 2198
    :cond_14b
    :goto_14b
    if-eqz v3, :cond_150

    .line 2199
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2201
    :cond_150
    return v1

    .line 2094
    .end local v0    # "action":I
    .end local v3    # "needsInvalidate":Z
    :cond_151
    :goto_151
    return v2

    :pswitch_data_152
    .packed-switch 0x0
        :pswitch_12a
        :pswitch_e1
        :pswitch_6d
        :pswitch_5e
        :pswitch_39
        :pswitch_4c
        :pswitch_3b
    .end packed-switch
.end method

.method pageLeft()Z
    .registers 3

    .line 2775
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-lez v0, :cond_a

    .line 2776
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 2777
    return v1

    .line 2779
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method pageRight()Z
    .registers 4

    .line 2783
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_15

    iget v1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_15

    .line 2784
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/view/ViewPager;->setCurrentItem(IZ)V

    .line 2785
    return v2

    .line 2787
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method populate()V
    .registers 2

    .line 1025
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->populate(I)V

    .line 1026
    return-void
.end method

.method populate(I)V
    .registers 20
    .param p1, "newCurrentItem"    # I

    .line 1029
    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v0, 0x0

    .line 1030
    .local v0, "oldCurInfo":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v3, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-eq v3, v2, :cond_11

    .line 1031
    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPager;->infoForPosition(I)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v0

    .line 1032
    iput v2, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    move-object v3, v0

    goto :goto_12

    .line 1030
    :cond_11
    move-object v3, v0

    .line 1035
    .end local v0    # "oldCurInfo":Landroid/support/v4/view/ViewPager$ItemInfo;
    .local v3, "oldCurInfo":Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_12
    iget-object v0, v1, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    if-nez v0, :cond_1a

    .line 1036
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->sortChildDrawingOrder()V

    .line 1037
    return-void

    .line 1044
    :cond_1a
    iget-boolean v0, v1, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    if-eqz v0, :cond_22

    .line 1046
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->sortChildDrawingOrder()V

    .line 1047
    return-void

    .line 1053
    :cond_22
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_29

    .line 1054
    return-void

    .line 1057
    :cond_29
    iget-object v0, v1, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 1059
    iget v4, v1, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 1060
    .local v4, "pageLimit":I
    const/4 v0, 0x0

    iget v5, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1061
    .local v5, "startPos":I
    iget-object v0, v1, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v6

    .line 1062
    .local v6, "N":I
    add-int/lit8 v0, v6, -0x1

    iget v7, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/2addr v7, v4

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1064
    .local v7, "endPos":I
    iget v0, v1, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    if-ne v6, v0, :cond_256

    .line 1080
    const/4 v0, -0x1

    .line 1081
    .local v0, "curIndex":I
    const/4 v8, 0x0

    .line 1082
    .local v8, "curItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    const/4 v0, 0x0

    :goto_4e
    iget-object v9, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_6f

    .line 1083
    iget-object v9, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 1084
    .local v9, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v10, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v11, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-lt v10, v11, :cond_6c

    .line 1085
    iget v10, v9, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v11, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v10, v11, :cond_6f

    move-object v8, v9

    goto :goto_6f

    .line 1082
    .end local v9    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 1090
    :cond_6f
    :goto_6f
    if-nez v8, :cond_79

    if-lez v6, :cond_79

    .line 1091
    iget v9, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {v1, v9, v0}, Landroid/support/v4/view/ViewPager;->addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v8

    .line 1097
    :cond_79
    if-eqz v8, :cond_1ce

    .line 1098
    const/4 v11, 0x0

    .line 1099
    .local v11, "extraWidthLeft":F
    add-int/lit8 v12, v0, -0x1

    .line 1100
    .local v12, "itemIndex":I
    if-ltz v12, :cond_89

    iget-object v13, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_8a

    :cond_89
    const/4 v13, 0x0

    .line 1101
    .local v13, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_8a
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v14

    .line 1102
    .local v14, "clientWidth":I
    const/high16 v15, 0x40000000    # 2.0f

    if-gtz v14, :cond_94

    const/4 v10, 0x0

    goto :goto_a0

    :cond_94
    iget v10, v8, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    sub-float v10, v15, v10

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingLeft()I

    move-result v9

    int-to-float v9, v9

    int-to-float v15, v14

    div-float/2addr v9, v15

    add-float/2addr v10, v9

    :goto_a0
    move v9, v10

    .line 1104
    .local v9, "leftWidthNeeded":F
    iget v10, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v10, v10, -0x1

    .local v10, "pos":I
    :goto_a5
    if-ltz v10, :cond_10c

    .line 1105
    cmpl-float v15, v11, v9

    if-ltz v15, :cond_d6

    if-ge v10, v5, :cond_d6

    .line 1106
    if-nez v13, :cond_b0

    .line 1107
    goto :goto_10c

    .line 1109
    :cond_b0
    iget v15, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v10, v15, :cond_107

    iget-boolean v15, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    if-nez v15, :cond_107

    .line 1110
    iget-object v15, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1111
    iget-object v15, v1, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v2, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v15, v1, v10, v2}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1116
    add-int/lit8 v12, v12, -0x1

    .line 1117
    add-int/lit8 v0, v0, -0x1

    .line 1118
    if-ltz v12, :cond_d3

    iget-object v2, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_d4

    :cond_d3
    const/4 v2, 0x0

    :goto_d4
    move-object v13, v2

    .end local v13    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .local v2, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    goto :goto_107

    .line 1120
    .end local v2    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v13    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_d6
    if-eqz v13, :cond_ef

    iget v2, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v10, v2, :cond_ef

    .line 1121
    iget v2, v13, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v11, v2

    .line 1122
    add-int/lit8 v12, v12, -0x1

    .line 1123
    if-ltz v12, :cond_ec

    iget-object v2, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_ed

    :cond_ec
    const/4 v2, 0x0

    :goto_ed
    move-object v13, v2

    .end local v13    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v2    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    goto :goto_107

    .line 1125
    .end local v2    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v13    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_ef
    add-int/lit8 v2, v12, 0x1

    invoke-virtual {v1, v10, v2}, Landroid/support/v4/view/ViewPager;->addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v2

    .line 1126
    .end local v13    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v2    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget v13, v2, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v11, v13

    .line 1127
    add-int/lit8 v0, v0, 0x1

    .line 1128
    if-ltz v12, :cond_105

    iget-object v13, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_106

    :cond_105
    const/4 v13, 0x0

    :goto_106
    move-object v2, v13

    .line 1104
    .end local v2    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v13    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_107
    :goto_107
    add-int/lit8 v10, v10, -0x1

    move/from16 v2, p1

    goto :goto_a5

    .line 1132
    .end local v10    # "pos":I
    :cond_10c
    :goto_10c
    iget v2, v8, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    .line 1133
    .local v2, "extraWidthRight":F
    add-int/lit8 v10, v0, 0x1

    .line 1134
    .end local v12    # "itemIndex":I
    .local v10, "itemIndex":I
    const/high16 v12, 0x40000000    # 2.0f

    cmpg-float v15, v2, v12

    if-gez v15, :cond_1c6

    .line 1135
    iget-object v12, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v10, v12, :cond_127

    iget-object v12, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_128

    :cond_127
    const/4 v12, 0x0

    .line 1136
    .end local v13    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .local v12, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_128
    if-gtz v14, :cond_12c

    const/4 v13, 0x0

    goto :goto_136

    :cond_12c
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getPaddingRight()I

    move-result v13

    int-to-float v13, v13

    int-to-float v15, v14

    div-float/2addr v13, v15

    const/high16 v15, 0x40000000    # 2.0f

    add-float/2addr v13, v15

    .line 1138
    .local v13, "rightWidthNeeded":F
    :goto_136
    iget v15, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int/lit8 v15, v15, 0x1

    .local v15, "pos":I
    :goto_13a
    if-ge v15, v6, :cond_1c0

    .line 1139
    cmpl-float v16, v2, v13

    if-ltz v16, :cond_179

    if-le v15, v7, :cond_179

    .line 1140
    if-nez v12, :cond_14a

    .line 1141
    move/from16 v16, v4

    move/from16 v17, v5

    goto/16 :goto_1c4

    .line 1143
    :cond_14a
    move/from16 v16, v4

    .end local v4    # "pageLimit":I
    .local v16, "pageLimit":I
    iget v4, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v15, v4, :cond_176

    iget-boolean v4, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    if-nez v4, :cond_176

    .line 1144
    iget-object v4, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1145
    iget-object v4, v1, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    move/from16 v17, v5

    .end local v5    # "startPos":I
    .local v17, "startPos":I
    iget-object v5, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, v1, v15, v5}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1150
    iget-object v4, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_173

    iget-object v4, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_174

    :cond_173
    const/4 v4, 0x0

    :goto_174
    move-object v12, v4

    goto :goto_1b8

    .line 1143
    .end local v17    # "startPos":I
    .restart local v5    # "startPos":I
    :cond_176
    move/from16 v17, v5

    .end local v5    # "startPos":I
    .restart local v17    # "startPos":I
    goto :goto_1b8

    .line 1139
    .end local v16    # "pageLimit":I
    .end local v17    # "startPos":I
    .restart local v4    # "pageLimit":I
    .restart local v5    # "startPos":I
    :cond_179
    move/from16 v16, v4

    move/from16 v17, v5

    .line 1152
    .end local v4    # "pageLimit":I
    .end local v5    # "startPos":I
    .restart local v16    # "pageLimit":I
    .restart local v17    # "startPos":I
    if-eqz v12, :cond_19c

    iget v4, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    if-ne v15, v4, :cond_19c

    .line 1153
    iget v4, v12, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v2, v4

    .line 1154
    add-int/lit8 v10, v10, 0x1

    .line 1155
    iget-object v4, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_199

    iget-object v4, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_19a

    :cond_199
    const/4 v4, 0x0

    :goto_19a
    move-object v12, v4

    goto :goto_1b8

    .line 1157
    :cond_19c
    invoke-virtual {v1, v15, v10}, Landroid/support/v4/view/ViewPager;->addNewItem(II)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v4

    .line 1158
    .end local v12    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .local v4, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    add-int/lit8 v10, v10, 0x1

    .line 1159
    iget v5, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v2, v5

    .line 1160
    iget-object v5, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v10, v5, :cond_1b6

    iget-object v5, v1, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/view/ViewPager$ItemInfo;

    goto :goto_1b7

    :cond_1b6
    const/4 v5, 0x0

    :goto_1b7
    move-object v12, v5

    .line 1138
    .end local v4    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .restart local v12    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :goto_1b8
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v16

    move/from16 v5, v17

    goto/16 :goto_13a

    .end local v16    # "pageLimit":I
    .end local v17    # "startPos":I
    .local v4, "pageLimit":I
    .restart local v5    # "startPos":I
    :cond_1c0
    move/from16 v16, v4

    move/from16 v17, v5

    .line 1165
    .end local v4    # "pageLimit":I
    .end local v5    # "startPos":I
    .end local v13    # "rightWidthNeeded":F
    .end local v15    # "pos":I
    .restart local v16    # "pageLimit":I
    .restart local v17    # "startPos":I
    :goto_1c4
    move-object v13, v12

    goto :goto_1ca

    .line 1134
    .end local v12    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v16    # "pageLimit":I
    .end local v17    # "startPos":I
    .restart local v4    # "pageLimit":I
    .restart local v5    # "startPos":I
    .local v13, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_1c6
    move/from16 v16, v4

    move/from16 v17, v5

    .line 1165
    .end local v4    # "pageLimit":I
    .end local v5    # "startPos":I
    .restart local v16    # "pageLimit":I
    .restart local v17    # "startPos":I
    :goto_1ca
    invoke-direct {v1, v8, v0, v3}, Landroid/support/v4/view/ViewPager;->calculatePageOffsets(Landroid/support/v4/view/ViewPager$ItemInfo;ILandroid/support/v4/view/ViewPager$ItemInfo;)V

    goto :goto_1d2

    .line 1097
    .end local v2    # "extraWidthRight":F
    .end local v9    # "leftWidthNeeded":F
    .end local v10    # "itemIndex":I
    .end local v11    # "extraWidthLeft":F
    .end local v13    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v14    # "clientWidth":I
    .end local v16    # "pageLimit":I
    .end local v17    # "startPos":I
    .restart local v4    # "pageLimit":I
    .restart local v5    # "startPos":I
    :cond_1ce
    move/from16 v16, v4

    move/from16 v17, v5

    .line 1175
    .end local v4    # "pageLimit":I
    .end local v5    # "startPos":I
    .restart local v16    # "pageLimit":I
    .restart local v17    # "startPos":I
    :goto_1d2
    iget-object v2, v1, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v4, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-eqz v8, :cond_1db

    iget-object v5, v8, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    goto :goto_1dc

    :cond_1db
    const/4 v5, 0x0

    :goto_1dc
    invoke-virtual {v2, v1, v4, v5}, Landroid/support/v4/view/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1177
    iget-object v2, v1, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2, v1}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1181
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v2

    .line 1182
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e9
    if-ge v4, v2, :cond_215

    .line 1183
    invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1184
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/support/v4/view/ViewPager$LayoutParams;

    .line 1185
    .local v9, "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    iput v4, v9, Landroid/support/v4/view/ViewPager$LayoutParams;->childIndex:I

    .line 1186
    iget-boolean v10, v9, Landroid/support/v4/view/ViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_211

    iget v10, v9, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_212

    .line 1188
    invoke-virtual {v1, v5}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v10

    .line 1189
    .local v10, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v10, :cond_212

    .line 1190
    iget v12, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->widthFactor:F

    iput v12, v9, Landroid/support/v4/view/ViewPager$LayoutParams;->widthFactor:F

    .line 1191
    iget v12, v10, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iput v12, v9, Landroid/support/v4/view/ViewPager$LayoutParams;->position:I

    goto :goto_212

    .line 1186
    .end local v10    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    :cond_211
    const/4 v11, 0x0

    .line 1182
    .end local v5    # "child":Landroid/view/View;
    .end local v9    # "lp":Landroid/support/v4/view/ViewPager$LayoutParams;
    :cond_212
    :goto_212
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e9

    .line 1195
    .end local v4    # "i":I
    :cond_215
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->sortChildDrawingOrder()V

    .line 1197
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_255

    .line 1198
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v4

    .line 1199
    .local v4, "currentFocused":Landroid/view/View;
    if-eqz v4, :cond_229

    invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPager;->infoForAnyChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v10

    goto :goto_22a

    :cond_229
    const/4 v10, 0x0

    :goto_22a
    move-object v5, v10

    .line 1200
    .local v5, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    if-eqz v5, :cond_233

    iget v9, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v10, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-eq v9, v10, :cond_255

    .line 1201
    :cond_233
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_234
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_255

    .line 1202
    invoke-virtual {v1, v9}, Landroid/support/v4/view/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1203
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v1, v10}, Landroid/support/v4/view/ViewPager;->infoForChild(Landroid/view/View;)Landroid/support/v4/view/ViewPager$ItemInfo;

    move-result-object v5

    .line 1204
    if-eqz v5, :cond_252

    iget v11, v5, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget v12, v1, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v11, v12, :cond_252

    .line 1205
    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/view/View;->requestFocus(I)Z

    move-result v11

    if-eqz v11, :cond_252

    .line 1206
    goto :goto_255

    .line 1201
    .end local v10    # "child":Landroid/view/View;
    :cond_252
    add-int/lit8 v9, v9, 0x1

    goto :goto_234

    .line 1212
    .end local v4    # "currentFocused":Landroid/view/View;
    .end local v5    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v9    # "i":I
    :cond_255
    :goto_255
    return-void

    .line 1067
    .end local v0    # "curIndex":I
    .end local v2    # "childCount":I
    .end local v8    # "curItem":Landroid/support/v4/view/ViewPager$ItemInfo;
    .end local v16    # "pageLimit":I
    .end local v17    # "startPos":I
    .local v4, "pageLimit":I
    .local v5, "startPos":I
    :cond_256
    move/from16 v16, v4

    move/from16 v17, v5

    .end local v4    # "pageLimit":I
    .end local v5    # "startPos":I
    .restart local v16    # "pageLimit":I
    .restart local v17    # "startPos":I
    :try_start_25a
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_266
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_25a .. :try_end_266} :catch_267

    .line 1070
    .local v0, "resName":Ljava/lang/String;
    goto :goto_271

    .line 1068
    .end local v0    # "resName":Ljava/lang/String;
    :catch_267
    move-exception v0

    .line 1069
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1071
    .local v0, "resName":Ljava/lang/String;
    :goto_271
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Pager id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Pager class: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Problematic adapter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto :goto_2bf

    :goto_2be
    throw v2

    :goto_2bf
    goto :goto_2be
.end method

.method public removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 675
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 676
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 678
    :cond_7
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 1427
    iget-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mInLayout:Z

    if-eqz v0, :cond_8

    .line 1428
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_b

    .line 1430
    :cond_8
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1432
    :goto_b
    return-void
.end method

.method public setAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .registers 10
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;

    .line 469
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3d

    .line 470
    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 471
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 472
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2b

    .line 473
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/view/ViewPager$ItemInfo;

    .line 474
    .local v3, "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v5, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->position:I

    iget-object v6, v3, Landroid/support/v4/view/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v6}, Landroid/support/v4/view/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 472
    .end local v3    # "ii":Landroid/support/v4/view/ViewPager$ItemInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 476
    .end local v0    # "i":I
    :cond_2b
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 477
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 478
    invoke-direct {p0}, Landroid/support/v4/view/ViewPager;->removeNonDecorViews()V

    .line 479
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    .line 480
    invoke-virtual {p0, v2, v2}, Landroid/support/v4/view/ViewPager;->scrollTo(II)V

    .line 483
    :cond_3d
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 484
    .local v0, "oldAdapter":Landroid/support/v4/view/PagerAdapter;
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 485
    iput v2, p0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    .line 487
    if-eqz p1, :cond_89

    .line 488
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    if-nez v3, :cond_50

    .line 489
    new-instance v3, Landroid/support/v4/view/ViewPager$PagerObserver;

    invoke-direct {v3, p0, v1}, Landroid/support/v4/view/ViewPager$PagerObserver;-><init>(Landroid/support/v4/view/ViewPager;Landroid/support/v4/view/ViewPager$1;)V

    iput-object v3, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    .line 491
    :cond_50
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mObserver:Landroid/support/v4/view/ViewPager$PagerObserver;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 492
    iput-boolean v2, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 493
    iget-boolean v3, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 494
    .local v3, "wasFirstLayout":Z
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    .line 495
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v5}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v5

    iput v5, p0, Landroid/support/v4/view/ViewPager;->mExpectedAdapterCount:I

    .line 496
    iget v5, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    if-ltz v5, :cond_80

    .line 497
    iget-object v5, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v6, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v7, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/view/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 498
    iget v5, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v5, v2, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 499
    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v4/view/ViewPager;->mRestoredCurItem:I

    .line 500
    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 501
    iput-object v1, p0, Landroid/support/v4/view/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_89

    .line 502
    :cond_80
    if-nez v3, :cond_86

    .line 503
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    goto :goto_89

    .line 505
    :cond_86
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 509
    .end local v3    # "wasFirstLayout":Z
    :cond_89
    :goto_89
    iget-object v1, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    if-eqz v1, :cond_92

    if-eq v0, p1, :cond_92

    .line 510
    invoke-interface {v1, v0, p1}, Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 512
    :cond_92
    return-void
.end method

.method setChildrenDrawingOrderEnabledCompat(Z)V
    .registers 9
    .param p1, "enable"    # Z

    .line 717
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x7

    if-lt v0, v1, :cond_38

    .line 718
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const-string v2, "ViewPager"

    const/4 v3, 0x1

    if-nez v0, :cond_24

    .line 720
    :try_start_d
    const-class v0, Landroid/view/ViewGroup;

    const-string v4, "setChildrenDrawingOrderEnabled"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/view/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;
    :try_end_1d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_1d} :catch_1e

    .line 724
    goto :goto_24

    .line 722
    :catch_1e
    move-exception v0

    .line 723
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    const-string v4, "Can\'t find setChildrenDrawingOrderEnabled"

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 727
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :cond_24
    :goto_24
    :try_start_24
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mSetChildrenDrawingOrderEnabled:Ljava/lang/reflect/Method;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_31} :catch_32

    .line 730
    goto :goto_38

    .line 728
    :catch_32
    move-exception v0

    .line 729
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "Error changing children drawing order"

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 732
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_38
    :goto_38
    return-void
.end method

.method public setCurrentItem(I)V
    .registers 4
    .param p1, "item"    # I

    .line 550
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 551
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 552
    return-void
.end method

.method public setCurrentItem(IZ)V
    .registers 4
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .line 561
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/view/ViewPager;->mPopulatePending:Z

    .line 562
    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 563
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .registers 5
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .line 570
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 571
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .registers 10
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .line 574
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_70

    invoke-virtual {v0}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_c

    goto :goto_70

    .line 578
    :cond_c
    if-nez p3, :cond_1e

    iget v0, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-ne v0, p1, :cond_1e

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 579
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 580
    return-void

    .line 583
    :cond_1e
    const/4 v0, 0x1

    if-gez p1, :cond_23

    .line 584
    const/4 p1, 0x0

    goto :goto_33

    .line 585
    :cond_23
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    if-lt p1, v2, :cond_33

    .line 586
    iget-object v2, p0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 p1, v2, -0x1

    .line 588
    :cond_33
    :goto_33
    iget v2, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 589
    .local v2, "pageLimit":I
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    add-int v4, v3, v2

    if-gt p1, v4, :cond_3e

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_54

    .line 593
    :cond_3e
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3f
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_54

    .line 594
    iget-object v4, p0, Landroid/support/v4/view/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/view/ViewPager$ItemInfo;

    iput-boolean v0, v4, Landroid/support/v4/view/ViewPager$ItemInfo;->scrolling:Z

    .line 593
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 597
    .end local v3    # "i":I
    :cond_54
    iget v3, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    if-eq v3, p1, :cond_59

    const/4 v1, 0x1

    :cond_59
    move v0, v1

    .line 599
    .local v0, "dispatchSelected":Z
    iget-boolean v1, p0, Landroid/support/v4/view/ViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_69

    .line 602
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    .line 603
    if-eqz v0, :cond_65

    .line 604
    invoke-direct {p0, p1}, Landroid/support/v4/view/ViewPager;->dispatchOnPageSelected(I)V

    .line 606
    :cond_65
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    goto :goto_6f

    .line 608
    :cond_69
    invoke-virtual {p0, p1}, Landroid/support/v4/view/ViewPager;->populate(I)V

    .line 609
    invoke-direct {p0, p1, p2, p4, v0}, Landroid/support/v4/view/ViewPager;->scrollToItem(IZIZ)V

    .line 611
    :goto_6f
    return-void

    .line 575
    .end local v0    # "dispatchSelected":Z
    .end local v2    # "pageLimit":I
    :cond_70
    :goto_70
    invoke-direct {p0, v1}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 576
    return-void
.end method

.method setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .registers 3
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 748
    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 749
    .local v0, "oldListener":Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mInternalPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 750
    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .registers 5
    .param p1, "limit"    # I

    .line 782
    const/4 v0, 0x1

    if-ge p1, v0, :cond_26

    .line 783
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Requested offscreen page limit "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " too small; defaulting to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ViewPager"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const/4 p1, 0x1

    .line 787
    :cond_26
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_2f

    .line 788
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mOffscreenPageLimit:I

    .line 789
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 791
    :cond_2f
    return-void
.end method

.method setOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    .line 535
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mAdapterChangeListener:Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;

    .line 536
    return-void
.end method

.method public setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/support/v4/view/ViewPager$OnPageChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 648
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mOnPageChangeListener:Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 649
    return-void
.end method

.method public setPageMargin(I)V
    .registers 4
    .param p1, "marginPixels"    # I

    .line 802
    iget v0, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    .line 803
    .local v0, "oldMargin":I
    iput p1, p0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    .line 805
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v1

    .line 806
    .local v1, "width":I
    invoke-direct {p0, v1, v1, p1, v0}, Landroid/support/v4/view/ViewPager;->recomputeScrollPosition(IIII)V

    .line 808
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 809
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 838
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 839
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 826
    iput-object p1, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 827
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->refreshDrawableState()V

    .line 828
    :cond_7
    if-nez p1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0}, Landroid/support/v4/view/ViewPager;->setWillNotDraw(Z)V

    .line 829
    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->invalidate()V

    .line 830
    return-void
.end method

.method public setPageTransformer(ZLandroid/support/v4/view/ViewPager$PageTransformer;)V
    .registers 7
    .param p1, "reverseDrawingOrder"    # Z
    .param p2, "transformer"    # Landroid/support/v4/view/ViewPager$PageTransformer;

    .line 702
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_2d

    .line 703
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    .line 704
    .local v2, "hasTransformer":Z
    :goto_d
    iget-object v3, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    if-eqz v3, :cond_13

    const/4 v3, 0x1

    goto :goto_14

    :cond_13
    const/4 v3, 0x0

    :goto_14
    if-eq v2, v3, :cond_18

    const/4 v3, 0x1

    goto :goto_19

    :cond_18
    const/4 v3, 0x0

    .line 705
    .local v3, "needsPopulate":Z
    :goto_19
    iput-object p2, p0, Landroid/support/v4/view/ViewPager;->mPageTransformer:Landroid/support/v4/view/ViewPager$PageTransformer;

    .line 706
    invoke-virtual {p0, v2}, Landroid/support/v4/view/ViewPager;->setChildrenDrawingOrderEnabledCompat(Z)V

    .line 707
    if-eqz v2, :cond_26

    .line 708
    if-eqz p1, :cond_23

    const/4 v0, 0x2

    :cond_23
    iput v0, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    goto :goto_28

    .line 710
    :cond_26
    iput v1, p0, Landroid/support/v4/view/ViewPager;->mDrawingOrder:I

    .line 712
    :goto_28
    if-eqz v3, :cond_2d

    invoke-virtual {p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 714
    .end local v2    # "hasTransformer":Z
    .end local v3    # "needsPopulate":Z
    :cond_2d
    return-void
.end method

.method smoothScrollTo(II)V
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 872
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/view/ViewPager;->smoothScrollTo(III)V

    .line 873
    return-void
.end method

.method smoothScrollTo(III)V
    .registers 22
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .line 883
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 885
    invoke-direct {v0, v2}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 886
    return-void

    .line 890
    :cond_d
    iget-object v1, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x1

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 891
    .local v1, "wasScrolling":Z
    :goto_1b
    if-eqz v1, :cond_37

    .line 896
    iget-boolean v4, v0, Landroid/support/v4/view/ViewPager;->mIsScrollStarted:Z

    if-eqz v4, :cond_28

    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    goto :goto_2e

    :cond_28
    iget-object v4, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getStartX()I

    move-result v4

    .line 898
    .local v4, "sx":I
    :goto_2e
    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 899
    invoke-direct {v0, v2}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_3b

    .line 901
    .end local v4    # "sx":I
    :cond_37
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollX()I

    move-result v4

    .line 903
    .restart local v4    # "sx":I
    :goto_3b
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getScrollY()I

    move-result v11

    .line 904
    .local v11, "sy":I
    sub-int v12, p1, v4

    .line 905
    .local v12, "dx":I
    sub-int v13, p2, v11

    .line 906
    .local v13, "dy":I
    if-nez v12, :cond_51

    if-nez v13, :cond_51

    .line 907
    invoke-direct {v0, v2}, Landroid/support/v4/view/ViewPager;->completeScroll(Z)V

    .line 908
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->populate()V

    .line 909
    invoke-direct {v0, v2}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 910
    return-void

    .line 913
    :cond_51
    invoke-direct {v0, v3}, Landroid/support/v4/view/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 914
    const/4 v3, 0x2

    invoke-direct {v0, v3}, Landroid/support/v4/view/ViewPager;->setScrollState(I)V

    .line 916
    invoke-direct/range {p0 .. p0}, Landroid/support/v4/view/ViewPager;->getClientWidth()I

    move-result v3

    .line 917
    .local v3, "width":I
    div-int/lit8 v14, v3, 0x2

    .line 918
    .local v14, "halfWidth":I
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v5, v5, v6

    int-to-float v7, v3

    div-float/2addr v5, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 919
    .local v15, "distanceRatio":F
    int-to-float v5, v14

    int-to-float v7, v14

    invoke-virtual {v0, v15}, Landroid/support/v4/view/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float v7, v7, v8

    add-float v16, v5, v7

    .line 923
    .local v16, "distance":F
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 924
    .end local p3    # "velocity":I
    .local v10, "velocity":I
    if-lez v10, :cond_8f

    .line 925
    const/high16 v5, 0x447a0000    # 1000.0f

    int-to-float v6, v10

    div-float v6, v16, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float v6, v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    .local v5, "duration":I
    goto :goto_ab

    .line 927
    .end local v5    # "duration":I
    :cond_8f
    int-to-float v5, v3

    iget-object v7, v0, Landroid/support/v4/view/ViewPager;->mAdapter:Landroid/support/v4/view/PagerAdapter;

    iget v8, v0, Landroid/support/v4/view/ViewPager;->mCurItem:I

    invoke-virtual {v7, v8}, Landroid/support/v4/view/PagerAdapter;->getPageWidth(I)F

    move-result v7

    mul-float v5, v5, v7

    .line 928
    .local v5, "pageWidth":F
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, Landroid/support/v4/view/ViewPager;->mPageMargin:I

    int-to-float v8, v8

    add-float/2addr v8, v5

    div-float/2addr v7, v8

    .line 929
    .local v7, "pageDelta":F
    add-float/2addr v6, v7

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float v6, v6, v8

    float-to-int v6, v6

    move v5, v6

    .line 931
    .end local v7    # "pageDelta":F
    .local v5, "duration":I
    :goto_ab
    const/16 v6, 0x258

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 935
    .end local v5    # "duration":I
    .local v17, "duration":I
    iput-boolean v2, v0, Landroid/support/v4/view/ViewPager;->mIsScrollStarted:Z

    .line 936
    iget-object v5, v0, Landroid/support/v4/view/ViewPager;->mScroller:Landroid/widget/Scroller;

    move v6, v4

    move v7, v11

    move v8, v12

    move v9, v13

    move v2, v10

    .end local v10    # "velocity":I
    .local v2, "velocity":I
    move/from16 v10, v17

    invoke-virtual/range {v5 .. v10}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 937
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 938
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 843
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Landroid/support/v4/view/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

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
