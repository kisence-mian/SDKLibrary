.class public Lcom/tapjoy/internal/ae;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 10
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method


# virtual methods
.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .line 68
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Lcom/tapjoy/internal/ae;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 3
    .param p1, "p"    # Landroid/view/ViewGroup$LayoutParams;

    .line 73
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .registers 13
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .line 54
    invoke-virtual {p0}, Lcom/tapjoy/internal/ae;->getPaddingLeft()I

    move-result v0

    .line 55
    invoke-virtual {p0}, Lcom/tapjoy/internal/ae;->getPaddingTop()I

    move-result v1

    .line 56
    invoke-virtual {p0}, Lcom/tapjoy/internal/ae;->getChildCount()I

    move-result v2

    .line 57
    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_2c

    .line 58
    invoke-virtual {p0, v3}, Lcom/tapjoy/internal/ae;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 59
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_29

    .line 60
    nop

    .line 61
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v1

    .line 60
    invoke-virtual {v4, v0, v1, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 57
    :cond_29
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 64
    :cond_2c
    return-void
.end method

.method protected onMeasure(II)V
    .registers 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .line 23
    invoke-virtual {p0}, Lcom/tapjoy/internal/ae;->getChildCount()I

    move-result v0

    .line 25
    nop

    .line 26
    nop

    .line 29
    invoke-virtual {p0, p1, p2}, Lcom/tapjoy/internal/ae;->measureChildren(II)V

    .line 32
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_c
    if-ge v1, v0, :cond_2d

    .line 33
    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/ae;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 34
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2a

    .line 35
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 36
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 32
    :cond_2a
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 41
    :cond_2d
    invoke-virtual {p0}, Lcom/tapjoy/internal/ae;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/ae;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v2, v0

    .line 42
    invoke-virtual {p0}, Lcom/tapjoy/internal/ae;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Lcom/tapjoy/internal/ae;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    add-int/2addr v3, v0

    .line 45
    invoke-virtual {p0}, Lcom/tapjoy/internal/ae;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 46
    invoke-virtual {p0}, Lcom/tapjoy/internal/ae;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 48
    invoke-static {v1, p1}, Lcom/tapjoy/internal/ae;->resolveSize(II)I

    move-result v1

    .line 49
    invoke-static {v0, p2}, Lcom/tapjoy/internal/ae;->resolveSize(II)I

    move-result v0

    .line 48
    invoke-virtual {p0, v1, v0}, Lcom/tapjoy/internal/ae;->setMeasuredDimension(II)V

    .line 50
    return-void
.end method
