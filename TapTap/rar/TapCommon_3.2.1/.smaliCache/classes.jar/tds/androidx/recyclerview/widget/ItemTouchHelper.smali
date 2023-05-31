.class public Ltds/androidx/recyclerview/widget/ItemTouchHelper;
.super Ltds/androidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ItemTouchHelper.java"

# interfaces
.implements Ltds/androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;,
        Ltds/androidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;,
        Ltds/androidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;,
        Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;,
        Ltds/androidx/recyclerview/widget/ItemTouchHelper$ViewDropHandler;
    }
.end annotation


# static fields
.field static final ACTION_MODE_DRAG_MASK:I = 0xff0000

.field private static final ACTION_MODE_IDLE_MASK:I = 0xff

.field static final ACTION_MODE_SWIPE_MASK:I = 0xff00

.field public static final ACTION_STATE_DRAG:I = 0x2

.field public static final ACTION_STATE_IDLE:I = 0x0

.field public static final ACTION_STATE_SWIPE:I = 0x1

.field private static final ACTIVE_POINTER_ID_NONE:I = -0x1

.field public static final ANIMATION_TYPE_DRAG:I = 0x8

.field public static final ANIMATION_TYPE_SWIPE_CANCEL:I = 0x4

.field public static final ANIMATION_TYPE_SWIPE_SUCCESS:I = 0x2

.field private static final DEBUG:Z = false

.field static final DIRECTION_FLAG_COUNT:I = 0x8

.field public static final DOWN:I = 0x2

.field public static final END:I = 0x20

.field public static final LEFT:I = 0x4

.field private static final PIXELS_PER_SECOND:I = 0x3e8

.field public static final RIGHT:I = 0x8

.field public static final START:I = 0x10

.field private static final TAG:Ljava/lang/String; = "ItemTouchHelper"

.field public static final UP:I = 0x1


# instance fields
.field private mActionState:I

.field mActivePointerId:I

.field mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

.field private mChildDrawingOrderCallback:Ltds/androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

.field private mDistances:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDragScrollStartTimeInMs:J

.field mDx:F

.field mDy:F

.field mGestureDetector:Ltds/androidx/core/view/GestureDetectorCompat;

.field mInitialTouchX:F

.field mInitialTouchY:F

.field private mItemTouchHelperGestureListener:Ltds/androidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

.field private mMaxSwipeVelocity:F

.field private final mOnItemTouchListener:Ltds/androidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

.field mOverdrawChild:Landroid/view/View;

.field mOverdrawChildPosition:I

.field final mPendingCleanup:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field mRecoverAnimations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;",
            ">;"
        }
    .end annotation
.end field

.field mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

.field final mScrollRunnable:Ljava/lang/Runnable;

.field mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

.field mSelectedFlags:I

.field private mSelectedStartX:F

.field private mSelectedStartY:F

.field private mSlop:I

.field private mSwapTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mSwipeEscapeVelocity:F

.field private final mTmpPosition:[F

.field private mTmpRect:Landroid/graphics/Rect;

.field mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;)V
    .registers 5
    .param p1, "callback"    # Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 445
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 165
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    .line 170
    const/4 v0, 0x2

    new-array v0, v0, [F

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    .line 175
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 215
    const/4 v1, -0x1

    iput v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 227
    const/4 v2, 0x0

    iput v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    .line 244
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    .line 255
    new-instance v2, Ltds/androidx/recyclerview/widget/ItemTouchHelper$1;

    invoke-direct {v2, p0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$1;-><init>(Ltds/androidx/recyclerview/widget/ItemTouchHelper;)V

    iput-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    .line 283
    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mChildDrawingOrderCallback:Ltds/androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 290
    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 298
    iput v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 312
    new-instance v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;

    invoke-direct {v0, p0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$2;-><init>(Ltds/androidx/recyclerview/widget/ItemTouchHelper;)V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mOnItemTouchListener:Ltds/androidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 446
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 447
    return-void
.end method

.method private addChildDrawingOrderCallback()V
    .registers 3

    .line 1288
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_7

    .line 1289
    return-void

    .line 1291
    :cond_7
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mChildDrawingOrderCallback:Ltds/androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    if-nez v0, :cond_12

    .line 1292
    new-instance v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$5;

    invoke-direct {v0, p0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$5;-><init>(Ltds/androidx/recyclerview/widget/ItemTouchHelper;)V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mChildDrawingOrderCallback:Ltds/androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    .line 1310
    :cond_12
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mChildDrawingOrderCallback:Ltds/androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->setChildDrawingOrderCallback(Ltds/androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;)V

    .line 1311
    return-void
.end method

.method private checkHorizontalSwipe(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)I
    .registers 11
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "flags"    # I

    .line 1235
    and-int/lit8 v0, p2, 0xc

    if-eqz v0, :cond_7a

    .line 1236
    iget v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/16 v2, 0x8

    const/4 v3, 0x4

    if-lez v0, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v3

    .line 1237
    .local v0, "dirFlag":I
    :goto_11
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_5d

    iget v5, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    const/4 v6, -0x1

    if-le v5, v6, :cond_5d

    .line 1238
    const/16 v5, 0x3e8

    iget-object v6, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget v7, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 1239
    invoke-virtual {v6, v7}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    move-result v6

    .line 1238
    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1240
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    .line 1241
    .local v4, "xVelocity":F
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v6, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    .line 1242
    .local v5, "yVelocity":F
    cmpl-float v1, v4, v1

    if-lez v1, :cond_3c

    goto :goto_3d

    :cond_3c
    move v2, v3

    :goto_3d
    move v1, v2

    .line 1243
    .local v1, "velDirFlag":I
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1244
    .local v2, "absXVelocity":F
    and-int v3, v1, p2

    if-eqz v3, :cond_5d

    if-ne v0, v1, :cond_5d

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget v6, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 1245
    invoke-virtual {v3, v6}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    move-result v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_5d

    .line 1246
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_5d

    .line 1247
    return v1

    .line 1251
    .end local v1    # "velDirFlag":I
    .end local v2    # "absXVelocity":F
    .end local v4    # "xVelocity":F
    .end local v5    # "yVelocity":F
    :cond_5d
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 1252
    invoke-virtual {v2, p1}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeThreshold(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)F

    move-result v2

    mul-float/2addr v1, v2

    .line 1254
    .local v1, "threshold":F
    and-int v2, p2, v0

    if-eqz v2, :cond_7a

    iget v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_7a

    .line 1255
    return v0

    .line 1258
    .end local v0    # "dirFlag":I
    .end local v1    # "threshold":F
    :cond_7a
    const/4 v0, 0x0

    return v0
.end method

.method private checkVerticalSwipe(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)I
    .registers 11
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "flags"    # I

    .line 1262
    and-int/lit8 v0, p2, 0x3

    if-eqz v0, :cond_79

    .line 1263
    iget v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-lez v0, :cond_f

    move v0, v2

    goto :goto_10

    :cond_f
    move v0, v3

    .line 1264
    .local v0, "dirFlag":I
    :goto_10
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v4, :cond_5c

    iget v5, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    const/4 v6, -0x1

    if-le v5, v6, :cond_5c

    .line 1265
    const/16 v5, 0x3e8

    iget-object v6, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget v7, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 1266
    invoke-virtual {v6, v7}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeVelocityThreshold(F)F

    move-result v6

    .line 1265
    invoke-virtual {v4, v5, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 1267
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v5, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v4, v5}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v4

    .line 1268
    .local v4, "xVelocity":F
    iget-object v5, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget v6, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    invoke-virtual {v5, v6}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v5

    .line 1269
    .local v5, "yVelocity":F
    cmpl-float v1, v5, v1

    if-lez v1, :cond_3b

    goto :goto_3c

    :cond_3b
    move v2, v3

    :goto_3c
    move v1, v2

    .line 1270
    .local v1, "velDirFlag":I
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 1271
    .local v2, "absYVelocity":F
    and-int v3, v1, p2

    if-eqz v3, :cond_5c

    if-ne v1, v0, :cond_5c

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget v6, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 1272
    invoke-virtual {v3, v6}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeEscapeVelocity(F)F

    move-result v3

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_5c

    .line 1273
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v2, v3

    if-lez v3, :cond_5c

    .line 1274
    return v1

    .line 1278
    .end local v1    # "velDirFlag":I
    .end local v2    # "absYVelocity":F
    .end local v4    # "xVelocity":F
    .end local v5    # "yVelocity":F
    :cond_5c
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 1279
    invoke-virtual {v2, p1}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->getSwipeThreshold(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)F

    move-result v2

    mul-float/2addr v1, v2

    .line 1280
    .local v1, "threshold":F
    and-int v2, p2, v0

    if-eqz v2, :cond_79

    iget v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_79

    .line 1281
    return v0

    .line 1284
    .end local v0    # "dirFlag":I
    .end local v1    # "threshold":F
    :cond_79
    const/4 v0, 0x0

    return v0
.end method

.method private destroyCallbacks()V
    .registers 7

    .line 490
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Ltds/androidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 491
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mOnItemTouchListener:Ltds/androidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->removeOnItemTouchListener(Ltds/androidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 492
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->removeOnChildAttachStateChangeListener(Ltds/androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 494
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 495
    .local v0, "recoverAnimSize":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_19
    if-ltz v1, :cond_33

    .line 496
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    .line 497
    .local v2, "recoverAnimation":Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->cancel()V

    .line 498
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v5, v2, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3, v4, v5}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 495
    .end local v2    # "recoverAnimation":Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    add-int/lit8 v1, v1, -0x1

    goto :goto_19

    .line 500
    .end local v1    # "i":I
    :cond_33
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 501
    const/4 v1, 0x0

    iput-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 502
    const/4 v1, -0x1

    iput v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 503
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->releaseVelocityTracker()V

    .line 504
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->stopGestureDetection()V

    .line 505
    return-void
.end method

.method private findSwapTargets(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Ljava/util/List;
    .registers 22
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")",
            "Ljava/util/List<",
            "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    .line 798
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    if-nez v2, :cond_17

    .line 799
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    .line 800
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDistances:Ljava/util/List;

    goto :goto_1f

    .line 802
    :cond_17
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 803
    iget-object v2, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 805
    :goto_1f
    iget-object v2, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->getBoundingBoxMargin()I

    move-result v2

    .line 806
    .local v2, "margin":I
    iget v3, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    iget v4, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    add-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v3, v2

    .line 807
    .local v3, "left":I
    iget v4, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    iget v5, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    add-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int/2addr v4, v2

    .line 808
    .local v4, "top":I
    iget-object v5, v1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v5, v6

    .line 809
    .local v5, "right":I
    iget-object v6, v1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v6, v4

    mul-int/lit8 v7, v2, 0x2

    add-int/2addr v6, v7

    .line 810
    .local v6, "bottom":I
    add-int v7, v3, v5

    div-int/lit8 v7, v7, 0x2

    .line 811
    .local v7, "centerX":I
    add-int v8, v4, v6

    div-int/lit8 v8, v8, 0x2

    .line 812
    .local v8, "centerY":I
    iget-object v9, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v9}, Ltds/androidx/recyclerview/widget/RecyclerView;->getLayoutManager()Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v9

    .line 813
    .local v9, "lm":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;
    invoke-virtual {v9}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v10

    .line 814
    .local v10, "childCount":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_60
    if-ge v11, v10, :cond_11e

    .line 815
    invoke-virtual {v9, v11}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 816
    .local v12, "other":Landroid/view/View;
    iget-object v13, v1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v12, v13, :cond_70

    .line 817
    move/from16 v19, v2

    move/from16 v16, v3

    goto/16 :goto_114

    .line 819
    :cond_70
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v13

    if-lt v13, v4, :cond_110

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    if-gt v13, v6, :cond_110

    .line 820
    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v13

    if-lt v13, v3, :cond_10b

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v13

    if-le v13, v5, :cond_8e

    .line 821
    move/from16 v19, v2

    move/from16 v16, v3

    goto/16 :goto_114

    .line 823
    :cond_8e
    iget-object v13, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v13, v12}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v13

    .line 824
    .local v13, "otherVh":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget-object v14, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v15, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v14, v15, v1, v13}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->canDropOver(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_106

    .line 826
    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v14

    add-int/2addr v1, v14

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v7, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 827
    .local v1, "dx":I
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v14

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v15

    add-int/2addr v14, v15

    div-int/lit8 v14, v14, 0x2

    sub-int v14, v8, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    .line 828
    .local v14, "dy":I
    mul-int v15, v1, v1

    mul-int v16, v14, v14

    add-int v15, v15, v16

    .line 830
    .local v15, "dist":I
    const/16 v16, 0x0

    .line 831
    .local v16, "pos":I
    move/from16 v17, v1

    .end local v1    # "dx":I
    .local v17, "dx":I
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 832
    .local v1, "cnt":I
    const/16 v18, 0x0

    move/from16 v19, v2

    move/from16 v2, v16

    move/from16 v16, v3

    move/from16 v3, v18

    .local v2, "pos":I
    .local v3, "j":I
    .local v16, "left":I
    .local v19, "margin":I
    :goto_dc
    if-ge v3, v1, :cond_f5

    .line 833
    move/from16 v18, v1

    .end local v1    # "cnt":I
    .local v18, "cnt":I
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v15, v1, :cond_f7

    .line 834
    add-int/lit8 v2, v2, 0x1

    .line 832
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v18

    goto :goto_dc

    .end local v18    # "cnt":I
    .restart local v1    # "cnt":I
    :cond_f5
    move/from16 v18, v1

    .line 839
    .end local v1    # "cnt":I
    .end local v3    # "j":I
    .restart local v18    # "cnt":I
    :cond_f7
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v1, v2, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 840
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_114

    .line 824
    .end local v14    # "dy":I
    .end local v15    # "dist":I
    .end local v16    # "left":I
    .end local v17    # "dx":I
    .end local v18    # "cnt":I
    .end local v19    # "margin":I
    .local v2, "margin":I
    .local v3, "left":I
    :cond_106
    move/from16 v19, v2

    move/from16 v16, v3

    .end local v2    # "margin":I
    .end local v3    # "left":I
    .restart local v16    # "left":I
    .restart local v19    # "margin":I
    goto :goto_114

    .line 820
    .end local v13    # "otherVh":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v16    # "left":I
    .end local v19    # "margin":I
    .restart local v2    # "margin":I
    .restart local v3    # "left":I
    :cond_10b
    move/from16 v19, v2

    move/from16 v16, v3

    .end local v2    # "margin":I
    .end local v3    # "left":I
    .restart local v16    # "left":I
    .restart local v19    # "margin":I
    goto :goto_114

    .line 819
    .end local v16    # "left":I
    .end local v19    # "margin":I
    .restart local v2    # "margin":I
    .restart local v3    # "left":I
    :cond_110
    move/from16 v19, v2

    move/from16 v16, v3

    .line 814
    .end local v2    # "margin":I
    .end local v3    # "left":I
    .end local v12    # "other":Landroid/view/View;
    .restart local v16    # "left":I
    .restart local v19    # "margin":I
    :goto_114
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, p1

    move/from16 v3, v16

    move/from16 v2, v19

    goto/16 :goto_60

    .line 843
    .end local v11    # "i":I
    .end local v16    # "left":I
    .end local v19    # "margin":I
    .restart local v2    # "margin":I
    .restart local v3    # "left":I
    :cond_11e
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    return-object v1
.end method

.method private findSwipedView(Landroid/view/MotionEvent;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 11
    .param p1, "motionEvent"    # Landroid/view/MotionEvent;

    .line 948
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getLayoutManager()Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 949
    .local v0, "lm":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;
    iget v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_d

    .line 950
    return-object v2

    .line 952
    :cond_d
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 953
    .local v1, "pointerIndex":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    sub-float/2addr v3, v4

    .line 954
    .local v3, "dx":F
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v4

    iget v5, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    sub-float/2addr v4, v5

    .line 955
    .local v4, "dy":F
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 956
    .local v5, "absDx":F
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 958
    .local v6, "absDy":F
    iget v7, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSlop:I

    int-to-float v8, v7

    cmpg-float v8, v5, v8

    if-gez v8, :cond_34

    int-to-float v7, v7

    cmpg-float v7, v6, v7

    if-gez v7, :cond_34

    .line 959
    return-object v2

    .line 961
    :cond_34
    cmpl-float v7, v5, v6

    if-lez v7, :cond_3f

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 962
    return-object v2

    .line 963
    :cond_3f
    cmpl-float v7, v6, v5

    if-lez v7, :cond_4a

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 964
    return-object v2

    .line 966
    :cond_4a
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v7

    .line 967
    .local v7, "child":Landroid/view/View;
    if-nez v7, :cond_51

    .line 968
    return-object v2

    .line 970
    :cond_51
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v7}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    return-object v2
.end method

.method private getSelectedDxDy([F)V
    .registers 5
    .param p1, "outPosition"    # [F

    .line 524
    iget v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    and-int/lit8 v0, v0, 0xc

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 525
    iget v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    iget v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    add-float/2addr v0, v2

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    aput v0, p1, v1

    goto :goto_23

    .line 527
    :cond_19
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    aput v0, p1, v1

    .line 529
    :goto_23
    iget v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x1

    if-eqz v0, :cond_3c

    .line 530
    iget v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    iget v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    add-float/2addr v0, v2

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    aput v0, p1, v1

    goto :goto_46

    .line 532
    :cond_3c
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    aput v0, p1, v1

    .line 534
    :goto_46
    return-void
.end method

.method private static hitTest(Landroid/view/View;FFFF)Z
    .registers 6
    .param p0, "child"    # Landroid/view/View;
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "left"    # F
    .param p4, "top"    # F

    .line 450
    cmpl-float v0, p1, p3

    if-ltz v0, :cond_1e

    .line 451
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p3

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1e

    cmpl-float v0, p2, p4

    if-ltz v0, :cond_1e

    .line 453
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v0, p4

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 450
    :goto_1f
    return v0
.end method

.method private releaseVelocityTracker()V
    .registers 2

    .line 941
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_a

    .line 942
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 943
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 945
    :cond_a
    return-void
.end method

.method private setupCallbacks()V
    .registers 4

    .line 481
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 482
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSlop:I

    .line 483
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->addItemDecoration(Ltds/androidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 484
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mOnItemTouchListener:Ltds/androidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    invoke-virtual {v1, v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Ltds/androidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 485
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->addOnChildAttachStateChangeListener(Ltds/androidx/recyclerview/widget/RecyclerView$OnChildAttachStateChangeListener;)V

    .line 486
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->startGestureDetection()V

    .line 487
    return-void
.end method

.method private startGestureDetection()V
    .registers 4

    .line 508
    new-instance v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    invoke-direct {v0, p0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;-><init>(Ltds/androidx/recyclerview/widget/ItemTouchHelper;)V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mItemTouchHelperGestureListener:Ltds/androidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    .line 509
    new-instance v0, Ltds/androidx/core/view/GestureDetectorCompat;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mItemTouchHelperGestureListener:Ltds/androidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    invoke-direct {v0, v1, v2}, Ltds/androidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mGestureDetector:Ltds/androidx/core/view/GestureDetectorCompat;

    .line 511
    return-void
.end method

.method private stopGestureDetection()V
    .registers 3

    .line 514
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mItemTouchHelperGestureListener:Ltds/androidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 515
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->doNotReactToLongPress()V

    .line 516
    iput-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mItemTouchHelperGestureListener:Ltds/androidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;

    .line 518
    :cond_a
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mGestureDetector:Ltds/androidx/core/view/GestureDetectorCompat;

    if-eqz v0, :cond_10

    .line 519
    iput-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mGestureDetector:Ltds/androidx/core/view/GestureDetectorCompat;

    .line 521
    :cond_10
    return-void
.end method

.method private swipeIfNecessary(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .registers 9
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1189
    iget v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    .line 1190
    return v1

    .line 1192
    :cond_7
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2, p1}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->getMovementFlags(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    .line 1193
    .local v0, "originalMovementFlags":I
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 1195
    invoke-static {v3}, Ltds/androidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v3

    .line 1193
    invoke-virtual {v2, v0, v3}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToAbsoluteDirection(II)I

    move-result v2

    .line 1196
    .local v2, "absoluteMovementFlags":I
    const v3, 0xff00

    and-int v4, v2, v3

    shr-int/lit8 v4, v4, 0x8

    .line 1198
    .local v4, "flags":I
    if-nez v4, :cond_25

    .line 1199
    return v1

    .line 1201
    :cond_25
    and-int/2addr v3, v0

    shr-int/lit8 v3, v3, 0x8

    .line 1204
    .local v3, "originalFlags":I
    iget v5, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    iget v6, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v5, v5, v6

    if-lez v5, :cond_57

    .line 1205
    invoke-direct {p0, p1, v4}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->checkHorizontalSwipe(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    move-result v5

    move v6, v5

    .local v6, "swipeDir":I
    if-lez v5, :cond_4f

    .line 1207
    and-int v1, v3, v6

    if-nez v1, :cond_4e

    .line 1209
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 1210
    invoke-static {v1}, Ltds/androidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 1209
    invoke-static {v6, v1}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v1

    return v1

    .line 1212
    :cond_4e
    return v6

    .line 1214
    :cond_4f
    invoke-direct {p0, p1, v4}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->checkVerticalSwipe(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    move-result v5

    move v6, v5

    if-lez v5, :cond_76

    .line 1215
    return v6

    .line 1218
    .end local v6    # "swipeDir":I
    :cond_57
    invoke-direct {p0, p1, v4}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->checkVerticalSwipe(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    move-result v5

    move v6, v5

    .restart local v6    # "swipeDir":I
    if-lez v5, :cond_5f

    .line 1219
    return v6

    .line 1221
    :cond_5f
    invoke-direct {p0, p1, v4}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->checkHorizontalSwipe(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)I

    move-result v5

    move v6, v5

    if-lez v5, :cond_76

    .line 1223
    and-int v1, v3, v6

    if-nez v1, :cond_75

    .line 1225
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 1226
    invoke-static {v1}, Ltds/androidx/core/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v1

    .line 1225
    invoke-static {v6, v1}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->convertToRelativeDirection(II)I

    move-result v1

    return v1

    .line 1228
    :cond_75
    return v6

    .line 1231
    :cond_76
    return v1
.end method


# virtual methods
.method public attachToRecyclerView(Ltds/androidx/recyclerview/widget/RecyclerView;)V
    .registers 4
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 466
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-ne v0, p1, :cond_5

    .line 467
    return-void

    .line 469
    :cond_5
    if-eqz v0, :cond_a

    .line 470
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->destroyCallbacks()V

    .line 472
    :cond_a
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 473
    if-eqz p1, :cond_2b

    .line 474
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x42f00000    # 120.0f

    invoke-static {v0, v1}, Lcom/tds/common/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSwipeEscapeVelocity:F

    .line 475
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x44480000    # 800.0f

    invoke-static {v0, v1}, Lcom/tds/common/utils/UIUtils;->dp2px(Landroid/content/Context;F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mMaxSwipeVelocity:F

    .line 476
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->setupCallbacks()V

    .line 478
    :cond_2b
    return-void
.end method

.method checkSelectForSwipe(ILandroid/view/MotionEvent;I)V
    .registers 16
    .param p1, "action"    # I
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;
    .param p3, "pointerIndex"    # I

    .line 978
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_94

    const/4 v0, 0x2

    if-ne p1, v0, :cond_94

    iget v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    if-eq v1, v0, :cond_94

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    .line 979
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->isItemViewSwipeEnabled()Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_94

    .line 982
    :cond_15
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 983
    return-void

    .line 985
    :cond_1f
    invoke-direct {p0, p2}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->findSwipedView(Landroid/view/MotionEvent;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 986
    .local v0, "vh":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-nez v0, :cond_26

    .line 987
    return-void

    .line 989
    :cond_26
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v3, v0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v2

    .line 991
    .local v2, "movementFlags":I
    const v3, 0xff00

    and-int/2addr v3, v2

    shr-int/lit8 v3, v3, 0x8

    .line 994
    .local v3, "swipeFlags":I
    if-nez v3, :cond_37

    .line 995
    return-void

    .line 1000
    :cond_37
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 1001
    .local v4, "x":F
    invoke-virtual {p2, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    .line 1004
    .local v5, "y":F
    iget v6, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    sub-float v6, v4, v6

    .line 1005
    .local v6, "dx":F
    iget v7, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    sub-float v7, v5, v7

    .line 1008
    .local v7, "dy":F
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 1009
    .local v8, "absDx":F
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 1011
    .local v9, "absDy":F
    iget v10, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSlop:I

    int-to-float v11, v10

    cmpg-float v11, v8, v11

    if-gez v11, :cond_5c

    int-to-float v10, v10

    cmpg-float v10, v9, v10

    if-gez v10, :cond_5c

    .line 1012
    return-void

    .line 1014
    :cond_5c
    cmpl-float v10, v8, v9

    const/4 v11, 0x0

    if-lez v10, :cond_73

    .line 1015
    cmpg-float v10, v6, v11

    if-gez v10, :cond_6a

    and-int/lit8 v10, v3, 0x4

    if-nez v10, :cond_6a

    .line 1016
    return-void

    .line 1018
    :cond_6a
    cmpl-float v10, v6, v11

    if-lez v10, :cond_85

    and-int/lit8 v10, v3, 0x8

    if-nez v10, :cond_85

    .line 1019
    return-void

    .line 1022
    :cond_73
    cmpg-float v10, v7, v11

    if-gez v10, :cond_7c

    and-int/lit8 v10, v3, 0x1

    if-nez v10, :cond_7c

    .line 1023
    return-void

    .line 1025
    :cond_7c
    cmpl-float v10, v7, v11

    if-lez v10, :cond_85

    and-int/lit8 v10, v3, 0x2

    if-nez v10, :cond_85

    .line 1026
    return-void

    .line 1029
    :cond_85
    iput v11, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    iput v11, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 1030
    const/4 v10, 0x0

    invoke-virtual {p2, v10}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v10

    iput v10, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActivePointerId:I

    .line 1031
    invoke-virtual {p0, v0, v1}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->select(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 1032
    return-void

    .line 980
    .end local v0    # "vh":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v2    # "movementFlags":I
    .end local v3    # "swipeFlags":I
    .end local v4    # "x":F
    .end local v5    # "y":F
    .end local v6    # "dx":F
    .end local v7    # "dy":F
    .end local v8    # "absDx":F
    .end local v9    # "absDy":F
    :cond_94
    :goto_94
    return-void
.end method

.method endRecoverAnimation(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V
    .registers 7
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "override"    # Z

    .line 912
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 913
    .local v0, "recoverAnimSize":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_8
    if-ltz v1, :cond_2b

    .line 914
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    .line 915
    .local v2, "anim":Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    iget-object v3, v2, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v3, p1, :cond_28

    .line 916
    iget-boolean v3, v2, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    or-int/2addr v3, p2

    iput-boolean v3, v2, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mOverridden:Z

    .line 917
    iget-boolean v3, v2, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v3, :cond_22

    .line 918
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->cancel()V

    .line 920
    :cond_22
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 921
    return-void

    .line 913
    .end local v2    # "anim":Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    :cond_28
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 924
    .end local v1    # "i":I
    :cond_2b
    return-void
.end method

.method findAnimation(Landroid/view/MotionEvent;)Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    .registers 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1153
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 1154
    return-object v1

    .line 1156
    :cond_a
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->findChildView(Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    .line 1157
    .local v0, "target":Landroid/view/View;
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_16
    if-ltz v2, :cond_2a

    .line 1158
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    .line 1159
    .local v3, "anim":Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    iget-object v4, v3, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    if-ne v4, v0, :cond_27

    .line 1160
    return-object v3

    .line 1157
    .end local v3    # "anim":Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    :cond_27
    add-int/lit8 v2, v2, -0x1

    goto :goto_16

    .line 1163
    .end local v2    # "i":I
    :cond_2a
    return-object v1
.end method

.method findChildView(Landroid/view/MotionEvent;)Landroid/view/View;
    .registers 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .line 1037
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 1038
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 1039
    .local v1, "y":F
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_1f

    .line 1040
    iget-object v2, v2, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1041
    .local v2, "selectedView":Landroid/view/View;
    iget v3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    iget v4, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    add-float/2addr v3, v4

    iget v4, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    iget v5, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    add-float/2addr v4, v5

    invoke-static {v2, v0, v1, v3, v4}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 1042
    return-object v2

    .line 1045
    .end local v2    # "selectedView":Landroid/view/View;
    :cond_1f
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_27
    if-ltz v2, :cond_43

    .line 1046
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    .line 1047
    .local v3, "anim":Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    iget-object v4, v3, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v4, v4, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 1048
    .local v4, "view":Landroid/view/View;
    iget v5, v3, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mX:F

    iget v6, v3, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mY:F

    invoke-static {v4, v0, v1, v5, v6}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->hitTest(Landroid/view/View;FFFF)Z

    move-result v5

    if-eqz v5, :cond_40

    .line 1049
    return-object v4

    .line 1045
    .end local v3    # "anim":Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    .end local v4    # "view":Landroid/view/View;
    :cond_40
    add-int/lit8 v2, v2, -0x1

    goto :goto_27

    .line 1052
    .end local v2    # "i":I
    :cond_43
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->findChildViewUnder(FF)Landroid/view/View;

    move-result-object v2

    return-object v2
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "parent"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p4, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 929
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 930
    return-void
.end method

.method hasRunningRecoverAnim()Z
    .registers 4

    .line 721
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 722
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_1a

    .line 723
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    iget-boolean v2, v2, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mEnded:Z

    if-nez v2, :cond_17

    .line 724
    const/4 v2, 0x1

    return v2

    .line 722
    :cond_17
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 727
    .end local v1    # "i":I
    :cond_1a
    const/4 v1, 0x0

    return v1
.end method

.method moveIfNecessary(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 19
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 851
    move-object/from16 v0, p0

    move-object/from16 v9, p1

    iget-object v1, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->isLayoutRequested()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 852
    return-void

    .line 854
    :cond_d
    iget v1, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_13

    .line 855
    return-void

    .line 858
    :cond_13
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual {v1, v9}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->getMoveThreshold(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)F

    move-result v10

    .line 859
    .local v10, "threshold":F
    iget v1, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    iget v2, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    add-float/2addr v1, v2

    float-to-int v11, v1

    .line 860
    .local v11, "x":I
    iget v1, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    iget v2, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    add-float/2addr v1, v2

    float-to-int v12, v1

    .line 861
    .local v12, "y":I
    iget-object v1, v9, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, v12, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v9, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v10

    cmpg-float v1, v1, v2

    if-gez v1, :cond_58

    iget-object v1, v9, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 862
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, v11, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v9, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 863
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v10

    cmpg-float v1, v1, v2

    if-gez v1, :cond_58

    .line 864
    return-void

    .line 866
    :cond_58
    invoke-direct/range {p0 .. p1}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->findSwapTargets(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Ljava/util/List;

    move-result-object v13

    .line 867
    .local v13, "swapTargets":Ljava/util/List;, "Ljava/util/List<Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;>;"
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_63

    .line 868
    return-void

    .line 871
    :cond_63
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    invoke-virtual {v1, v9, v13, v11, v12}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->chooseDropTarget(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;II)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v14

    .line 872
    .local v14, "target":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-nez v14, :cond_76

    .line 873
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSwapTargets:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 874
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDistances:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 875
    return-void

    .line 877
    :cond_76
    invoke-virtual {v14}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v15

    .line 878
    .local v15, "toPosition":I
    invoke-virtual/range {p1 .. p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->getAbsoluteAdapterPosition()I

    move-result v16

    .line 879
    .local v16, "fromPosition":I
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v2, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2, v9, v14}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->onMove(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 881
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v2, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    move-object/from16 v3, p1

    move/from16 v4, v16

    move-object v5, v14

    move v6, v15

    move v7, v11

    move v8, v12

    invoke-virtual/range {v1 .. v8}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->onMoved(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;ILtds/androidx/recyclerview/widget/RecyclerView$ViewHolder;III)V

    .line 884
    :cond_97
    return-void
.end method

.method obtainVelocityTracker()V
    .registers 2

    .line 934
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    .line 935
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 937
    :cond_7
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 938
    return-void
.end method

.method public onChildViewAttachedToWindow(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .line 888
    return-void
.end method

.method public onChildViewDetachedFromWindow(Landroid/view/View;)V
    .registers 5
    .param p1, "view"    # Landroid/view/View;

    .line 892
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 893
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 894
    .local v0, "holder":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-nez v0, :cond_c

    .line 895
    return-void

    .line 897
    :cond_c
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    if-eqz v1, :cond_18

    if-ne v0, v1, :cond_18

    .line 898
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v2}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->select(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    goto :goto_2c

    .line 900
    :cond_18
    invoke-virtual {p0, v0, v2}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->endRecoverAnimation(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 901
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v2, v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 902
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2, v0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 905
    :cond_2c
    :goto_2c
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$State;)V
    .registers 14
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p3, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 551
    const/4 v0, -0x1

    iput v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChildPosition:I

    .line 552
    const/4 v0, 0x0

    .local v0, "dx":F
    const/4 v1, 0x0

    .line 553
    .local v1, "dy":F
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_16

    .line 554
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {p0, v2}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 555
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    const/4 v3, 0x0

    aget v0, v2, v3

    .line 556
    const/4 v3, 0x1

    aget v1, v2, v3

    .line 558
    :cond_16
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v5, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v6, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    iget v7, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    move-object v3, p1

    move-object v4, p2

    move v8, v0

    move v9, v1

    invoke-virtual/range {v2 .. v9}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->onDraw(Landroid/graphics/Canvas;Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 560
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$State;)V
    .registers 14
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p3, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;

    .line 538
    const/4 v0, 0x0

    .local v0, "dx":F
    const/4 v1, 0x0

    .line 539
    .local v1, "dy":F
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_13

    .line 540
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {p0, v2}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 541
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    const/4 v3, 0x0

    aget v0, v2, v3

    .line 542
    const/4 v3, 0x1

    aget v1, v2, v3

    .line 544
    :cond_13
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v5, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v6, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    iget v7, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    move-object v3, p1

    move-object v4, p2

    move v8, v0

    move v9, v1

    invoke-virtual/range {v2 .. v9}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->onDrawOver(Landroid/graphics/Canvas;Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Ljava/util/List;IFF)V

    .line 546
    return-void
.end method

.method postDispatchSwipe(Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;I)V
    .registers 5
    .param p1, "anim"    # Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    .param p2, "swipeDir"    # I

    .line 697
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    new-instance v1, Ltds/androidx/recyclerview/widget/ItemTouchHelper$4;

    invoke-direct {v1, p0, p1, p2}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$4;-><init>(Ltds/androidx/recyclerview/widget/ItemTouchHelper;Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;I)V

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    .line 717
    return-void
.end method

.method removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .line 1315
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    if-ne p1, v0, :cond_10

    .line 1316
    const/4 v0, 0x0

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 1318
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mChildDrawingOrderCallback:Ltds/androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;

    if-eqz v1, :cond_10

    .line 1319
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->setChildDrawingOrderCallback(Ltds/androidx/recyclerview/widget/RecyclerView$ChildDrawingOrderCallback;)V

    .line 1322
    :cond_10
    return-void
.end method

.method scrollIfNecessary()Z
    .registers 24

    .line 735
    move-object/from16 v0, p0

    iget-object v1, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v2, 0x0

    const-wide/high16 v3, -0x8000000000000000L

    if-nez v1, :cond_c

    .line 736
    iput-wide v3, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 737
    return v2

    .line 739
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 740
    .local v5, "now":J
    iget-wide v7, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    cmp-long v1, v7, v3

    if-nez v1, :cond_19

    const-wide/16 v7, 0x0

    goto :goto_1b

    :cond_19
    sub-long v7, v5, v7

    :goto_1b
    move-wide v14, v7

    .line 742
    .local v14, "scrollDuration":J
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getLayoutManager()Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    .line 743
    .local v1, "lm":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;
    iget-object v7, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    if-nez v7, :cond_2d

    .line 744
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    iput-object v7, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    .line 746
    :cond_2d
    const/4 v7, 0x0

    .line 747
    .local v7, "scrollX":I
    const/4 v8, 0x0

    .line 748
    .local v8, "scrollY":I
    iget-object v9, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v9, v9, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-object v10, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v9, v10}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 749
    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollHorizontally()Z

    move-result v9

    const/4 v10, 0x0

    if-eqz v9, :cond_7f

    .line 750
    iget v9, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    iget v11, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    add-float/2addr v9, v11

    float-to-int v9, v9

    .line 751
    .local v9, "curX":I
    iget-object v11, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    sub-int v11, v9, v11

    iget-object v12, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v12}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    .line 752
    .local v11, "leftDiff":I
    iget v12, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    cmpg-float v13, v12, v10

    if-gez v13, :cond_5c

    if-gez v11, :cond_5c

    .line 753
    move v7, v11

    goto :goto_7f

    .line 754
    :cond_5c
    cmpl-float v12, v12, v10

    if-lez v12, :cond_7f

    .line 755
    iget-object v12, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v12, v12, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 756
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v12

    add-int/2addr v12, v9

    iget-object v13, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v13, v13, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v13

    iget-object v13, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 757
    invoke-virtual {v13}, Ltds/androidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v13

    iget-object v2, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v13, v2

    sub-int/2addr v12, v13

    .line 758
    .local v12, "rightDiff":I
    if-lez v12, :cond_7f

    .line 759
    move v7, v12

    .line 763
    .end local v9    # "curX":I
    .end local v11    # "leftDiff":I
    .end local v12    # "rightDiff":I
    :cond_7f
    :goto_7f
    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->canScrollVertically()Z

    move-result v2

    if-eqz v2, :cond_c5

    .line 764
    iget v2, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    iget v9, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    add-float/2addr v2, v9

    float-to-int v2, v2

    .line 765
    .local v2, "curY":I
    iget-object v9, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->top:I

    sub-int v9, v2, v9

    iget-object v11, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v11}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingTop()I

    move-result v11

    sub-int/2addr v9, v11

    .line 766
    .local v9, "topDiff":I
    iget v11, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    cmpg-float v12, v11, v10

    if-gez v12, :cond_a2

    if-gez v9, :cond_a2

    .line 767
    move v8, v9

    goto :goto_c5

    .line 768
    :cond_a2
    cmpl-float v10, v11, v10

    if-lez v10, :cond_c5

    .line 769
    iget-object v10, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v10, v10, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v10, v2

    iget-object v11, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mTmpRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v10, v11

    iget-object v11, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 770
    invoke-virtual {v11}, Ltds/androidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v11

    iget-object v12, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v12}, Ltds/androidx/recyclerview/widget/RecyclerView;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v11, v12

    sub-int/2addr v10, v11

    .line 771
    .local v10, "bottomDiff":I
    if-lez v10, :cond_c5

    .line 772
    move v8, v10

    .line 776
    .end local v2    # "curY":I
    .end local v9    # "topDiff":I
    .end local v10    # "bottomDiff":I
    :cond_c5
    :goto_c5
    if-eqz v7, :cond_de

    .line 777
    iget-object v9, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v10, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v2, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 778
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v11

    iget-object v2, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 779
    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v13

    .line 777
    move v12, v7

    invoke-virtual/range {v9 .. v15}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Ltds/androidx/recyclerview/widget/RecyclerView;IIIJ)I

    move-result v7

    .line 781
    :cond_de
    if-eqz v8, :cond_fe

    .line 782
    iget-object v2, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v9, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v10, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v10, v10, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 783
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v18

    iget-object v10, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 784
    invoke-virtual {v10}, Ltds/androidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v20

    .line 782
    move-object/from16 v16, v2

    move-object/from16 v17, v9

    move/from16 v19, v8

    move-wide/from16 v21, v14

    invoke-virtual/range {v16 .. v22}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->interpolateOutOfBoundsScroll(Ltds/androidx/recyclerview/widget/RecyclerView;IIIJ)I

    move-result v8

    .line 786
    :cond_fe
    if-nez v7, :cond_107

    if-eqz v8, :cond_103

    goto :goto_107

    .line 793
    :cond_103
    iput-wide v3, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 794
    const/4 v2, 0x0

    return v2

    .line 787
    :cond_107
    :goto_107
    iget-wide v9, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    cmp-long v2, v9, v3

    if-nez v2, :cond_10f

    .line 788
    iput-wide v5, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 790
    :cond_10f
    iget-object v2, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v7, v8}, Ltds/androidx/recyclerview/widget/RecyclerView;->scrollBy(II)V

    .line 791
    const/4 v2, 0x1

    return v2
.end method

.method select(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 29
    .param p1, "selected"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "actionState"    # I

    .line 571
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move/from16 v13, p2

    iget-object v0, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v12, v0, :cond_f

    iget v0, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    if-ne v13, v0, :cond_f

    .line 572
    return-void

    .line 574
    :cond_f
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDragScrollStartTimeInMs:J

    .line 575
    iget v14, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    .line 577
    .local v14, "prevActionState":I
    const/4 v15, 0x1

    invoke-virtual {v11, v12, v15}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->endRecoverAnimation(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 578
    iput v13, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    .line 579
    const/4 v10, 0x2

    if-ne v13, v10, :cond_30

    .line 580
    if-eqz v12, :cond_28

    .line 587
    iget-object v0, v12, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mOverdrawChild:Landroid/view/View;

    .line 588
    invoke-direct/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->addChildDrawingOrderCallback()V

    goto :goto_30

    .line 581
    :cond_28
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must pass a ViewHolder when dragging"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 590
    :cond_30
    :goto_30
    mul-int/lit8 v0, v13, 0x8

    add-int/lit8 v0, v0, 0x8

    shl-int v0, v15, v0

    add-int/lit8 v16, v0, -0x1

    .line 592
    .local v16, "actionStateMask":I
    const/16 v17, 0x0

    .line 594
    .local v17, "preventLayout":Z
    iget-object v0, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v9, 0x0

    if-eqz v0, :cond_f2

    .line 595
    iget-object v8, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 596
    .local v8, "prevSelected":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget-object v0, v8, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_db

    .line 597
    if-ne v14, v10, :cond_4d

    move v0, v9

    goto :goto_51

    .line 598
    :cond_4d
    invoke-direct {v11, v8}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->swipeIfNecessary(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    :goto_51
    move/from16 v18, v0

    .line 599
    .local v18, "swipeDir":I
    invoke-direct/range {p0 .. p0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->releaseVelocityTracker()V

    .line 603
    sparse-switch v18, :sswitch_data_154

    .line 617
    const/4 v1, 0x0

    .line 618
    .local v1, "targetTranslateX":F
    const/4 v0, 0x0

    move/from16 v19, v0

    move/from16 v20, v1

    .local v0, "targetTranslateY":F
    goto :goto_87

    .line 608
    .end local v0    # "targetTranslateY":F
    .end local v1    # "targetTranslateX":F
    :sswitch_60
    const/4 v0, 0x0

    .line 609
    .restart local v0    # "targetTranslateY":F
    iget v1, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    iget-object v2, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    .line 610
    .restart local v1    # "targetTranslateX":F
    move/from16 v19, v0

    move/from16 v20, v1

    goto :goto_87

    .line 613
    .end local v0    # "targetTranslateY":F
    .end local v1    # "targetTranslateX":F
    :sswitch_74
    const/4 v1, 0x0

    .line 614
    .restart local v1    # "targetTranslateX":F
    iget v0, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    invoke-static {v0}, Ljava/lang/Math;->signum(F)F

    move-result v0

    iget-object v2, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    .line 615
    .restart local v0    # "targetTranslateY":F
    move/from16 v19, v0

    move/from16 v20, v1

    .line 620
    .end local v0    # "targetTranslateY":F
    .end local v1    # "targetTranslateX":F
    .local v19, "targetTranslateY":F
    .local v20, "targetTranslateX":F
    :goto_87
    if-ne v14, v10, :cond_8d

    .line 621
    const/16 v0, 0x8

    move v7, v0

    .local v0, "animationType":I
    goto :goto_94

    .line 622
    .end local v0    # "animationType":I
    :cond_8d
    if-lez v18, :cond_92

    .line 623
    const/4 v0, 0x2

    move v7, v0

    .restart local v0    # "animationType":I
    goto :goto_94

    .line 625
    .end local v0    # "animationType":I
    :cond_92
    const/4 v0, 0x4

    move v7, v0

    .line 627
    .local v7, "animationType":I
    :goto_94
    iget-object v0, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    invoke-direct {v11, v0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->getSelectedDxDy([F)V

    .line 628
    iget-object v0, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mTmpPosition:[F

    aget v21, v0, v9

    .line 629
    .local v21, "currentTranslateX":F
    aget v22, v0, v15

    .line 630
    .local v22, "currentTranslateY":F
    new-instance v23, Ltds/androidx/recyclerview/widget/ItemTouchHelper$3;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    move-object v2, v8

    move v3, v7

    move v4, v14

    move/from16 v5, v21

    move/from16 v6, v22

    move v15, v7

    .end local v7    # "animationType":I
    .local v15, "animationType":I
    move/from16 v7, v20

    move-object/from16 v24, v8

    .end local v8    # "prevSelected":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .local v24, "prevSelected":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    move/from16 v8, v19

    move/from16 v25, v14

    move v14, v9

    .end local v14    # "prevActionState":I
    .local v25, "prevActionState":I
    move/from16 v9, v18

    move v14, v10

    move-object/from16 v10, v24

    invoke-direct/range {v0 .. v10}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$3;-><init>(Ltds/androidx/recyclerview/widget/ItemTouchHelper;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFFILtds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 659
    .local v0, "rv":Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;
    iget-object v1, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v2, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    sub-float v3, v20, v21

    sub-float v4, v19, v22

    invoke-virtual {v1, v2, v15, v3, v4}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->getAnimationDuration(Ltds/androidx/recyclerview/widget/RecyclerView;IFF)J

    move-result-wide v1

    .line 661
    .local v1, "duration":J
    invoke-virtual {v0, v1, v2}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->setDuration(J)V

    .line 662
    iget-object v3, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecoverAnimations:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 663
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->start()V

    .line 664
    const/4 v0, 0x1

    .line 665
    .end local v1    # "duration":J
    .end local v15    # "animationType":I
    .end local v17    # "preventLayout":Z
    .end local v18    # "swipeDir":I
    .end local v19    # "targetTranslateY":F
    .end local v20    # "targetTranslateX":F
    .end local v21    # "currentTranslateX":F
    .end local v22    # "currentTranslateY":F
    .local v0, "preventLayout":Z
    move/from16 v17, v0

    move-object/from16 v0, v24

    goto :goto_ee

    .line 666
    .end local v0    # "preventLayout":Z
    .end local v24    # "prevSelected":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v25    # "prevActionState":I
    .restart local v8    # "prevSelected":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .restart local v14    # "prevActionState":I
    .restart local v17    # "preventLayout":Z
    :cond_db
    move-object/from16 v24, v8

    move/from16 v25, v14

    move v14, v10

    .end local v8    # "prevSelected":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v14    # "prevActionState":I
    .restart local v24    # "prevSelected":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .restart local v25    # "prevActionState":I
    move-object/from16 v0, v24

    .end local v24    # "prevSelected":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .local v0, "prevSelected":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v11, v1}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->removeChildDrawingOrderCallbackIfNecessary(Landroid/view/View;)V

    .line 667
    iget-object v1, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v2, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2, v0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 669
    :goto_ee
    const/4 v1, 0x0

    iput-object v1, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_f5

    .line 594
    .end local v0    # "prevSelected":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .end local v25    # "prevActionState":I
    .restart local v14    # "prevActionState":I
    :cond_f2
    move/from16 v25, v14

    move v14, v10

    .line 671
    .end local v14    # "prevActionState":I
    .restart local v25    # "prevActionState":I
    :goto_f5
    if-eqz v12, :cond_127

    .line 672
    iget-object v0, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v1, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 673
    invoke-virtual {v0, v1, v12}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->getAbsoluteMovementFlags(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)I

    move-result v0

    and-int v0, v0, v16

    iget v1, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    mul-int/lit8 v1, v1, 0x8

    shr-int/2addr v0, v1

    iput v0, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelectedFlags:I

    .line 675
    iget-object v0, v12, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartX:F

    .line 676
    iget-object v0, v12, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelectedStartY:F

    .line 677
    iput-object v12, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 679
    if-ne v13, v14, :cond_125

    .line 680
    iget-object v0, v12, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    goto :goto_128

    .line 679
    :cond_125
    const/4 v1, 0x0

    goto :goto_128

    .line 671
    :cond_127
    const/4 v1, 0x0

    .line 683
    :goto_128
    iget-object v0, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 684
    .local v0, "rvParent":Landroid/view/ViewParent;
    if-eqz v0, :cond_13a

    .line 685
    iget-object v2, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_136

    const/4 v15, 0x1

    goto :goto_137

    :cond_136
    move v15, v1

    :goto_137
    invoke-interface {v0, v15}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 687
    :cond_13a
    if-nez v17, :cond_145

    .line 688
    iget-object v1, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getLayoutManager()Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->requestSimpleAnimationsInNextLayout()V

    .line 690
    :cond_145
    iget-object v1, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v2, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v3, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mActionState:I

    invoke-virtual {v1, v2, v3}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 691
    iget-object v1, v11, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->invalidate()V

    .line 692
    return-void

    :sswitch_data_154
    .sparse-switch
        0x1 -> :sswitch_74
        0x2 -> :sswitch_74
        0x4 -> :sswitch_60
        0x8 -> :sswitch_60
        0x10 -> :sswitch_60
        0x20 -> :sswitch_60
    .end sparse-switch
.end method

.method public startDrag(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 5
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1090
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->hasDragFlag(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    const-string v1, "ItemTouchHelper"

    if-nez v0, :cond_12

    .line 1091
    const-string v0, "Start drag has been called but dragging is not enabled"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    return-void

    .line 1094
    :cond_12
    iget-object v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-eq v0, v2, :cond_22

    .line 1095
    const-string v0, "Start drag has been called with a view holder which is not a child of the RecyclerView which is controlled by this ItemTouchHelper."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1097
    return-void

    .line 1099
    :cond_22
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->obtainVelocityTracker()V

    .line 1100
    const/4 v0, 0x0

    iput v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    iput v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 1101
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->select(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 1102
    return-void
.end method

.method public startSwipe(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 5
    .param p1, "viewHolder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 1137
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mCallback:Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1, p1}, Ltds/androidx/recyclerview/widget/ItemTouchHelper$Callback;->hasSwipeFlag(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v0

    const-string v1, "ItemTouchHelper"

    if-nez v0, :cond_12

    .line 1138
    const-string v0, "Start swipe has been called but swiping is not enabled"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1139
    return-void

    .line 1141
    :cond_12
    iget-object v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-eq v0, v2, :cond_22

    .line 1142
    const-string v0, "Start swipe has been called with a view holder which is not a child of the RecyclerView controlled by this ItemTouchHelper."

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    return-void

    .line 1146
    :cond_22
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->obtainVelocityTracker()V

    .line 1147
    const/4 v0, 0x0

    iput v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    iput v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 1148
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->select(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 1149
    return-void
.end method

.method updateDxDy(Landroid/view/MotionEvent;II)V
    .registers 9
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "directionFlags"    # I
    .param p3, "pointerIndex"    # I

    .line 1168
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 1169
    .local v0, "x":F
    invoke-virtual {p1, p3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 1172
    .local v1, "y":F
    iget v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchX:F

    sub-float v2, v0, v2

    iput v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 1173
    iget v3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mInitialTouchY:F

    sub-float v3, v1, v3

    iput v3, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 1174
    and-int/lit8 v3, p2, 0x4

    const/4 v4, 0x0

    if-nez v3, :cond_1f

    .line 1175
    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 1177
    :cond_1f
    and-int/lit8 v2, p2, 0x8

    if-nez v2, :cond_2b

    .line 1178
    iget v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDx:F

    .line 1180
    :cond_2b
    and-int/lit8 v2, p2, 0x1

    if-nez v2, :cond_37

    .line 1181
    iget v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 1183
    :cond_37
    and-int/lit8 v2, p2, 0x2

    if-nez v2, :cond_43

    .line 1184
    iget v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    invoke-static {v4, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mDy:F

    .line 1186
    :cond_43
    return-void
.end method
