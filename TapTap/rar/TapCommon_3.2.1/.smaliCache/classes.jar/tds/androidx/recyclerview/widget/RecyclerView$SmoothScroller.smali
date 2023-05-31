.class public abstract Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;,
        Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
    }
.end annotation


# instance fields
.field private mLayoutManager:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private mPendingInitialRun:Z

.field private mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

.field private final mRecyclingAction:Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

.field private mRunning:Z

.field private mStarted:Z

.field private mTargetPosition:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 11944
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11928
    const/4 v0, -0x1

    iput v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 11945
    new-instance v0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;-><init>(II)V

    iput-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    .line 11946
    return-void
.end method


# virtual methods
.method public computeScrollVectorForPosition(I)Landroid/graphics/PointF;
    .registers 5
    .param p1, "targetPosition"    # I

    .line 12002
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->getLayoutManager()Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 12003
    .local v0, "layoutManager":Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;
    instance-of v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    if-eqz v1, :cond_10

    .line 12004
    move-object v1, v0

    check-cast v1, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    .line 12005
    invoke-interface {v1, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v1

    .line 12004
    return-object v1

    .line 12007
    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "You should override computeScrollVectorForPosition when the LayoutManager does not implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;

    .line 12008
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 12007
    const-string v2, "RecyclerView"

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 12009
    const/4 v1, 0x0

    return-object v1
.end method

.method public findViewByPosition(I)Landroid/view/View;
    .registers 3
    .param p1, "position"    # I

    .line 12139
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .registers 2

    .line 12132
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayout:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 12125
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;
    .registers 2

    .line 12018
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mLayoutManager:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public getTargetPosition()I
    .registers 2

    .line 12070
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    return v0
.end method

.method public instantScrollToPosition(I)V
    .registers 3
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 12148
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 12149
    return-void
.end method

.method public isPendingInitialRun()Z
    .registers 2

    .line 12052
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    return v0
.end method

.method public isRunning()Z
    .registers 2

    .line 12060
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    return v0
.end method

.method protected normalize(Landroid/graphics/PointF;)V
    .registers 5
    .param p1, "scrollVector"    # Landroid/graphics/PointF;

    .line 12166
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 12168
    .local v0, "magnitude":F
    iget v1, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 12169
    iget v1, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 12170
    return-void
.end method

.method onAnimation(II)V
    .registers 8
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .line 12074
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 12075
    .local v0, "recyclerView":Ltds/androidx/recyclerview/widget/RecyclerView;
    iget v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_9

    if-nez v0, :cond_c

    .line 12076
    :cond_9
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    .line 12084
    :cond_c
    iget-boolean v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3f

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    if-nez v1, :cond_3f

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mLayoutManager:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    if-eqz v1, :cond_3f

    .line 12085
    iget v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->computeScrollVectorForPosition(I)Landroid/graphics/PointF;

    move-result-object v1

    .line 12086
    .local v1, "pointF":Landroid/graphics/PointF;
    if-eqz v1, :cond_3f

    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_2e

    iget v3, v1, Landroid/graphics/PointF;->y:F

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3f

    .line 12087
    :cond_2e
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 12088
    invoke-static {v3}, Ljava/lang/Math;->signum(F)F

    move-result v3

    float-to-int v3, v3

    iget v4, v1, Landroid/graphics/PointF;->y:F

    .line 12089
    invoke-static {v4}, Ljava/lang/Math;->signum(F)F

    move-result v4

    float-to-int v4, v4

    .line 12087
    invoke-virtual {v0, v3, v4, v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->scrollStep(II[I)V

    .line 12094
    .end local v1    # "pointF":Landroid/graphics/PointF;
    :cond_3f
    const/4 v1, 0x0

    iput-boolean v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 12096
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    if-eqz v1, :cond_69

    .line 12098
    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v1

    iget v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    if-ne v1, v3, :cond_60

    .line 12099
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    iget-object v2, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, v1, v2, v3}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->onTargetFound(Landroid/view/View;Ltds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V

    .line 12100
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    .line 12101
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_69

    .line 12103
    :cond_60
    const-string v1, "RecyclerView"

    const-string v3, "Passed over target position while smooth scrolling."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12104
    iput-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 12107
    :cond_69
    :goto_69
    iget-boolean v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v1, :cond_8d

    .line 12108
    iget-object v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, p1, p2, v1, v2}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->onSeekTargetStep(IILtds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V

    .line 12109
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->hasJumpTarget()Z

    move-result v1

    .line 12110
    .local v1, "hadJumpTarget":Z
    iget-object v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v2, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    .line 12111
    if-eqz v1, :cond_8d

    .line 12113
    iget-boolean v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_8d

    .line 12114
    const/4 v2, 0x1

    iput-boolean v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 12115
    iget-object v2, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewFlinger:Ltds/androidx/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v2}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 12119
    .end local v1    # "hadJumpTarget":Z
    :cond_8d
    return-void
.end method

.method protected onChildAttachedToWindow(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 12152
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v1

    if-ne v0, v1, :cond_c

    .line 12153
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 12158
    :cond_c
    return-void
.end method

.method protected abstract onSeekTargetStep(IILtds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method protected abstract onTargetFound(Landroid/view/View;Ltds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method public setTargetPosition(I)V
    .registers 2
    .param p1, "targetPosition"    # I

    .line 11988
    iput p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 11989
    return-void
.end method

.method start(Ltds/androidx/recyclerview/widget/RecyclerView;Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 5
    .param p1, "recyclerView"    # Ltds/androidx/recyclerview/widget/RecyclerView;
    .param p2, "layoutManager"    # Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 11963
    iget-object v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewFlinger:Ltds/androidx/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewFlinger;->stop()V

    .line 11965
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mStarted:Z

    if-eqz v0, :cond_41

    .line 11966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "An instance of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " was started more than once. Each instance of"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 11967
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is intended to only be used once. You should create a new instance for each use."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 11966
    const-string v1, "RecyclerView"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11972
    :cond_41
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 11973
    iput-object p2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mLayoutManager:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 11974
    iget v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6c

    .line 11977
    iget-object v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    iget v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    iput v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mTargetPosition:I

    .line 11978
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 11979
    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 11980
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 11981
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->onStart()V

    .line 11982
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView;->mViewFlinger:Ltds/androidx/recyclerview/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 11984
    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mStarted:Z

    .line 11985
    return-void

    .line 11975
    :cond_6c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid target position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final stop()V
    .registers 4

    .line 12028
    iget-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-nez v0, :cond_5

    .line 12029
    return-void

    .line 12031
    :cond_5
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 12032
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->onStop()V

    .line 12033
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/RecyclerView;->mState:Ltds/androidx/recyclerview/widget/RecyclerView$State;

    const/4 v2, -0x1

    iput v2, v1, Ltds/androidx/recyclerview/widget/RecyclerView$State;->mTargetPosition:I

    .line 12034
    const/4 v1, 0x0

    iput-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 12035
    iput v2, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 12036
    iput-boolean v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 12038
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mLayoutManager:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p0}, Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;->onSmoothScrollerStopped(Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;)V

    .line 12040
    iput-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mLayoutManager:Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 12041
    iput-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 12042
    return-void
.end method
