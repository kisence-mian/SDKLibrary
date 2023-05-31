.class public Ltds/androidx/viewpager/ViewPager;
.super Landroid/view/ViewGroup;
.source "ViewPager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/viewpager/ViewPager$ViewPositionComparator;,
        Ltds/androidx/viewpager/ViewPager$LayoutParams;,
        Ltds/androidx/viewpager/ViewPager$PagerObserver;,
        Ltds/androidx/viewpager/ViewPager$SavedState;,
        Ltds/androidx/viewpager/ViewPager$DecorView;,
        Ltds/androidx/viewpager/ViewPager$OnAdapterChangeListener;,
        Ltds/androidx/viewpager/ViewPager$PageTransformer;,
        Ltds/androidx/viewpager/ViewPager$SimpleOnPageChangeListener;,
        Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;,
        Ltds/androidx/viewpager/ViewPager$ItemInfo;
    }
.end annotation


# static fields
.field private static final CLOSE_ENOUGH:I = 0x2

.field private static final COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ltds/androidx/viewpager/ViewPager$ItemInfo;",
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

.field static final LAYOUT_ATTRS:[I

.field private static final MAX_SETTLE_DURATION:I = 0x258

.field private static final MIN_DISTANCE_FOR_FLING:I = 0x19

.field private static final MIN_FLING_VELOCITY:I = 0x190

.field public static final SCROLL_STATE_DRAGGING:I = 0x1

.field public static final SCROLL_STATE_IDLE:I = 0x0

.field public static final SCROLL_STATE_SETTLING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ViewPager"

.field private static final USE_CACHE:Z = false

.field private static final sInterpolator:Landroid/view/animation/Interpolator;

.field private static final sPositionComparator:Ltds/androidx/viewpager/ViewPager$ViewPositionComparator;


# instance fields
.field private mActivePointerId:I

.field mAdapter:Ltds/androidx/viewpager/PagerAdapter;

.field private mAdapterChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltds/androidx/viewpager/ViewPager$OnAdapterChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mBottomPageBounds:I

.field private mCalledSuper:Z

.field private mChildHeightMeasureSpec:I

.field private mChildWidthMeasureSpec:I

.field private mCloseEnough:I

.field mCurItem:I

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

.field private mInternalPageChangeListener:Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;

.field private mIsBeingDragged:Z

.field private mIsScrollStarted:Z

.field private mIsUnableToDrag:Z

.field private final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ltds/androidx/viewpager/ViewPager$ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLastMotionX:F

.field private mLastMotionY:F

.field private mLastOffset:F

.field private mLeftEdge:Landroid/widget/EdgeEffect;

.field private mMarginDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaximumVelocity:I

.field private mMinimumVelocity:I

.field private mNeedCalculatePageOffsets:Z

.field private mObserver:Ltds/androidx/viewpager/ViewPager$PagerObserver;

.field private mOffscreenPageLimit:I

.field private mOnPageChangeListener:Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;

.field private mOnPageChangeListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPageMargin:I

.field private mPageTransformer:Ltds/androidx/viewpager/ViewPager$PageTransformer;

.field private mPageTransformerLayerType:I

.field private mPopulatePending:Z

.field private mRestoredAdapterState:Landroid/os/Parcelable;

.field private mRestoredClassLoader:Ljava/lang/ClassLoader;

.field private mRestoredCurItem:I

.field private mRightEdge:Landroid/widget/EdgeEffect;

.field private mScrollState:I

.field private mScroller:Landroid/widget/Scroller;

.field private mScrollingCacheEnabled:Z

.field private final mTempItem:Ltds/androidx/viewpager/ViewPager$ItemInfo;

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPageBounds:I

.field private mTouchSlop:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 97
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Ltds/androidx/viewpager/ViewPager;->LAYOUT_ATTRS:[I

    .line 115
    new-instance v0, Ltds/androidx/viewpager/ViewPager$1;

    invoke-direct {v0}, Ltds/androidx/viewpager/ViewPager$1;-><init>()V

    sput-object v0, Ltds/androidx/viewpager/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    .line 122
    new-instance v0, Ltds/androidx/viewpager/ViewPager$2;

    invoke-direct {v0}, Ltds/androidx/viewpager/ViewPager$2;-><init>()V

    sput-object v0, Ltds/androidx/viewpager/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    .line 226
    new-instance v0, Ltds/androidx/viewpager/ViewPager$ViewPositionComparator;

    invoke-direct {v0}, Ltds/androidx/viewpager/ViewPager$ViewPositionComparator;-><init>()V

    sput-object v0, Ltds/androidx/viewpager/ViewPager;->sPositionComparator:Ltds/androidx/viewpager/ViewPager$ViewPositionComparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 365
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    invoke-direct {v0}, Ltds/androidx/viewpager/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mTempItem:Ltds/androidx/viewpager/ViewPager$ItemInfo;

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Ltds/androidx/viewpager/ViewPager;->mRestoredCurItem:I

    .line 138
    const/4 v1, 0x0

    iput-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 139
    iput-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 154
    const v1, -0x800001

    iput v1, p0, Ltds/androidx/viewpager/ViewPager;->mFirstOffset:F

    .line 155
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Ltds/androidx/viewpager/ViewPager;->mLastOffset:F

    .line 164
    const/4 v1, 0x1

    iput v1, p0, Ltds/androidx/viewpager/ViewPager;->mOffscreenPageLimit:I

    .line 182
    iput v0, p0, Ltds/androidx/viewpager/ViewPager;->mActivePointerId:I

    .line 209
    iput-boolean v1, p0, Ltds/androidx/viewpager/ViewPager;->mFirstLayout:Z

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/viewpager/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 244
    new-instance v1, Ltds/androidx/viewpager/ViewPager$3;

    invoke-direct {v1, p0}, Ltds/androidx/viewpager/ViewPager$3;-><init>(Ltds/androidx/viewpager/ViewPager;)V

    iput-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 252
    iput v0, p0, Ltds/androidx/viewpager/ViewPager;->mScrollState:I

    .line 366
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->initViewPager()V

    .line 367
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 370
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 131
    new-instance v0, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    invoke-direct {v0}, Ltds/androidx/viewpager/ViewPager$ItemInfo;-><init>()V

    iput-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mTempItem:Ltds/androidx/viewpager/ViewPager$ItemInfo;

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mTempRect:Landroid/graphics/Rect;

    .line 137
    const/4 v0, -0x1

    iput v0, p0, Ltds/androidx/viewpager/ViewPager;->mRestoredCurItem:I

    .line 138
    const/4 v1, 0x0

    iput-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 139
    iput-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 154
    const v1, -0x800001

    iput v1, p0, Ltds/androidx/viewpager/ViewPager;->mFirstOffset:F

    .line 155
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Ltds/androidx/viewpager/ViewPager;->mLastOffset:F

    .line 164
    const/4 v1, 0x1

    iput v1, p0, Ltds/androidx/viewpager/ViewPager;->mOffscreenPageLimit:I

    .line 182
    iput v0, p0, Ltds/androidx/viewpager/ViewPager;->mActivePointerId:I

    .line 209
    iput-boolean v1, p0, Ltds/androidx/viewpager/ViewPager;->mFirstLayout:Z

    .line 210
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/viewpager/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 244
    new-instance v1, Ltds/androidx/viewpager/ViewPager$3;

    invoke-direct {v1, p0}, Ltds/androidx/viewpager/ViewPager$3;-><init>(Ltds/androidx/viewpager/ViewPager;)V

    iput-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    .line 252
    iput v0, p0, Ltds/androidx/viewpager/ViewPager;->mScrollState:I

    .line 371
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->initViewPager()V

    .line 372
    return-void
.end method

.method private calculatePageOffsets(Ltds/androidx/viewpager/ViewPager$ItemInfo;ILtds/androidx/viewpager/ViewPager$ItemInfo;)V
    .registers 15
    .param p1, "curItem"    # Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .param p2, "curIndex"    # I
    .param p3, "oldCurInfo"    # Ltds/androidx/viewpager/ViewPager$ItemInfo;

    .line 1264
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    invoke-virtual {v0}, Ltds/androidx/viewpager/PagerAdapter;->getCount()I

    move-result v0

    .line 1265
    .local v0, "N":I
    invoke-direct {p0}, Ltds/androidx/viewpager/ViewPager;->getClientWidth()I

    move-result v1

    .line 1266
    .local v1, "width":I
    if-lez v1, :cond_12

    iget v2, p0, Ltds/androidx/viewpager/ViewPager;->mPageMargin:I

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    goto :goto_13

    :cond_12
    const/4 v2, 0x0

    .line 1268
    .local v2, "marginOffset":F
    :goto_13
    if-eqz p3, :cond_b6

    .line 1269
    iget v3, p3, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    .line 1271
    .local v3, "oldCurPosition":I
    iget v4, p1, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    if-ge v3, v4, :cond_6c

    .line 1272
    const/4 v4, 0x0

    .line 1273
    .local v4, "itemIndex":I
    const/4 v5, 0x0

    .line 1274
    .local v5, "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    iget v6, p3, Ltds/androidx/viewpager/ViewPager$ItemInfo;->offset:F

    iget v7, p3, Ltds/androidx/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v7

    add-float/2addr v6, v2

    .line 1275
    .local v6, "offset":F
    add-int/lit8 v7, v3, 0x1

    .line 1276
    .local v7, "pos":I
    :goto_25
    iget v8, p1, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    if-gt v7, v8, :cond_b6

    iget-object v8, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_b6

    .line 1277
    iget-object v8, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    .line 1278
    :goto_3a
    iget v8, v5, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    if-le v7, v8, :cond_54

    iget-object v8, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v4, v8, :cond_54

    .line 1279
    add-int/lit8 v4, v4, 0x1

    .line 1280
    iget-object v8, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    goto :goto_3a

    .line 1282
    :cond_54
    :goto_54
    iget v8, v5, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    if-ge v7, v8, :cond_63

    .line 1285
    iget-object v8, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    invoke-virtual {v8, v7}, Ltds/androidx/viewpager/PagerAdapter;->getPageWidth(I)F

    move-result v8

    add-float/2addr v8, v2

    add-float/2addr v6, v8

    .line 1286
    add-int/lit8 v7, v7, 0x1

    goto :goto_54

    .line 1288
    :cond_63
    iput v6, v5, Ltds/androidx/viewpager/ViewPager$ItemInfo;->offset:F

    .line 1289
    iget v8, v5, Ltds/androidx/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    add-float/2addr v6, v8

    .line 1276
    add-int/lit8 v7, v7, 0x1

    goto :goto_25

    .line 1291
    .end local v4    # "itemIndex":I
    .end local v5    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .end local v6    # "offset":F
    .end local v7    # "pos":I
    :cond_6c
    iget v4, p1, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    if-le v3, v4, :cond_b6

    .line 1292
    iget-object v4, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .line 1293
    .restart local v4    # "itemIndex":I
    const/4 v5, 0x0

    .line 1294
    .restart local v5    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    iget v6, p3, Ltds/androidx/viewpager/ViewPager$ItemInfo;->offset:F

    .line 1295
    .restart local v6    # "offset":F
    add-int/lit8 v7, v3, -0x1

    .line 1296
    .restart local v7    # "pos":I
    :goto_7d
    iget v8, p1, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    if-lt v7, v8, :cond_b6

    if-ltz v4, :cond_b6

    .line 1297
    iget-object v8, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    .line 1298
    :goto_8c
    iget v8, v5, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    if-ge v7, v8, :cond_9e

    if-lez v4, :cond_9e

    .line 1299
    add-int/lit8 v4, v4, -0x1

    .line 1300
    iget-object v8, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v5, v8

    check-cast v5, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    goto :goto_8c

    .line 1302
    :cond_9e
    :goto_9e
    iget v8, v5, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    if-le v7, v8, :cond_ad

    .line 1305
    iget-object v8, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    invoke-virtual {v8, v7}, Ltds/androidx/viewpager/PagerAdapter;->getPageWidth(I)F

    move-result v8

    add-float/2addr v8, v2

    sub-float/2addr v6, v8

    .line 1306
    add-int/lit8 v7, v7, -0x1

    goto :goto_9e

    .line 1308
    :cond_ad
    iget v8, v5, Ltds/androidx/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v2

    sub-float/2addr v6, v8

    .line 1309
    iput v6, v5, Ltds/androidx/viewpager/ViewPager$ItemInfo;->offset:F

    .line 1296
    add-int/lit8 v7, v7, -0x1

    goto :goto_7d

    .line 1315
    .end local v3    # "oldCurPosition":I
    .end local v4    # "itemIndex":I
    .end local v5    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .end local v6    # "offset":F
    .end local v7    # "pos":I
    :cond_b6
    iget-object v3, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1316
    .local v3, "itemCount":I
    iget v4, p1, Ltds/androidx/viewpager/ViewPager$ItemInfo;->offset:F

    .line 1317
    .local v4, "offset":F
    iget v5, p1, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    add-int/lit8 v5, v5, -0x1

    .line 1318
    .local v5, "pos":I
    iget v6, p1, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    if-nez v6, :cond_c9

    iget v6, p1, Ltds/androidx/viewpager/ViewPager$ItemInfo;->offset:F

    goto :goto_cc

    :cond_c9
    const v6, -0x800001

    :goto_cc
    iput v6, p0, Ltds/androidx/viewpager/ViewPager;->mFirstOffset:F

    .line 1319
    iget v6, p1, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    add-int/lit8 v7, v0, -0x1

    const/high16 v8, 0x3f800000    # 1.0f

    if-ne v6, v7, :cond_dd

    iget v6, p1, Ltds/androidx/viewpager/ViewPager$ItemInfo;->offset:F

    iget v7, p1, Ltds/androidx/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v7

    sub-float/2addr v6, v8

    goto :goto_e0

    :cond_dd
    const v6, 0x7f7fffff    # Float.MAX_VALUE

    :goto_e0
    iput v6, p0, Ltds/androidx/viewpager/ViewPager;->mLastOffset:F

    .line 1322
    add-int/lit8 v6, p2, -0x1

    .local v6, "i":I
    :goto_e4
    if-ltz v6, :cond_10f

    .line 1323
    iget-object v7, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    .line 1324
    .local v7, "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    :goto_ee
    iget v9, v7, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    if-le v5, v9, :cond_fe

    .line 1325
    iget-object v9, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    add-int/lit8 v10, v5, -0x1

    .end local v5    # "pos":I
    .local v10, "pos":I
    invoke-virtual {v9, v5}, Ltds/androidx/viewpager/PagerAdapter;->getPageWidth(I)F

    move-result v5

    add-float/2addr v5, v2

    sub-float/2addr v4, v5

    move v5, v10

    goto :goto_ee

    .line 1327
    .end local v10    # "pos":I
    .restart local v5    # "pos":I
    :cond_fe
    iget v9, v7, Ltds/androidx/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    sub-float/2addr v4, v9

    .line 1328
    iput v4, v7, Ltds/androidx/viewpager/ViewPager$ItemInfo;->offset:F

    .line 1329
    iget v9, v7, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    if-nez v9, :cond_10a

    iput v4, p0, Ltds/androidx/viewpager/ViewPager;->mFirstOffset:F

    .line 1322
    .end local v7    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    :cond_10a
    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v5, v5, -0x1

    goto :goto_e4

    .line 1331
    .end local v6    # "i":I
    :cond_10f
    iget v6, p1, Ltds/androidx/viewpager/ViewPager$ItemInfo;->offset:F

    iget v7, p1, Ltds/androidx/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v6, v7

    add-float/2addr v6, v2

    .line 1332
    .end local v4    # "offset":F
    .local v6, "offset":F
    iget v4, p1, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    add-int/lit8 v4, v4, 0x1

    .line 1334
    .end local v5    # "pos":I
    .local v4, "pos":I
    add-int/lit8 v5, p2, 0x1

    .local v5, "i":I
    :goto_11b
    if-ge v5, v3, :cond_14c

    .line 1335
    iget-object v7, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    .line 1336
    .restart local v7    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    :goto_125
    iget v9, v7, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    if-ge v4, v9, :cond_135

    .line 1337
    iget-object v9, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    add-int/lit8 v10, v4, 0x1

    .end local v4    # "pos":I
    .restart local v10    # "pos":I
    invoke-virtual {v9, v4}, Ltds/androidx/viewpager/PagerAdapter;->getPageWidth(I)F

    move-result v4

    add-float/2addr v4, v2

    add-float/2addr v6, v4

    move v4, v10

    goto :goto_125

    .line 1339
    .end local v10    # "pos":I
    .restart local v4    # "pos":I
    :cond_135
    iget v9, v7, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    add-int/lit8 v10, v0, -0x1

    if-ne v9, v10, :cond_141

    .line 1340
    iget v9, v7, Ltds/androidx/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v6

    sub-float/2addr v9, v8

    iput v9, p0, Ltds/androidx/viewpager/ViewPager;->mLastOffset:F

    .line 1342
    :cond_141
    iput v6, v7, Ltds/androidx/viewpager/ViewPager$ItemInfo;->offset:F

    .line 1343
    iget v9, v7, Ltds/androidx/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v9, v2

    add-float/2addr v6, v9

    .line 1334
    .end local v7    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_11b

    .line 1346
    .end local v5    # "i":I
    :cond_14c
    const/4 v5, 0x0

    iput-boolean v5, p0, Ltds/androidx/viewpager/ViewPager;->mNeedCalculatePageOffsets:Z

    .line 1347
    return-void
.end method

.method private completeScroll(Z)V
    .registers 9
    .param p1, "postEvents"    # Z

    .line 1940
    iget v0, p0, Ltds/androidx/viewpager/ViewPager;->mScrollState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 1941
    .local v0, "needPopulate":Z
    :goto_a
    if-eqz v0, :cond_3d

    .line 1943
    invoke-direct {p0, v2}, Ltds/androidx/viewpager/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 1944
    iget-object v3, p0, Ltds/androidx/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    xor-int/2addr v1, v3

    .line 1945
    .local v1, "wasScrolling":Z
    if-eqz v1, :cond_3d

    .line 1946
    iget-object v3, p0, Ltds/androidx/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1947
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getScrollX()I

    move-result v3

    .line 1948
    .local v3, "oldX":I
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getScrollY()I

    move-result v4

    .line 1949
    .local v4, "oldY":I
    iget-object v5, p0, Ltds/androidx/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    .line 1950
    .local v5, "x":I
    iget-object v6, p0, Ltds/androidx/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    .line 1951
    .local v6, "y":I
    if-ne v3, v5, :cond_35

    if-eq v4, v6, :cond_3d

    .line 1952
    :cond_35
    invoke-virtual {p0, v5, v6}, Ltds/androidx/viewpager/ViewPager;->scrollTo(II)V

    .line 1953
    if-eq v5, v3, :cond_3d

    .line 1954
    invoke-direct {p0, v5}, Ltds/androidx/viewpager/ViewPager;->pageScrolled(I)Z

    .line 1959
    .end local v1    # "wasScrolling":Z
    .end local v3    # "oldX":I
    .end local v4    # "oldY":I
    .end local v5    # "x":I
    .end local v6    # "y":I
    :cond_3d
    iput-boolean v2, p0, Ltds/androidx/viewpager/ViewPager;->mPopulatePending:Z

    .line 1960
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_40
    iget-object v3, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_5a

    .line 1961
    iget-object v3, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    .line 1962
    .local v3, "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    iget-boolean v4, v3, Ltds/androidx/viewpager/ViewPager$ItemInfo;->scrolling:Z

    if-eqz v4, :cond_57

    .line 1963
    const/4 v0, 0x1

    .line 1964
    iput-boolean v2, v3, Ltds/androidx/viewpager/ViewPager$ItemInfo;->scrolling:Z

    .line 1960
    .end local v3    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    :cond_57
    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    .line 1967
    .end local v1    # "i":I
    :cond_5a
    if-eqz v0, :cond_69

    .line 1968
    if-eqz p1, :cond_64

    .line 1969
    iget-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-static {p0, v1}, Ltds/androidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_69

    .line 1971
    :cond_64
    iget-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1974
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

    .line 2372
    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Ltds/androidx/viewpager/ViewPager;->mFlingDistance:I

    if-le v0, v1, :cond_17

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Ltds/androidx/viewpager/ViewPager;->mMinimumVelocity:I

    if-le v0, v1, :cond_17

    .line 2373
    if-lez p3, :cond_14

    move v0, p1

    goto :goto_16

    :cond_14
    add-int/lit8 v0, p1, 0x1

    .local v0, "targetPage":I
    :goto_16
    goto :goto_27

    .line 2375
    .end local v0    # "targetPage":I
    :cond_17
    iget v0, p0, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    if-lt p1, v0, :cond_1f

    const v0, 0x3ecccccd    # 0.4f

    goto :goto_22

    :cond_1f
    const v0, 0x3f19999a    # 0.6f

    .line 2376
    .local v0, "truncator":F
    :goto_22
    add-float v1, p2, v0

    float-to-int v1, v1

    add-int/2addr v1, p1

    move v0, v1

    .line 2379
    .local v0, "targetPage":I
    :goto_27
    iget-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_52

    .line 2380
    iget-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    .line 2381
    .local v1, "firstItem":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    iget-object v2, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    .line 2384
    .local v2, "lastItem":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    iget v3, v1, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    iget v4, v2, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    invoke-static {v0, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2387
    .end local v1    # "firstItem":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .end local v2    # "lastItem":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    :cond_52
    return v0
.end method

.method private dispatchOnPageScrolled(IFI)V
    .registers 7
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .line 1889
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mOnPageChangeListener:Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_7

    .line 1890
    invoke-interface {v0, p1, p2, p3}, Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1892
    :cond_7
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_22

    .line 1893
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "z":I
    :goto_10
    if-ge v1, v0, :cond_22

    .line 1894
    iget-object v2, p0, Ltds/androidx/viewpager/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;

    .line 1895
    .local v2, "listener":Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;
    if-eqz v2, :cond_1f

    .line 1896
    invoke-interface {v2, p1, p2, p3}, Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1893
    .end local v2    # "listener":Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1900
    .end local v0    # "z":I
    .end local v1    # "i":I
    :cond_22
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mInternalPageChangeListener:Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_29

    .line 1901
    invoke-interface {v0, p1, p2, p3}, Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;->onPageScrolled(IFI)V

    .line 1903
    :cond_29
    return-void
.end method

.method private dispatchOnPageSelected(I)V
    .registers 5
    .param p1, "position"    # I

    .line 1906
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mOnPageChangeListener:Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_7

    .line 1907
    invoke-interface {v0, p1}, Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1909
    :cond_7
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_22

    .line 1910
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "z":I
    :goto_10
    if-ge v1, v0, :cond_22

    .line 1911
    iget-object v2, p0, Ltds/androidx/viewpager/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;

    .line 1912
    .local v2, "listener":Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;
    if-eqz v2, :cond_1f

    .line 1913
    invoke-interface {v2, p1}, Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1910
    .end local v2    # "listener":Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1917
    .end local v0    # "z":I
    .end local v1    # "i":I
    :cond_22
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mInternalPageChangeListener:Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_29

    .line 1918
    invoke-interface {v0, p1}, Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;->onPageSelected(I)V

    .line 1920
    :cond_29
    return-void
.end method

.method private dispatchOnScrollStateChanged(I)V
    .registers 5
    .param p1, "state"    # I

    .line 1923
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mOnPageChangeListener:Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_7

    .line 1924
    invoke-interface {v0, p1}, Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1926
    :cond_7
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_22

    .line 1927
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "z":I
    :goto_10
    if-ge v1, v0, :cond_22

    .line 1928
    iget-object v2, p0, Ltds/androidx/viewpager/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;

    .line 1929
    .local v2, "listener":Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;
    if-eqz v2, :cond_1f

    .line 1930
    invoke-interface {v2, p1}, Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1927
    .end local v2    # "listener":Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1934
    .end local v0    # "z":I
    .end local v1    # "i":I
    :cond_22
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mInternalPageChangeListener:Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;

    if-eqz v0, :cond_29

    .line 1935
    invoke-interface {v0, p1}, Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 1937
    :cond_29
    return-void
.end method

.method private enableLayers(Z)V
    .registers 7
    .param p1, "enable"    # Z

    .line 1981
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getChildCount()I

    move-result v0

    .line 1982
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_18

    .line 1983
    if-eqz p1, :cond_c

    iget v2, p0, Ltds/androidx/viewpager/ViewPager;->mPageTransformerLayerType:I

    goto :goto_d

    :cond_c
    const/4 v2, 0x0

    .line 1985
    .local v2, "layerType":I
    :goto_d
    invoke-virtual {p0, v1}, Ltds/androidx/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 1982
    .end local v2    # "layerType":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1987
    .end local v1    # "i":I
    :cond_18
    return-void
.end method

.method private endDrag()V
    .registers 2

    .line 2625
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/viewpager/ViewPager;->mIsBeingDragged:Z

    .line 2626
    iput-boolean v0, p0, Ltds/androidx/viewpager/ViewPager;->mIsUnableToDrag:Z

    .line 2628
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_f

    .line 2629
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 2630
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2632
    :cond_f
    return-void
.end method

.method private getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .registers 7
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "child"    # Landroid/view/View;

    .line 2825
    if-nez p1, :cond_8

    .line 2826
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    move-object p1, v0

    .line 2828
    :cond_8
    if-nez p2, :cond_f

    .line 2829
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 2830
    return-object p1

    .line 2832
    :cond_f
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 2833
    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 2834
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 2835
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 2837
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2838
    .local v0, "parent":Landroid/view/ViewParent;
    :goto_2b
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_5d

    if-eq v0, p0, :cond_5d

    .line 2839
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2840
    .local v1, "group":Landroid/view/ViewGroup;
    iget v2, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->left:I

    .line 2841
    iget v2, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->right:I

    .line 2842
    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->top:I

    .line 2843
    iget v2, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p1, Landroid/graphics/Rect;->bottom:I

    .line 2845
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2846
    .end local v1    # "group":Landroid/view/ViewGroup;
    goto :goto_2b

    .line 2847
    :cond_5d
    return-object p1
.end method

.method private getClientWidth()I
    .registers 3

    .line 566
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private infoForCurrentScrollPosition()Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .registers 15

    .line 2329
    invoke-direct {p0}, Ltds/androidx/viewpager/ViewPager;->getClientWidth()I

    move-result v0

    .line 2330
    .local v0, "width":I
    const/4 v1, 0x0

    if-lez v0, :cond_f

    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_10

    :cond_f
    move v2, v1

    .line 2331
    .local v2, "scrollOffset":F
    :goto_10
    if-lez v0, :cond_17

    iget v1, p0, Ltds/androidx/viewpager/ViewPager;->mPageMargin:I

    int-to-float v1, v1

    int-to-float v3, v0

    div-float/2addr v1, v3

    .line 2332
    .local v1, "marginOffset":F
    :cond_17
    const/4 v3, -0x1

    .line 2333
    .local v3, "lastPos":I
    const/4 v4, 0x0

    .line 2334
    .local v4, "lastOffset":F
    const/4 v5, 0x0

    .line 2335
    .local v5, "lastWidth":F
    const/4 v6, 0x1

    .line 2337
    .local v6, "first":Z
    const/4 v7, 0x0

    .line 2338
    .local v7, "lastItem":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1d
    iget-object v9, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_75

    .line 2339
    iget-object v9, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    .line 2341
    .local v9, "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    if-nez v6, :cond_4c

    iget v10, v9, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    add-int/lit8 v11, v3, 0x1

    if-eq v10, v11, :cond_4c

    .line 2343
    iget-object v9, p0, Ltds/androidx/viewpager/ViewPager;->mTempItem:Ltds/androidx/viewpager/ViewPager$ItemInfo;

    .line 2344
    add-float v10, v4, v5

    add-float/2addr v10, v1

    iput v10, v9, Ltds/androidx/viewpager/ViewPager$ItemInfo;->offset:F

    .line 2345
    add-int/lit8 v10, v3, 0x1

    iput v10, v9, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    .line 2346
    iget-object v10, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    iget v11, v9, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    invoke-virtual {v10, v11}, Ltds/androidx/viewpager/PagerAdapter;->getPageWidth(I)F

    move-result v10

    iput v10, v9, Ltds/androidx/viewpager/ViewPager$ItemInfo;->widthFactor:F

    .line 2347
    add-int/lit8 v8, v8, -0x1

    .line 2349
    :cond_4c
    iget v10, v9, Ltds/androidx/viewpager/ViewPager$ItemInfo;->offset:F

    .line 2351
    .local v10, "offset":F
    move v11, v10

    .line 2352
    .local v11, "leftBound":F
    iget v12, v9, Ltds/androidx/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v10

    add-float/2addr v12, v1

    .line 2353
    .local v12, "rightBound":F
    if-nez v6, :cond_5b

    cmpl-float v13, v2, v11

    if-ltz v13, :cond_5a

    goto :goto_5b

    .line 2358
    :cond_5a
    return-object v7

    .line 2354
    :cond_5b
    :goto_5b
    cmpg-float v13, v2, v12

    if-ltz v13, :cond_74

    iget-object v13, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v8, v13, :cond_6a

    goto :goto_74

    .line 2360
    :cond_6a
    const/4 v6, 0x0

    .line 2361
    iget v3, v9, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    .line 2362
    move v4, v10

    .line 2363
    iget v5, v9, Ltds/androidx/viewpager/ViewPager$ItemInfo;->widthFactor:F

    .line 2364
    move-object v7, v9

    .line 2338
    .end local v9    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .end local v10    # "offset":F
    .end local v11    # "leftBound":F
    .end local v12    # "rightBound":F
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    .line 2355
    .restart local v9    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .restart local v10    # "offset":F
    .restart local v11    # "leftBound":F
    .restart local v12    # "rightBound":F
    :cond_74
    :goto_74
    return-object v9

    .line 2367
    .end local v8    # "i":I
    .end local v9    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .end local v10    # "offset":F
    .end local v11    # "leftBound":F
    .end local v12    # "rightBound":F
    :cond_75
    return-object v7
.end method

.method private static isDecorView(Landroid/view/View;)Z
    .registers 3
    .param p0, "view"    # Landroid/view/View;

    .line 1464
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1465
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Ltds/androidx/viewpager/ViewPager$DecorView;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method private isGutterDrag(FF)Z
    .registers 6
    .param p1, "x"    # F
    .param p2, "dx"    # F

    .line 1977
    iget v0, p0, Ltds/androidx/viewpager/ViewPager;->mGutterSize:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_c

    cmpl-float v0, p2, v1

    if-gtz v0, :cond_1c

    :cond_c
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getWidth()I

    move-result v0

    iget v2, p0, Ltds/androidx/viewpager/ViewPager;->mGutterSize:I

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

    .line 2610
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 2611
    .local v0, "pointerIndex":I
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2612
    .local v1, "pointerId":I
    iget v2, p0, Ltds/androidx/viewpager/ViewPager;->mActivePointerId:I

    if-ne v1, v2, :cond_24

    .line 2615
    if-nez v0, :cond_10

    const/4 v2, 0x1

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    .line 2616
    .local v2, "newPointerIndex":I
    :goto_11
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Ltds/androidx/viewpager/ViewPager;->mLastMotionX:F

    .line 2617
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v3

    iput v3, p0, Ltds/androidx/viewpager/ViewPager;->mActivePointerId:I

    .line 2618
    iget-object v3, p0, Ltds/androidx/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_24

    .line 2619
    invoke-virtual {v3}, Landroid/view/VelocityTracker;->clear()V

    .line 2622
    .end local v2    # "newPointerIndex":I
    :cond_24
    return-void
.end method

.method private pageScrolled(I)Z
    .registers 11
    .param p1, "xpos"    # I

    .line 1784
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_21

    .line 1785
    iget-boolean v0, p0, Ltds/androidx/viewpager/ViewPager;->mFirstLayout:Z

    if-eqz v0, :cond_10

    .line 1788
    return v2

    .line 1790
    :cond_10
    iput-boolean v2, p0, Ltds/androidx/viewpager/ViewPager;->mCalledSuper:Z

    .line 1791
    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0, v2}, Ltds/androidx/viewpager/ViewPager;->onPageScrolled(IFI)V

    .line 1792
    iget-boolean v0, p0, Ltds/androidx/viewpager/ViewPager;->mCalledSuper:Z

    if-eqz v0, :cond_1b

    .line 1796
    return v2

    .line 1793
    :cond_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1798
    :cond_21
    invoke-direct {p0}, Ltds/androidx/viewpager/ViewPager;->infoForCurrentScrollPosition()Ltds/androidx/viewpager/ViewPager$ItemInfo;

    move-result-object v0

    .line 1799
    .local v0, "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    invoke-direct {p0}, Ltds/androidx/viewpager/ViewPager;->getClientWidth()I

    move-result v3

    .line 1800
    .local v3, "width":I
    iget v4, p0, Ltds/androidx/viewpager/ViewPager;->mPageMargin:I

    add-int v5, v3, v4

    .line 1801
    .local v5, "widthWithMargin":I
    int-to-float v4, v4

    int-to-float v6, v3

    div-float/2addr v4, v6

    .line 1802
    .local v4, "marginOffset":F
    iget v6, v0, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    .line 1803
    .local v6, "currentPage":I
    int-to-float v7, p1

    int-to-float v8, v3

    div-float/2addr v7, v8

    iget v8, v0, Ltds/androidx/viewpager/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v7, v8

    iget v8, v0, Ltds/androidx/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v8, v4

    div-float/2addr v7, v8

    .line 1805
    .local v7, "pageOffset":F
    int-to-float v8, v5

    mul-float/2addr v8, v7

    float-to-int v8, v8

    .line 1807
    .local v8, "offsetPixels":I
    iput-boolean v2, p0, Ltds/androidx/viewpager/ViewPager;->mCalledSuper:Z

    .line 1808
    invoke-virtual {p0, v6, v7, v8}, Ltds/androidx/viewpager/ViewPager;->onPageScrolled(IFI)V

    .line 1809
    iget-boolean v2, p0, Ltds/androidx/viewpager/ViewPager;->mCalledSuper:Z

    if-eqz v2, :cond_4a

    .line 1813
    const/4 v1, 0x1

    return v1

    .line 1810
    :cond_4a
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private performDrag(F)Z
    .registers 18
    .param p1, "x"    # F

    .line 2276
    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    .line 2278
    .local v2, "needsInvalidate":Z
    iget v3, v0, Ltds/androidx/viewpager/ViewPager;->mLastMotionX:F

    sub-float/2addr v3, v1

    .line 2279
    .local v3, "deltaX":F
    iput v1, v0, Ltds/androidx/viewpager/ViewPager;->mLastMotionX:F

    .line 2281
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    .line 2282
    .local v4, "oldScrollX":F
    add-float v5, v4, v3

    .line 2283
    .local v5, "scrollX":F
    invoke-direct/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getClientWidth()I

    move-result v6

    .line 2285
    .local v6, "width":I
    int-to-float v7, v6

    iget v8, v0, Ltds/androidx/viewpager/ViewPager;->mFirstOffset:F

    mul-float/2addr v7, v8

    .line 2286
    .local v7, "leftBound":F
    int-to-float v8, v6

    iget v9, v0, Ltds/androidx/viewpager/ViewPager;->mLastOffset:F

    mul-float/2addr v8, v9

    .line 2287
    .local v8, "rightBound":F
    const/4 v9, 0x1

    .line 2288
    .local v9, "leftAbsolute":Z
    const/4 v10, 0x1

    .line 2290
    .local v10, "rightAbsolute":Z
    iget-object v11, v0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    .line 2291
    .local v11, "firstItem":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    iget-object v12, v0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    .line 2292
    .local v12, "lastItem":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    iget v13, v11, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    if-eqz v13, :cond_40

    .line 2293
    const/4 v9, 0x0

    .line 2294
    iget v13, v11, Ltds/androidx/viewpager/ViewPager$ItemInfo;->offset:F

    int-to-float v14, v6

    mul-float v7, v13, v14

    .line 2296
    :cond_40
    iget v13, v12, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    iget-object v14, v0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    invoke-virtual {v14}, Ltds/androidx/viewpager/PagerAdapter;->getCount()I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    if-eq v13, v14, :cond_52

    .line 2297
    const/4 v10, 0x0

    .line 2298
    iget v13, v12, Ltds/androidx/viewpager/ViewPager$ItemInfo;->offset:F

    int-to-float v14, v6

    mul-float v8, v13, v14

    .line 2301
    :cond_52
    cmpg-float v13, v5, v7

    if-gez v13, :cond_68

    .line 2302
    if-eqz v9, :cond_66

    .line 2303
    sub-float v13, v7, v5

    .line 2304
    .local v13, "over":F
    iget-object v14, v0, Ltds/androidx/viewpager/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v15

    int-to-float v1, v6

    div-float/2addr v15, v1

    invoke-virtual {v14, v15}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2305
    const/4 v2, 0x1

    .line 2307
    .end local v13    # "over":F
    :cond_66
    move v5, v7

    goto :goto_7d

    .line 2308
    :cond_68
    cmpl-float v1, v5, v8

    if-lez v1, :cond_7d

    .line 2309
    if-eqz v10, :cond_7c

    .line 2310
    sub-float v1, v5, v8

    .line 2311
    .local v1, "over":F
    iget-object v13, v0, Ltds/androidx/viewpager/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v14

    int-to-float v15, v6

    div-float/2addr v14, v15

    invoke-virtual {v13, v14}, Landroid/widget/EdgeEffect;->onPull(F)V

    .line 2312
    const/4 v2, 0x1

    .line 2314
    .end local v1    # "over":F
    :cond_7c
    move v5, v8

    .line 2317
    :cond_7d
    :goto_7d
    iget v1, v0, Ltds/androidx/viewpager/ViewPager;->mLastMotionX:F

    float-to-int v13, v5

    int-to-float v13, v13

    sub-float v13, v5, v13

    add-float/2addr v1, v13

    iput v1, v0, Ltds/androidx/viewpager/ViewPager;->mLastMotionX:F

    .line 2318
    float-to-int v1, v5

    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getScrollY()I

    move-result v13

    invoke-virtual {v0, v1, v13}, Ltds/androidx/viewpager/ViewPager;->scrollTo(II)V

    .line 2319
    float-to-int v1, v5

    invoke-direct {v0, v1}, Ltds/androidx/viewpager/ViewPager;->pageScrolled(I)Z

    .line 2321
    return v2
.end method

.method private recomputeScrollPosition(IIII)V
    .registers 11
    .param p1, "width"    # I
    .param p2, "oldWidth"    # I
    .param p3, "margin"    # I
    .param p4, "oldMargin"    # I

    .line 1621
    if-lez p2, :cond_4b

    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 1622
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_21

    .line 1623
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-direct {p0}, Ltds/androidx/viewpager/ViewPager;->getClientWidth()I

    move-result v2

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_7d

    .line 1625
    :cond_21
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getPaddingLeft()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    add-int/2addr v0, p3

    .line 1626
    .local v0, "widthWithMargin":I
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getPaddingLeft()I

    move-result v1

    sub-int v1, p2, v1

    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    add-int/2addr v1, p4

    .line 1628
    .local v1, "oldWidthWithMargin":I
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getScrollX()I

    move-result v2

    .line 1629
    .local v2, "xpos":I
    int-to-float v3, v2

    int-to-float v4, v1

    div-float/2addr v3, v4

    .line 1630
    .local v3, "pageOffset":F
    int-to-float v4, v0

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 1632
    .local v4, "newOffsetPixels":I
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getScrollY()I

    move-result v5

    invoke-virtual {p0, v4, v5}, Ltds/androidx/viewpager/ViewPager;->scrollTo(II)V

    .line 1633
    .end local v0    # "widthWithMargin":I
    .end local v1    # "oldWidthWithMargin":I
    .end local v2    # "xpos":I
    .end local v3    # "pageOffset":F
    .end local v4    # "newOffsetPixels":I
    goto :goto_7d

    .line 1635
    :cond_4b
    iget v0, p0, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Ltds/androidx/viewpager/ViewPager;->infoForPosition(I)Ltds/androidx/viewpager/ViewPager$ItemInfo;

    move-result-object v0

    .line 1636
    .local v0, "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    if-eqz v0, :cond_5c

    iget v1, v0, Ltds/androidx/viewpager/ViewPager$ItemInfo;->offset:F

    iget v2, p0, Ltds/androidx/viewpager/ViewPager;->mLastOffset:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    goto :goto_5d

    :cond_5c
    const/4 v1, 0x0

    .line 1637
    .local v1, "scrollOffset":F
    :goto_5d
    nop

    .line 1638
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getPaddingLeft()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float/2addr v2, v1

    float-to-int v2, v2

    .line 1639
    .local v2, "scrollPos":I
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getScrollX()I

    move-result v3

    if-eq v2, v3, :cond_7d

    .line 1640
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Ltds/androidx/viewpager/ViewPager;->completeScroll(Z)V

    .line 1641
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getScrollY()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Ltds/androidx/viewpager/ViewPager;->scrollTo(II)V

    .line 1644
    .end local v0    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .end local v1    # "scrollOffset":F
    .end local v2    # "scrollPos":I
    :cond_7d
    :goto_7d
    return-void
.end method

.method private removeNonDecorViews()V
    .registers 5

    .line 521
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1d

    .line 522
    invoke-virtual {p0, v0}, Ltds/androidx/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 523
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Ltds/androidx/viewpager/ViewPager$LayoutParams;

    .line 524
    .local v2, "lp":Ltds/androidx/viewpager/ViewPager$LayoutParams;
    iget-boolean v3, v2, Ltds/androidx/viewpager/ViewPager$LayoutParams;->isDecor:Z

    if-nez v3, :cond_1a

    .line 525
    invoke-virtual {p0, v0}, Ltds/androidx/viewpager/ViewPager;->removeViewAt(I)V

    .line 526
    add-int/lit8 v0, v0, -0x1

    .line 521
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "lp":Ltds/androidx/viewpager/ViewPager$LayoutParams;
    :cond_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 529
    .end local v0    # "i":I
    :cond_1d
    return-void
.end method

.method private requestParentDisallowInterceptTouchEvent(Z)V
    .registers 3
    .param p1, "disallowIntercept"    # Z

    .line 2269
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 2270
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_9

    .line 2271
    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2273
    :cond_9
    return-void
.end method

.method private resetTouch()Z
    .registers 2

    .line 2260
    const/4 v0, -0x1

    iput v0, p0, Ltds/androidx/viewpager/ViewPager;->mActivePointerId:I

    .line 2261
    invoke-direct {p0}, Ltds/androidx/viewpager/ViewPager;->endDrag()V

    .line 2262
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2263
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    .line 2264
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 v0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v0, 0x1

    .line 2265
    .local v0, "needsInvalidate":Z
    :goto_24
    return v0
.end method

.method private scrollToItem(IZIZ)V
    .registers 12
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "velocity"    # I
    .param p4, "dispatchSelected"    # Z

    .line 642
    invoke-virtual {p0, p1}, Ltds/androidx/viewpager/ViewPager;->infoForPosition(I)Ltds/androidx/viewpager/ViewPager$ItemInfo;

    move-result-object v0

    .line 643
    .local v0, "curInfo":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    const/4 v1, 0x0

    .line 644
    .local v1, "destX":I
    if-eqz v0, :cond_1c

    .line 645
    invoke-direct {p0}, Ltds/androidx/viewpager/ViewPager;->getClientWidth()I

    move-result v2

    .line 646
    .local v2, "width":I
    int-to-float v3, v2

    iget v4, p0, Ltds/androidx/viewpager/ViewPager;->mFirstOffset:F

    iget v5, v0, Ltds/androidx/viewpager/ViewPager$ItemInfo;->offset:F

    iget v6, p0, Ltds/androidx/viewpager/ViewPager;->mLastOffset:F

    .line 647
    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 646
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v1, v3

    .line 649
    .end local v2    # "width":I
    :cond_1c
    const/4 v2, 0x0

    if-eqz p2, :cond_28

    .line 650
    invoke-virtual {p0, v1, v2, p3}, Ltds/androidx/viewpager/ViewPager;->smoothScrollTo(III)V

    .line 651
    if-eqz p4, :cond_36

    .line 652
    invoke-direct {p0, p1}, Ltds/androidx/viewpager/ViewPager;->dispatchOnPageSelected(I)V

    goto :goto_36

    .line 655
    :cond_28
    if-eqz p4, :cond_2d

    .line 656
    invoke-direct {p0, p1}, Ltds/androidx/viewpager/ViewPager;->dispatchOnPageSelected(I)V

    .line 658
    :cond_2d
    invoke-direct {p0, v2}, Ltds/androidx/viewpager/ViewPager;->completeScroll(Z)V

    .line 659
    invoke-virtual {p0, v1, v2}, Ltds/androidx/viewpager/ViewPager;->scrollTo(II)V

    .line 660
    invoke-direct {p0, v1}, Ltds/androidx/viewpager/ViewPager;->pageScrolled(I)Z

    .line 662
    :cond_36
    :goto_36
    return-void
.end method

.method private setScrollingCacheEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .line 2635
    iget-boolean v0, p0, Ltds/androidx/viewpager/ViewPager;->mScrollingCacheEnabled:Z

    if-eq v0, p1, :cond_6

    .line 2636
    iput-boolean p1, p0, Ltds/androidx/viewpager/ViewPager;->mScrollingCacheEnabled:Z

    .line 2647
    :cond_6
    return-void
.end method

.method private sortChildDrawingOrder()V
    .registers 5

    .line 1248
    iget v0, p0, Ltds/androidx/viewpager/ViewPager;->mDrawingOrder:I

    if-eqz v0, :cond_2d

    .line 1249
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_10

    .line 1250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    goto :goto_13

    .line 1252
    :cond_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1254
    :goto_13
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getChildCount()I

    move-result v0

    .line 1255
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_18
    if-ge v1, v0, :cond_26

    .line 1256
    invoke-virtual {p0, v1}, Ltds/androidx/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1257
    .local v2, "child":Landroid/view/View;
    iget-object v3, p0, Ltds/androidx/viewpager/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1255
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_18

    .line 1259
    .end local v1    # "i":I
    :cond_26
    iget-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    sget-object v2, Ltds/androidx/viewpager/ViewPager;->sPositionComparator:Ltds/androidx/viewpager/ViewPager$ViewPositionComparator;

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1261
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

    .line 2871
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2873
    .local v0, "focusableCount":I
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getDescendantFocusability()I

    move-result v1

    .line 2875
    .local v1, "descendantFocusability":I
    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_2f

    .line 2876
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_2f

    .line 2877
    invoke-virtual {p0, v2}, Ltds/androidx/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2878
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2c

    .line 2879
    invoke-virtual {p0, v3}, Ltds/androidx/viewpager/ViewPager;->infoForChild(Landroid/view/View;)Ltds/androidx/viewpager/ViewPager$ItemInfo;

    move-result-object v4

    .line 2880
    .local v4, "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    if-eqz v4, :cond_2c

    iget v5, v4, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    iget v6, p0, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    if-ne v5, v6, :cond_2c

    .line 2881
    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 2876
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    :cond_2c
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 2891
    .end local v2    # "i":I
    :cond_2f
    const/high16 v2, 0x40000

    if-ne v1, v2, :cond_39

    .line 2892
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_57

    .line 2895
    :cond_39
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_40

    .line 2896
    return-void

    .line 2898
    :cond_40
    and-int/lit8 v2, p3, 0x1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_52

    .line 2899
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->isInTouchMode()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->isFocusableInTouchMode()Z

    move-result v2

    if-nez v2, :cond_52

    .line 2900
    return-void

    .line 2902
    :cond_52
    if-eqz p1, :cond_57

    .line 2903
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2906
    :cond_57
    return-void
.end method

.method addNewItem(II)Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .registers 5
    .param p1, "position"    # I
    .param p2, "index"    # I

    .line 974
    new-instance v0, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    invoke-direct {v0}, Ltds/androidx/viewpager/ViewPager$ItemInfo;-><init>()V

    .line 975
    .local v0, "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    iput p1, v0, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    .line 976
    iget-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    invoke-virtual {v1, p0, p1}, Ltds/androidx/viewpager/PagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Ltds/androidx/viewpager/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    .line 977
    iget-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    invoke-virtual {v1, p1}, Ltds/androidx/viewpager/PagerAdapter;->getPageWidth(I)F

    move-result v1

    iput v1, v0, Ltds/androidx/viewpager/ViewPager$ItemInfo;->widthFactor:F

    .line 978
    if-ltz p2, :cond_28

    iget-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_22

    goto :goto_28

    .line 981
    :cond_22
    iget-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2d

    .line 979
    :cond_28
    :goto_28
    iget-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 983
    :goto_2d
    return-object v0
.end method

.method public addOnAdapterChangeListener(Ltds/androidx/viewpager/ViewPager$OnAdapterChangeListener;)V
    .registers 3
    .param p1, "listener"    # Ltds/androidx/viewpager/ViewPager$OnAdapterChangeListener;

    .line 547
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 548
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    .line 550
    :cond_b
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 551
    return-void
.end method

.method public addOnPageChangeListener(Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;)V
    .registers 3
    .param p1, "listener"    # Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;

    .line 689
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-nez v0, :cond_b

    .line 690
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    .line 692
    :cond_b
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
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

    .line 2916
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    .line 2917
    invoke-virtual {p0, v0}, Ltds/androidx/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2918
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_20

    .line 2919
    invoke-virtual {p0, v1}, Ltds/androidx/viewpager/ViewPager;->infoForChild(Landroid/view/View;)Ltds/androidx/viewpager/ViewPager$ItemInfo;

    move-result-object v2

    .line 2920
    .local v2, "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    if-eqz v2, :cond_20

    iget v3, v2, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    iget v4, p0, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    if-ne v3, v4, :cond_20

    .line 2921
    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 2916
    .end local v1    # "child":Landroid/view/View;
    .end local v2    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    :cond_20
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2925
    .end local v0    # "i":I
    :cond_23
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .line 1438
    invoke-virtual {p0, p3}, Ltds/androidx/viewpager/ViewPager;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1439
    invoke-virtual {p0, p3}, Ltds/androidx/viewpager/ViewPager;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 1441
    :cond_a
    move-object v0, p3

    check-cast v0, Ltds/androidx/viewpager/ViewPager$LayoutParams;

    .line 1443
    .local v0, "lp":Ltds/androidx/viewpager/ViewPager$LayoutParams;
    iget-boolean v1, v0, Ltds/androidx/viewpager/ViewPager$LayoutParams;->isDecor:Z

    invoke-static {p1}, Ltds/androidx/viewpager/ViewPager;->isDecorView(Landroid/view/View;)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Ltds/androidx/viewpager/ViewPager$LayoutParams;->isDecor:Z

    .line 1444
    iget-boolean v1, p0, Ltds/androidx/viewpager/ViewPager;->mInLayout:Z

    if-eqz v1, :cond_30

    .line 1445
    if-eqz v0, :cond_29

    iget-boolean v1, v0, Ltds/androidx/viewpager/ViewPager$LayoutParams;->isDecor:Z

    if-nez v1, :cond_21

    goto :goto_29

    .line 1446
    :cond_21
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Cannot add pager decor view during layout"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1448
    :cond_29
    :goto_29
    const/4 v1, 0x1

    iput-boolean v1, v0, Ltds/androidx/viewpager/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1449
    invoke-virtual {p0, p1, p2, p3}, Ltds/androidx/viewpager/ViewPager;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_33

    .line 1451
    :cond_30
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1461
    :goto_33
    return-void
.end method

.method public arrowScroll(I)Z
    .registers 8
    .param p1, "direction"    # I

    .line 2759
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v0

    .line 2760
    .local v0, "currentFocused":Landroid/view/View;
    if-ne v0, p0, :cond_8

    .line 2761
    const/4 v0, 0x0

    goto :goto_69

    .line 2762
    :cond_8
    if-eqz v0, :cond_69

    .line 2763
    const/4 v1, 0x0

    .line 2764
    .local v1, "isChild":Z
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    .local v2, "parent":Landroid/view/ViewParent;
    :goto_f
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1c

    .line 2766
    if-ne v2, p0, :cond_17

    .line 2767
    const/4 v1, 0x1

    .line 2768
    goto :goto_1c

    .line 2765
    :cond_17
    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    goto :goto_f

    .line 2771
    .end local v2    # "parent":Landroid/view/ViewParent;
    :cond_1c
    :goto_1c
    if-nez v1, :cond_69

    .line 2773
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2774
    .local v2, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2775
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .local v3, "parent":Landroid/view/ViewParent;
    :goto_32
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_4c

    .line 2777
    const-string v4, " => "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2776
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    goto :goto_32

    .line 2779
    .end local v3    # "parent":Landroid/view/ViewParent;
    :cond_4c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2780
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2779
    const-string v4, "ViewPager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2781
    const/4 v0, 0x0

    .line 2785
    .end local v1    # "isChild":Z
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_69
    :goto_69
    const/4 v1, 0x0

    .line 2787
    .local v1, "handled":Z
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v2

    invoke-virtual {v2, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    .line 2789
    .local v2, "nextFocused":Landroid/view/View;
    const/16 v3, 0x42

    const/16 v4, 0x11

    if-eqz v2, :cond_ba

    if-eq v2, v0, :cond_ba

    .line 2790
    if-ne p1, v4, :cond_9a

    .line 2793
    iget-object v3, p0, Ltds/androidx/viewpager/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v2}, Ltds/androidx/viewpager/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2794
    .local v3, "nextLeft":I
    iget-object v4, p0, Ltds/androidx/viewpager/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v0}, Ltds/androidx/viewpager/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 2795
    .local v4, "currLeft":I
    if-eqz v0, :cond_95

    if-lt v3, v4, :cond_95

    .line 2796
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->pageLeft()Z

    move-result v1

    goto :goto_99

    .line 2798
    :cond_95
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 2800
    .end local v3    # "nextLeft":I
    .end local v4    # "currLeft":I
    :cond_99
    :goto_99
    goto :goto_ce

    :cond_9a
    if-ne p1, v3, :cond_99

    .line 2803
    iget-object v3, p0, Ltds/androidx/viewpager/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v2}, Ltds/androidx/viewpager/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->left:I

    .line 2804
    .restart local v3    # "nextLeft":I
    iget-object v4, p0, Ltds/androidx/viewpager/ViewPager;->mTempRect:Landroid/graphics/Rect;

    invoke-direct {p0, v4, v0}, Ltds/androidx/viewpager/ViewPager;->getChildRectInPagerCoordinates(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 2805
    .restart local v4    # "currLeft":I
    if-eqz v0, :cond_b5

    if-gt v3, v4, :cond_b5

    .line 2806
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->pageRight()Z

    move-result v1

    goto :goto_b9

    .line 2808
    :cond_b5
    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    move-result v1

    .line 2810
    .end local v3    # "nextLeft":I
    .end local v4    # "currLeft":I
    :goto_b9
    goto :goto_ce

    .line 2811
    :cond_ba
    if-eq p1, v4, :cond_ca

    const/4 v4, 0x1

    if-ne p1, v4, :cond_c0

    goto :goto_ca

    .line 2814
    :cond_c0
    if-eq p1, v3, :cond_c5

    const/4 v3, 0x2

    if-ne p1, v3, :cond_ce

    .line 2816
    :cond_c5
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->pageRight()Z

    move-result v1

    goto :goto_ce

    .line 2813
    :cond_ca
    :goto_ca
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->pageLeft()Z

    move-result v1

    .line 2818
    :cond_ce
    :goto_ce
    if-eqz v1, :cond_d7

    .line 2819
    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result v3

    invoke-virtual {p0, v3}, Ltds/androidx/viewpager/ViewPager;->playSoundEffect(I)V

    .line 2821
    :cond_d7
    return v1
.end method

.method public beginFakeDrag()Z
    .registers 13

    .line 2494
    iget-boolean v0, p0, Ltds/androidx/viewpager/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_6

    .line 2495
    const/4 v0, 0x0

    return v0

    .line 2497
    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltds/androidx/viewpager/ViewPager;->mFakeDragging:Z

    .line 2498
    invoke-virtual {p0, v0}, Ltds/androidx/viewpager/ViewPager;->setScrollState(I)V

    .line 2499
    const/4 v1, 0x0

    iput v1, p0, Ltds/androidx/viewpager/ViewPager;->mLastMotionX:F

    iput v1, p0, Ltds/androidx/viewpager/ViewPager;->mInitialMotionX:F

    .line 2500
    iget-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1c

    .line 2501
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1f

    .line 2503
    :cond_1c
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    .line 2505
    :goto_1f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2506
    .local v10, "time":J
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v4, v10

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    .line 2507
    .local v1, "ev":Landroid/view/MotionEvent;
    iget-object v2, p0, Ltds/androidx/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2508
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 2509
    iput-wide v10, p0, Ltds/androidx/viewpager/ViewPager;->mFakeDragBeginTime:J

    .line 2510
    return v0
.end method

.method protected canScroll(Landroid/view/View;ZIII)Z
    .registers 20
    .param p1, "v"    # Landroid/view/View;
    .param p2, "checkV"    # Z
    .param p3, "dx"    # I
    .param p4, "x"    # I
    .param p5, "y"    # I

    .line 2685
    move-object v0, p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_5c

    .line 2686
    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    .line 2687
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    .line 2688
    .local v3, "scrollX":I
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    .line 2689
    .local v4, "scrollY":I
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    .line 2691
    .local v5, "count":I
    add-int/lit8 v6, v5, -0x1

    .local v6, "i":I
    :goto_17
    if-ltz v6, :cond_5c

    .line 2694
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 2695
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

    .line 2696
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    if-lt v7, v8, :cond_59

    add-int v7, p5, v4

    invoke-virtual {v13}, Landroid/view/View;->getBottom()I

    move-result v8

    if-ge v7, v8, :cond_59

    const/4 v9, 0x1

    add-int v7, p4, v3

    .line 2697
    invoke-virtual {v13}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int v11, v7, v8

    add-int v7, p5, v4

    .line 2698
    invoke-virtual {v13}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int v12, v7, v8

    .line 2697
    move-object v7, p0

    move-object v8, v13

    move/from16 v10, p3

    invoke-virtual/range {v7 .. v12}, Ltds/androidx/viewpager/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v7

    if-eqz v7, :cond_59

    .line 2699
    return v2

    .line 2691
    .end local v13    # "child":Landroid/view/View;
    :cond_59
    add-int/lit8 v6, v6, -0x1

    goto :goto_17

    .line 2704
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v3    # "scrollX":I
    .end local v4    # "scrollY":I
    .end local v5    # "count":I
    .end local v6    # "i":I
    :cond_5c
    if-eqz p2, :cond_68

    move/from16 v1, p3

    neg-int v3, v1

    invoke-virtual {p1, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

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

    .line 2658
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 2659
    return v1

    .line 2662
    :cond_6
    invoke-direct {p0}, Ltds/androidx/viewpager/ViewPager;->getClientWidth()I

    move-result v0

    .line 2663
    .local v0, "width":I
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getScrollX()I

    move-result v2

    .line 2664
    .local v2, "scrollX":I
    const/4 v3, 0x1

    if-gez p1, :cond_1a

    .line 2665
    int-to-float v4, v0

    iget v5, p0, Ltds/androidx/viewpager/ViewPager;->mFirstOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-le v2, v4, :cond_19

    move v1, v3

    :cond_19
    return v1

    .line 2666
    :cond_1a
    if-lez p1, :cond_25

    .line 2667
    int-to-float v4, v0

    iget v5, p0, Ltds/androidx/viewpager/ViewPager;->mLastOffset:F

    mul-float/2addr v4, v5

    float-to-int v4, v4

    if-ge v2, v4, :cond_24

    move v1, v3

    :cond_24
    return v1

    .line 2669
    :cond_25
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2972
    instance-of v0, p1, Ltds/androidx/viewpager/ViewPager$LayoutParams;

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

    .line 711
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 712
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 714
    :cond_7
    return-void
.end method

.method public computeScroll()V
    .registers 6

    .line 1759
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltds/androidx/viewpager/ViewPager;->mIsScrollStarted:Z

    .line 1760
    iget-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_41

    iget-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_41

    .line 1761
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getScrollX()I

    move-result v0

    .line 1762
    .local v0, "oldX":I
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getScrollY()I

    move-result v1

    .line 1763
    .local v1, "oldY":I
    iget-object v2, p0, Ltds/androidx/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    .line 1764
    .local v2, "x":I
    iget-object v3, p0, Ltds/androidx/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    .line 1766
    .local v3, "y":I
    if-ne v0, v2, :cond_2b

    if-eq v1, v3, :cond_3d

    .line 1767
    :cond_2b
    invoke-virtual {p0, v2, v3}, Ltds/androidx/viewpager/ViewPager;->scrollTo(II)V

    .line 1768
    invoke-direct {p0, v2}, Ltds/androidx/viewpager/ViewPager;->pageScrolled(I)Z

    move-result v4

    if-nez v4, :cond_3d

    .line 1769
    iget-object v4, p0, Ltds/androidx/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1770
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Ltds/androidx/viewpager/ViewPager;->scrollTo(II)V

    .line 1775
    :cond_3d
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 1776
    return-void

    .line 1780
    .end local v0    # "oldX":I
    .end local v1    # "oldY":I
    .end local v2    # "x":I
    .end local v3    # "y":I
    :cond_41
    invoke-direct {p0, v0}, Ltds/androidx/viewpager/ViewPager;->completeScroll(Z)V

    .line 1781
    return-void
.end method

.method dataSetChanged()V
    .registers 13

    .line 989
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    invoke-virtual {v0}, Ltds/androidx/viewpager/PagerAdapter;->getCount()I

    move-result v0

    .line 990
    .local v0, "adapterCount":I
    iput v0, p0, Ltds/androidx/viewpager/ViewPager;->mExpectedAdapterCount:I

    .line 991
    iget-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Ltds/androidx/viewpager/ViewPager;->mOffscreenPageLimit:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_21

    iget-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    .line 992
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_21

    move v1, v3

    goto :goto_22

    :cond_21
    move v1, v4

    .line 993
    .local v1, "needPopulate":Z
    :goto_22
    iget v2, p0, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    .line 995
    .local v2, "newCurrItem":I
    const/4 v5, 0x0

    .line 996
    .local v5, "isUpdating":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_26
    iget-object v7, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_82

    .line 997
    iget-object v7, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    .line 998
    .local v7, "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    iget-object v8, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    iget-object v9, v7, Ltds/androidx/viewpager/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ltds/androidx/viewpager/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result v8

    .line 1000
    .local v8, "newPos":I
    const/4 v9, -0x1

    if-ne v8, v9, :cond_42

    .line 1001
    goto :goto_80

    .line 1004
    :cond_42
    const/4 v9, -0x2

    if-ne v8, v9, :cond_72

    .line 1005
    iget-object v9, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1006
    add-int/lit8 v6, v6, -0x1

    .line 1008
    if-nez v5, :cond_54

    .line 1009
    iget-object v9, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    invoke-virtual {v9, p0}, Ltds/androidx/viewpager/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 1010
    const/4 v5, 0x1

    .line 1013
    :cond_54
    iget-object v9, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    iget v10, v7, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    iget-object v11, v7, Ltds/androidx/viewpager/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v9, p0, v10, v11}, Ltds/androidx/viewpager/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1014
    const/4 v1, 0x1

    .line 1016
    iget v9, p0, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    iget v10, v7, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    if-ne v9, v10, :cond_80

    .line 1018
    iget v9, p0, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    add-int/lit8 v10, v0, -0x1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1019
    const/4 v1, 0x1

    goto :goto_80

    .line 1024
    :cond_72
    iget v9, v7, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    if-eq v9, v8, :cond_80

    .line 1025
    iget v9, v7, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    iget v10, p0, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    if-ne v9, v10, :cond_7d

    .line 1027
    move v2, v8

    .line 1030
    :cond_7d
    iput v8, v7, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    .line 1031
    const/4 v1, 0x1

    .line 996
    .end local v7    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .end local v8    # "newPos":I
    :cond_80
    :goto_80
    add-int/2addr v6, v3

    goto :goto_26

    .line 1035
    .end local v6    # "i":I
    :cond_82
    if-eqz v5, :cond_89

    .line 1036
    iget-object v6, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    invoke-virtual {v6, p0}, Ltds/androidx/viewpager/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1039
    :cond_89
    iget-object v6, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    sget-object v7, Ltds/androidx/viewpager/ViewPager;->COMPARATOR:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1041
    if-eqz v1, :cond_b3

    .line 1043
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getChildCount()I

    move-result v6

    .line 1044
    .local v6, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_97
    if-ge v7, v6, :cond_ad

    .line 1045
    invoke-virtual {p0, v7}, Ltds/androidx/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 1046
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Ltds/androidx/viewpager/ViewPager$LayoutParams;

    .line 1047
    .local v9, "lp":Ltds/androidx/viewpager/ViewPager$LayoutParams;
    iget-boolean v10, v9, Ltds/androidx/viewpager/ViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_aa

    .line 1048
    const/4 v10, 0x0

    iput v10, v9, Ltds/androidx/viewpager/ViewPager$LayoutParams;->widthFactor:F

    .line 1044
    .end local v8    # "child":Landroid/view/View;
    .end local v9    # "lp":Ltds/androidx/viewpager/ViewPager$LayoutParams;
    :cond_aa
    add-int/lit8 v7, v7, 0x1

    goto :goto_97

    .line 1052
    .end local v7    # "i":I
    :cond_ad
    invoke-virtual {p0, v2, v4, v3}, Ltds/androidx/viewpager/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 1053
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->requestLayout()V

    .line 1055
    .end local v6    # "childCount":I
    :cond_b3
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2710
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {p0, p1}, Ltds/androidx/viewpager/ViewPager;->executeKeyEvent(Landroid/view/KeyEvent;)Z

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

.method distanceInfluenceForSnapDuration(F)F
    .registers 4
    .param p1, "f"    # F

    .line 893
    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    .line 894
    const v0, 0x3ef1463b

    mul-float/2addr p1, v0

    .line 895
    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .registers 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2392
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 2393
    const/4 v0, 0x0

    .line 2395
    .local v0, "needsInvalidate":Z
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getOverScrollMode()I

    move-result v1

    .line 2396
    .local v1, "overScrollMode":I
    if-eqz v1, :cond_24

    const/4 v2, 0x1

    if-ne v1, v2, :cond_18

    iget-object v3, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    if-eqz v3, :cond_18

    .line 2398
    invoke-virtual {v3}, Ltds/androidx/viewpager/PagerAdapter;->getCount()I

    move-result v3

    if-le v3, v2, :cond_18

    goto :goto_24

    .line 2422
    :cond_18
    iget-object v2, p0, Ltds/androidx/viewpager/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    .line 2423
    iget-object v2, p0, Ltds/androidx/viewpager/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_a7

    .line 2399
    :cond_24
    :goto_24
    iget-object v2, p0, Ltds/androidx/viewpager/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_64

    .line 2400
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2401
    .local v2, "restoreCount":I
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    .line 2402
    .local v3, "height":I
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getWidth()I

    move-result v4

    .line 2404
    .local v4, "width":I
    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2405
    neg-int v5, v3

    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getPaddingTop()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    iget v6, p0, Ltds/androidx/viewpager/ViewPager;->mFirstOffset:F

    int-to-float v7, v4

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2406
    iget-object v5, p0, Ltds/androidx/viewpager/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v3, v4}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2407
    iget-object v5, p0, Ltds/androidx/viewpager/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2408
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2410
    .end local v2    # "restoreCount":I
    .end local v3    # "height":I
    .end local v4    # "width":I
    :cond_64
    iget-object v2, p0, Ltds/androidx/viewpager/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v2}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v2

    if-nez v2, :cond_a7

    .line 2411
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 2412
    .restart local v2    # "restoreCount":I
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getWidth()I

    move-result v3

    .line 2413
    .local v3, "width":I
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getPaddingTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getPaddingBottom()I

    move-result v5

    sub-int/2addr v4, v5

    .line 2415
    .local v4, "height":I
    const/high16 v5, 0x42b40000    # 90.0f

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->rotate(F)V

    .line 2416
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getPaddingTop()I

    move-result v5

    neg-int v5, v5

    int-to-float v5, v5

    iget v6, p0, Ltds/androidx/viewpager/ViewPager;->mLastOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    neg-float v6, v6

    int-to-float v7, v3

    mul-float/2addr v6, v7

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2417
    iget-object v5, p0, Ltds/androidx/viewpager/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, v4, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    .line 2418
    iget-object v5, p0, Ltds/androidx/viewpager/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    invoke-virtual {v5, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v5

    or-int/2addr v0, v5

    .line 2419
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2426
    .end local v2    # "restoreCount":I
    .end local v3    # "width":I
    .end local v4    # "height":I
    :cond_a7
    :goto_a7
    if-eqz v0, :cond_ac

    .line 2428
    invoke-static {p0}, Ltds/androidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2430
    :cond_ac
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 3

    .line 881
    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    .line 882
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 883
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 884
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 886
    :cond_14
    return-void
.end method

.method public endFakeDrag()V
    .registers 11

    .line 2520
    iget-boolean v0, p0, Ltds/androidx/viewpager/ViewPager;->mFakeDragging:Z

    if-eqz v0, :cond_47

    .line 2524
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    if-eqz v0, :cond_40

    .line 2525
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2526
    .local v0, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v1, 0x3e8

    iget v2, p0, Ltds/androidx/viewpager/ViewPager;->mMaximumVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2527
    iget v1, p0, Ltds/androidx/viewpager/ViewPager;->mActivePointerId:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v1

    float-to-int v1, v1

    .line 2528
    .local v1, "initialVelocity":I
    const/4 v2, 0x1

    iput-boolean v2, p0, Ltds/androidx/viewpager/ViewPager;->mPopulatePending:Z

    .line 2529
    invoke-direct {p0}, Ltds/androidx/viewpager/ViewPager;->getClientWidth()I

    move-result v3

    .line 2530
    .local v3, "width":I
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getScrollX()I

    move-result v4

    .line 2531
    .local v4, "scrollX":I
    invoke-direct {p0}, Ltds/androidx/viewpager/ViewPager;->infoForCurrentScrollPosition()Ltds/androidx/viewpager/ViewPager$ItemInfo;

    move-result-object v5

    .line 2532
    .local v5, "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    iget v6, v5, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    .line 2533
    .local v6, "currentPage":I
    int-to-float v7, v4

    int-to-float v8, v3

    div-float/2addr v7, v8

    iget v8, v5, Ltds/androidx/viewpager/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v7, v8

    iget v8, v5, Ltds/androidx/viewpager/ViewPager$ItemInfo;->widthFactor:F

    div-float/2addr v7, v8

    .line 2534
    .local v7, "pageOffset":F
    iget v8, p0, Ltds/androidx/viewpager/ViewPager;->mLastMotionX:F

    iget v9, p0, Ltds/androidx/viewpager/ViewPager;->mInitialMotionX:F

    sub-float/2addr v8, v9

    float-to-int v8, v8

    .line 2535
    .local v8, "totalDelta":I
    invoke-direct {p0, v6, v7, v1, v8}, Ltds/androidx/viewpager/ViewPager;->determineTargetPage(IFII)I

    move-result v9

    .line 2537
    .local v9, "nextPage":I
    invoke-virtual {p0, v9, v2, v2, v1}, Ltds/androidx/viewpager/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 2539
    .end local v0    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v1    # "initialVelocity":I
    .end local v3    # "width":I
    .end local v4    # "scrollX":I
    .end local v5    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .end local v6    # "currentPage":I
    .end local v7    # "pageOffset":F
    .end local v8    # "totalDelta":I
    .end local v9    # "nextPage":I
    :cond_40
    invoke-direct {p0}, Ltds/androidx/viewpager/ViewPager;->endDrag()V

    .line 2541
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/viewpager/ViewPager;->mFakeDragging:Z

    .line 2542
    return-void

    .line 2521
    :cond_47
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public executeKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .line 2722
    const/4 v0, 0x0

    .line 2723
    .local v0, "handled":Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_4a

    .line 2724
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x2

    sparse-switch v1, :sswitch_data_4c

    goto :goto_4a

    .line 2740
    :sswitch_10
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 2741
    invoke-virtual {p0, v2}, Ltds/androidx/viewpager/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_4a

    .line 2742
    :cond_1b
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 2743
    invoke-virtual {p0, v1}, Ltds/androidx/viewpager/ViewPager;->arrowScroll(I)Z

    move-result v0

    goto :goto_4a

    .line 2733
    :sswitch_27
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 2734
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->pageRight()Z

    move-result v0

    goto :goto_4a

    .line 2736
    :cond_32
    const/16 v1, 0x42

    invoke-virtual {p0, v1}, Ltds/androidx/viewpager/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2738
    goto :goto_4a

    .line 2726
    :sswitch_39
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 2727
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->pageLeft()Z

    move-result v0

    goto :goto_4a

    .line 2729
    :cond_44
    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Ltds/androidx/viewpager/ViewPager;->arrowScroll(I)Z

    move-result v0

    .line 2748
    :cond_4a
    :goto_4a
    return v0

    nop

    :sswitch_data_4c
    .sparse-switch
        0x15 -> :sswitch_39
        0x16 -> :sswitch_27
        0x3d -> :sswitch_10
    .end sparse-switch
.end method

.method public fakeDragBy(F)V
    .registers 21
    .param p1, "xOffset"    # F

    .line 2552
    move-object/from16 v0, p0

    iget-boolean v1, v0, Ltds/androidx/viewpager/ViewPager;->mFakeDragging:Z

    if-eqz v1, :cond_90

    .line 2556
    iget-object v1, v0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    if-nez v1, :cond_b

    .line 2557
    return-void

    .line 2560
    :cond_b
    iget v1, v0, Ltds/androidx/viewpager/ViewPager;->mLastMotionX:F

    add-float v1, v1, p1

    iput v1, v0, Ltds/androidx/viewpager/ViewPager;->mLastMotionX:F

    .line 2562
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    .line 2563
    .local v1, "oldScrollX":F
    sub-float v2, v1, p1

    .line 2564
    .local v2, "scrollX":F
    invoke-direct/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getClientWidth()I

    move-result v3

    .line 2566
    .local v3, "width":I
    int-to-float v4, v3

    iget v5, v0, Ltds/androidx/viewpager/ViewPager;->mFirstOffset:F

    mul-float/2addr v4, v5

    .line 2567
    .local v4, "leftBound":F
    int-to-float v5, v3

    iget v6, v0, Ltds/androidx/viewpager/ViewPager;->mLastOffset:F

    mul-float/2addr v5, v6

    .line 2569
    .local v5, "rightBound":F
    iget-object v6, v0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    .line 2570
    .local v6, "firstItem":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    iget-object v7, v0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    .line 2571
    .local v7, "lastItem":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    iget v8, v6, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    if-eqz v8, :cond_44

    .line 2572
    iget v8, v6, Ltds/androidx/viewpager/ViewPager$ItemInfo;->offset:F

    int-to-float v9, v3

    mul-float v4, v8, v9

    .line 2574
    :cond_44
    iget v8, v7, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    iget-object v9, v0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    invoke-virtual {v9}, Ltds/androidx/viewpager/PagerAdapter;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-eq v8, v9, :cond_55

    .line 2575
    iget v8, v7, Ltds/androidx/viewpager/ViewPager$ItemInfo;->offset:F

    int-to-float v9, v3

    mul-float v5, v8, v9

    .line 2578
    :cond_55
    cmpg-float v8, v2, v4

    if-gez v8, :cond_5b

    .line 2579
    move v2, v4

    goto :goto_60

    .line 2580
    :cond_5b
    cmpl-float v8, v2, v5

    if-lez v8, :cond_60

    .line 2581
    move v2, v5

    .line 2584
    :cond_60
    :goto_60
    iget v8, v0, Ltds/androidx/viewpager/ViewPager;->mLastMotionX:F

    float-to-int v9, v2

    int-to-float v9, v9

    sub-float v9, v2, v9

    add-float/2addr v8, v9

    iput v8, v0, Ltds/androidx/viewpager/ViewPager;->mLastMotionX:F

    .line 2585
    float-to-int v8, v2

    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getScrollY()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Ltds/androidx/viewpager/ViewPager;->scrollTo(II)V

    .line 2586
    float-to-int v8, v2

    invoke-direct {v0, v8}, Ltds/androidx/viewpager/ViewPager;->pageScrolled(I)Z

    .line 2589
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 2590
    .local v17, "time":J
    iget-wide v9, v0, Ltds/androidx/viewpager/ViewPager;->mFakeDragBeginTime:J

    const/4 v13, 0x2

    iget v14, v0, Ltds/androidx/viewpager/ViewPager;->mLastMotionX:F

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-wide/from16 v11, v17

    invoke-static/range {v9 .. v16}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v8

    .line 2592
    .local v8, "ev":Landroid/view/MotionEvent;
    iget-object v9, v0, Ltds/androidx/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, v8}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2593
    invoke-virtual {v8}, Landroid/view/MotionEvent;->recycle()V

    .line 2594
    return-void

    .line 2553
    .end local v1    # "oldScrollX":F
    .end local v2    # "scrollX":F
    .end local v3    # "width":I
    .end local v4    # "leftBound":F
    .end local v5    # "rightBound":F
    .end local v6    # "firstItem":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .end local v7    # "lastItem":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .end local v8    # "ev":Landroid/view/MotionEvent;
    .end local v17    # "time":J
    :cond_90
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 2

    .line 2962
    new-instance v0, Ltds/androidx/viewpager/ViewPager$LayoutParams;

    invoke-direct {v0}, Ltds/androidx/viewpager/ViewPager$LayoutParams;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 2977
    new-instance v0, Ltds/androidx/viewpager/ViewPager$LayoutParams;

    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ltds/androidx/viewpager/ViewPager$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 2967
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getAdapter()Ltds/androidx/viewpager/PagerAdapter;
    .registers 2

    .line 538
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    return-object v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 5
    .param p1, "childCount"    # I
    .param p2, "i"    # I

    .line 768
    iget v0, p0, Ltds/androidx/viewpager/ViewPager;->mDrawingOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    add-int/lit8 v0, p1, -0x1

    sub-int/2addr v0, p2

    goto :goto_a

    :cond_9
    move v0, p2

    .line 769
    .local v0, "index":I
    :goto_a
    iget-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mDrawingOrderedChildren:Ljava/util/ArrayList;

    .line 770
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Ltds/androidx/viewpager/ViewPager$LayoutParams;

    iget v1, v1, Ltds/androidx/viewpager/ViewPager$LayoutParams;->childIndex:I

    .line 771
    .local v1, "result":I
    return v1
.end method

.method public getCurrentItem()I
    .registers 2

    .line 593
    iget v0, p0, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    return v0
.end method

.method public getOffscreenPageLimit()I
    .registers 2

    .line 794
    iget v0, p0, Ltds/androidx/viewpager/ViewPager;->mOffscreenPageLimit:I

    return v0
.end method

.method public getPageMargin()I
    .registers 2

    .line 850
    iget v0, p0, Ltds/androidx/viewpager/ViewPager;->mPageMargin:I

    return v0
.end method

.method infoForAnyChild(Landroid/view/View;)Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 1489
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    move-object v1, v0

    .local v1, "parent":Landroid/view/ViewParent;
    if-eq v0, p0, :cond_14

    .line 1490
    if-eqz v1, :cond_12

    instance-of v0, v1, Landroid/view/View;

    if-nez v0, :cond_e

    goto :goto_12

    .line 1493
    :cond_e
    move-object p1, v1

    check-cast p1, Landroid/view/View;

    goto :goto_0

    .line 1491
    :cond_12
    :goto_12
    const/4 v0, 0x0

    return-object v0

    .line 1495
    :cond_14
    invoke-virtual {p0, p1}, Ltds/androidx/viewpager/ViewPager;->infoForChild(Landroid/view/View;)Ltds/androidx/viewpager/ViewPager$ItemInfo;

    move-result-object v0

    return-object v0
.end method

.method infoForChild(Landroid/view/View;)Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .registers 6
    .param p1, "child"    # Landroid/view/View;

    .line 1478
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1f

    .line 1479
    iget-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    .line 1480
    .local v1, "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    iget-object v2, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    iget-object v3, v1, Ltds/androidx/viewpager/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Ltds/androidx/viewpager/PagerAdapter;->isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 1481
    return-object v1

    .line 1478
    .end local v1    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1484
    .end local v0    # "i":I
    :cond_1f
    const/4 v0, 0x0

    return-object v0
.end method

.method infoForPosition(I)Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .registers 5
    .param p1, "position"    # I

    .line 1499
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    .line 1500
    iget-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    .line 1501
    .local v1, "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    iget v2, v1, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    if-ne v2, p1, :cond_16

    .line 1502
    return-object v1

    .line 1499
    .end local v1    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1505
    .end local v0    # "i":I
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method initViewPager()V
    .registers 5

    .line 375
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ltds/androidx/viewpager/ViewPager;->setWillNotDraw(Z)V

    .line 376
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Ltds/androidx/viewpager/ViewPager;->setDescendantFocusability(I)V

    .line 377
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ltds/androidx/viewpager/ViewPager;->setFocusable(Z)V

    .line 378
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 379
    .local v0, "context":Landroid/content/Context;
    new-instance v1, Landroid/widget/Scroller;

    sget-object v2, Ltds/androidx/viewpager/ViewPager;->sInterpolator:Landroid/view/animation/Interpolator;

    invoke-direct {v1, v0, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 380
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    .line 381
    .local v1, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 383
    .local v2, "density":F
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v3

    iput v3, p0, Ltds/androidx/viewpager/ViewPager;->mTouchSlop:I

    .line 384
    const/high16 v3, 0x43c80000    # 400.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Ltds/androidx/viewpager/ViewPager;->mMinimumVelocity:I

    .line 385
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Ltds/androidx/viewpager/ViewPager;->mMaximumVelocity:I

    .line 386
    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Ltds/androidx/viewpager/ViewPager;->mLeftEdge:Landroid/widget/EdgeEffect;

    .line 387
    new-instance v3, Landroid/widget/EdgeEffect;

    invoke-direct {v3, v0}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Ltds/androidx/viewpager/ViewPager;->mRightEdge:Landroid/widget/EdgeEffect;

    .line 389
    const/high16 v3, 0x41c80000    # 25.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Ltds/androidx/viewpager/ViewPager;->mFlingDistance:I

    .line 390
    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Ltds/androidx/viewpager/ViewPager;->mCloseEnough:I

    .line 391
    const/high16 v3, 0x41800000    # 16.0f

    mul-float/2addr v3, v2

    float-to-int v3, v3

    iput v3, p0, Ltds/androidx/viewpager/ViewPager;->mDefaultGutterSize:I

    .line 393
    new-instance v3, Ltds/androidx/viewpager/ViewPager$4;

    invoke-direct {v3, p0}, Ltds/androidx/viewpager/ViewPager$4;-><init>(Ltds/androidx/viewpager/ViewPager;)V

    invoke-static {p0, v3}, Ltds/androidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Ltds/androidx/core/view/OnApplyWindowInsetsListener;)V

    .line 441
    return-void
.end method

.method public isFakeDragging()Z
    .registers 2

    .line 2606
    iget-boolean v0, p0, Ltds/androidx/viewpager/ViewPager;->mFakeDragging:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .registers 2

    .line 1510
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 1511
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltds/androidx/viewpager/ViewPager;->mFirstLayout:Z

    .line 1512
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .line 445
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mEndScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Ltds/androidx/viewpager/ViewPager;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 447
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_14

    .line 448
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 450
    :cond_14
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 451
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 19
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 2434
    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    .line 2437
    iget v1, v0, Ltds/androidx/viewpager/ViewPager;->mPageMargin:I

    if-lez v1, :cond_ba

    iget-object v1, v0, Ltds/androidx/viewpager/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_ba

    iget-object v1, v0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_ba

    iget-object v1, v0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    if-eqz v1, :cond_ba

    .line 2438
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getScrollX()I

    move-result v1

    .line 2439
    .local v1, "scrollX":I
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getWidth()I

    move-result v2

    .line 2441
    .local v2, "width":I
    iget v3, v0, Ltds/androidx/viewpager/ViewPager;->mPageMargin:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    .line 2442
    .local v3, "marginOffset":F
    const/4 v4, 0x0

    .line 2443
    .local v4, "itemIndex":I
    iget-object v5, v0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    .line 2444
    .local v5, "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    iget v6, v5, Ltds/androidx/viewpager/ViewPager$ItemInfo;->offset:F

    .line 2445
    .local v6, "offset":F
    iget-object v7, v0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 2446
    .local v7, "itemCount":I
    iget v8, v5, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    .line 2447
    .local v8, "firstPos":I
    iget-object v9, v0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v10, v7, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    iget v9, v9, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    .line 2448
    .local v9, "lastPos":I
    move v10, v8

    .local v10, "pos":I
    :goto_47
    if-ge v10, v9, :cond_b5

    .line 2449
    :goto_49
    iget v11, v5, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    if-le v10, v11, :cond_5b

    if-ge v4, v7, :cond_5b

    .line 2450
    iget-object v11, v0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v5, v11

    check-cast v5, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    goto :goto_49

    .line 2454
    :cond_5b
    iget v11, v5, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    if-ne v10, v11, :cond_6e

    .line 2455
    iget v11, v5, Ltds/androidx/viewpager/ViewPager$ItemInfo;->offset:F

    iget v12, v5, Ltds/androidx/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v11, v12

    int-to-float v12, v2

    mul-float/2addr v11, v12

    .line 2456
    .local v11, "drawAt":F
    iget v12, v5, Ltds/androidx/viewpager/ViewPager$ItemInfo;->offset:F

    iget v13, v5, Ltds/androidx/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v12, v13

    add-float/2addr v12, v3

    move v6, v12

    .end local v6    # "offset":F
    .local v12, "offset":F
    goto :goto_7c

    .line 2458
    .end local v11    # "drawAt":F
    .end local v12    # "offset":F
    .restart local v6    # "offset":F
    :cond_6e
    iget-object v11, v0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    invoke-virtual {v11, v10}, Ltds/androidx/viewpager/PagerAdapter;->getPageWidth(I)F

    move-result v11

    .line 2459
    .local v11, "widthFactor":F
    add-float v12, v6, v11

    int-to-float v13, v2

    mul-float/2addr v12, v13

    .line 2460
    .local v12, "drawAt":F
    add-float v13, v11, v3

    add-float/2addr v6, v13

    move v11, v12

    .line 2463
    .end local v12    # "drawAt":F
    .local v11, "drawAt":F
    :goto_7c
    iget v12, v0, Ltds/androidx/viewpager/ViewPager;->mPageMargin:I

    int-to-float v12, v12

    add-float/2addr v12, v11

    int-to-float v13, v1

    cmpl-float v12, v12, v13

    if-lez v12, :cond_a4

    .line 2464
    iget-object v12, v0, Ltds/androidx/viewpager/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v13

    iget v14, v0, Ltds/androidx/viewpager/ViewPager;->mTopPageBounds:I

    iget v15, v0, Ltds/androidx/viewpager/ViewPager;->mPageMargin:I

    int-to-float v15, v15

    add-float/2addr v15, v11

    .line 2465
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move/from16 v16, v3

    .end local v3    # "marginOffset":F
    .local v16, "marginOffset":F
    iget v3, v0, Ltds/androidx/viewpager/ViewPager;->mBottomPageBounds:I

    .line 2464
    invoke-virtual {v12, v13, v14, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2466
    iget-object v3, v0, Ltds/androidx/viewpager/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v12, p1

    invoke-virtual {v3, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_a8

    .line 2463
    .end local v16    # "marginOffset":F
    .restart local v3    # "marginOffset":F
    :cond_a4
    move-object/from16 v12, p1

    move/from16 v16, v3

    .line 2469
    .end local v3    # "marginOffset":F
    .restart local v16    # "marginOffset":F
    :goto_a8
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v11, v3

    if-lez v3, :cond_b0

    .line 2470
    goto :goto_bc

    .line 2448
    .end local v11    # "drawAt":F
    :cond_b0
    add-int/lit8 v10, v10, 0x1

    move/from16 v3, v16

    goto :goto_47

    .end local v16    # "marginOffset":F
    .restart local v3    # "marginOffset":F
    :cond_b5
    move-object/from16 v12, p1

    move/from16 v16, v3

    .end local v3    # "marginOffset":F
    .restart local v16    # "marginOffset":F
    goto :goto_bc

    .line 2437
    .end local v1    # "scrollX":I
    .end local v2    # "width":I
    .end local v4    # "itemIndex":I
    .end local v5    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .end local v6    # "offset":F
    .end local v7    # "itemCount":I
    .end local v8    # "firstPos":I
    .end local v9    # "lastPos":I
    .end local v10    # "pos":I
    .end local v16    # "marginOffset":F
    :cond_ba
    move-object/from16 v12, p1

    .line 2474
    :goto_bc
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 21
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 1997
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v8, v0, 0xff

    .line 2000
    .local v8, "action":I
    const/4 v9, 0x0

    const/4 v0, 0x3

    if-eq v8, v0, :cond_121

    const/4 v10, 0x1

    if-ne v8, v10, :cond_13

    goto/16 :goto_121

    .line 2009
    :cond_13
    if-eqz v8, :cond_1f

    .line 2010
    iget-boolean v0, v6, Ltds/androidx/viewpager/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_1a

    .line 2012
    return v10

    .line 2014
    :cond_1a
    iget-boolean v0, v6, Ltds/androidx/viewpager/ViewPager;->mIsUnableToDrag:Z

    if-eqz v0, :cond_1f

    .line 2016
    return v9

    .line 2020
    :cond_1f
    sparse-switch v8, :sswitch_data_126

    goto/16 :goto_10f

    .line 2114
    :sswitch_24
    invoke-direct/range {p0 .. p1}, Ltds/androidx/viewpager/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    goto/16 :goto_10f

    .line 2031
    :sswitch_29
    iget v11, v6, Ltds/androidx/viewpager/ViewPager;->mActivePointerId:I

    .line 2032
    .local v11, "activePointerId":I
    const/4 v0, -0x1

    if-ne v11, v0, :cond_30

    .line 2034
    goto/16 :goto_10f

    .line 2037
    :cond_30
    invoke-virtual {v7, v11}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v12

    .line 2038
    .local v12, "pointerIndex":I
    invoke-virtual {v7, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v13

    .line 2039
    .local v13, "x":F
    iget v0, v6, Ltds/androidx/viewpager/ViewPager;->mLastMotionX:F

    sub-float v14, v13, v0

    .line 2040
    .local v14, "dx":F
    invoke-static {v14}, Ljava/lang/Math;->abs(F)F

    move-result v15

    .line 2041
    .local v15, "xDiff":F
    invoke-virtual {v7, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 2042
    .local v5, "y":F
    iget v0, v6, Ltds/androidx/viewpager/ViewPager;->mInitialMotionY:F

    sub-float v0, v5, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v16

    .line 2045
    .local v16, "yDiff":F
    const/16 v17, 0x0

    cmpl-float v0, v14, v17

    if-eqz v0, :cond_75

    iget v0, v6, Ltds/androidx/viewpager/ViewPager;->mLastMotionX:F

    invoke-direct {v6, v0, v14}, Ltds/androidx/viewpager/ViewPager;->isGutterDrag(FF)Z

    move-result v0

    if-nez v0, :cond_75

    const/4 v2, 0x0

    float-to-int v3, v14

    float-to-int v4, v13

    float-to-int v1, v5

    .line 2046
    move-object/from16 v0, p0

    move/from16 v18, v1

    move-object/from16 v1, p0

    move v9, v5

    .end local v5    # "y":F
    .local v9, "y":F
    move/from16 v5, v18

    invoke-virtual/range {v0 .. v5}, Ltds/androidx/viewpager/ViewPager;->canScroll(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 2048
    iput v13, v6, Ltds/androidx/viewpager/ViewPager;->mLastMotionX:F

    .line 2049
    iput v9, v6, Ltds/androidx/viewpager/ViewPager;->mLastMotionY:F

    .line 2050
    iput-boolean v10, v6, Ltds/androidx/viewpager/ViewPager;->mIsUnableToDrag:Z

    .line 2051
    const/4 v0, 0x0

    return v0

    .line 2045
    .end local v9    # "y":F
    .restart local v5    # "y":F
    :cond_75
    move v9, v5

    .line 2053
    .end local v5    # "y":F
    .restart local v9    # "y":F
    :cond_76
    iget v0, v6, Ltds/androidx/viewpager/ViewPager;->mTouchSlop:I

    int-to-float v1, v0

    cmpl-float v1, v15, v1

    if-lez v1, :cond_a5

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v1, v15

    cmpl-float v1, v1, v16

    if-lez v1, :cond_a5

    .line 2055
    iput-boolean v10, v6, Ltds/androidx/viewpager/ViewPager;->mIsBeingDragged:Z

    .line 2056
    invoke-direct {v6, v10}, Ltds/androidx/viewpager/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2057
    invoke-virtual {v6, v10}, Ltds/androidx/viewpager/ViewPager;->setScrollState(I)V

    .line 2058
    cmpl-float v0, v14, v17

    if-lez v0, :cond_97

    iget v0, v6, Ltds/androidx/viewpager/ViewPager;->mInitialMotionX:F

    iget v1, v6, Ltds/androidx/viewpager/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    goto :goto_9d

    :cond_97
    iget v0, v6, Ltds/androidx/viewpager/ViewPager;->mInitialMotionX:F

    iget v1, v6, Ltds/androidx/viewpager/ViewPager;->mTouchSlop:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    :goto_9d
    iput v0, v6, Ltds/androidx/viewpager/ViewPager;->mLastMotionX:F

    .line 2060
    iput v9, v6, Ltds/androidx/viewpager/ViewPager;->mLastMotionY:F

    .line 2061
    invoke-direct {v6, v10}, Ltds/androidx/viewpager/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_ac

    .line 2062
    :cond_a5
    int-to-float v0, v0

    cmpl-float v0, v16, v0

    if-lez v0, :cond_ac

    .line 2068
    iput-boolean v10, v6, Ltds/androidx/viewpager/ViewPager;->mIsUnableToDrag:Z

    .line 2070
    :cond_ac
    :goto_ac
    iget-boolean v0, v6, Ltds/androidx/viewpager/ViewPager;->mIsBeingDragged:Z

    if-eqz v0, :cond_10f

    .line 2072
    invoke-direct {v6, v13}, Ltds/androidx/viewpager/ViewPager;->performDrag(F)Z

    move-result v0

    if-eqz v0, :cond_10f

    .line 2073
    invoke-static/range {p0 .. p0}, Ltds/androidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    goto :goto_10f

    .line 2084
    .end local v9    # "y":F
    .end local v11    # "activePointerId":I
    .end local v12    # "pointerIndex":I
    .end local v13    # "x":F
    .end local v14    # "dx":F
    .end local v15    # "xDiff":F
    .end local v16    # "yDiff":F
    :sswitch_ba
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Ltds/androidx/viewpager/ViewPager;->mInitialMotionX:F

    iput v0, v6, Ltds/androidx/viewpager/ViewPager;->mLastMotionX:F

    .line 2085
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Ltds/androidx/viewpager/ViewPager;->mInitialMotionY:F

    iput v0, v6, Ltds/androidx/viewpager/ViewPager;->mLastMotionY:F

    .line 2086
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, v6, Ltds/androidx/viewpager/ViewPager;->mActivePointerId:I

    .line 2087
    iput-boolean v0, v6, Ltds/androidx/viewpager/ViewPager;->mIsUnableToDrag:Z

    .line 2089
    iput-boolean v10, v6, Ltds/androidx/viewpager/ViewPager;->mIsScrollStarted:Z

    .line 2090
    iget-object v0, v6, Ltds/androidx/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 2091
    iget v0, v6, Ltds/androidx/viewpager/ViewPager;->mScrollState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_108

    iget-object v0, v6, Ltds/androidx/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    .line 2092
    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, v6, Ltds/androidx/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Ltds/androidx/viewpager/ViewPager;->mCloseEnough:I

    if-le v0, v1, :cond_108

    .line 2094
    iget-object v0, v6, Ltds/androidx/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2095
    const/4 v0, 0x0

    iput-boolean v0, v6, Ltds/androidx/viewpager/ViewPager;->mPopulatePending:Z

    .line 2096
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->populate()V

    .line 2097
    iput-boolean v10, v6, Ltds/androidx/viewpager/ViewPager;->mIsBeingDragged:Z

    .line 2098
    invoke-direct {v6, v10}, Ltds/androidx/viewpager/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2099
    invoke-virtual {v6, v10}, Ltds/androidx/viewpager/ViewPager;->setScrollState(I)V

    goto :goto_10f

    .line 2101
    :cond_108
    const/4 v0, 0x0

    invoke-direct {v6, v0}, Ltds/androidx/viewpager/ViewPager;->completeScroll(Z)V

    .line 2102
    iput-boolean v0, v6, Ltds/androidx/viewpager/ViewPager;->mIsBeingDragged:Z

    .line 2110
    nop

    .line 2118
    :cond_10f
    :goto_10f
    iget-object v0, v6, Ltds/androidx/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_119

    .line 2119
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Ltds/androidx/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2121
    :cond_119
    iget-object v0, v6, Ltds/androidx/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2127
    iget-boolean v0, v6, Ltds/androidx/viewpager/ViewPager;->mIsBeingDragged:Z

    return v0

    .line 2003
    :cond_121
    :goto_121
    invoke-direct/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->resetTouch()Z

    .line 2004
    const/4 v0, 0x0

    return v0

    :sswitch_data_126
    .sparse-switch
        0x0 -> :sswitch_ba
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

    .line 1648
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getChildCount()I

    move-result v1

    .line 1649
    .local v1, "count":I
    sub-int v2, p4, p2

    .line 1650
    .local v2, "width":I
    sub-int v3, p5, p3

    .line 1651
    .local v3, "height":I
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getPaddingLeft()I

    move-result v4

    .line 1652
    .local v4, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getPaddingTop()I

    move-result v5

    .line 1653
    .local v5, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getPaddingRight()I

    move-result v6

    .line 1654
    .local v6, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getPaddingBottom()I

    move-result v7

    .line 1655
    .local v7, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getScrollX()I

    move-result v8

    .line 1657
    .local v8, "scrollX":I
    const/4 v9, 0x0

    .line 1661
    .local v9, "decorCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_20
    const/16 v11, 0x8

    if-ge v10, v1, :cond_c3

    .line 1662
    invoke-virtual {v0, v10}, Ltds/androidx/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1663
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eq v13, v11, :cond_bf

    .line 1664
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Ltds/androidx/viewpager/ViewPager$LayoutParams;

    .line 1665
    .local v11, "lp":Ltds/androidx/viewpager/ViewPager$LayoutParams;
    const/4 v13, 0x0

    .line 1666
    .local v13, "childLeft":I
    const/4 v14, 0x0

    .line 1667
    .local v14, "childTop":I
    iget-boolean v15, v11, Ltds/androidx/viewpager/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v15, :cond_bb

    .line 1668
    iget v15, v11, Ltds/androidx/viewpager/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v15, v15, 0x7

    .line 1669
    .local v15, "hgrav":I
    move/from16 v16, v13

    .end local v13    # "childLeft":I
    .local v16, "childLeft":I
    iget v13, v11, Ltds/androidx/viewpager/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v13, v13, 0x70

    .line 1670
    .local v13, "vgrav":I
    packed-switch v15, :pswitch_data_16a

    .line 1672
    :pswitch_47
    move-object/from16 v18, v11

    .end local v11    # "lp":Ltds/androidx/viewpager/ViewPager$LayoutParams;
    .local v18, "lp":Ltds/androidx/viewpager/ViewPager$LayoutParams;
    move/from16 v17, v4

    .line 1673
    .end local v16    # "childLeft":I
    .local v17, "childLeft":I
    goto :goto_77

    .line 1683
    .end local v17    # "childLeft":I
    .end local v18    # "lp":Ltds/androidx/viewpager/ViewPager$LayoutParams;
    .restart local v11    # "lp":Ltds/androidx/viewpager/ViewPager$LayoutParams;
    .restart local v16    # "childLeft":I
    :pswitch_4c
    sub-int v17, v2, v6

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    sub-int v17, v17, v18

    .line 1684
    .end local v16    # "childLeft":I
    .restart local v17    # "childLeft":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v6, v6, v16

    move-object/from16 v18, v11

    goto :goto_77

    .line 1675
    .end local v17    # "childLeft":I
    .restart local v16    # "childLeft":I
    :pswitch_5d
    move/from16 v17, v4

    .line 1676
    .end local v16    # "childLeft":I
    .restart local v17    # "childLeft":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    add-int v4, v4, v16

    .line 1677
    move-object/from16 v18, v11

    goto :goto_77

    .line 1679
    .end local v17    # "childLeft":I
    .restart local v16    # "childLeft":I
    :pswitch_68
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v17

    sub-int v17, v2, v17

    move-object/from16 v18, v11

    .end local v11    # "lp":Ltds/androidx/viewpager/ViewPager$LayoutParams;
    .restart local v18    # "lp":Ltds/androidx/viewpager/ViewPager$LayoutParams;
    div-int/lit8 v11, v17, 0x2

    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    move-result v17

    .line 1681
    .end local v16    # "childLeft":I
    .restart local v17    # "childLeft":I
    nop

    .line 1687
    :goto_77
    sparse-switch v13, :sswitch_data_178

    .line 1689
    move v11, v5

    .line 1690
    .end local v14    # "childTop":I
    .local v11, "childTop":I
    goto :goto_9e

    .line 1700
    .end local v11    # "childTop":I
    .restart local v14    # "childTop":I
    :sswitch_7c
    sub-int v11, v3, v7

    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    sub-int v11, v11, v16

    .line 1701
    .end local v14    # "childTop":I
    .restart local v11    # "childTop":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v7, v14

    goto :goto_9e

    .line 1692
    .end local v11    # "childTop":I
    .restart local v14    # "childTop":I
    :sswitch_8a
    move v11, v5

    .line 1693
    .end local v14    # "childTop":I
    .restart local v11    # "childTop":I
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v5, v14

    .line 1694
    goto :goto_9e

    .line 1696
    .end local v11    # "childTop":I
    .restart local v14    # "childTop":I
    :sswitch_91
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    sub-int v11, v3, v11

    div-int/lit8 v11, v11, 0x2

    invoke-static {v11, v5}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 1698
    .end local v14    # "childTop":I
    .restart local v11    # "childTop":I
    nop

    .line 1704
    :goto_9e
    add-int v14, v17, v8

    .line 1705
    .end local v17    # "childLeft":I
    .local v14, "childLeft":I
    nop

    .line 1706
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v16

    move/from16 v17, v4

    .end local v4    # "paddingLeft":I
    .local v17, "paddingLeft":I
    add-int v4, v14, v16

    .line 1707
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    move/from16 v19, v5

    .end local v5    # "paddingTop":I
    .local v19, "paddingTop":I
    add-int v5, v11, v16

    .line 1705
    invoke-virtual {v12, v14, v11, v4, v5}, Landroid/view/View;->layout(IIII)V

    .line 1708
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v17

    move/from16 v5, v19

    goto :goto_bf

    .line 1667
    .end local v15    # "hgrav":I
    .end local v17    # "paddingLeft":I
    .end local v18    # "lp":Ltds/androidx/viewpager/ViewPager$LayoutParams;
    .end local v19    # "paddingTop":I
    .restart local v4    # "paddingLeft":I
    .restart local v5    # "paddingTop":I
    .local v11, "lp":Ltds/androidx/viewpager/ViewPager$LayoutParams;
    .local v13, "childLeft":I
    .local v14, "childTop":I
    :cond_bb
    move-object/from16 v18, v11

    move/from16 v16, v13

    .line 1661
    .end local v11    # "lp":Ltds/androidx/viewpager/ViewPager$LayoutParams;
    .end local v12    # "child":Landroid/view/View;
    .end local v13    # "childLeft":I
    .end local v14    # "childTop":I
    :cond_bf
    :goto_bf
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_20

    .line 1713
    .end local v10    # "i":I
    :cond_c3
    sub-int v10, v2, v4

    sub-int/2addr v10, v6

    .line 1715
    .local v10, "childWidth":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_c7
    if-ge v12, v1, :cond_14d

    .line 1716
    invoke-virtual {v0, v12}, Ltds/androidx/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 1717
    .local v14, "child":Landroid/view/View;
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v15

    if-eq v15, v11, :cond_13b

    .line 1718
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Ltds/androidx/viewpager/ViewPager$LayoutParams;

    .line 1720
    .local v15, "lp":Ltds/androidx/viewpager/ViewPager$LayoutParams;
    iget-boolean v11, v15, Ltds/androidx/viewpager/ViewPager$LayoutParams;->isDecor:Z

    if-nez v11, :cond_134

    invoke-virtual {v0, v14}, Ltds/androidx/viewpager/ViewPager;->infoForChild(Landroid/view/View;)Ltds/androidx/viewpager/ViewPager$ItemInfo;

    move-result-object v11

    move-object/from16 v17, v11

    .local v17, "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    if-eqz v11, :cond_12b

    .line 1721
    int-to-float v11, v10

    move-object/from16 v13, v17

    move/from16 v17, v1

    .end local v1    # "count":I
    .local v13, "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .local v17, "count":I
    iget v1, v13, Ltds/androidx/viewpager/ViewPager$ItemInfo;->offset:F

    mul-float/2addr v11, v1

    float-to-int v1, v11

    .line 1722
    .local v1, "loff":I
    add-int v11, v4, v1

    .line 1723
    .local v11, "childLeft":I
    move/from16 v19, v5

    .line 1724
    .local v19, "childTop":I
    move/from16 v20, v1

    .end local v1    # "loff":I
    .local v20, "loff":I
    iget-boolean v1, v15, Ltds/androidx/viewpager/ViewPager$LayoutParams;->needsMeasure:Z

    if-eqz v1, :cond_116

    .line 1727
    const/4 v1, 0x0

    iput-boolean v1, v15, Ltds/androidx/viewpager/ViewPager$LayoutParams;->needsMeasure:Z

    .line 1728
    int-to-float v1, v10

    move/from16 v21, v2

    .end local v2    # "width":I
    .local v21, "width":I
    iget v2, v15, Ltds/androidx/viewpager/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 1731
    .local v1, "widthSpec":I
    sub-int v18, v3, v5

    move/from16 v22, v4

    .end local v4    # "paddingLeft":I
    .local v22, "paddingLeft":I
    sub-int v4, v18, v7

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1734
    .local v2, "heightSpec":I
    invoke-virtual {v14, v1, v2}, Landroid/view/View;->measure(II)V

    goto :goto_11a

    .line 1724
    .end local v1    # "widthSpec":I
    .end local v21    # "width":I
    .end local v22    # "paddingLeft":I
    .local v2, "width":I
    .restart local v4    # "paddingLeft":I
    :cond_116
    move/from16 v21, v2

    move/from16 v22, v4

    .line 1741
    .end local v2    # "width":I
    .end local v4    # "paddingLeft":I
    .restart local v21    # "width":I
    .restart local v22    # "paddingLeft":I
    :goto_11a
    nop

    .line 1742
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    add-int/2addr v1, v11

    .line 1743
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    move/from16 v4, v19

    .end local v19    # "childTop":I
    .local v4, "childTop":I
    add-int/2addr v2, v4

    .line 1741
    invoke-virtual {v14, v11, v4, v1, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_141

    .line 1720
    .end local v11    # "childLeft":I
    .end local v13    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .end local v20    # "loff":I
    .end local v21    # "width":I
    .end local v22    # "paddingLeft":I
    .local v1, "count":I
    .restart local v2    # "width":I
    .local v4, "paddingLeft":I
    .local v17, "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    :cond_12b
    move/from16 v21, v2

    move/from16 v22, v4

    move-object/from16 v13, v17

    move/from16 v17, v1

    .end local v1    # "count":I
    .end local v2    # "width":I
    .end local v4    # "paddingLeft":I
    .restart local v13    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .local v17, "count":I
    .restart local v21    # "width":I
    .restart local v22    # "paddingLeft":I
    goto :goto_141

    .end local v13    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
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

    .line 1717
    .end local v15    # "lp":Ltds/androidx/viewpager/ViewPager$LayoutParams;
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

    .line 1715
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

    goto/16 :goto_c7

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

    .line 1747
    .end local v1    # "count":I
    .end local v2    # "width":I
    .end local v4    # "paddingLeft":I
    .end local v12    # "i":I
    .restart local v17    # "count":I
    .restart local v21    # "width":I
    .restart local v22    # "paddingLeft":I
    iput v5, v0, Ltds/androidx/viewpager/ViewPager;->mTopPageBounds:I

    .line 1748
    sub-int v1, v3, v7

    iput v1, v0, Ltds/androidx/viewpager/ViewPager;->mBottomPageBounds:I

    .line 1749
    iput v9, v0, Ltds/androidx/viewpager/ViewPager;->mDecorChildCount:I

    .line 1751
    iget-boolean v1, v0, Ltds/androidx/viewpager/ViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_166

    .line 1752
    iget v1, v0, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2, v2}, Ltds/androidx/viewpager/ViewPager;->scrollToItem(IZIZ)V

    goto :goto_167

    .line 1751
    :cond_166
    const/4 v2, 0x0

    .line 1754
    :goto_167
    iput-boolean v2, v0, Ltds/androidx/viewpager/ViewPager;->mFirstLayout:Z

    .line 1755
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

    .line 1521
    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p1

    invoke-static {v1, v2}, Ltds/androidx/viewpager/ViewPager;->getDefaultSize(II)I

    move-result v3

    .line 1522
    move/from16 v4, p2

    invoke-static {v1, v4}, Ltds/androidx/viewpager/ViewPager;->getDefaultSize(II)I

    move-result v5

    .line 1521
    invoke-virtual {v0, v3, v5}, Ltds/androidx/viewpager/ViewPager;->setMeasuredDimension(II)V

    .line 1524
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getMeasuredWidth()I

    move-result v3

    .line 1525
    .local v3, "measuredWidth":I
    div-int/lit8 v5, v3, 0xa

    .line 1526
    .local v5, "maxGutterSize":I
    iget v6, v0, Ltds/androidx/viewpager/ViewPager;->mDefaultGutterSize:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v0, Ltds/androidx/viewpager/ViewPager;->mGutterSize:I

    .line 1529
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getPaddingLeft()I

    move-result v6

    sub-int v6, v3, v6

    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    .line 1530
    .local v6, "childWidthSize":I
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getMeasuredHeight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getPaddingTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getPaddingBottom()I

    move-result v8

    sub-int/2addr v7, v8

    .line 1537
    .local v7, "childHeightSize":I
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getChildCount()I

    move-result v8

    .line 1538
    .local v8, "size":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_3e
    const/16 v10, 0x8

    if-ge v9, v8, :cond_ef

    .line 1539
    invoke-virtual {v0, v9}, Ltds/androidx/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 1540
    .local v12, "child":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getVisibility()I

    move-result v13

    if-eq v13, v10, :cond_de

    .line 1541
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Ltds/androidx/viewpager/ViewPager$LayoutParams;

    .line 1542
    .local v10, "lp":Ltds/androidx/viewpager/ViewPager$LayoutParams;
    if-eqz v10, :cond_d9

    iget-boolean v13, v10, Ltds/androidx/viewpager/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v13, :cond_d9

    .line 1543
    iget v13, v10, Ltds/androidx/viewpager/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v13, v13, 0x7

    .line 1544
    .local v13, "hgrav":I
    iget v14, v10, Ltds/androidx/viewpager/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v14, v14, 0x70

    .line 1545
    .local v14, "vgrav":I
    const/high16 v15, -0x80000000

    .line 1546
    .local v15, "widthMode":I
    const/high16 v16, -0x80000000

    .line 1547
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

    .line 1548
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

    .line 1550
    .local v11, "consumeHorizontal":Z
    :goto_7a
    if-eqz v1, :cond_7f

    .line 1551
    const/high16 v15, 0x40000000    # 2.0f

    goto :goto_83

    .line 1552
    :cond_7f
    if-eqz v11, :cond_83

    .line 1553
    const/high16 v16, 0x40000000    # 2.0f

    .line 1556
    :cond_83
    :goto_83
    move/from16 v17, v6

    .line 1557
    .local v17, "widthSize":I
    move/from16 v18, v7

    .line 1558
    .local v18, "heightSize":I
    iget v2, v10, Ltds/androidx/viewpager/ViewPager$LayoutParams;->width:I

    move/from16 v19, v3

    .end local v3    # "measuredWidth":I
    .local v19, "measuredWidth":I
    const/4 v3, -0x2

    if-eq v2, v3, :cond_9b

    .line 1559
    const/high16 v15, 0x40000000    # 2.0f

    .line 1560
    iget v2, v10, Ltds/androidx/viewpager/ViewPager$LayoutParams;->width:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_98

    .line 1561
    iget v2, v10, Ltds/androidx/viewpager/ViewPager$LayoutParams;->width:I

    .end local v17    # "widthSize":I
    .local v2, "widthSize":I
    goto :goto_9d

    .line 1560
    .end local v2    # "widthSize":I
    .restart local v17    # "widthSize":I
    :cond_98
    move/from16 v2, v17

    goto :goto_9d

    .line 1558
    :cond_9b
    move/from16 v2, v17

    .line 1564
    .end local v17    # "widthSize":I
    .restart local v2    # "widthSize":I
    :goto_9d
    iget v3, v10, Ltds/androidx/viewpager/ViewPager$LayoutParams;->height:I

    const/4 v4, -0x2

    if-eq v3, v4, :cond_b4

    .line 1565
    const/high16 v16, 0x40000000    # 2.0f

    .line 1566
    iget v3, v10, Ltds/androidx/viewpager/ViewPager$LayoutParams;->height:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_af

    .line 1567
    iget v3, v10, Ltds/androidx/viewpager/ViewPager$LayoutParams;->height:I

    move v4, v3

    move/from16 v3, v16

    .end local v18    # "heightSize":I
    .local v3, "heightSize":I
    goto :goto_b8

    .line 1566
    .end local v3    # "heightSize":I
    .restart local v18    # "heightSize":I
    :cond_af
    move/from16 v3, v16

    move/from16 v4, v18

    goto :goto_b8

    .line 1564
    :cond_b4
    move/from16 v3, v16

    move/from16 v4, v18

    .line 1570
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

    .line 1571
    .local v5, "widthSpec":I
    move/from16 v17, v2

    .end local v2    # "widthSize":I
    .restart local v17    # "widthSize":I
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 1572
    .local v2, "heightSpec":I
    invoke-virtual {v12, v5, v2}, Landroid/view/View;->measure(II)V

    .line 1574
    if-eqz v1, :cond_d0

    .line 1575
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredHeight()I

    move-result v18

    sub-int v7, v7, v18

    goto :goto_e2

    .line 1576
    :cond_d0
    if-eqz v11, :cond_e2

    .line 1577
    invoke-virtual {v12}, Landroid/view/View;->getMeasuredWidth()I

    move-result v18

    sub-int v6, v6, v18

    goto :goto_e2

    .line 1542
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

    .line 1540
    .end local v10    # "lp":Ltds/androidx/viewpager/ViewPager$LayoutParams;
    .end local v16    # "maxGutterSize":I
    .end local v19    # "measuredWidth":I
    .restart local v3    # "measuredWidth":I
    .restart local v5    # "maxGutterSize":I
    :cond_de
    move/from16 v19, v3

    move/from16 v16, v5

    .line 1538
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

    .line 1583
    .end local v3    # "measuredWidth":I
    .end local v5    # "maxGutterSize":I
    .end local v9    # "i":I
    .restart local v16    # "maxGutterSize":I
    .restart local v19    # "measuredWidth":I
    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v6, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, v0, Ltds/androidx/viewpager/ViewPager;->mChildWidthMeasureSpec:I

    .line 1584
    invoke-static {v7, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iput v2, v0, Ltds/androidx/viewpager/ViewPager;->mChildHeightMeasureSpec:I

    .line 1587
    const/4 v2, 0x1

    iput-boolean v2, v0, Ltds/androidx/viewpager/ViewPager;->mInLayout:Z

    .line 1588
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->populate()V

    .line 1589
    const/4 v2, 0x0

    iput-boolean v2, v0, Ltds/androidx/viewpager/ViewPager;->mInLayout:Z

    .line 1592
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getChildCount()I

    move-result v2

    .line 1593
    .end local v8    # "size":I
    .local v2, "size":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_10f
    if-ge v3, v2, :cond_138

    .line 1594
    invoke-virtual {v0, v3}, Ltds/androidx/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1595
    .local v4, "child":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-eq v5, v10, :cond_135

    .line 1600
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Ltds/androidx/viewpager/ViewPager$LayoutParams;

    .line 1601
    .local v5, "lp":Ltds/androidx/viewpager/ViewPager$LayoutParams;
    if-eqz v5, :cond_127

    iget-boolean v8, v5, Ltds/androidx/viewpager/ViewPager$LayoutParams;->isDecor:Z

    if-nez v8, :cond_135

    .line 1602
    :cond_127
    int-to-float v8, v6

    iget v9, v5, Ltds/androidx/viewpager/ViewPager$LayoutParams;->widthFactor:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-static {v8, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 1604
    .local v8, "widthSpec":I
    iget v9, v0, Ltds/androidx/viewpager/ViewPager;->mChildHeightMeasureSpec:I

    invoke-virtual {v4, v8, v9}, Landroid/view/View;->measure(II)V

    .line 1593
    .end local v4    # "child":Landroid/view/View;
    .end local v5    # "lp":Ltds/androidx/viewpager/ViewPager$LayoutParams;
    .end local v8    # "widthSpec":I
    :cond_135
    add-int/lit8 v3, v3, 0x1

    goto :goto_10f

    .line 1608
    .end local v3    # "i":I
    :cond_138
    return-void
.end method

.method protected onPageScrolled(IFI)V
    .registers 16
    .param p1, "position"    # I
    .param p2, "offset"    # F
    .param p3, "offsetPixels"    # I

    .line 1831
    iget v0, p0, Ltds/androidx/viewpager/ViewPager;->mDecorChildCount:I

    if-lez v0, :cond_64

    .line 1832
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getScrollX()I

    move-result v0

    .line 1833
    .local v0, "scrollX":I
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getPaddingLeft()I

    move-result v1

    .line 1834
    .local v1, "paddingLeft":I
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getPaddingRight()I

    move-result v2

    .line 1835
    .local v2, "paddingRight":I
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getWidth()I

    move-result v3

    .line 1836
    .local v3, "width":I
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getChildCount()I

    move-result v4

    .line 1837
    .local v4, "childCount":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_19
    if-ge v5, v4, :cond_64

    .line 1838
    invoke-virtual {p0, v5}, Ltds/androidx/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 1839
    .local v6, "child":Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Ltds/androidx/viewpager/ViewPager$LayoutParams;

    .line 1840
    .local v7, "lp":Ltds/androidx/viewpager/ViewPager$LayoutParams;
    iget-boolean v8, v7, Ltds/androidx/viewpager/ViewPager$LayoutParams;->isDecor:Z

    if-nez v8, :cond_2a

    goto :goto_61

    .line 1842
    :cond_2a
    iget v8, v7, Ltds/androidx/viewpager/ViewPager$LayoutParams;->gravity:I

    and-int/lit8 v8, v8, 0x7

    .line 1843
    .local v8, "hgrav":I
    const/4 v9, 0x0

    .line 1844
    .local v9, "childLeft":I
    packed-switch v8, :pswitch_data_9e

    .line 1846
    :pswitch_32
    move v10, v1

    .line 1847
    .end local v9    # "childLeft":I
    .local v10, "childLeft":I
    goto :goto_55

    .line 1857
    .end local v10    # "childLeft":I
    .restart local v9    # "childLeft":I
    :pswitch_34
    sub-int v10, v3, v2

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    sub-int/2addr v10, v11

    .line 1858
    .end local v9    # "childLeft":I
    .restart local v10    # "childLeft":I
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int/2addr v2, v9

    goto :goto_55

    .line 1849
    .end local v10    # "childLeft":I
    .restart local v9    # "childLeft":I
    :pswitch_41
    move v10, v1

    .line 1850
    .end local v9    # "childLeft":I
    .restart local v10    # "childLeft":I
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v1, v9

    .line 1851
    goto :goto_55

    .line 1853
    .end local v10    # "childLeft":I
    .restart local v9    # "childLeft":I
    :pswitch_48
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int v10, v3, v10

    div-int/lit8 v10, v10, 0x2

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 1855
    .end local v9    # "childLeft":I
    .restart local v10    # "childLeft":I
    nop

    .line 1861
    :goto_55
    add-int/2addr v10, v0

    .line 1863
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int v9, v10, v9

    .line 1864
    .local v9, "childOffset":I
    if-eqz v9, :cond_61

    .line 1865
    invoke-virtual {v6, v9}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 1837
    .end local v6    # "child":Landroid/view/View;
    .end local v7    # "lp":Ltds/androidx/viewpager/ViewPager$LayoutParams;
    .end local v8    # "hgrav":I
    .end local v9    # "childOffset":I
    .end local v10    # "childLeft":I
    :cond_61
    :goto_61
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    .line 1870
    .end local v0    # "scrollX":I
    .end local v1    # "paddingLeft":I
    .end local v2    # "paddingRight":I
    .end local v3    # "width":I
    .end local v4    # "childCount":I
    .end local v5    # "i":I
    :cond_64
    invoke-direct {p0, p1, p2, p3}, Ltds/androidx/viewpager/ViewPager;->dispatchOnPageScrolled(IFI)V

    .line 1872
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mPageTransformer:Ltds/androidx/viewpager/ViewPager$PageTransformer;

    if-eqz v0, :cond_99

    .line 1873
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getScrollX()I

    move-result v0

    .line 1874
    .restart local v0    # "scrollX":I
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getChildCount()I

    move-result v1

    .line 1875
    .local v1, "childCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_74
    if-ge v2, v1, :cond_99

    .line 1876
    invoke-virtual {p0, v2}, Ltds/androidx/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1877
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Ltds/androidx/viewpager/ViewPager$LayoutParams;

    .line 1879
    .local v4, "lp":Ltds/androidx/viewpager/ViewPager$LayoutParams;
    iget-boolean v5, v4, Ltds/androidx/viewpager/ViewPager$LayoutParams;->isDecor:Z

    if-eqz v5, :cond_85

    goto :goto_96

    .line 1880
    :cond_85
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v5

    sub-int/2addr v5, v0

    int-to-float v5, v5

    invoke-direct {p0}, Ltds/androidx/viewpager/ViewPager;->getClientWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v5, v6

    .line 1881
    .local v5, "transformPos":F
    iget-object v6, p0, Ltds/androidx/viewpager/ViewPager;->mPageTransformer:Ltds/androidx/viewpager/ViewPager$PageTransformer;

    invoke-interface {v6, v3, v5}, Ltds/androidx/viewpager/ViewPager$PageTransformer;->transformPage(Landroid/view/View;F)V

    .line 1875
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "lp":Ltds/androidx/viewpager/ViewPager$LayoutParams;
    .end local v5    # "transformPos":F
    :goto_96
    add-int/lit8 v2, v2, 0x1

    goto :goto_74

    .line 1885
    .end local v0    # "scrollX":I
    .end local v1    # "childCount":I
    .end local v2    # "i":I
    :cond_99
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltds/androidx/viewpager/ViewPager;->mCalledSuper:Z

    .line 1886
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

    .line 2936
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getChildCount()I

    move-result v0

    .line 2937
    .local v0, "count":I
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_c

    .line 2938
    const/4 v1, 0x0

    .line 2939
    .local v1, "index":I
    const/4 v2, 0x1

    .line 2940
    .local v2, "increment":I
    move v3, v0

    .local v3, "end":I
    goto :goto_10

    .line 2942
    .end local v1    # "index":I
    .end local v2    # "increment":I
    .end local v3    # "end":I
    :cond_c
    add-int/lit8 v1, v0, -0x1

    .line 2943
    .restart local v1    # "index":I
    const/4 v2, -0x1

    .line 2944
    .restart local v2    # "increment":I
    const/4 v3, -0x1

    .line 2946
    .restart local v3    # "end":I
    :goto_10
    move v4, v1

    .local v4, "i":I
    :goto_11
    if-eq v4, v3, :cond_33

    .line 2947
    invoke-virtual {p0, v4}, Ltds/androidx/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2948
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_31

    .line 2949
    invoke-virtual {p0, v5}, Ltds/androidx/viewpager/ViewPager;->infoForChild(Landroid/view/View;)Ltds/androidx/viewpager/ViewPager$ItemInfo;

    move-result-object v6

    .line 2950
    .local v6, "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    if-eqz v6, :cond_31

    iget v7, v6, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    iget v8, p0, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    if-ne v7, v8, :cond_31

    .line 2951
    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_31

    .line 2952
    const/4 v7, 0x1

    return v7

    .line 2946
    .end local v5    # "child":Landroid/view/View;
    .end local v6    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    :cond_31
    add-int/2addr v4, v2

    goto :goto_11

    .line 2957
    .end local v4    # "i":I
    :cond_33
    const/4 v4, 0x0

    return v4
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 1418
    instance-of v0, p1, Ltds/androidx/viewpager/ViewPager$SavedState;

    if-nez v0, :cond_8

    .line 1419
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1420
    return-void

    .line 1423
    :cond_8
    move-object v0, p1

    check-cast v0, Ltds/androidx/viewpager/ViewPager$SavedState;

    .line 1424
    .local v0, "ss":Ltds/androidx/viewpager/ViewPager$SavedState;
    invoke-virtual {v0}, Ltds/androidx/viewpager/ViewPager$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1426
    iget-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    if-eqz v1, :cond_25

    .line 1427
    iget-object v2, v0, Ltds/androidx/viewpager/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iget-object v3, v0, Ltds/androidx/viewpager/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v2, v3}, Ltds/androidx/viewpager/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 1428
    iget v1, v0, Ltds/androidx/viewpager/ViewPager$SavedState;->position:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Ltds/androidx/viewpager/ViewPager;->setCurrentItemInternal(IZZ)V

    goto :goto_31

    .line 1430
    :cond_25
    iget v1, v0, Ltds/androidx/viewpager/ViewPager$SavedState;->position:I

    iput v1, p0, Ltds/androidx/viewpager/ViewPager;->mRestoredCurItem:I

    .line 1431
    iget-object v1, v0, Ltds/androidx/viewpager/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    iput-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 1432
    iget-object v1, v0, Ltds/androidx/viewpager/ViewPager$SavedState;->loader:Ljava/lang/ClassLoader;

    iput-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    .line 1434
    :goto_31
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 4

    .line 1407
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1408
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Ltds/androidx/viewpager/ViewPager$SavedState;

    invoke-direct {v1, v0}, Ltds/androidx/viewpager/ViewPager$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1409
    .local v1, "ss":Ltds/androidx/viewpager/ViewPager$SavedState;
    iget v2, p0, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    iput v2, v1, Ltds/androidx/viewpager/ViewPager$SavedState;->position:I

    .line 1410
    iget-object v2, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    if-eqz v2, :cond_17

    .line 1411
    invoke-virtual {v2}, Ltds/androidx/viewpager/PagerAdapter;->saveState()Landroid/os/Parcelable;

    move-result-object v2

    iput-object v2, v1, Ltds/androidx/viewpager/ViewPager$SavedState;->adapterState:Landroid/os/Parcelable;

    .line 1413
    :cond_17
    return-object v1
.end method

.method protected onSizeChanged(IIII)V
    .registers 6
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .line 1612
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 1615
    if-eq p1, p3, :cond_a

    .line 1616
    iget v0, p0, Ltds/androidx/viewpager/ViewPager;->mPageMargin:I

    invoke-direct {p0, p1, p3, v0, v0}, Ltds/androidx/viewpager/ViewPager;->recomputeScrollPosition(IIII)V

    .line 1618
    :cond_a
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 19
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .line 2132
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v0, Ltds/androidx/viewpager/ViewPager;->mFakeDragging:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_a

    .line 2136
    return v3

    .line 2139
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v4, 0x0

    if-nez v2, :cond_18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v2

    if-eqz v2, :cond_18

    .line 2142
    return v4

    .line 2145
    :cond_18
    iget-object v2, v0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    if-eqz v2, :cond_177

    invoke-virtual {v2}, Ltds/androidx/viewpager/PagerAdapter;->getCount()I

    move-result v2

    if-nez v2, :cond_24

    goto/16 :goto_177

    .line 2150
    :cond_24
    iget-object v2, v0, Ltds/androidx/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v2, :cond_2e

    .line 2151
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v2

    iput-object v2, v0, Ltds/androidx/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2153
    :cond_2e
    iget-object v2, v0, Ltds/androidx/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2155
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    .line 2156
    .local v2, "action":I
    const/4 v5, 0x0

    .line 2158
    .local v5, "needsInvalidate":Z
    and-int/lit16 v6, v2, 0xff

    packed-switch v6, :pswitch_data_178

    :pswitch_3d
    move/from16 v16, v2

    .end local v2    # "action":I
    .local v16, "action":I
    goto/16 :goto_171

    .line 2248
    .end local v16    # "action":I
    .restart local v2    # "action":I
    :pswitch_41
    invoke-direct/range {p0 .. p1}, Ltds/androidx/viewpager/ViewPager;->onSecondaryPointerUp(Landroid/view/MotionEvent;)V

    .line 2249
    iget v4, v0, Ltds/androidx/viewpager/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iput v4, v0, Ltds/androidx/viewpager/ViewPager;->mLastMotionX:F

    move/from16 v16, v2

    goto/16 :goto_171

    .line 2241
    :pswitch_54
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v4

    .line 2242
    .local v4, "index":I
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 2243
    .local v6, "x":F
    iput v6, v0, Ltds/androidx/viewpager/ViewPager;->mLastMotionX:F

    .line 2244
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v7

    iput v7, v0, Ltds/androidx/viewpager/ViewPager;->mActivePointerId:I

    .line 2245
    move/from16 v16, v2

    goto/16 :goto_171

    .line 2235
    .end local v4    # "index":I
    .end local v6    # "x":F
    :pswitch_68
    iget-boolean v6, v0, Ltds/androidx/viewpager/ViewPager;->mIsBeingDragged:Z

    if-eqz v6, :cond_79

    .line 2236
    iget v6, v0, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    invoke-direct {v0, v6, v3, v4, v4}, Ltds/androidx/viewpager/ViewPager;->scrollToItem(IZIZ)V

    .line 2237
    invoke-direct/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->resetTouch()Z

    move-result v5

    move/from16 v16, v2

    goto/16 :goto_171

    .line 2235
    :cond_79
    move/from16 v16, v2

    goto/16 :goto_171

    .line 2171
    :pswitch_7d
    iget-boolean v4, v0, Ltds/androidx/viewpager/ViewPager;->mIsBeingDragged:Z

    if-nez v4, :cond_df

    .line 2172
    iget v4, v0, Ltds/androidx/viewpager/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 2173
    .local v4, "pointerIndex":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_92

    .line 2176
    invoke-direct/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->resetTouch()Z

    move-result v5

    .line 2177
    move/from16 v16, v2

    goto/16 :goto_171

    .line 2179
    :cond_92
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 2180
    .restart local v6    # "x":F
    iget v7, v0, Ltds/androidx/viewpager/ViewPager;->mLastMotionX:F

    sub-float v7, v6, v7

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 2181
    .local v7, "xDiff":F
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 2182
    .local v8, "y":F
    iget v9, v0, Ltds/androidx/viewpager/ViewPager;->mLastMotionY:F

    sub-float v9, v8, v9

    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 2186
    .local v9, "yDiff":F
    iget v10, v0, Ltds/androidx/viewpager/ViewPager;->mTouchSlop:I

    int-to-float v10, v10

    cmpl-float v10, v7, v10

    if-lez v10, :cond_df

    cmpl-float v10, v7, v9

    if-lez v10, :cond_df

    .line 2188
    iput-boolean v3, v0, Ltds/androidx/viewpager/ViewPager;->mIsBeingDragged:Z

    .line 2189
    invoke-direct {v0, v3}, Ltds/androidx/viewpager/ViewPager;->requestParentDisallowInterceptTouchEvent(Z)V

    .line 2190
    iget v10, v0, Ltds/androidx/viewpager/ViewPager;->mInitialMotionX:F

    sub-float v11, v6, v10

    const/4 v12, 0x0

    cmpl-float v11, v11, v12

    if-lez v11, :cond_c8

    iget v11, v0, Ltds/androidx/viewpager/ViewPager;->mTouchSlop:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    goto :goto_cc

    :cond_c8
    iget v11, v0, Ltds/androidx/viewpager/ViewPager;->mTouchSlop:I

    int-to-float v11, v11

    sub-float/2addr v10, v11

    :goto_cc
    iput v10, v0, Ltds/androidx/viewpager/ViewPager;->mLastMotionX:F

    .line 2192
    iput v8, v0, Ltds/androidx/viewpager/ViewPager;->mLastMotionY:F

    .line 2193
    invoke-virtual {v0, v3}, Ltds/androidx/viewpager/ViewPager;->setScrollState(I)V

    .line 2194
    invoke-direct {v0, v3}, Ltds/androidx/viewpager/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 2197
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    .line 2198
    .local v10, "parent":Landroid/view/ViewParent;
    if-eqz v10, :cond_df

    .line 2199
    invoke-interface {v10, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2204
    .end local v4    # "pointerIndex":I
    .end local v6    # "x":F
    .end local v7    # "xDiff":F
    .end local v8    # "y":F
    .end local v9    # "yDiff":F
    .end local v10    # "parent":Landroid/view/ViewParent;
    :cond_df
    iget-boolean v4, v0, Ltds/androidx/viewpager/ViewPager;->mIsBeingDragged:Z

    if-eqz v4, :cond_f6

    .line 2206
    iget v4, v0, Ltds/androidx/viewpager/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    .line 2207
    .local v4, "activePointerIndex":I
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 2208
    .restart local v6    # "x":F
    invoke-direct {v0, v6}, Ltds/androidx/viewpager/ViewPager;->performDrag(F)Z

    move-result v7

    or-int/2addr v5, v7

    .line 2209
    .end local v4    # "activePointerIndex":I
    .end local v6    # "x":F
    move/from16 v16, v2

    goto/16 :goto_171

    .line 2204
    :cond_f6
    move/from16 v16, v2

    goto/16 :goto_171

    .line 2212
    :pswitch_fa
    iget-boolean v4, v0, Ltds/androidx/viewpager/ViewPager;->mIsBeingDragged:Z

    if-eqz v4, :cond_14b

    .line 2213
    iget-object v4, v0, Ltds/androidx/viewpager/ViewPager;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 2214
    .local v4, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v6, 0x3e8

    iget v7, v0, Ltds/androidx/viewpager/ViewPager;->mMaximumVelocity:I

    int-to-float v7, v7

    invoke-virtual {v4, v6, v7}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 2215
    iget v6, v0, Ltds/androidx/viewpager/ViewPager;->mActivePointerId:I

    invoke-virtual {v4, v6}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v6

    float-to-int v6, v6

    .line 2216
    .local v6, "initialVelocity":I
    iput-boolean v3, v0, Ltds/androidx/viewpager/ViewPager;->mPopulatePending:Z

    .line 2217
    invoke-direct/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getClientWidth()I

    move-result v7

    .line 2218
    .local v7, "width":I
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getScrollX()I

    move-result v8

    .line 2219
    .local v8, "scrollX":I
    invoke-direct/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->infoForCurrentScrollPosition()Ltds/androidx/viewpager/ViewPager$ItemInfo;

    move-result-object v9

    .line 2220
    .local v9, "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    iget v10, v0, Ltds/androidx/viewpager/ViewPager;->mPageMargin:I

    int-to-float v10, v10

    int-to-float v11, v7

    div-float/2addr v10, v11

    .line 2221
    .local v10, "marginOffset":F
    iget v11, v9, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    .line 2222
    .local v11, "currentPage":I
    int-to-float v12, v8

    int-to-float v13, v7

    div-float/2addr v12, v13

    iget v13, v9, Ltds/androidx/viewpager/ViewPager$ItemInfo;->offset:F

    sub-float/2addr v12, v13

    iget v13, v9, Ltds/androidx/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v13, v10

    div-float/2addr v12, v13

    .line 2224
    .local v12, "pageOffset":F
    iget v13, v0, Ltds/androidx/viewpager/ViewPager;->mActivePointerId:I

    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v13

    .line 2225
    .local v13, "activePointerIndex":I
    invoke-virtual {v1, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v14

    .line 2226
    .local v14, "x":F
    iget v15, v0, Ltds/androidx/viewpager/ViewPager;->mInitialMotionX:F

    sub-float v15, v14, v15

    float-to-int v15, v15

    .line 2227
    .local v15, "totalDelta":I
    move/from16 v16, v2

    .end local v2    # "action":I
    .restart local v16    # "action":I
    invoke-direct {v0, v11, v12, v6, v15}, Ltds/androidx/viewpager/ViewPager;->determineTargetPage(IFII)I

    move-result v2

    .line 2229
    .local v2, "nextPage":I
    invoke-virtual {v0, v2, v3, v3, v6}, Ltds/androidx/viewpager/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 2231
    invoke-direct/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->resetTouch()Z

    move-result v5

    .line 2232
    .end local v2    # "nextPage":I
    .end local v4    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v6    # "initialVelocity":I
    .end local v7    # "width":I
    .end local v8    # "scrollX":I
    .end local v9    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .end local v10    # "marginOffset":F
    .end local v11    # "currentPage":I
    .end local v12    # "pageOffset":F
    .end local v13    # "activePointerIndex":I
    .end local v14    # "x":F
    .end local v15    # "totalDelta":I
    goto :goto_171

    .line 2212
    .end local v16    # "action":I
    .local v2, "action":I
    :cond_14b
    move/from16 v16, v2

    .end local v2    # "action":I
    .restart local v16    # "action":I
    goto :goto_171

    .line 2160
    .end local v16    # "action":I
    .restart local v2    # "action":I
    :pswitch_14e
    move/from16 v16, v2

    .end local v2    # "action":I
    .restart local v16    # "action":I
    iget-object v2, v0, Ltds/androidx/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 2161
    iput-boolean v4, v0, Ltds/androidx/viewpager/ViewPager;->mPopulatePending:Z

    .line 2162
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->populate()V

    .line 2165
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, v0, Ltds/androidx/viewpager/ViewPager;->mInitialMotionX:F

    iput v2, v0, Ltds/androidx/viewpager/ViewPager;->mLastMotionX:F

    .line 2166
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, v0, Ltds/androidx/viewpager/ViewPager;->mInitialMotionY:F

    iput v2, v0, Ltds/androidx/viewpager/ViewPager;->mLastMotionY:F

    .line 2167
    invoke-virtual {v1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    iput v2, v0, Ltds/androidx/viewpager/ViewPager;->mActivePointerId:I

    .line 2168
    nop

    .line 2252
    :goto_171
    if-eqz v5, :cond_176

    .line 2253
    invoke-static/range {p0 .. p0}, Ltds/androidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 2255
    :cond_176
    return v3

    .line 2147
    .end local v5    # "needsInvalidate":Z
    .end local v16    # "action":I
    :cond_177
    :goto_177
    return v4

    :pswitch_data_178
    .packed-switch 0x0
        :pswitch_14e
        :pswitch_fa
        :pswitch_7d
        :pswitch_68
        :pswitch_3d
        :pswitch_54
        :pswitch_41
    .end packed-switch
.end method

.method pageLeft()Z
    .registers 3

    .line 2851
    iget v0, p0, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    if-lez v0, :cond_a

    .line 2852
    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Ltds/androidx/viewpager/ViewPager;->setCurrentItem(IZ)V

    .line 2853
    return v1

    .line 2855
    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method pageRight()Z
    .registers 4

    .line 2859
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    if-eqz v0, :cond_15

    iget v1, p0, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    invoke-virtual {v0}, Ltds/androidx/viewpager/PagerAdapter;->getCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_15

    .line 2860
    iget v0, p0, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Ltds/androidx/viewpager/ViewPager;->setCurrentItem(IZ)V

    .line 2861
    return v2

    .line 2863
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method populate()V
    .registers 2

    .line 1058
    iget v0, p0, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    invoke-virtual {p0, v0}, Ltds/androidx/viewpager/ViewPager;->populate(I)V

    .line 1059
    return-void
.end method

.method populate(I)V
    .registers 20
    .param p1, "newCurrentItem"    # I

    .line 1062
    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v0, 0x0

    .line 1063
    .local v0, "oldCurInfo":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    iget v3, v1, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    if-eq v3, v2, :cond_11

    .line 1064
    invoke-virtual {v1, v3}, Ltds/androidx/viewpager/ViewPager;->infoForPosition(I)Ltds/androidx/viewpager/ViewPager$ItemInfo;

    move-result-object v0

    .line 1065
    iput v2, v1, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    move-object v3, v0

    goto :goto_12

    .line 1063
    :cond_11
    move-object v3, v0

    .line 1068
    .end local v0    # "oldCurInfo":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .local v3, "oldCurInfo":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    :goto_12
    iget-object v0, v1, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    if-nez v0, :cond_1a

    .line 1069
    invoke-direct/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->sortChildDrawingOrder()V

    .line 1070
    return-void

    .line 1077
    :cond_1a
    iget-boolean v0, v1, Ltds/androidx/viewpager/ViewPager;->mPopulatePending:Z

    if-eqz v0, :cond_22

    .line 1079
    invoke-direct/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->sortChildDrawingOrder()V

    .line 1080
    return-void

    .line 1086
    :cond_22
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-nez v0, :cond_29

    .line 1087
    return-void

    .line 1090
    :cond_29
    iget-object v0, v1, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    invoke-virtual {v0, v1}, Ltds/androidx/viewpager/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 1092
    iget v4, v1, Ltds/androidx/viewpager/ViewPager;->mOffscreenPageLimit:I

    .line 1093
    .local v4, "pageLimit":I
    const/4 v0, 0x0

    iget v5, v1, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    sub-int/2addr v5, v4

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1094
    .local v5, "startPos":I
    iget-object v0, v1, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    invoke-virtual {v0}, Ltds/androidx/viewpager/PagerAdapter;->getCount()I

    move-result v6

    .line 1095
    .local v6, "N":I
    add-int/lit8 v0, v6, -0x1

    iget v7, v1, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    add-int/2addr v7, v4

    invoke-static {v0, v7}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 1097
    .local v7, "endPos":I
    iget v0, v1, Ltds/androidx/viewpager/ViewPager;->mExpectedAdapterCount:I

    if-ne v6, v0, :cond_253

    .line 1113
    const/4 v0, -0x1

    .line 1114
    .local v0, "curIndex":I
    const/4 v8, 0x0

    .line 1115
    .local v8, "curItem":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    const/4 v0, 0x0

    :goto_4e
    iget-object v9, v1, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_6f

    .line 1116
    iget-object v9, v1, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    .line 1117
    .local v9, "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    iget v10, v9, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    iget v11, v1, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    if-lt v10, v11, :cond_6c

    .line 1118
    iget v10, v9, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    iget v11, v1, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    if-ne v10, v11, :cond_6f

    move-object v8, v9

    goto :goto_6f

    .line 1115
    .end local v9    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    :cond_6c
    add-int/lit8 v0, v0, 0x1

    goto :goto_4e

    .line 1123
    :cond_6f
    :goto_6f
    if-nez v8, :cond_79

    if-lez v6, :cond_79

    .line 1124
    iget v9, v1, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    invoke-virtual {v1, v9, v0}, Ltds/androidx/viewpager/ViewPager;->addNewItem(II)Ltds/androidx/viewpager/ViewPager$ItemInfo;

    move-result-object v8

    .line 1130
    :cond_79
    if-eqz v8, :cond_1d8

    .line 1131
    const/4 v11, 0x0

    .line 1132
    .local v11, "extraWidthLeft":F
    add-int/lit8 v12, v0, -0x1

    .line 1133
    .local v12, "itemIndex":I
    if-ltz v12, :cond_89

    iget-object v13, v1, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    goto :goto_8a

    :cond_89
    const/4 v13, 0x0

    .line 1134
    .local v13, "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    :goto_8a
    invoke-direct/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getClientWidth()I

    move-result v14

    .line 1135
    .local v14, "clientWidth":I
    const/high16 v15, 0x40000000    # 2.0f

    if-gtz v14, :cond_94

    const/4 v10, 0x0

    goto :goto_a0

    :cond_94
    iget v10, v8, Ltds/androidx/viewpager/ViewPager$ItemInfo;->widthFactor:F

    sub-float v10, v15, v10

    .line 1136
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getPaddingLeft()I

    move-result v9

    int-to-float v9, v9

    int-to-float v15, v14

    div-float/2addr v9, v15

    add-float/2addr v10, v9

    :goto_a0
    move v9, v10

    .line 1137
    .local v9, "leftWidthNeeded":F
    iget v10, v1, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    add-int/lit8 v10, v10, -0x1

    .local v10, "pos":I
    :goto_a5
    if-ltz v10, :cond_10c

    .line 1138
    cmpl-float v15, v11, v9

    if-ltz v15, :cond_d6

    if-ge v10, v5, :cond_d6

    .line 1139
    if-nez v13, :cond_b0

    .line 1140
    goto :goto_10c

    .line 1142
    :cond_b0
    iget v15, v13, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    if-ne v10, v15, :cond_107

    iget-boolean v15, v13, Ltds/androidx/viewpager/ViewPager$ItemInfo;->scrolling:Z

    if-nez v15, :cond_107

    .line 1143
    iget-object v15, v1, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v15, v12}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1144
    iget-object v15, v1, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    iget-object v2, v13, Ltds/androidx/viewpager/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v15, v1, v10, v2}, Ltds/androidx/viewpager/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1149
    add-int/lit8 v12, v12, -0x1

    .line 1150
    add-int/lit8 v0, v0, -0x1

    .line 1151
    if-ltz v12, :cond_d3

    iget-object v2, v1, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    goto :goto_d4

    :cond_d3
    const/4 v2, 0x0

    :goto_d4
    move-object v13, v2

    .end local v13    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .local v2, "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    goto :goto_107

    .line 1153
    .end local v2    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .restart local v13    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    :cond_d6
    if-eqz v13, :cond_ef

    iget v2, v13, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    if-ne v10, v2, :cond_ef

    .line 1154
    iget v2, v13, Ltds/androidx/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v11, v2

    .line 1155
    add-int/lit8 v12, v12, -0x1

    .line 1156
    if-ltz v12, :cond_ec

    iget-object v2, v1, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    goto :goto_ed

    :cond_ec
    const/4 v2, 0x0

    :goto_ed
    move-object v13, v2

    .end local v13    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .restart local v2    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    goto :goto_107

    .line 1158
    .end local v2    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .restart local v13    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    :cond_ef
    add-int/lit8 v2, v12, 0x1

    invoke-virtual {v1, v10, v2}, Ltds/androidx/viewpager/ViewPager;->addNewItem(II)Ltds/androidx/viewpager/ViewPager$ItemInfo;

    move-result-object v2

    .line 1159
    .end local v13    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .restart local v2    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    iget v13, v2, Ltds/androidx/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v11, v13

    .line 1160
    add-int/lit8 v0, v0, 0x1

    .line 1161
    if-ltz v12, :cond_105

    iget-object v13, v1, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    goto :goto_106

    :cond_105
    const/4 v13, 0x0

    :goto_106
    move-object v2, v13

    .line 1137
    .end local v2    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .restart local v13    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    :cond_107
    :goto_107
    add-int/lit8 v10, v10, -0x1

    move/from16 v2, p1

    goto :goto_a5

    .line 1165
    .end local v10    # "pos":I
    :cond_10c
    :goto_10c
    iget v2, v8, Ltds/androidx/viewpager/ViewPager$ItemInfo;->widthFactor:F

    .line 1166
    .local v2, "extraWidthRight":F
    add-int/lit8 v10, v0, 0x1

    .line 1167
    .end local v12    # "itemIndex":I
    .local v10, "itemIndex":I
    const/high16 v12, 0x40000000    # 2.0f

    cmpg-float v15, v2, v12

    if-gez v15, :cond_1c7

    .line 1168
    iget-object v12, v1, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v10, v12, :cond_127

    iget-object v12, v1, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    goto :goto_128

    :cond_127
    const/4 v12, 0x0

    .line 1169
    .end local v13    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .local v12, "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    :goto_128
    if-gtz v14, :cond_12c

    const/4 v13, 0x0

    goto :goto_136

    .line 1170
    :cond_12c
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getPaddingRight()I

    move-result v13

    int-to-float v13, v13

    int-to-float v15, v14

    div-float/2addr v13, v15

    const/high16 v15, 0x40000000    # 2.0f

    add-float/2addr v13, v15

    :goto_136
    nop

    .line 1171
    .local v13, "rightWidthNeeded":F
    iget v15, v1, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    add-int/lit8 v15, v15, 0x1

    .local v15, "pos":I
    :goto_13b
    if-ge v15, v6, :cond_1c1

    .line 1172
    cmpl-float v16, v2, v13

    if-ltz v16, :cond_17a

    if-le v15, v7, :cond_17a

    .line 1173
    if-nez v12, :cond_14b

    .line 1174
    move/from16 v16, v4

    move/from16 v17, v5

    goto/16 :goto_1c5

    .line 1176
    :cond_14b
    move/from16 v16, v4

    .end local v4    # "pageLimit":I
    .local v16, "pageLimit":I
    iget v4, v12, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    if-ne v15, v4, :cond_177

    iget-boolean v4, v12, Ltds/androidx/viewpager/ViewPager$ItemInfo;->scrolling:Z

    if-nez v4, :cond_177

    .line 1177
    iget-object v4, v1, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1178
    iget-object v4, v1, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    move/from16 v17, v5

    .end local v5    # "startPos":I
    .local v17, "startPos":I
    iget-object v5, v12, Ltds/androidx/viewpager/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, v1, v15, v5}, Ltds/androidx/viewpager/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 1183
    iget-object v4, v1, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_174

    iget-object v4, v1, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    goto :goto_175

    :cond_174
    const/4 v4, 0x0

    :goto_175
    move-object v12, v4

    goto :goto_1b9

    .line 1176
    .end local v17    # "startPos":I
    .restart local v5    # "startPos":I
    :cond_177
    move/from16 v17, v5

    .end local v5    # "startPos":I
    .restart local v17    # "startPos":I
    goto :goto_1b9

    .line 1172
    .end local v16    # "pageLimit":I
    .end local v17    # "startPos":I
    .restart local v4    # "pageLimit":I
    .restart local v5    # "startPos":I
    :cond_17a
    move/from16 v16, v4

    move/from16 v17, v5

    .line 1185
    .end local v4    # "pageLimit":I
    .end local v5    # "startPos":I
    .restart local v16    # "pageLimit":I
    .restart local v17    # "startPos":I
    if-eqz v12, :cond_19d

    iget v4, v12, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    if-ne v15, v4, :cond_19d

    .line 1186
    iget v4, v12, Ltds/androidx/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v2, v4

    .line 1187
    add-int/lit8 v10, v10, 0x1

    .line 1188
    iget-object v4, v1, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v10, v4, :cond_19a

    iget-object v4, v1, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    goto :goto_19b

    :cond_19a
    const/4 v4, 0x0

    :goto_19b
    move-object v12, v4

    goto :goto_1b9

    .line 1190
    :cond_19d
    invoke-virtual {v1, v15, v10}, Ltds/androidx/viewpager/ViewPager;->addNewItem(II)Ltds/androidx/viewpager/ViewPager$ItemInfo;

    move-result-object v4

    .line 1191
    .end local v12    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .local v4, "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    add-int/lit8 v10, v10, 0x1

    .line 1192
    iget v5, v4, Ltds/androidx/viewpager/ViewPager$ItemInfo;->widthFactor:F

    add-float/2addr v2, v5

    .line 1193
    iget-object v5, v1, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v10, v5, :cond_1b7

    iget-object v5, v1, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    goto :goto_1b8

    :cond_1b7
    const/4 v5, 0x0

    :goto_1b8
    move-object v12, v5

    .line 1171
    .end local v4    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .restart local v12    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    :goto_1b9
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v16

    move/from16 v5, v17

    goto/16 :goto_13b

    .end local v16    # "pageLimit":I
    .end local v17    # "startPos":I
    .local v4, "pageLimit":I
    .restart local v5    # "startPos":I
    :cond_1c1
    move/from16 v16, v4

    move/from16 v17, v5

    .line 1198
    .end local v4    # "pageLimit":I
    .end local v5    # "startPos":I
    .end local v13    # "rightWidthNeeded":F
    .end local v15    # "pos":I
    .restart local v16    # "pageLimit":I
    .restart local v17    # "startPos":I
    :goto_1c5
    move-object v13, v12

    goto :goto_1cb

    .line 1167
    .end local v12    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .end local v16    # "pageLimit":I
    .end local v17    # "startPos":I
    .restart local v4    # "pageLimit":I
    .restart local v5    # "startPos":I
    .local v13, "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    :cond_1c7
    move/from16 v16, v4

    move/from16 v17, v5

    .line 1198
    .end local v4    # "pageLimit":I
    .end local v5    # "startPos":I
    .restart local v16    # "pageLimit":I
    .restart local v17    # "startPos":I
    :goto_1cb
    invoke-direct {v1, v8, v0, v3}, Ltds/androidx/viewpager/ViewPager;->calculatePageOffsets(Ltds/androidx/viewpager/ViewPager$ItemInfo;ILtds/androidx/viewpager/ViewPager$ItemInfo;)V

    .line 1200
    iget-object v4, v1, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    iget v5, v1, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    iget-object v12, v8, Ltds/androidx/viewpager/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, v1, v5, v12}, Ltds/androidx/viewpager/PagerAdapter;->setPrimaryItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    goto :goto_1dc

    .line 1130
    .end local v2    # "extraWidthRight":F
    .end local v9    # "leftWidthNeeded":F
    .end local v10    # "itemIndex":I
    .end local v11    # "extraWidthLeft":F
    .end local v13    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .end local v14    # "clientWidth":I
    .end local v16    # "pageLimit":I
    .end local v17    # "startPos":I
    .restart local v4    # "pageLimit":I
    .restart local v5    # "startPos":I
    :cond_1d8
    move/from16 v16, v4

    move/from16 v17, v5

    .line 1210
    .end local v4    # "pageLimit":I
    .end local v5    # "startPos":I
    .restart local v16    # "pageLimit":I
    .restart local v17    # "startPos":I
    :goto_1dc
    iget-object v2, v1, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    invoke-virtual {v2, v1}, Ltds/androidx/viewpager/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 1214
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getChildCount()I

    move-result v2

    .line 1215
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1e6
    if-ge v4, v2, :cond_212

    .line 1216
    invoke-virtual {v1, v4}, Ltds/androidx/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1217
    .local v5, "child":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Ltds/androidx/viewpager/ViewPager$LayoutParams;

    .line 1218
    .local v9, "lp":Ltds/androidx/viewpager/ViewPager$LayoutParams;
    iput v4, v9, Ltds/androidx/viewpager/ViewPager$LayoutParams;->childIndex:I

    .line 1219
    iget-boolean v10, v9, Ltds/androidx/viewpager/ViewPager$LayoutParams;->isDecor:Z

    if-nez v10, :cond_20e

    iget v10, v9, Ltds/androidx/viewpager/ViewPager$LayoutParams;->widthFactor:F

    const/4 v11, 0x0

    cmpl-float v10, v10, v11

    if-nez v10, :cond_20f

    .line 1221
    invoke-virtual {v1, v5}, Ltds/androidx/viewpager/ViewPager;->infoForChild(Landroid/view/View;)Ltds/androidx/viewpager/ViewPager$ItemInfo;

    move-result-object v10

    .line 1222
    .local v10, "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    if-eqz v10, :cond_20f

    .line 1223
    iget v12, v10, Ltds/androidx/viewpager/ViewPager$ItemInfo;->widthFactor:F

    iput v12, v9, Ltds/androidx/viewpager/ViewPager$LayoutParams;->widthFactor:F

    .line 1224
    iget v12, v10, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    iput v12, v9, Ltds/androidx/viewpager/ViewPager$LayoutParams;->position:I

    goto :goto_20f

    .line 1219
    .end local v10    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    :cond_20e
    const/4 v11, 0x0

    .line 1215
    .end local v5    # "child":Landroid/view/View;
    .end local v9    # "lp":Ltds/androidx/viewpager/ViewPager$LayoutParams;
    :cond_20f
    :goto_20f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e6

    .line 1228
    .end local v4    # "i":I
    :cond_212
    invoke-direct/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->sortChildDrawingOrder()V

    .line 1230
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_252

    .line 1231
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->findFocus()Landroid/view/View;

    move-result-object v4

    .line 1232
    .local v4, "currentFocused":Landroid/view/View;
    if-eqz v4, :cond_226

    invoke-virtual {v1, v4}, Ltds/androidx/viewpager/ViewPager;->infoForAnyChild(Landroid/view/View;)Ltds/androidx/viewpager/ViewPager$ItemInfo;

    move-result-object v10

    goto :goto_227

    :cond_226
    const/4 v10, 0x0

    :goto_227
    move-object v5, v10

    .line 1233
    .local v5, "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    if-eqz v5, :cond_230

    iget v9, v5, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    iget v10, v1, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    if-eq v9, v10, :cond_252

    .line 1234
    :cond_230
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_231
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getChildCount()I

    move-result v10

    if-ge v9, v10, :cond_252

    .line 1235
    invoke-virtual {v1, v9}, Ltds/androidx/viewpager/ViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 1236
    .local v10, "child":Landroid/view/View;
    invoke-virtual {v1, v10}, Ltds/androidx/viewpager/ViewPager;->infoForChild(Landroid/view/View;)Ltds/androidx/viewpager/ViewPager$ItemInfo;

    move-result-object v5

    .line 1237
    if-eqz v5, :cond_24f

    iget v11, v5, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    iget v12, v1, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    if-ne v11, v12, :cond_24f

    .line 1238
    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/view/View;->requestFocus(I)Z

    move-result v11

    if-eqz v11, :cond_24f

    .line 1239
    goto :goto_252

    .line 1234
    .end local v10    # "child":Landroid/view/View;
    :cond_24f
    add-int/lit8 v9, v9, 0x1

    goto :goto_231

    .line 1245
    .end local v4    # "currentFocused":Landroid/view/View;
    .end local v5    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .end local v9    # "i":I
    :cond_252
    :goto_252
    return-void

    .line 1100
    .end local v0    # "curIndex":I
    .end local v2    # "childCount":I
    .end local v8    # "curItem":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    .end local v16    # "pageLimit":I
    .end local v17    # "startPos":I
    .local v4, "pageLimit":I
    .local v5, "startPos":I
    :cond_253
    move/from16 v16, v4

    move/from16 v17, v5

    .end local v4    # "pageLimit":I
    .end local v5    # "startPos":I
    .restart local v16    # "pageLimit":I
    .restart local v17    # "startPos":I
    :try_start_257
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0
    :try_end_263
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_257 .. :try_end_263} :catch_264

    .line 1103
    .local v0, "resName":Ljava/lang/String;
    goto :goto_26e

    .line 1101
    .end local v0    # "resName":Ljava/lang/String;
    :catch_264
    move-exception v0

    .line 1102
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 1104
    .local v0, "resName":Ljava/lang/String;
    :goto_26e
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Ltds/androidx/viewpager/ViewPager;->mExpectedAdapterCount:I

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

    .line 1108
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Problematic adapter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    .line 1109
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public removeOnAdapterChangeListener(Ltds/androidx/viewpager/ViewPager$OnAdapterChangeListener;)V
    .registers 3
    .param p1, "listener"    # Ltds/androidx/viewpager/ViewPager$OnAdapterChangeListener;

    .line 560
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 561
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 563
    :cond_7
    return-void
.end method

.method public removeOnPageChangeListener(Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;)V
    .registers 3
    .param p1, "listener"    # Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;

    .line 702
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mOnPageChangeListeners:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 703
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 705
    :cond_7
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 1470
    iget-boolean v0, p0, Ltds/androidx/viewpager/ViewPager;->mInLayout:Z

    if-eqz v0, :cond_8

    .line 1471
    invoke-virtual {p0, p1}, Ltds/androidx/viewpager/ViewPager;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_b

    .line 1473
    :cond_8
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1475
    :goto_b
    return-void
.end method

.method public setAdapter(Ltds/androidx/viewpager/PagerAdapter;)V
    .registers 10
    .param p1, "adapter"    # Ltds/androidx/viewpager/PagerAdapter;

    .line 472
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_3d

    .line 473
    invoke-virtual {v0, v1}, Ltds/androidx/viewpager/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 474
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    invoke-virtual {v0, p0}, Ltds/androidx/viewpager/PagerAdapter;->startUpdate(Landroid/view/ViewGroup;)V

    .line 475
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_f
    iget-object v3, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2b

    .line 476
    iget-object v3, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    .line 477
    .local v3, "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    iget-object v4, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    iget v5, v3, Ltds/androidx/viewpager/ViewPager$ItemInfo;->position:I

    iget-object v6, v3, Ltds/androidx/viewpager/ViewPager$ItemInfo;->object:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v6}, Ltds/androidx/viewpager/PagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 475
    .end local v3    # "ii":Ltds/androidx/viewpager/ViewPager$ItemInfo;
    add-int/lit8 v0, v0, 0x1

    goto :goto_f

    .line 479
    .end local v0    # "i":I
    :cond_2b
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    invoke-virtual {v0, p0}, Ltds/androidx/viewpager/PagerAdapter;->finishUpdate(Landroid/view/ViewGroup;)V

    .line 480
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 481
    invoke-direct {p0}, Ltds/androidx/viewpager/ViewPager;->removeNonDecorViews()V

    .line 482
    iput v2, p0, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    .line 483
    invoke-virtual {p0, v2, v2}, Ltds/androidx/viewpager/ViewPager;->scrollTo(II)V

    .line 486
    :cond_3d
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    .line 487
    .local v0, "oldAdapter":Ltds/androidx/viewpager/PagerAdapter;
    iput-object p1, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    .line 488
    iput v2, p0, Ltds/androidx/viewpager/ViewPager;->mExpectedAdapterCount:I

    .line 490
    if-eqz p1, :cond_89

    .line 491
    iget-object v3, p0, Ltds/androidx/viewpager/ViewPager;->mObserver:Ltds/androidx/viewpager/ViewPager$PagerObserver;

    if-nez v3, :cond_50

    .line 492
    new-instance v3, Ltds/androidx/viewpager/ViewPager$PagerObserver;

    invoke-direct {v3, p0}, Ltds/androidx/viewpager/ViewPager$PagerObserver;-><init>(Ltds/androidx/viewpager/ViewPager;)V

    iput-object v3, p0, Ltds/androidx/viewpager/ViewPager;->mObserver:Ltds/androidx/viewpager/ViewPager$PagerObserver;

    .line 494
    :cond_50
    iget-object v3, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    iget-object v4, p0, Ltds/androidx/viewpager/ViewPager;->mObserver:Ltds/androidx/viewpager/ViewPager$PagerObserver;

    invoke-virtual {v3, v4}, Ltds/androidx/viewpager/PagerAdapter;->setViewPagerObserver(Landroid/database/DataSetObserver;)V

    .line 495
    iput-boolean v2, p0, Ltds/androidx/viewpager/ViewPager;->mPopulatePending:Z

    .line 496
    iget-boolean v3, p0, Ltds/androidx/viewpager/ViewPager;->mFirstLayout:Z

    .line 497
    .local v3, "wasFirstLayout":Z
    const/4 v4, 0x1

    iput-boolean v4, p0, Ltds/androidx/viewpager/ViewPager;->mFirstLayout:Z

    .line 498
    iget-object v5, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    invoke-virtual {v5}, Ltds/androidx/viewpager/PagerAdapter;->getCount()I

    move-result v5

    iput v5, p0, Ltds/androidx/viewpager/ViewPager;->mExpectedAdapterCount:I

    .line 499
    iget v5, p0, Ltds/androidx/viewpager/ViewPager;->mRestoredCurItem:I

    if-ltz v5, :cond_80

    .line 500
    iget-object v5, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    iget-object v6, p0, Ltds/androidx/viewpager/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    iget-object v7, p0, Ltds/androidx/viewpager/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v5, v6, v7}, Ltds/androidx/viewpager/PagerAdapter;->restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    .line 501
    iget v5, p0, Ltds/androidx/viewpager/ViewPager;->mRestoredCurItem:I

    invoke-virtual {p0, v5, v2, v4}, Ltds/androidx/viewpager/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 502
    const/4 v2, -0x1

    iput v2, p0, Ltds/androidx/viewpager/ViewPager;->mRestoredCurItem:I

    .line 503
    iput-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mRestoredAdapterState:Landroid/os/Parcelable;

    .line 504
    iput-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mRestoredClassLoader:Ljava/lang/ClassLoader;

    goto :goto_89

    .line 505
    :cond_80
    if-nez v3, :cond_86

    .line 506
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->populate()V

    goto :goto_89

    .line 508
    :cond_86
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->requestLayout()V

    .line 513
    .end local v3    # "wasFirstLayout":Z
    :cond_89
    :goto_89
    iget-object v1, p0, Ltds/androidx/viewpager/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    if-eqz v1, :cond_aa

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_aa

    .line 514
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Ltds/androidx/viewpager/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_9a
    if-ge v1, v2, :cond_aa

    .line 515
    iget-object v3, p0, Ltds/androidx/viewpager/ViewPager;->mAdapterChangeListeners:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltds/androidx/viewpager/ViewPager$OnAdapterChangeListener;

    invoke-interface {v3, p0, v0, p1}, Ltds/androidx/viewpager/ViewPager$OnAdapterChangeListener;->onAdapterChanged(Ltds/androidx/viewpager/ViewPager;Ltds/androidx/viewpager/PagerAdapter;Ltds/androidx/viewpager/PagerAdapter;)V

    .line 514
    add-int/lit8 v1, v1, 0x1

    goto :goto_9a

    .line 518
    .end local v1    # "i":I
    .end local v2    # "count":I
    :cond_aa
    return-void
.end method

.method public setCurrentItem(I)V
    .registers 4
    .param p1, "item"    # I

    .line 577
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/viewpager/ViewPager;->mPopulatePending:Z

    .line 578
    iget-boolean v1, p0, Ltds/androidx/viewpager/ViewPager;->mFirstLayout:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Ltds/androidx/viewpager/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 579
    return-void
.end method

.method public setCurrentItem(IZ)V
    .registers 4
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z

    .line 588
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/viewpager/ViewPager;->mPopulatePending:Z

    .line 589
    invoke-virtual {p0, p1, p2, v0}, Ltds/androidx/viewpager/ViewPager;->setCurrentItemInternal(IZZ)V

    .line 590
    return-void
.end method

.method setCurrentItemInternal(IZZ)V
    .registers 5
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z

    .line 597
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Ltds/androidx/viewpager/ViewPager;->setCurrentItemInternal(IZZI)V

    .line 598
    return-void
.end method

.method setCurrentItemInternal(IZZI)V
    .registers 10
    .param p1, "item"    # I
    .param p2, "smoothScroll"    # Z
    .param p3, "always"    # Z
    .param p4, "velocity"    # I

    .line 601
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_70

    invoke-virtual {v0}, Ltds/androidx/viewpager/PagerAdapter;->getCount()I

    move-result v0

    if-gtz v0, :cond_c

    goto :goto_70

    .line 605
    :cond_c
    if-nez p3, :cond_1e

    iget v0, p0, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    if-ne v0, p1, :cond_1e

    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1e

    .line 606
    invoke-direct {p0, v1}, Ltds/androidx/viewpager/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 607
    return-void

    .line 610
    :cond_1e
    const/4 v0, 0x1

    if-gez p1, :cond_23

    .line 611
    const/4 p1, 0x0

    goto :goto_33

    .line 612
    :cond_23
    iget-object v2, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    invoke-virtual {v2}, Ltds/androidx/viewpager/PagerAdapter;->getCount()I

    move-result v2

    if-lt p1, v2, :cond_33

    .line 613
    iget-object v2, p0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    invoke-virtual {v2}, Ltds/androidx/viewpager/PagerAdapter;->getCount()I

    move-result v2

    add-int/lit8 p1, v2, -0x1

    .line 615
    :cond_33
    :goto_33
    iget v2, p0, Ltds/androidx/viewpager/ViewPager;->mOffscreenPageLimit:I

    .line 616
    .local v2, "pageLimit":I
    iget v3, p0, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    add-int v4, v3, v2

    if-gt p1, v4, :cond_3e

    sub-int/2addr v3, v2

    if-ge p1, v3, :cond_54

    .line 620
    :cond_3e
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_3f
    iget-object v4, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_54

    .line 621
    iget-object v4, p0, Ltds/androidx/viewpager/ViewPager;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ltds/androidx/viewpager/ViewPager$ItemInfo;

    iput-boolean v0, v4, Ltds/androidx/viewpager/ViewPager$ItemInfo;->scrolling:Z

    .line 620
    add-int/lit8 v3, v3, 0x1

    goto :goto_3f

    .line 624
    .end local v3    # "i":I
    :cond_54
    iget v3, p0, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    if-eq v3, p1, :cond_59

    move v1, v0

    :cond_59
    move v0, v1

    .line 626
    .local v0, "dispatchSelected":Z
    iget-boolean v1, p0, Ltds/androidx/viewpager/ViewPager;->mFirstLayout:Z

    if-eqz v1, :cond_69

    .line 629
    iput p1, p0, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    .line 630
    if-eqz v0, :cond_65

    .line 631
    invoke-direct {p0, p1}, Ltds/androidx/viewpager/ViewPager;->dispatchOnPageSelected(I)V

    .line 633
    :cond_65
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->requestLayout()V

    goto :goto_6f

    .line 635
    :cond_69
    invoke-virtual {p0, p1}, Ltds/androidx/viewpager/ViewPager;->populate(I)V

    .line 636
    invoke-direct {p0, p1, p2, p4, v0}, Ltds/androidx/viewpager/ViewPager;->scrollToItem(IZIZ)V

    .line 638
    :goto_6f
    return-void

    .line 602
    .end local v0    # "dispatchSelected":Z
    .end local v2    # "pageLimit":I
    :cond_70
    :goto_70
    invoke-direct {p0, v1}, Ltds/androidx/viewpager/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 603
    return-void
.end method

.method setInternalPageChangeListener(Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;)Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;
    .registers 3
    .param p1, "listener"    # Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;

    .line 781
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mInternalPageChangeListener:Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;

    .line 782
    .local v0, "oldListener":Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;
    iput-object p1, p0, Ltds/androidx/viewpager/ViewPager;->mInternalPageChangeListener:Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;

    .line 783
    return-object v0
.end method

.method public setOffscreenPageLimit(I)V
    .registers 5
    .param p1, "limit"    # I

    .line 815
    const/4 v0, 0x1

    if-ge p1, v0, :cond_26

    .line 816
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

    .line 818
    const/4 p1, 0x1

    .line 820
    :cond_26
    iget v0, p0, Ltds/androidx/viewpager/ViewPager;->mOffscreenPageLimit:I

    if-eq p1, v0, :cond_2f

    .line 821
    iput p1, p0, Ltds/androidx/viewpager/ViewPager;->mOffscreenPageLimit:I

    .line 822
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->populate()V

    .line 824
    :cond_2f
    return-void
.end method

.method public setOnPageChangeListener(Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;)V
    .registers 2
    .param p1, "listener"    # Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 675
    iput-object p1, p0, Ltds/androidx/viewpager/ViewPager;->mOnPageChangeListener:Ltds/androidx/viewpager/ViewPager$OnPageChangeListener;

    .line 676
    return-void
.end method

.method public setPageMargin(I)V
    .registers 4
    .param p1, "marginPixels"    # I

    .line 835
    iget v0, p0, Ltds/androidx/viewpager/ViewPager;->mPageMargin:I

    .line 836
    .local v0, "oldMargin":I
    iput p1, p0, Ltds/androidx/viewpager/ViewPager;->mPageMargin:I

    .line 838
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getWidth()I

    move-result v1

    .line 839
    .local v1, "width":I
    invoke-direct {p0, v1, v1, p1, v0}, Ltds/androidx/viewpager/ViewPager;->recomputeScrollPosition(IIII)V

    .line 841
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->requestLayout()V

    .line 842
    return-void
.end method

.method public setPageMarginDrawable(I)V
    .registers 3
    .param p1, "resId"    # I

    .line 871
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Ltds/androidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Ltds/androidx/viewpager/ViewPager;->setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 872
    return-void
.end method

.method public setPageMarginDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 859
    iput-object p1, p0, Ltds/androidx/viewpager/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

    .line 860
    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->refreshDrawableState()V

    .line 861
    :cond_7
    if-nez p1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    invoke-virtual {p0, v0}, Ltds/androidx/viewpager/ViewPager;->setWillNotDraw(Z)V

    .line 862
    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->invalidate()V

    .line 863
    return-void
.end method

.method public setPageTransformer(ZLtds/androidx/viewpager/ViewPager$PageTransformer;)V
    .registers 4
    .param p1, "reverseDrawingOrder"    # Z
    .param p2, "transformer"    # Ltds/androidx/viewpager/ViewPager$PageTransformer;

    .line 735
    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Ltds/androidx/viewpager/ViewPager;->setPageTransformer(ZLtds/androidx/viewpager/ViewPager$PageTransformer;I)V

    .line 736
    return-void
.end method

.method public setPageTransformer(ZLtds/androidx/viewpager/ViewPager$PageTransformer;I)V
    .registers 8
    .param p1, "reverseDrawingOrder"    # Z
    .param p2, "transformer"    # Ltds/androidx/viewpager/ViewPager$PageTransformer;
    .param p3, "pageLayerType"    # I

    .line 753
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    .line 754
    .local v2, "hasTransformer":Z
    :goto_7
    iget-object v3, p0, Ltds/androidx/viewpager/ViewPager;->mPageTransformer:Ltds/androidx/viewpager/ViewPager$PageTransformer;

    if-eqz v3, :cond_d

    move v3, v0

    goto :goto_e

    :cond_d
    move v3, v1

    :goto_e
    if-eq v2, v3, :cond_12

    move v3, v0

    goto :goto_13

    :cond_12
    move v3, v1

    .line 755
    .local v3, "needsPopulate":Z
    :goto_13
    iput-object p2, p0, Ltds/androidx/viewpager/ViewPager;->mPageTransformer:Ltds/androidx/viewpager/ViewPager$PageTransformer;

    .line 756
    invoke-virtual {p0, v2}, Ltds/androidx/viewpager/ViewPager;->setChildrenDrawingOrderEnabled(Z)V

    .line 757
    if-eqz v2, :cond_22

    .line 758
    if-eqz p1, :cond_1d

    const/4 v0, 0x2

    :cond_1d
    iput v0, p0, Ltds/androidx/viewpager/ViewPager;->mDrawingOrder:I

    .line 759
    iput p3, p0, Ltds/androidx/viewpager/ViewPager;->mPageTransformerLayerType:I

    goto :goto_24

    .line 761
    :cond_22
    iput v1, p0, Ltds/androidx/viewpager/ViewPager;->mDrawingOrder:I

    .line 763
    :goto_24
    if-eqz v3, :cond_29

    invoke-virtual {p0}, Ltds/androidx/viewpager/ViewPager;->populate()V

    .line 764
    :cond_29
    return-void
.end method

.method setScrollState(I)V
    .registers 3
    .param p1, "newState"    # I

    .line 454
    iget v0, p0, Ltds/androidx/viewpager/ViewPager;->mScrollState:I

    if-ne v0, p1, :cond_5

    .line 455
    return-void

    .line 458
    :cond_5
    iput p1, p0, Ltds/androidx/viewpager/ViewPager;->mScrollState:I

    .line 459
    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mPageTransformer:Ltds/androidx/viewpager/ViewPager$PageTransformer;

    if-eqz v0, :cond_13

    .line 461
    if-eqz p1, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    invoke-direct {p0, v0}, Ltds/androidx/viewpager/ViewPager;->enableLayers(Z)V

    .line 463
    :cond_13
    invoke-direct {p0, p1}, Ltds/androidx/viewpager/ViewPager;->dispatchOnScrollStateChanged(I)V

    .line 464
    return-void
.end method

.method smoothScrollTo(II)V
    .registers 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 905
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ltds/androidx/viewpager/ViewPager;->smoothScrollTo(III)V

    .line 906
    return-void
.end method

.method smoothScrollTo(III)V
    .registers 22
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "velocity"    # I

    .line 916
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_d

    .line 918
    invoke-direct {v0, v2}, Ltds/androidx/viewpager/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 919
    return-void

    .line 923
    :cond_d
    iget-object v1, v0, Ltds/androidx/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    const/4 v3, 0x1

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1a

    move v1, v3

    goto :goto_1b

    :cond_1a
    move v1, v2

    .line 924
    .local v1, "wasScrolling":Z
    :goto_1b
    if-eqz v1, :cond_37

    .line 929
    iget-boolean v4, v0, Ltds/androidx/viewpager/ViewPager;->mIsScrollStarted:Z

    if-eqz v4, :cond_28

    iget-object v4, v0, Ltds/androidx/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrX()I

    move-result v4

    goto :goto_2e

    :cond_28
    iget-object v4, v0, Ltds/androidx/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v4}, Landroid/widget/Scroller;->getStartX()I

    move-result v4

    .line 931
    .local v4, "sx":I
    :goto_2e
    iget-object v5, v0, Ltds/androidx/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->abortAnimation()V

    .line 932
    invoke-direct {v0, v2}, Ltds/androidx/viewpager/ViewPager;->setScrollingCacheEnabled(Z)V

    goto :goto_3b

    .line 934
    .end local v4    # "sx":I
    :cond_37
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getScrollX()I

    move-result v4

    .line 936
    .restart local v4    # "sx":I
    :goto_3b
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getScrollY()I

    move-result v11

    .line 937
    .local v11, "sy":I
    sub-int v12, p1, v4

    .line 938
    .local v12, "dx":I
    sub-int v13, p2, v11

    .line 939
    .local v13, "dy":I
    if-nez v12, :cond_51

    if-nez v13, :cond_51

    .line 940
    invoke-direct {v0, v2}, Ltds/androidx/viewpager/ViewPager;->completeScroll(Z)V

    .line 941
    invoke-virtual/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->populate()V

    .line 942
    invoke-virtual {v0, v2}, Ltds/androidx/viewpager/ViewPager;->setScrollState(I)V

    .line 943
    return-void

    .line 946
    :cond_51
    invoke-direct {v0, v3}, Ltds/androidx/viewpager/ViewPager;->setScrollingCacheEnabled(Z)V

    .line 947
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ltds/androidx/viewpager/ViewPager;->setScrollState(I)V

    .line 949
    invoke-direct/range {p0 .. p0}, Ltds/androidx/viewpager/ViewPager;->getClientWidth()I

    move-result v3

    .line 950
    .local v3, "width":I
    div-int/lit8 v14, v3, 0x2

    .line 951
    .local v14, "halfWidth":I
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float/2addr v5, v6

    int-to-float v7, v3

    div-float/2addr v5, v7

    invoke-static {v6, v5}, Ljava/lang/Math;->min(FF)F

    move-result v15

    .line 952
    .local v15, "distanceRatio":F
    int-to-float v5, v14

    int-to-float v7, v14

    .line 953
    invoke-virtual {v0, v15}, Ltds/androidx/viewpager/ViewPager;->distanceInfluenceForSnapDuration(F)F

    move-result v8

    mul-float/2addr v7, v8

    add-float v16, v5, v7

    .line 956
    .local v16, "distance":F
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->abs(I)I

    move-result v10

    .line 957
    .end local p3    # "velocity":I
    .local v10, "velocity":I
    if-lez v10, :cond_8c

    .line 958
    const/high16 v5, 0x447a0000    # 1000.0f

    int-to-float v6, v10

    div-float v6, v16, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    mul-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    .local v5, "duration":I
    goto :goto_a6

    .line 960
    .end local v5    # "duration":I
    :cond_8c
    int-to-float v5, v3

    iget-object v7, v0, Ltds/androidx/viewpager/ViewPager;->mAdapter:Ltds/androidx/viewpager/PagerAdapter;

    iget v8, v0, Ltds/androidx/viewpager/ViewPager;->mCurItem:I

    invoke-virtual {v7, v8}, Ltds/androidx/viewpager/PagerAdapter;->getPageWidth(I)F

    move-result v7

    mul-float/2addr v5, v7

    .line 961
    .local v5, "pageWidth":F
    invoke-static {v12}, Ljava/lang/Math;->abs(I)I

    move-result v7

    int-to-float v7, v7

    iget v8, v0, Ltds/androidx/viewpager/ViewPager;->mPageMargin:I

    int-to-float v8, v8

    add-float/2addr v8, v5

    div-float/2addr v7, v8

    .line 962
    .local v7, "pageDelta":F
    add-float/2addr v6, v7

    const/high16 v8, 0x42c80000    # 100.0f

    mul-float/2addr v6, v8

    float-to-int v6, v6

    move v5, v6

    .line 964
    .end local v7    # "pageDelta":F
    .local v5, "duration":I
    :goto_a6
    const/16 v6, 0x258

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v17

    .line 968
    .end local v5    # "duration":I
    .local v17, "duration":I
    iput-boolean v2, v0, Ltds/androidx/viewpager/ViewPager;->mIsScrollStarted:Z

    .line 969
    iget-object v5, v0, Ltds/androidx/viewpager/ViewPager;->mScroller:Landroid/widget/Scroller;

    move v6, v4

    move v7, v11

    move v8, v12

    move v9, v13

    move v2, v10

    .end local v10    # "velocity":I
    .local v2, "velocity":I
    move/from16 v10, v17

    invoke-virtual/range {v5 .. v10}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 970
    invoke-static/range {p0 .. p0}, Ltds/androidx/core/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 971
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .registers 3
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 876
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Ltds/androidx/viewpager/ViewPager;->mMarginDrawable:Landroid/graphics/drawable/Drawable;

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
