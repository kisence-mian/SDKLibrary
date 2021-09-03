.class Ltds/androidx/recyclerview/widget/SnapHelper$2;
.super Ltds/androidx/recyclerview/widget/LinearSmoothScroller;
.source "SnapHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltds/androidx/recyclerview/widget/SnapHelper;->createSnapScroller(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;)Ltds/androidx/recyclerview/widget/LinearSmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltds/androidx/recyclerview/widget/SnapHelper;


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/SnapHelper;Landroid/content/Context;)V
    .registers 3
    .param p1, "this$0"    # Ltds/androidx/recyclerview/widget/SnapHelper;
    .param p2, "context"    # Landroid/content/Context;

    .line 229
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/SnapHelper$2;->this$0:Ltds/androidx/recyclerview/widget/SnapHelper;

    invoke-direct {p0, p2}, Ltds/androidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .registers 4
    .param p1, "displayMetrics"    # Landroid/util/DisplayMetrics;

    .line 248
    iget v0, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v1, v0

    return v1
.end method

.method protected onTargetFound(Landroid/view/View;Ltds/androidx/recyclerview/widget/RecyclerView$State;Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;)V
    .registers 9
    .param p1, "targetView"    # Landroid/view/View;
    .param p2, "state"    # Ltds/androidx/recyclerview/widget/RecyclerView$State;
    .param p3, "action"    # Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;

    .line 232
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SnapHelper$2;->this$0:Ltds/androidx/recyclerview/widget/SnapHelper;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/SnapHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_7

    .line 234
    return-void

    .line 236
    :cond_7
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/SnapHelper$2;->this$0:Ltds/androidx/recyclerview/widget/SnapHelper;

    iget-object v1, v0, Ltds/androidx/recyclerview/widget/SnapHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getLayoutManager()Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ltds/androidx/recyclerview/widget/SnapHelper;->calculateDistanceToFinalSnap(Ltds/androidx/recyclerview/widget/RecyclerView$LayoutManager;Landroid/view/View;)[I

    move-result-object v0

    .line 238
    .local v0, "snapDistances":[I
    const/4 v1, 0x0

    aget v1, v0, v1

    .line 239
    .local v1, "dx":I
    const/4 v2, 0x1

    aget v2, v0, v2

    .line 240
    .local v2, "dy":I
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v3}, Ltds/androidx/recyclerview/widget/SnapHelper$2;->calculateTimeForDeceleration(I)I

    move-result v3

    .line 241
    .local v3, "time":I
    if-lez v3, :cond_30

    .line 242
    iget-object v4, p0, Ltds/androidx/recyclerview/widget/SnapHelper$2;->mDecelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    invoke-virtual {p3, v1, v2, v3, v4}, Ltds/androidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->update(IIILandroid/view/animation/Interpolator;)V

    .line 244
    :cond_30
    return-void
.end method
