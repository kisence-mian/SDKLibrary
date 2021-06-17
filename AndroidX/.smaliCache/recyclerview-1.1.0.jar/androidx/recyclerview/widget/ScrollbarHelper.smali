.class Landroidx/recyclerview/widget/ScrollbarHelper;
.super Ljava/lang/Object;
.source "ScrollbarHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method static computeScrollExtent(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I
    .registers 8
    .param p0, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p1, "orientation"    # Landroidx/recyclerview/widget/OrientationHelper;
    .param p2, "startChild"    # Landroid/view/View;
    .param p3, "endChild"    # Landroid/view/View;
    .param p4, "lm"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .param p5, "smoothScrollbarEnabled"    # Z

    .line 63
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_35

    if-eqz p2, :cond_35

    if-nez p3, :cond_11

    goto :goto_35

    .line 67
    :cond_11
    if-nez p5, :cond_23

    .line 68
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 70
    :cond_23
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    .line 71
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 72
    .local v0, "extend":I
    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getTotalSpace()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 65
    .end local v0    # "extend":I
    :cond_35
    :goto_35
    const/4 v0, 0x0

    return v0
.end method

.method static computeScrollOffset(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;ZZ)I
    .registers 16
    .param p0, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p1, "orientation"    # Landroidx/recyclerview/widget/OrientationHelper;
    .param p2, "startChild"    # Landroid/view/View;
    .param p3, "endChild"    # Landroid/view/View;
    .param p4, "lm"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .param p5, "smoothScrollbarEnabled"    # Z
    .param p6, "reverseLayout"    # Z

    .line 32
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_73

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_73

    if-eqz p2, :cond_73

    if-nez p3, :cond_12

    goto :goto_73

    .line 36
    :cond_12
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v0

    .line 37
    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 36
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 38
    .local v0, "minPosition":I
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 39
    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 38
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 40
    .local v2, "maxPosition":I
    if-eqz p6, :cond_38

    .line 41
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    sub-int/2addr v3, v2

    add-int/lit8 v3, v3, -0x1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_3d

    :cond_38
    nop

    .line 42
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    :goto_3d
    nop

    .line 43
    .local v1, "itemsBefore":I
    if-nez p5, :cond_41

    .line 44
    return v1

    .line 46
    :cond_41
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v3

    .line 47
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 46
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 48
    .local v3, "laidOutArea":I
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v4

    .line 49
    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v5

    sub-int/2addr v4, v5

    .line 48
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 50
    .local v4, "itemRange":I
    int-to-float v5, v3

    int-to-float v6, v4

    div-float/2addr v5, v6

    .line 52
    .local v5, "avgSizePerRow":F
    int-to-float v6, v1

    mul-float v6, v6, v5

    invoke-virtual {p1}, Landroidx/recyclerview/widget/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    .line 53
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    sub-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v6, v7

    .line 52
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    return v6

    .line 34
    .end local v0    # "minPosition":I
    .end local v1    # "itemsBefore":I
    .end local v2    # "maxPosition":I
    .end local v3    # "laidOutArea":I
    .end local v4    # "itemRange":I
    .end local v5    # "avgSizePerRow":F
    :cond_73
    :goto_73
    return v1
.end method

.method static computeScrollRange(Landroidx/recyclerview/widget/RecyclerView$State;Landroidx/recyclerview/widget/OrientationHelper;Landroid/view/View;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;Z)I
    .registers 10
    .param p0, "state"    # Landroidx/recyclerview/widget/RecyclerView$State;
    .param p1, "orientation"    # Landroidx/recyclerview/widget/OrientationHelper;
    .param p2, "startChild"    # Landroid/view/View;
    .param p3, "endChild"    # Landroid/view/View;
    .param p4, "lm"    # Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .param p5, "smoothScrollbarEnabled"    # Z

    .line 82
    invoke-virtual {p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    if-eqz v0, :cond_3c

    if-eqz p2, :cond_3c

    if-nez p3, :cond_11

    goto :goto_3c

    .line 86
    :cond_11
    if-nez p5, :cond_18

    .line 87
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    return v0

    .line 90
    :cond_18
    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v0

    .line 91
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v1

    sub-int/2addr v0, v1

    .line 92
    .local v0, "laidOutArea":I
    invoke-virtual {p4, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    .line 93
    invoke-virtual {p4, p3}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 92
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 96
    .local v1, "laidOutRange":I
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result v3

    int-to-float v3, v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    return v2

    .line 84
    .end local v0    # "laidOutArea":I
    .end local v1    # "laidOutRange":I
    :cond_3c
    :goto_3c
    const/4 v0, 0x0

    return v0
.end method
