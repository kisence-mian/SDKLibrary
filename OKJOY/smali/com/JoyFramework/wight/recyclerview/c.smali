.class final Lcom/JoyFramework/wight/recyclerview/c;
.super Lcom/JoyFramework/wight/recyclerview/OrientationHelper;
.source "SourceFile"


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .registers 3

    .prologue
    .line 336
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/JoyFramework/wight/recyclerview/OrientationHelper;-><init>(Landroid/support/v7/widget/RecyclerView$LayoutManager;Lcom/JoyFramework/wight/recyclerview/b;)V

    return-void
.end method


# virtual methods
.method public getDecoratedEnd(Landroid/view/View;)I
    .registers 4

    .prologue
    .line 370
    .line 371
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 372
    iget-object v1, p0, Lcom/JoyFramework/wight/recyclerview/c;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedMeasurement(Landroid/view/View;)I
    .registers 5

    .prologue
    .line 354
    .line 355
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 356
    iget-object v1, p0, Lcom/JoyFramework/wight/recyclerview/c;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedMeasurementInOther(Landroid/view/View;)I
    .registers 5

    .prologue
    .line 362
    .line 363
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 364
    iget-object v1, p0, Lcom/JoyFramework/wight/recyclerview/c;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v1

    iget v2, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getDecoratedStart(Landroid/view/View;)I
    .registers 4

    .prologue
    .line 377
    .line 378
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 379
    iget-object v1, p0, Lcom/JoyFramework/wight/recyclerview/c;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    iget v0, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int v0, v1, v0

    return v0
.end method

.method public getEnd()I
    .registers 2

    .prologue
    .line 344
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/c;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    return v0
.end method

.method public getEndAfterPadding()I
    .registers 3

    .prologue
    .line 339
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/c;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/JoyFramework/wight/recyclerview/c;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getEndPadding()I
    .registers 2

    .prologue
    .line 408
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/c;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v0

    return v0
.end method

.method public getMode()I
    .registers 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/c;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeightMode()I

    move-result v0

    return v0
.end method

.method public getModeInOther()I
    .registers 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/c;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidthMode()I

    move-result v0

    return v0
.end method

.method public getStartAfterPadding()I
    .registers 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/c;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v0

    return v0
.end method

.method public getTotalSpace()I
    .registers 3

    .prologue
    .line 396
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/c;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/JoyFramework/wight/recyclerview/c;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/JoyFramework/wight/recyclerview/c;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 397
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    move-result v1

    sub-int/2addr v0, v1

    .line 396
    return v0
.end method

.method public getTotalSpaceInOther()I
    .registers 3

    .prologue
    .line 402
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/c;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/JoyFramework/wight/recyclerview/c;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/JoyFramework/wight/recyclerview/c;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 403
    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    .line 402
    return v0
.end method

.method public getTransformedEndWithDecoration(Landroid/view/View;)I
    .registers 5

    .prologue
    .line 384
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/c;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/JoyFramework/wight/recyclerview/c;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 385
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/c;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    return v0
.end method

.method public getTransformedStartWithDecoration(Landroid/view/View;)I
    .registers 5

    .prologue
    .line 390
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/c;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/JoyFramework/wight/recyclerview/c;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getTransformedBoundingBox(Landroid/view/View;ZLandroid/graphics/Rect;)V

    .line 391
    iget-object v0, p0, Lcom/JoyFramework/wight/recyclerview/c;->mTmpRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    return v0
.end method
