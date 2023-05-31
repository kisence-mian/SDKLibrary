.class Landroid/support/v7/graphics/drawable/StateListDrawable$StateListState;
.super Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;
.source "StateListDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/graphics/drawable/StateListDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "StateListState"
.end annotation


# instance fields
.field mStateSets:[[I


# direct methods
.method constructor <init>(Landroid/support/v7/graphics/drawable/StateListDrawable$StateListState;Landroid/support/v7/graphics/drawable/StateListDrawable;Landroid/content/res/Resources;)V
    .registers 5
    .param p1, "orig"    # Landroid/support/v7/graphics/drawable/StateListDrawable$StateListState;
    .param p2, "owner"    # Landroid/support/v7/graphics/drawable/StateListDrawable;
    .param p3, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 330
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;-><init>(Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;Landroid/support/v7/graphics/drawable/DrawableContainer;Landroid/content/res/Resources;)V

    .line 331
    if-eqz p1, :cond_a

    .line 333
    iget-object v0, p1, Landroid/support/v7/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    iput-object v0, p0, Landroid/support/v7/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 337
    :goto_9
    return-void

    .line 335
    :cond_a
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/StateListDrawable$StateListState;->getCapacity()I

    move-result v0

    new-array v0, v0, [[I

    iput-object v0, p0, Landroid/support/v7/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    goto :goto_9
.end method


# virtual methods
.method addStateSet([ILandroid/graphics/drawable/Drawable;)I
    .registers 5
    .param p1, "stateSet"    # [I
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 349
    invoke-virtual {p0, p2}, Landroid/support/v7/graphics/drawable/StateListDrawable$StateListState;->addChild(Landroid/graphics/drawable/Drawable;)I

    move-result v0

    .line 350
    .local v0, "pos":I
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    aput-object p1, v1, v0

    .line 351
    return v0
.end method

.method public growArray(II)V
    .registers 6
    .param p1, "oldSize"    # I
    .param p2, "newSize"    # I

    .prologue
    const/4 v2, 0x0

    .line 379
    invoke-super {p0, p1, p2}, Landroid/support/v7/graphics/drawable/DrawableContainer$DrawableContainerState;->growArray(II)V

    .line 380
    new-array v0, p2, [[I

    .line 381
    .local v0, "newStateSets":[[I
    iget-object v1, p0, Landroid/support/v7/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    invoke-static {v1, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    iput-object v0, p0, Landroid/support/v7/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 383
    return-void
.end method

.method indexOfStateSet([I)I
    .registers 6
    .param p1, "stateSet"    # [I

    .prologue
    .line 355
    iget-object v2, p0, Landroid/support/v7/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 356
    .local v2, "stateSets":[[I
    invoke-virtual {p0}, Landroid/support/v7/graphics/drawable/StateListDrawable$StateListState;->getChildCount()I

    move-result v0

    .line 357
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_15

    .line 358
    aget-object v3, v2, v1

    invoke-static {v3, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 362
    .end local v1    # "i":I
    :goto_11
    return v1

    .line 357
    .restart local v1    # "i":I
    :cond_12
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 362
    :cond_15
    const/4 v1, -0x1

    goto :goto_11
.end method

.method mutate()V
    .registers 4

    .prologue
    .line 341
    iget-object v2, p0, Landroid/support/v7/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    array-length v2, v2

    new-array v1, v2, [[I

    .line 342
    .local v1, "stateSets":[[I
    iget-object v2, p0, Landroid/support/v7/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    array-length v2, v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_23

    .line 343
    iget-object v2, p0, Landroid/support/v7/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    aget-object v2, v2, v0

    if-eqz v2, :cond_21

    iget-object v2, p0, Landroid/support/v7/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    aget-object v2, v2, v0

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    :goto_1c
    aput-object v2, v1, v0

    .line 342
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 343
    :cond_21
    const/4 v2, 0x0

    goto :goto_1c

    .line 345
    :cond_23
    iput-object v1, p0, Landroid/support/v7/graphics/drawable/StateListDrawable$StateListState;->mStateSets:[[I

    .line 346
    return-void
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 368
    new-instance v0, Landroid/support/v7/graphics/drawable/StateListDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/graphics/drawable/StateListDrawable;-><init>(Landroid/support/v7/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    return-object v0
.end method

.method public newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .registers 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 374
    new-instance v0, Landroid/support/v7/graphics/drawable/StateListDrawable;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/graphics/drawable/StateListDrawable;-><init>(Landroid/support/v7/graphics/drawable/StateListDrawable$StateListState;Landroid/content/res/Resources;)V

    return-object v0
.end method
