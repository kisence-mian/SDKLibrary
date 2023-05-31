.class public abstract Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
.super Ljava/lang/Object;
.source "CoordinatorLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Behavior"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 2127
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2128
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 2135
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2136
    return-void
.end method

.method public static getTag(Landroid/view/View;)Ljava/lang/Object;
    .registers 3
    .param p0, "child"    # Landroid/view/View;

    .line 2411
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 2412
    .local v0, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    iget-object v1, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorTag:Ljava/lang/Object;

    return-object v1
.end method

.method public static setTag(Landroid/view/View;Ljava/lang/Object;)V
    .registers 3
    .param p0, "child"    # Landroid/view/View;
    .param p1, "tag"    # Ljava/lang/Object;

    .line 2398
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 2399
    .local v0, "lp":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;
    iput-object p1, v0, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->mBehaviorTag:Ljava/lang/Object;

    .line 2400
    return-void
.end method


# virtual methods
.method public blocksInteractionBelow(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Z
    .registers 5
    .param p1, "parent"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)Z"
        }
    .end annotation

    .line 2260
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    invoke-virtual {p0, p1, p2}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->getScrimOpacity(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public getInsetDodgeRect(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;)Z
    .registers 5
    .param p1, "parent"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "rect"    # Landroid/graphics/Rect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/graphics/Rect;",
            ")Z"
        }
    .end annotation

    .line 2797
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public getScrimColor(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)I
    .registers 4
    .param p1, "parent"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)I"
        }
    .end annotation

    .line 2227
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/high16 v0, -0x1000000

    return v0
.end method

.method public getScrimOpacity(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)F
    .registers 4
    .param p1, "parent"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)F"
        }
    .end annotation

    .line 2245
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public layoutDependsOn(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 5
    .param p1, "parent"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "dependency"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .line 2285
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onApplyWindowInsets(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Ltds/androidx/core/view/WindowInsetsCompat;)Ltds/androidx/core/view/WindowInsetsCompat;
    .registers 4
    .param p1, "coordinatorLayout"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "insets"    # Ltds/androidx/core/view/WindowInsetsCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Ltds/androidx/core/view/WindowInsetsCompat;",
            ")",
            "Ltds/androidx/core/view/WindowInsetsCompat;"
        }
    .end annotation

    .line 2724
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    return-object p3
.end method

.method public onAttachedToLayoutParams(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;)V
    .registers 2
    .param p1, "params"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    .line 2147
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    return-void
.end method

.method public onDependentViewChanged(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z
    .registers 5
    .param p1, "parent"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "dependency"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")Z"
        }
    .end annotation

    .line 2315
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onDependentViewRemoved(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .param p1, "parent"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "dependency"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 2334
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onDetachedFromLayoutParams()V
    .registers 1

    .line 2157
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    return-void
.end method

.method public onInterceptTouchEvent(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "parent"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "ev"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 2184
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onLayoutChild(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .registers 5
    .param p1, "parent"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "layoutDirection"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;I)Z"
        }
    .end annotation

    .line 2385
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onMeasureChild(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;IIII)Z
    .registers 8
    .param p1, "parent"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "parentWidthMeasureSpec"    # I
    .param p4, "widthUsed"    # I
    .param p5, "parentHeightMeasureSpec"    # I
    .param p6, "heightUsed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;IIII)Z"
        }
    .end annotation

    .line 2358
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedFling(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FFZ)Z
    .registers 8
    .param p1, "coordinatorLayout"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .param p6, "consumed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FFZ)Z"
        }
    .end annotation

    .line 2678
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreFling(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;FF)Z
    .registers 7
    .param p1, "coordinatorLayout"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "velocityX"    # F
    .param p5, "velocityY"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "FF)Z"
        }
    .end annotation

    .line 2705
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onNestedPreScroll(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V
    .registers 7
    .param p1, "coordinatorLayout"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "consumed"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2615
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onNestedPreScroll(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[II)V
    .registers 8
    .param p1, "coordinatorLayout"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dx"    # I
    .param p5, "dy"    # I
    .param p6, "consumed"    # [I
    .param p7, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "II[II)V"
        }
    .end annotation

    .line 2646
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    if-nez p7, :cond_5

    .line 2647
    invoke-virtual/range {p0 .. p6}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedPreScroll(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;II[I)V

    .line 2649
    :cond_5
    return-void
.end method

.method public onNestedScroll(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V
    .registers 8
    .param p1, "coordinatorLayout"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dxConsumed"    # I
    .param p5, "dyConsumed"    # I
    .param p6, "dxUnconsumed"    # I
    .param p7, "dyUnconsumed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2546
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onNestedScroll(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V
    .registers 9
    .param p1, "coordinatorLayout"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dxConsumed"    # I
    .param p5, "dyConsumed"    # I
    .param p6, "dxUnconsumed"    # I
    .param p7, "dyUnconsumed"    # I
    .param p8, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIIII)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2558
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    if-nez p8, :cond_5

    .line 2559
    invoke-virtual/range {p0 .. p7}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedScroll(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIII)V

    .line 2562
    :cond_5
    return-void
.end method

.method public onNestedScroll(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII[I)V
    .registers 12
    .param p1, "coordinatorLayout"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "dxConsumed"    # I
    .param p5, "dyConsumed"    # I
    .param p6, "dxUnconsumed"    # I
    .param p7, "dyUnconsumed"    # I
    .param p8, "type"    # I
    .param p9, "consumed"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "IIIII[I)V"
        }
    .end annotation

    .line 2600
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    aget v1, p9, v0

    add-int/2addr v1, p6

    aput v1, p9, v0

    .line 2601
    const/4 v0, 0x1

    aget v1, p9, v0

    add-int/2addr v1, p7

    aput v1, p9, v0

    .line 2602
    invoke-virtual/range {p0 .. p8}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedScroll(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;IIIII)V

    .line 2604
    return-void
.end method

.method public onNestedScrollAccepted(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .registers 6
    .param p1, "coordinatorLayout"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "axes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2467
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onNestedScrollAccepted(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)V
    .registers 7
    .param p1, "coordinatorLayout"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "axes"    # I
    .param p6, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)V"
        }
    .end annotation

    .line 2491
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    if-nez p6, :cond_5

    .line 2492
    invoke-virtual/range {p0 .. p5}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onNestedScrollAccepted(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V

    .line 2495
    :cond_5
    return-void
.end method

.method public onRequestChildRectangleOnScreen(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6
    .param p1, "coordinatorLayout"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "rectangle"    # Landroid/graphics/Rect;
    .param p4, "immediate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/graphics/Rect;",
            "Z)Z"
        }
    .end annotation

    .line 2745
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onRestoreInstanceState(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/os/Parcelable;)V
    .registers 4
    .param p1, "parent"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "state"    # Landroid/os/Parcelable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/os/Parcelable;",
            ")V"
        }
    .end annotation

    .line 2762
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onSaveInstanceState(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)Landroid/os/Parcelable;
    .registers 4
    .param p1, "parent"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;)",
            "Landroid/os/Parcelable;"
        }
    .end annotation

    .line 2780
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    sget-object v0, Landroid/view/View$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method public onStartNestedScroll(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z
    .registers 7
    .param p1, "coordinatorLayout"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "axes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "I)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2424
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method

.method public onStartNestedScroll(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;II)Z
    .registers 8
    .param p1, "coordinatorLayout"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "directTargetChild"    # Landroid/view/View;
    .param p4, "target"    # Landroid/view/View;
    .param p5, "axes"    # I
    .param p6, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "II)Z"
        }
    .end annotation

    .line 2450
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    if-nez p6, :cond_7

    .line 2451
    invoke-virtual/range {p0 .. p5}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onStartNestedScroll(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;Landroid/view/View;I)Z

    move-result v0

    return v0

    .line 2454
    :cond_7
    const/4 v0, 0x0

    return v0
.end method

.method public onStopNestedScroll(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .registers 4
    .param p1, "coordinatorLayout"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2506
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    return-void
.end method

.method public onStopNestedScroll(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;I)V
    .registers 5
    .param p1, "coordinatorLayout"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "target"    # Landroid/view/View;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 2529
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    if-nez p4, :cond_5

    .line 2530
    invoke-virtual {p0, p1, p2, p3}, Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onStopNestedScroll(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V

    .line 2532
    :cond_5
    return-void
.end method

.method public onTouchEvent(Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 5
    .param p1, "parent"    # Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;
    .param p3, "ev"    # Landroid/view/MotionEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout;",
            "TV;",
            "Landroid/view/MotionEvent;",
            ")Z"
        }
    .end annotation

    .line 2207
    .local p0, "this":Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;, "Ltds/androidx/coordinatorlayout/widget/CoordinatorLayout$Behavior<TV;>;"
    .local p2, "child":Landroid/view/View;, "TV;"
    const/4 v0, 0x0

    return v0
.end method
