.class public abstract Ltds/androidx/recyclerview/widget/SnapHelper;
.super Ltds/androidx/recyclerview/widget/RecyclerView$OnFlingListener;
.source "SnapHelper.java"


# static fields
.field static final MILLISECONDS_PER_INCH:F = 100.0f


# instance fields
.field private mGravityScroller:Landroid/widget/Scroller;

.field mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

.field private final mScrollListener:Ltds/androidx/recyclerview/widget/RecyclerView$OnScrollListener;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$OnFlingListener;-><init>()V

    .line 42
    new-instance v0, Ltds/androidx/recyclerview/widget/SnapHelper$1;

    invoke-direct {v0, p0}, Ltds/androidx/recyclerview/widget/SnapHelper$1;-><init>(Ltds/androidx/recyclerview/widget/SnapHelper;)V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/SnapHelper;->mScrollListener:Ltds/androidx/recyclerview/widget/RecyclerView$OnScrollListener;

    return-void
.end method

.method private destroyCallbacks()V
    .registers 3

    .line 123
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SnapHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/SnapHelper;->mScrollListener:Ltds/androidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->removeOnScrollListener(Ltds/androidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 124
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SnapHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Ltds/androidx/recyclerview/widget/RecyclerView$OnFlingListener;)V

    .line 125
    return-void
.end method

.method private setupCallbacks()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 112
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SnapHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getOnFlingListener()Ltds/androidx/recyclerview/widget/RecyclerView$OnFlingListener;

    move-result-object v0

    if-nez v0, :cond_15

    .line 115
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SnapHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/SnapHelper;->mScrollListener:Ltds/androidx/recyclerview/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Ltds/androidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 116
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SnapHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Ltds/androidx/recyclerview/widget/RecyclerView;->setOnFlingListener(Ltds/androidx/recyclerview/widget/RecyclerView$OnFlingListener;)V

    .line 117
    return-void

    .line 113
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "An instance of OnFlingListener already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private snapFromFling(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;II)Z
    .registers 8
    .param p1, "layoutManager"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;
    .param p2, "velocityX"    # I
    .param p3, "velocityY"    # I

    .line 157
    instance-of v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 158
    return v1

    .line 161
    :cond_6
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/SnapHelper;->createScroller(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;

    move-result-object v0

    .line 162
    .local v0, "smoothScroller":Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;
    if-nez v0, :cond_d

    .line 163
    return v1

    .line 166
    :cond_d
    invoke-virtual {p0, p1, p2, p3}, Ltds/androidx/recyclerview/widget/SnapHelper;->findTargetSnapPosition(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;II)I

    move-result v2

    .line 167
    .local v2, "targetPosition":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_15

    .line 168
    return v1

    .line 171
    :cond_15
    invoke-virtual {v0, v2}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->setTargetPosition(I)V

    .line 172
    invoke-virtual {p1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->startSmoothScroll(Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 173
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public attachToRecyclerView(Ltds/androidx/recyclerview/widget/RecyclerView;)V
    .registers 5
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SnapHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-ne v0, p1, :cond_5

    .line 94
    return-void

    .line 96
    :cond_5
    if-eqz v0, :cond_a

    .line 97
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/SnapHelper;->destroyCallbacks()V

    .line 99
    :cond_a
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/SnapHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 100
    if-eqz p1, :cond_26

    .line 101
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/SnapHelper;->setupCallbacks()V

    .line 102
    new-instance v0, Landroid/widget/Scroller;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/SnapHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, v1, v2}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    .line 104
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/SnapHelper;->snapToTargetExistingView()V

    .line 106
    :cond_26
    return-void
.end method

.method public abstract calculateDistanceToFinalSnap(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I
.end method

.method public calculateScrollDistance(II)[I
    .registers 13
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .line 137
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 138
    .local v0, "outDist":[I
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v6, -0x80000000

    const v7, 0x7fffffff

    const/high16 v8, -0x80000000

    const v9, 0x7fffffff

    move v4, p1

    move v5, p2

    invoke-virtual/range {v1 .. v9}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 140
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalX()I

    move-result v1

    aput v1, v0, v2

    .line 141
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/SnapHelper;->mGravityScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 142
    return-object v0
.end method

.method protected createScroller(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;
    .registers 3
    .param p1, "layoutManager"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 210
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/SnapHelper;->createSnapScroller(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/LinearSmoothScroller;

    move-result-object v0

    return-object v0
.end method

.method protected createSnapScroller(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/LinearSmoothScroller;
    .registers 4
    .param p1, "layoutManager"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 226
    instance-of v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-nez v0, :cond_6

    .line 227
    const/4 v0, 0x0

    return-object v0

    .line 229
    :cond_6
    new-instance v0, Ltds/androidx/recyclerview/widget/SnapHelper$2;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/SnapHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ltds/androidx/recyclerview/widget/SnapHelper$2;-><init>(Ltds/androidx/recyclerview/widget/SnapHelper;Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract findSnapView(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;
.end method

.method public abstract findTargetSnapPosition(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;II)I
.end method

.method public onFling(II)Z
    .registers 8
    .param p1, "velocityX"    # I
    .param p2, "velocityY"    # I

    .line 65
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SnapHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getLayoutManager()Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 66
    .local v0, "layoutManager":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 67
    return v1

    .line 69
    :cond_a
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/SnapHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->getAdapter()Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v2

    .line 70
    .local v2, "adapter":Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;
    if-nez v2, :cond_13

    .line 71
    return v1

    .line 73
    :cond_13
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/SnapHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView;->getMinFlingVelocity()I

    move-result v3

    .line 74
    .local v3, "minFlingVelocity":I
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-gt v4, v3, :cond_25

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v3, :cond_2d

    .line 75
    :cond_25
    invoke-direct {p0, v0, p1, p2}, Ltds/androidx/recyclerview/widget/SnapHelper;->snapFromFling(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;II)Z

    move-result v4

    if-eqz v4, :cond_2d

    const/4 v1, 0x1

    goto :goto_2e

    :cond_2d
    nop

    .line 74
    :goto_2e
    return v1
.end method

.method snapToTargetExistingView()V
    .registers 7

    .line 182
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SnapHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_5

    .line 183
    return-void

    .line 185
    :cond_5
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getLayoutManager()Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 186
    .local v0, "layoutManager":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;
    if-nez v0, :cond_c

    .line 187
    return-void

    .line 189
    :cond_c
    invoke-virtual {p0, v0}, Ltds/androidx/recyclerview/widget/SnapHelper;->findSnapView(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Landroid/view/View;

    move-result-object v1

    .line 190
    .local v1, "snapView":Landroid/view/View;
    if-nez v1, :cond_13

    .line 191
    return-void

    .line 193
    :cond_13
    invoke-virtual {p0, v0, v1}, Ltds/androidx/recyclerview/widget/SnapHelper;->calculateDistanceToFinalSnap(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v2

    .line 194
    .local v2, "snapDistance":[I
    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x1

    if-nez v4, :cond_21

    aget v4, v2, v5

    if-eqz v4, :cond_2a

    .line 195
    :cond_21
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/SnapHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    aget v3, v2, v3

    aget v5, v2, v5

    invoke-virtual {v4, v3, v5}, Ltds/androidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 197
    :cond_2a
    return-void
.end method
