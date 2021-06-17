.class public Landroidx/legacy/widget/Space;
.super Landroid/view/View;
.source "Space.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/legacy/widget/Space;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroidx/legacy/widget/Space;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-virtual {p0}, Landroidx/legacy/widget/Space;->getVisibility()I

    move-result v0

    if-nez v0, :cond_d

    .line 44
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/legacy/widget/Space;->setVisibility(I)V

    .line 46
    :cond_d
    return-void
.end method

.method private static getDefaultSize2(II)I
    .registers 5
    .param p0, "size"    # I
    .param p1, "measureSpec"    # I

    .line 83
    move v0, p0

    .line 84
    .local v0, "result":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 85
    .local v1, "specMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 87
    .local v2, "specSize":I
    sparse-switch v1, :sswitch_data_18

    goto :goto_16

    .line 95
    :sswitch_d
    move v0, v2

    goto :goto_16

    .line 89
    :sswitch_f
    move v0, p0

    .line 90
    goto :goto_16

    .line 92
    :sswitch_11
    invoke-static {p0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 93
    nop

    .line 98
    :goto_16
    return v0

    nop

    :sswitch_data_18
    .sparse-switch
        -0x80000000 -> :sswitch_11
        0x0 -> :sswitch_f
        0x40000000 -> :sswitch_d
    .end sparse-switch
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    return-void
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 107
    nop

    .line 108
    invoke-virtual {p0}, Landroidx/legacy/widget/Space;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Landroidx/legacy/widget/Space;->getDefaultSize2(II)I

    move-result v0

    .line 109
    invoke-virtual {p0}, Landroidx/legacy/widget/Space;->getSuggestedMinimumHeight()I

    move-result v1

    invoke-static {v1, p2}, Landroidx/legacy/widget/Space;->getDefaultSize2(II)I

    move-result v1

    .line 107
    invoke-virtual {p0, v0, v1}, Landroidx/legacy/widget/Space;->setMeasuredDimension(II)V

    .line 110
    return-void
.end method
