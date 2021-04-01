.class public Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;
.super Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;
    }
.end annotation


# instance fields
.field private itemSpace:I

.field private minScale:F

.field private moveSpeed:F


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    .prologue
    .line 19
    new-instance v0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;

    invoke-direct {v0, p1, p2}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;-><init>(Landroid/content/Context;I)V

    invoke-direct {p0, v0}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;-><init>(Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;)V

    .line 20
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;IFIIFIZ)V
    .registers 10

    .prologue
    .line 39
    invoke-direct {p0, p1, p4, p8}, Lcom/JoyFramework/wight/recyclerview/ViewPagerLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->setEnableBringCenterToFront(Z)V

    .line 41
    invoke-virtual {p0, p7}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->setDistanceToBottom(I)V

    .line 42
    invoke-virtual {p0, p5}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->setMaxVisibleItemCount(I)V

    .line 43
    iput p2, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->itemSpace:I

    .line 44
    iput p3, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->minScale:F

    .line 45
    iput p6, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->moveSpeed:F

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .registers 5

    .prologue
    .line 23
    new-instance v0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;

    invoke-direct {v0, p1, p2}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p3}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->setOrientation(I)Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;-><init>(Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IIZ)V
    .registers 6

    .prologue
    .line 27
    new-instance v0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;

    invoke-direct {v0, p1, p2}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p3}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->setOrientation(I)Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->setReverseLayout(Z)Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;-><init>(Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;)V
    .registers 11

    .prologue
    .line 31
    # getter for: Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->context:Landroid/content/Context;
    invoke-static {p1}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->access$000(Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;)Landroid/content/Context;

    move-result-object v1

    # getter for: Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->itemSpace:I
    invoke-static {p1}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->access$100(Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;)I

    move-result v2

    # getter for: Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->minScale:F
    invoke-static {p1}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->access$200(Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;)F

    move-result v3

    # getter for: Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->orientation:I
    invoke-static {p1}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->access$300(Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;)I

    move-result v4

    .line 32
    # getter for: Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->maxVisibleItemCount:I
    invoke-static {p1}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->access$400(Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;)I

    move-result v5

    # getter for: Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->moveSpeed:F
    invoke-static {p1}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->access$500(Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;)F

    move-result v6

    # getter for: Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->distanceToBottom:I
    invoke-static {p1}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->access$600(Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;)I

    move-result v7

    .line 33
    # getter for: Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->reverseLayout:Z
    invoke-static {p1}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;->access$700(Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager$Builder;)Z

    move-result v8

    move-object v0, p0

    .line 31
    invoke-direct/range {v0 .. v8}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;-><init>(Landroid/content/Context;IFIIFIZ)V

    .line 34
    return-void
.end method

.method private calculateScale(F)F
    .registers 6

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 105
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->mOrientationHelper:Lcom/JoyFramework/wight/recyclerview/OrientationHelper;

    invoke-virtual {v0}, Lcom/JoyFramework/wight/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v0

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->mDecoratedMeasurement:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    div-float/2addr v0, v3

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 106
    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->minScale:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->mOrientationHelper:Lcom/JoyFramework/wight/recyclerview/OrientationHelper;

    invoke-virtual {v1}, Lcom/JoyFramework/wight/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    div-float/2addr v0, v1

    add-float/2addr v0, v2

    return v0
.end method


# virtual methods
.method protected getDistanceRatio()F
    .registers 3

    .prologue
    .line 95
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->moveSpeed:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_b

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 96
    :goto_a
    return v0

    :cond_b
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->moveSpeed:F

    div-float/2addr v0, v1

    goto :goto_a
.end method

.method public getItemSpace()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->itemSpace:I

    return v0
.end method

.method public getMinScale()F
    .registers 2

    .prologue
    .line 53
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->minScale:F

    return v0
.end method

.method public getMoveSpeed()F
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->moveSpeed:F

    return v0
.end method

.method protected setInterval()F
    .registers 3

    .prologue
    .line 83
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->mDecoratedMeasurement:I

    iget v1, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->itemSpace:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0
.end method

.method public setItemSpace(I)V
    .registers 3

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 62
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->itemSpace:I

    if-ne v0, p1, :cond_9

    .line 65
    :goto_8
    return-void

    .line 63
    :cond_9
    iput p1, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->itemSpace:I

    .line 64
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->removeAllViews()V

    goto :goto_8
.end method

.method protected setItemViewProperty(Landroid/view/View;F)V
    .registers 4

    .prologue
    .line 88
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->mSpaceMain:I

    int-to-float v0, v0

    add-float/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->calculateScale(F)F

    move-result v0

    .line 89
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    .line 91
    return-void
.end method

.method public setMinScale(F)V
    .registers 4

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 68
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 69
    cmpl-float v1, p1, v0

    if-lez v1, :cond_b

    move p1, v0

    .line 70
    :cond_b
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->minScale:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_12

    .line 73
    :goto_11
    return-void

    .line 71
    :cond_12
    iput p1, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->minScale:F

    .line 72
    invoke-virtual {p0}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->requestLayout()V

    goto :goto_11
.end method

.method public setMoveSpeed(F)V
    .registers 3

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->assertNotInLayoutOrScroll(Ljava/lang/String;)V

    .line 77
    iget v0, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->moveSpeed:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_b

    .line 79
    :goto_a
    return-void

    .line 78
    :cond_b
    iput p1, p0, Lcom/JoyFramework/wight/recyclerview/CarouselLayoutManager;->moveSpeed:F

    goto :goto_a
.end method

.method protected setViewElevation(Landroid/view/View;F)F
    .registers 5

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getScaleX()F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    mul-float/2addr v0, v1

    return v0
.end method
