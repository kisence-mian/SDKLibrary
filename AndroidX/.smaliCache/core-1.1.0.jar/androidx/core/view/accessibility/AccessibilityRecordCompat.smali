.class public Landroidx/core/view/accessibility/AccessibilityRecordCompat;
.super Ljava/lang/Object;
.source "AccessibilityRecordCompat.java"


# instance fields
.field private final mRecord:Landroid/view/accessibility/AccessibilityRecord;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 3
    .param p1, "record"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    move-object v0, p1

    check-cast v0, Landroid/view/accessibility/AccessibilityRecord;

    iput-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    .line 45
    return-void
.end method

.method public static getMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;)I
    .registers 3
    .param p0, "record"    # Landroid/view/accessibility/AccessibilityRecord;

    .line 480
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_b

    .line 481
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getMaxScrollX()I

    move-result v0

    return v0

    .line 483
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static getMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;)I
    .registers 3
    .param p0, "record"    # Landroid/view/accessibility/AccessibilityRecord;

    .line 530
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_b

    .line 531
    invoke-virtual {p0}, Landroid/view/accessibility/AccessibilityRecord;->getMaxScrollY()I

    move-result v0

    return v0

    .line 533
    :cond_b
    const/4 v0, 0x0

    return v0
.end method

.method public static obtain()Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 82
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;

    invoke-static {}, Landroid/view/accessibility/AccessibilityRecord;->obtain()Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static obtain(Landroidx/core/view/accessibility/AccessibilityRecordCompat;)Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    .registers 3
    .param p0, "record"    # Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 69
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;

    iget-object v1, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityRecord;->obtain(Landroid/view/accessibility/AccessibilityRecord;)Landroid/view/accessibility/AccessibilityRecord;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static setMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;I)V
    .registers 4
    .param p0, "record"    # Landroid/view/accessibility/AccessibilityRecord;
    .param p1, "maxScrollX"    # I

    .line 506
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_9

    .line 507
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollX(I)V

    .line 509
    :cond_9
    return-void
.end method

.method public static setMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;I)V
    .registers 4
    .param p0, "record"    # Landroid/view/accessibility/AccessibilityRecord;
    .param p1, "maxScrollY"    # I

    .line 556
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_9

    .line 557
    invoke-virtual {p0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setMaxScrollY(I)V

    .line 559
    :cond_9
    return-void
.end method

.method public static setSource(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V
    .registers 5
    .param p0, "record"    # Landroid/view/accessibility/AccessibilityRecord;
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_9

    .line 138
    invoke-virtual {p0, p1, p2}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;I)V

    .line 140
    :cond_9
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 761
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 762
    return v0

    .line 764
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 765
    return v1

    .line 767
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    .line 768
    return v1

    .line 770
    :cond_13
    move-object v2, p1

    check-cast v2, Landroidx/core/view/accessibility/AccessibilityRecordCompat;

    .line 771
    .local v2, "other":Landroidx/core/view/accessibility/AccessibilityRecordCompat;
    iget-object v3, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    if-nez v3, :cond_1f

    .line 772
    iget-object v3, v2, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    if-eqz v3, :cond_28

    .line 773
    return v1

    .line 775
    :cond_1f
    iget-object v4, v2, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 776
    return v1

    .line 778
    :cond_28
    return v0
.end method

.method public getAddedCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 570
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getAddedCount()I

    move-result v0

    return v0
.end method

.method public getBeforeText()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 661
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getBeforeText()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getClassName()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 622
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getClassName()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getContentDescription()Ljava/lang/CharSequence;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 687
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentItemIndex()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 338
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getCurrentItemIndex()I

    move-result v0

    return v0
.end method

.method public getFromIndex()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 367
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getFromIndex()I

    move-result v0

    return v0
.end method

.method public getImpl()Ljava/lang/Object;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 55
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    return-object v0
.end method

.method public getItemCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 312
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getItemCount()I

    move-result v0

    return v0
.end method

.method public getMaxScrollX()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 470
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->getMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;)I

    move-result v0

    return v0
.end method

.method public getMaxScrollY()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 520
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->getMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;)I

    move-result v0

    return v0
.end method

.method public getParcelableData()Landroid/os/Parcelable;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 713
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getParcelableData()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method

.method public getRemovedCount()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 596
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getRemovedCount()I

    move-result v0

    return v0
.end method

.method public getScrollX()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 422
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getScrollX()I

    move-result v0

    return v0
.end method

.method public getScrollY()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 446
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getScrollY()I

    move-result v0

    return v0
.end method

.method public getSource()Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 158
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getSource()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v0

    invoke-static {v0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 649
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getToIndex()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 397
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getToIndex()I

    move-result v0

    return v0
.end method

.method public getWindowId()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 170
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->getWindowId()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 752
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_a
    return v0
.end method

.method public isChecked()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 182
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isEnabled()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isFullScreen()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 260
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->isFullScreen()Z

    move-result v0

    return v0
.end method

.method public isPassword()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 234
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->isPassword()Z

    move-result v0

    return v0
.end method

.method public isScrollable()Z
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 286
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->isScrollable()Z

    move-result v0

    return v0
.end method

.method public recycle()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 743
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityRecord;->recycle()V

    .line 744
    return-void
.end method

.method public setAddedCount(I)V
    .registers 3
    .param p1, "addedCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 584
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setAddedCount(I)V

    .line 585
    return-void
.end method

.method public setBeforeText(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "beforeText"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 675
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setBeforeText(Ljava/lang/CharSequence;)V

    .line 676
    return-void
.end method

.method public setChecked(Z)V
    .registers 3
    .param p1, "isChecked"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setChecked(Z)V

    .line 197
    return-void
.end method

.method public setClassName(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "className"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 636
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setClassName(Ljava/lang/CharSequence;)V

    .line 637
    return-void
.end method

.method public setContentDescription(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "contentDescription"    # Ljava/lang/CharSequence;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 701
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 702
    return-void
.end method

.method public setCurrentItemIndex(I)V
    .registers 3
    .param p1, "currentItemIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 352
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setCurrentItemIndex(I)V

    .line 353
    return-void
.end method

.method public setEnabled(Z)V
    .registers 3
    .param p1, "isEnabled"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 222
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setEnabled(Z)V

    .line 223
    return-void
.end method

.method public setFromIndex(I)V
    .registers 3
    .param p1, "fromIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 384
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFromIndex(I)V

    .line 385
    return-void
.end method

.method public setFullScreen(Z)V
    .registers 3
    .param p1, "isFullScreen"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 274
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setFullScreen(Z)V

    .line 275
    return-void
.end method

.method public setItemCount(I)V
    .registers 3
    .param p1, "itemCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 326
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setItemCount(I)V

    .line 327
    return-void
.end method

.method public setMaxScrollX(I)V
    .registers 3
    .param p1, "maxScrollX"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 496
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {v0, p1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setMaxScrollX(Landroid/view/accessibility/AccessibilityRecord;I)V

    .line 497
    return-void
.end method

.method public setMaxScrollY(I)V
    .registers 3
    .param p1, "maxScrollY"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 546
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {v0, p1}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setMaxScrollY(Landroid/view/accessibility/AccessibilityRecord;I)V

    .line 547
    return-void
.end method

.method public setParcelableData(Landroid/os/Parcelable;)V
    .registers 3
    .param p1, "parcelableData"    # Landroid/os/Parcelable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 727
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setParcelableData(Landroid/os/Parcelable;)V

    .line 728
    return-void
.end method

.method public setPassword(Z)V
    .registers 3
    .param p1, "isPassword"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 248
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setPassword(Z)V

    .line 249
    return-void
.end method

.method public setRemovedCount(I)V
    .registers 3
    .param p1, "removedCount"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 610
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setRemovedCount(I)V

    .line 611
    return-void
.end method

.method public setScrollX(I)V
    .registers 3
    .param p1, "scrollX"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 434
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollX(I)V

    .line 435
    return-void
.end method

.method public setScrollY(I)V
    .registers 3
    .param p1, "scrollY"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 458
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollY(I)V

    .line 459
    return-void
.end method

.method public setScrollable(Z)V
    .registers 3
    .param p1, "scrollable"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 300
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setScrollable(Z)V

    .line 301
    return-void
.end method

.method public setSource(Landroid/view/View;)V
    .registers 3
    .param p1, "source"    # Landroid/view/View;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 96
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setSource(Landroid/view/View;)V

    .line 97
    return-void
.end method

.method public setSource(Landroid/view/View;I)V
    .registers 4
    .param p1, "root"    # Landroid/view/View;
    .param p2, "virtualDescendantId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 117
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-static {v0, p1, p2}, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->setSource(Landroid/view/accessibility/AccessibilityRecord;Landroid/view/View;I)V

    .line 118
    return-void
.end method

.method public setToIndex(I)V
    .registers 3
    .param p1, "toIndex"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 410
    iget-object v0, p0, Landroidx/core/view/accessibility/AccessibilityRecordCompat;->mRecord:Landroid/view/accessibility/AccessibilityRecord;

    invoke-virtual {v0, p1}, Landroid/view/accessibility/AccessibilityRecord;->setToIndex(I)V

    .line 411
    return-void
.end method
