.class Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;
.super Ltds/androidx/customview/widget/ViewDragHelper$Callback;
.source "RightSheetBehavior.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/widgets/behavior/RightSheetBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;


# direct methods
.method constructor <init>(Lcom/tds/common/widgets/behavior/RightSheetBehavior;)V
    .registers 2
    .param p1, "this$0"    # Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    .line 394
    .local p0, "this":Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;, "Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;"
    iput-object p1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    invoke-direct {p0}, Ltds/androidx/customview/widget/ViewDragHelper$Callback;-><init>()V

    return-void
.end method

.method private releasedLow(Landroid/view/View;)Z
    .registers 5
    .param p1, "child"    # Landroid/view/View;

    .line 429
    .local p0, "this":Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;, "Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;"
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->parentHeight:I

    iget-object v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    invoke-virtual {v2}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->getExpandedOffset()I

    move-result v2

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    if-le v0, v1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    :goto_16
    return v0
.end method


# virtual methods
.method public clampViewPositionHorizontal(Landroid/view/View;II)I
    .registers 6
    .param p1, "child"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "dx"    # I

    .line 528
    .local p0, "this":Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;, "Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;"
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    .line 529
    invoke-virtual {v0}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->getExpandedOffset()I

    move-result v0

    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget-boolean v1, v1, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->hideable:Z

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->parentHeight:I

    goto :goto_15

    :cond_11
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->collapsedOffset:I

    .line 528
    :goto_15
    invoke-static {p2, v0, v1}, Ltds/androidx/core/math/MathUtils;->clamp(III)I

    move-result v0

    return v0
.end method

.method public clampViewPositionVertical(Landroid/view/View;II)I
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "top"    # I
    .param p3, "dy"    # I

    .line 523
    .local p0, "this":Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;, "Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;"
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    return v0
.end method

.method public getViewVerticalDragRange(Landroid/view/View;)I
    .registers 3
    .param p1, "child"    # Landroid/view/View;

    .line 534
    .local p0, "this":Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;, "Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;"
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget-boolean v0, v0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->hideable:Z

    if-eqz v0, :cond_b

    .line 535
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v0, v0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->parentHeight:I

    return v0

    .line 537
    :cond_b
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v0, v0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->collapsedOffset:I

    return v0
.end method

.method public onViewDragStateChanged(I)V
    .registers 4
    .param p1, "state"    # I

    .line 422
    .local p0, "this":Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;, "Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;"
    const/4 v0, 0x1

    if-ne p1, v0, :cond_e

    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget-boolean v1, v1, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->draggable:Z

    if-eqz v1, :cond_e

    .line 423
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    invoke-virtual {v1, v0}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->setStateInternal(I)V

    .line 425
    :cond_e
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .registers 7
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "dx"    # I
    .param p5, "dy"    # I

    .line 417
    .local p0, "this":Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;, "Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;"
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    invoke-virtual {v0, p2}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->dispatchOnSlide(I)V

    .line 418
    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .registers 8
    .param p1, "releasedChild"    # Landroid/view/View;
    .param p2, "xvel"    # F
    .param p3, "yvel"    # F

    .line 436
    .local p0, "this":Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;, "Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;"
    const/4 v0, 0x0

    cmpg-float v1, p2, v0

    if-gez v1, :cond_2d

    .line 437
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget-boolean v0, v0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_12

    .line 438
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v0, v0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->fitToContentsOffset:I

    .line 439
    .local v0, "top":I
    const/4 v1, 0x3

    .local v1, "targetState":I
    goto/16 :goto_153

    .line 441
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_12
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 442
    .local v0, "currentTop":I
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->halfExpandedOffset:I

    if-le v0, v1, :cond_24

    .line 443
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->halfExpandedOffset:I

    .line 444
    .local v1, "top":I
    const/4 v2, 0x6

    move v0, v1

    move v1, v2

    .local v2, "targetState":I
    goto :goto_2b

    .line 446
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_24
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->expandedOffset:I

    .line 447
    .restart local v1    # "top":I
    const/4 v2, 0x3

    move v0, v1

    move v1, v2

    .line 449
    .local v0, "top":I
    .local v1, "targetState":I
    :goto_2b
    goto/16 :goto_153

    .line 450
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_2d
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget-boolean v1, v1, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->hideable:Z

    if-eqz v1, :cond_91

    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    invoke-virtual {v1, p1, p2}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->shouldHide(Landroid/view/View;F)Z

    move-result v1

    if-eqz v1, :cond_91

    .line 453
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4d

    const/high16 v0, 0x43fa0000    # 500.0f

    cmpl-float v0, p2, v0

    if-gtz v0, :cond_53

    .line 454
    :cond_4d
    invoke-direct {p0, p1}, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->releasedLow(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 455
    :cond_53
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v0, v0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->parentHeight:I

    .line 456
    .restart local v0    # "top":I
    const/4 v1, 0x5

    .restart local v1    # "targetState":I
    goto/16 :goto_153

    .line 457
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_5a
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget-boolean v0, v0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_67

    .line 458
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v0, v0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->fitToContentsOffset:I

    .line 459
    .restart local v0    # "top":I
    const/4 v1, 0x3

    .restart local v1    # "targetState":I
    goto/16 :goto_153

    .line 460
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_67
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->expandedOffset:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 461
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v2, v2, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->halfExpandedOffset:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_8a

    .line 462
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v0, v0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->expandedOffset:I

    .line 463
    .restart local v0    # "top":I
    const/4 v1, 0x3

    .restart local v1    # "targetState":I
    goto/16 :goto_153

    .line 465
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_8a
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v0, v0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->halfExpandedOffset:I

    .line 466
    .restart local v0    # "top":I
    const/4 v1, 0x6

    .restart local v1    # "targetState":I
    goto/16 :goto_153

    .line 468
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_91
    cmpl-float v0, p2, v0

    if-eqz v0, :cond_db

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_a2

    goto :goto_db

    .line 502
    :cond_a2
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget-boolean v0, v0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->fitToContents:Z

    if-eqz v0, :cond_af

    .line 503
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v0, v0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->collapsedOffset:I

    .line 504
    .restart local v0    # "top":I
    const/4 v1, 0x4

    .restart local v1    # "targetState":I
    goto/16 :goto_153

    .line 507
    .end local v0    # "top":I
    .end local v1    # "targetState":I
    :cond_af
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 508
    .local v0, "currentTop":I
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->halfExpandedOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v2, v2, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->collapsedOffset:I

    sub-int v2, v0, v2

    .line 509
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_d2

    .line 510
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->halfExpandedOffset:I

    .line 511
    .local v1, "top":I
    const/4 v2, 0x6

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto/16 :goto_153

    .line 513
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_d2
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->collapsedOffset:I

    .line 514
    .restart local v1    # "top":I
    const/4 v2, 0x4

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto/16 :goto_153

    .line 471
    .end local v0    # "currentTop":I
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_db
    :goto_db
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 472
    .restart local v0    # "currentTop":I
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget-boolean v1, v1, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->fitToContents:Z

    if-eqz v1, :cond_10b

    .line 473
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->fitToContentsOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v2, v2, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->collapsedOffset:I

    sub-int v2, v0, v2

    .line 474
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_103

    .line 475
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->fitToContentsOffset:I

    .line 476
    .restart local v1    # "top":I
    const/4 v2, 0x3

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_152

    .line 478
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_103
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->collapsedOffset:I

    .line 479
    .restart local v1    # "top":I
    const/4 v2, 0x4

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_152

    .line 482
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_10b
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->halfExpandedOffset:I

    if-ge v0, v1, :cond_12d

    .line 483
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->collapsedOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_125

    .line 484
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->expandedOffset:I

    .line 485
    .restart local v1    # "top":I
    const/4 v2, 0x3

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_152

    .line 487
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_125
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->halfExpandedOffset:I

    .line 488
    .restart local v1    # "top":I
    const/4 v2, 0x6

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_152

    .line 491
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_12d
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->halfExpandedOffset:I

    sub-int v1, v0, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v2, v2, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->collapsedOffset:I

    sub-int v2, v0, v2

    .line 492
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-ge v1, v2, :cond_14b

    .line 493
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->halfExpandedOffset:I

    .line 494
    .restart local v1    # "top":I
    const/4 v2, 0x6

    move v0, v1

    move v1, v2

    .restart local v2    # "targetState":I
    goto :goto_152

    .line 496
    .end local v1    # "top":I
    .end local v2    # "targetState":I
    :cond_14b
    iget-object v1, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v1, v1, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->collapsedOffset:I

    .line 497
    .restart local v1    # "top":I
    const/4 v2, 0x4

    move v0, v1

    move v1, v2

    .line 501
    .local v0, "top":I
    .local v1, "targetState":I
    :goto_152
    nop

    .line 518
    :goto_153
    iget-object v2, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v1, v0, v3}, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->startSettlingAnimation(Landroid/view/View;IIZ)V

    .line 519
    return-void
.end method

.method public tryCaptureView(Landroid/view/View;I)Z
    .registers 7
    .param p1, "child"    # Landroid/view/View;
    .param p2, "pointerId"    # I

    .line 398
    .local p0, "this":Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;, "Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;"
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v0, v0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->state:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    .line 399
    return v2

    .line 401
    :cond_9
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget-boolean v0, v0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->touchingScrollingChild:Z

    if-eqz v0, :cond_10

    .line 402
    return v2

    .line 404
    :cond_10
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v0, v0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->state:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_39

    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget v0, v0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->activePointerId:I

    if-ne v0, p2, :cond_39

    .line 405
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget-object v0, v0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget-object v0, v0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->nestedScrollingChildRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_2f

    :cond_2e
    const/4 v0, 0x0

    .line 406
    .local v0, "scroll":Landroid/view/View;
    :goto_2f
    if-eqz v0, :cond_39

    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 408
    return v2

    .line 411
    .end local v0    # "scroll":Landroid/view/View;
    :cond_39
    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget-object v0, v0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/tds/common/widgets/behavior/RightSheetBehavior$2;->this$0:Lcom/tds/common/widgets/behavior/RightSheetBehavior;

    iget-object v0, v0, Lcom/tds/common/widgets/behavior/RightSheetBehavior;->viewRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_4a

    goto :goto_4b

    :cond_4a
    move v1, v2

    :goto_4b
    return v1
.end method
