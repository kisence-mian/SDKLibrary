.class Landroid/support/v7/widget/DropDownListView;
.super Landroid/widget/ListView;
.source "DropDownListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;,
        Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;
    }
.end annotation


# static fields
.field public static final INVALID_POSITION:I = -0x1

.field public static final NO_POSITION:I = -0x1


# instance fields
.field private mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field private mDrawsInPressedState:Z

.field private mHijackFocus:Z

.field private mIsChildViewEnabled:Ljava/lang/reflect/Field;

.field private mListSelectionHidden:Z

.field private mMotionPosition:I

.field mResolveHoverRunnable:Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

.field private mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

.field private mSelectionBottomPadding:I

.field private mSelectionLeftPadding:I

.field private mSelectionRightPadding:I

.field private mSelectionTopPadding:I

.field private mSelector:Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;

.field private final mSelectorRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Landroid/content/Context;Z)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "hijackFocus"    # Z

    .prologue
    const/4 v3, 0x0

    .line 118
    const/4 v1, 0x0

    sget v2, Landroid/support/v7/appcompat/R$attr;->dropDownListViewStyle:I

    invoke-direct {p0, p1, v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/DropDownListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 51
    iput v3, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionLeftPadding:I

    .line 52
    iput v3, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionTopPadding:I

    .line 53
    iput v3, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionRightPadding:I

    .line 54
    iput v3, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionBottomPadding:I

    .line 119
    iput-boolean p2, p0, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    .line 120
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/DropDownListView;->setCacheColorHint(I)V

    .line 123
    :try_start_1b
    const-class v1, Landroid/widget/AbsListView;

    const-string v2, "mIsChildViewEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/DropDownListView;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    .line 124
    iget-object v1, p0, Landroid/support/v7/widget/DropDownListView;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1b .. :try_end_2b} :catch_2c

    .line 128
    :goto_2b
    return-void

    .line 125
    :catch_2c
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_2b
.end method

.method private clearPressedItem()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 629
    iput-boolean v3, p0, Landroid/support/v7/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 630
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/DropDownListView;->setPressed(Z)V

    .line 632
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->drawableStateChanged()V

    .line 634
    iget v1, p0, Landroid/support/v7/widget/DropDownListView;->mMotionPosition:I

    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 635
    .local v0, "motionView":Landroid/view/View;
    if-eqz v0, :cond_19

    .line 636
    invoke-virtual {v0, v3}, Landroid/view/View;->setPressed(Z)V

    .line 639
    :cond_19
    iget-object v1, p0, Landroid/support/v7/widget/DropDownListView;->mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    if-eqz v1, :cond_25

    .line 640
    iget-object v1, p0, Landroid/support/v7/widget/DropDownListView;->mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 641
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v7/widget/DropDownListView;->mClickAnimation:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 643
    :cond_25
    return-void
.end method

.method private clickPressedItem(Landroid/view/View;I)V
    .registers 5
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    .line 542
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/DropDownListView;->getItemIdAtPosition(I)J

    move-result-wide v0

    .line 543
    .local v0, "id":J
    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/support/v7/widget/DropDownListView;->performItemClick(Landroid/view/View;IJ)Z

    .line 544
    return-void
.end method

.method private drawSelectorCompat(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 565
    iget-object v1, p0, Landroid/support/v7/widget/DropDownListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 566
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 567
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_16

    .line 568
    iget-object v1, p0, Landroid/support/v7/widget/DropDownListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 569
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 572
    .end local v0    # "selector":Landroid/graphics/drawable/Drawable;
    :cond_16
    return-void
.end method

.method private positionSelectorCompat(ILandroid/view/View;)V
    .registers 10
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    .line 604
    iget-object v2, p0, Landroid/support/v7/widget/DropDownListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 605
    .local v2, "selectorRect":Landroid/graphics/Rect;
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v5

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 608
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget v4, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionLeftPadding:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 609
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionTopPadding:I

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 610
    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget v4, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionRightPadding:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 611
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionBottomPadding:I

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 616
    :try_start_31
    iget-object v3, p0, Landroid/support/v7/widget/DropDownListView;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->getBoolean(Ljava/lang/Object;)Z

    move-result v1

    .line 617
    .local v1, "isChildViewEnabled":Z
    invoke-virtual {p2}, Landroid/view/View;->isEnabled()Z

    move-result v3

    if-eq v3, v1, :cond_4f

    .line 618
    iget-object v4, p0, Landroid/support/v7/widget/DropDownListView;->mIsChildViewEnabled:Ljava/lang/reflect/Field;

    if-nez v1, :cond_50

    const/4 v3, 0x1

    :goto_42
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v4, p0, v3}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 619
    const/4 v3, -0x1

    if-eq p1, v3, :cond_4f

    .line 620
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->refreshDrawableState()V
    :try_end_4f
    .catch Ljava/lang/IllegalAccessException; {:try_start_31 .. :try_end_4f} :catch_52

    .line 626
    .end local v1    # "isChildViewEnabled":Z
    :cond_4f
    :goto_4f
    return-void

    .line 618
    .restart local v1    # "isChildViewEnabled":Z
    :cond_50
    const/4 v3, 0x0

    goto :goto_42

    .line 623
    .end local v1    # "isChildViewEnabled":Z
    :catch_52
    move-exception v0

    .line 624
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_4f
.end method

.method private positionSelectorLikeFocusCompat(ILandroid/view/View;)V
    .registers 11
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 586
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 587
    .local v2, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_2d

    const/4 v7, -0x1

    if-eq p1, v7, :cond_2d

    move v1, v5

    .line 588
    .local v1, "manageState":Z
    :goto_c
    if-eqz v1, :cond_11

    .line 589
    invoke-virtual {v2, v6, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 592
    :cond_11
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/DropDownListView;->positionSelectorCompat(ILandroid/view/View;)V

    .line 594
    if-eqz v1, :cond_2c

    .line 595
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 596
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    .line 597
    .local v3, "x":F
    invoke-virtual {v0}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v4

    .line 598
    .local v4, "y":F
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getVisibility()I

    move-result v7

    if-nez v7, :cond_2f

    :goto_26
    invoke-virtual {v2, v5, v6}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 599
    invoke-static {v2, v3, v4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 601
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v3    # "x":F
    .end local v4    # "y":F
    :cond_2c
    return-void

    .end local v1    # "manageState":Z
    :cond_2d
    move v1, v6

    .line 587
    goto :goto_c

    .restart local v0    # "bounds":Landroid/graphics/Rect;
    .restart local v1    # "manageState":Z
    .restart local v3    # "x":F
    .restart local v4    # "y":F
    :cond_2f
    move v5, v6

    .line 598
    goto :goto_26
.end method

.method private positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V
    .registers 7
    .param p1, "position"    # I
    .param p2, "sel"    # Landroid/view/View;
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    .line 575
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/DropDownListView;->positionSelectorLikeFocusCompat(ILandroid/view/View;)V

    .line 577
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 578
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_f

    const/4 v1, -0x1

    if-eq p1, v1, :cond_f

    .line 579
    invoke-static {v0, p3, p4}, Landroid/support/v4/graphics/drawable/DrawableCompat;->setHotspot(Landroid/graphics/drawable/Drawable;FF)V

    .line 581
    :cond_f
    return-void
.end method

.method private setPressedItem(Landroid/view/View;IFF)V
    .registers 13
    .param p1, "child"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "x"    # F
    .param p4, "y"    # F

    .prologue
    const/16 v7, 0x15

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 646
    iput-boolean v5, p0, Landroid/support/v7/widget/DropDownListView;->mDrawsInPressedState:Z

    .line 649
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_d

    .line 650
    invoke-virtual {p0, p3, p4}, Landroid/support/v7/widget/DropDownListView;->drawableHotspotChanged(FF)V

    .line 652
    :cond_d
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->isPressed()Z

    move-result v3

    if-nez v3, :cond_16

    .line 653
    invoke-virtual {p0, v5}, Landroid/support/v7/widget/DropDownListView;->setPressed(Z)V

    .line 657
    :cond_16
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->layoutChildren()V

    .line 661
    iget v3, p0, Landroid/support/v7/widget/DropDownListView;->mMotionPosition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_36

    .line 662
    iget v3, p0, Landroid/support/v7/widget/DropDownListView;->mMotionPosition:I

    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/support/v7/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 663
    .local v2, "motionView":Landroid/view/View;
    if-eqz v2, :cond_36

    if-eq v2, p1, :cond_36

    invoke-virtual {v2}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-eqz v3, :cond_36

    .line 664
    invoke-virtual {v2, v6}, Landroid/view/View;->setPressed(Z)V

    .line 667
    .end local v2    # "motionView":Landroid/view/View;
    :cond_36
    iput p2, p0, Landroid/support/v7/widget/DropDownListView;->mMotionPosition:I

    .line 670
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    int-to-float v3, v3

    sub-float v0, p3, v3

    .line 671
    .local v0, "childX":F
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    sub-float v1, p4, v3

    .line 672
    .local v1, "childY":F
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_4d

    .line 673
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->drawableHotspotChanged(FF)V

    .line 675
    :cond_4d
    invoke-virtual {p1}, Landroid/view/View;->isPressed()Z

    move-result v3

    if-nez v3, :cond_56

    .line 676
    invoke-virtual {p1, v5}, Landroid/view/View;->setPressed(Z)V

    .line 680
    :cond_56
    invoke-direct {p0, p2, p1, p3, p4}, Landroid/support/v7/widget/DropDownListView;->positionSelectorLikeTouchCompat(ILandroid/view/View;FF)V

    .line 685
    invoke-direct {p0, v6}, Landroid/support/v7/widget/DropDownListView;->setSelectorEnabled(Z)V

    .line 689
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->refreshDrawableState()V

    .line 690
    return-void
.end method

.method private setSelectorEnabled(Z)V
    .registers 3
    .param p1, "enabled"    # Z

    .prologue
    .line 373
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mSelector:Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;

    if-eqz v0, :cond_9

    .line 374
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mSelector:Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;->setEnabled(Z)V

    .line 376
    :cond_9
    return-void
.end method

.method private touchModeDrawsInPressedStateCompat()Z
    .registers 2

    .prologue
    .line 693
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mDrawsInPressedState:Z

    return v0
.end method

.method private updateSelectorStateCompat()V
    .registers 3

    .prologue
    .line 558
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 559
    .local v0, "selector":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_19

    invoke-direct {p0}, Landroid/support/v7/widget/DropDownListView;->touchModeDrawsInPressedStateCompat()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->isPressed()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 560
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 562
    :cond_19
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, "drawSelectorOnTop":Z
    invoke-direct {p0, p1}, Landroid/support/v7/widget/DropDownListView;->drawSelectorCompat(Landroid/graphics/Canvas;)V

    .line 203
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 204
    return-void
.end method

.method protected drawableStateChanged()V
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mResolveHoverRunnable:Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    if-eqz v0, :cond_5

    .line 194
    :goto_4
    return-void

    .line 190
    :cond_5
    invoke-super {p0}, Landroid/widget/ListView;->drawableStateChanged()V

    .line 192
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/support/v7/widget/DropDownListView;->setSelectorEnabled(Z)V

    .line 193
    invoke-direct {p0}, Landroid/support/v7/widget/DropDownListView;->updateSelectorStateCompat()V

    goto :goto_4
.end method

.method public hasFocus()Z
    .registers 2

    .prologue
    .line 164
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_a

    invoke-super {p0}, Landroid/widget/ListView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hasWindowFocus()Z
    .registers 2

    .prologue
    .line 144
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_a

    invoke-super {p0}, Landroid/widget/ListView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isFocused()Z
    .registers 2

    .prologue
    .line 154
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    if-nez v0, :cond_a

    invoke-super {p0}, Landroid/widget/ListView;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public isInTouchMode()Z
    .registers 2

    .prologue
    .line 134
    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mHijackFocus:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Landroid/support/v7/widget/DropDownListView;->mListSelectionHidden:Z

    if-nez v0, :cond_e

    :cond_8
    invoke-super {p0}, Landroid/widget/ListView;->isInTouchMode()Z

    move-result v0

    if-eqz v0, :cond_10

    :cond_e
    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public lookForSelectablePosition(IZ)I
    .registers 7
    .param p1, "position"    # I
    .param p2, "lookDown"    # Z

    .prologue
    const/4 v2, -0x1

    .line 229
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 230
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_d

    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->isInTouchMode()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 256
    :cond_d
    :goto_d
    return v2

    .line 234
    :cond_e
    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    .line 235
    .local v1, "count":I
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v3

    if-nez v3, :cond_45

    .line 236
    if-eqz p2, :cond_2e

    .line 237
    const/4 v3, 0x0

    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 238
    :goto_23
    if-ge p1, v1, :cond_3f

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 239
    add-int/lit8 p1, p1, 0x1

    goto :goto_23

    .line 242
    :cond_2e
    add-int/lit8 v3, v1, -0x1

    invoke-static {p1, v3}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 243
    :goto_34
    if-ltz p1, :cond_3f

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v3

    if-nez v3, :cond_3f

    .line 244
    add-int/lit8 p1, p1, -0x1

    goto :goto_34

    .line 248
    :cond_3f
    if-ltz p1, :cond_d

    if-ge p1, v1, :cond_d

    move v2, p1

    .line 251
    goto :goto_d

    .line 253
    :cond_45
    if-ltz p1, :cond_d

    if-ge p1, v1, :cond_d

    move v2, p1

    .line 256
    goto :goto_d
.end method

.method public measureHeightOfChildrenCompat(IIIII)I
    .registers 27
    .param p1, "widthMeasureSpec"    # I
    .param p2, "startPosition"    # I
    .param p3, "endPosition"    # I
    .param p4, "maxHeight"    # I
    .param p5, "disallowPartialChildPosition"    # I

    .prologue
    .line 290
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DropDownListView;->getListPaddingTop()I

    move-result v14

    .line 291
    .local v14, "paddingTop":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DropDownListView;->getListPaddingBottom()I

    move-result v11

    .line 292
    .local v11, "paddingBottom":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DropDownListView;->getListPaddingLeft()I

    move-result v12

    .line 293
    .local v12, "paddingLeft":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DropDownListView;->getListPaddingRight()I

    move-result v13

    .line 294
    .local v13, "paddingRight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DropDownListView;->getDividerHeight()I

    move-result v16

    .line 295
    .local v16, "reportedDividerHeight":I
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DropDownListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 297
    .local v6, "divider":Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DropDownListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    .line 299
    .local v2, "adapter":Landroid/widget/ListAdapter;
    if-nez v2, :cond_21

    .line 300
    add-int v15, v14, v11

    .line 369
    :cond_20
    :goto_20
    return v15

    .line 304
    :cond_21
    add-int v17, v14, v11

    .line 305
    .local v17, "returnedHeight":I
    if-lez v16, :cond_8b

    if-eqz v6, :cond_8b

    move/from16 v7, v16

    .line 310
    .local v7, "dividerHeight":I
    :goto_29
    const/4 v15, 0x0

    .line 312
    .local v15, "prevHeightWithoutPartialChild":I
    const/4 v3, 0x0

    .line 313
    .local v3, "child":Landroid/view/View;
    const/16 v18, 0x0

    .line 314
    .local v18, "viewType":I
    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    .line 315
    .local v5, "count":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_32
    if-ge v9, v5, :cond_a1

    .line 316
    invoke-interface {v2, v9}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v10

    .line 317
    .local v10, "newType":I
    move/from16 v0, v18

    if-eq v10, v0, :cond_3f

    .line 318
    const/4 v3, 0x0

    .line 319
    move/from16 v18, v10

    .line 321
    :cond_3f
    move-object/from16 v0, p0

    invoke-interface {v2, v9, v3, v0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 325
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 327
    .local v4, "childLp":Landroid/view/ViewGroup$LayoutParams;
    if-nez v4, :cond_52

    .line 328
    invoke-virtual/range {p0 .. p0}, Landroid/support/v7/widget/DropDownListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 329
    invoke-virtual {v3, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 332
    :cond_52
    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    if-lez v19, :cond_8d

    .line 333
    iget v0, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v19, v0

    const/high16 v20, 0x40000000    # 2.0f

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .line 338
    .local v8, "heightMeasureSpec":I
    :goto_62
    move/from16 v0, p1

    invoke-virtual {v3, v0, v8}, Landroid/view/View;->measure(II)V

    .line 342
    invoke-virtual {v3}, Landroid/view/View;->forceLayout()V

    .line 344
    if-lez v9, :cond_6e

    .line 346
    add-int v17, v17, v7

    .line 349
    :cond_6e
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    add-int v17, v17, v19

    .line 351
    move/from16 v0, v17

    move/from16 v1, p4

    if-lt v0, v1, :cond_96

    .line 354
    if-ltz p5, :cond_88

    move/from16 v0, p5

    if-le v9, v0, :cond_88

    if-lez v15, :cond_88

    move/from16 v0, v17

    move/from16 v1, p4

    if-ne v0, v1, :cond_20

    :cond_88
    move/from16 v15, p4

    goto :goto_20

    .line 305
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "count":I
    .end local v7    # "dividerHeight":I
    .end local v8    # "heightMeasureSpec":I
    .end local v9    # "i":I
    .end local v10    # "newType":I
    .end local v15    # "prevHeightWithoutPartialChild":I
    .end local v18    # "viewType":I
    :cond_8b
    const/4 v7, 0x0

    goto :goto_29

    .line 336
    .restart local v3    # "child":Landroid/view/View;
    .restart local v4    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v5    # "count":I
    .restart local v7    # "dividerHeight":I
    .restart local v9    # "i":I
    .restart local v10    # "newType":I
    .restart local v15    # "prevHeightWithoutPartialChild":I
    .restart local v18    # "viewType":I
    :cond_8d
    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v19 .. v20}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    .restart local v8    # "heightMeasureSpec":I
    goto :goto_62

    .line 362
    :cond_96
    if-ltz p5, :cond_9e

    move/from16 v0, p5

    if-lt v9, v0, :cond_9e

    .line 363
    move/from16 v15, v17

    .line 315
    :cond_9e
    add-int/lit8 v9, v9, 0x1

    goto :goto_32

    .end local v4    # "childLp":Landroid/view/ViewGroup$LayoutParams;
    .end local v8    # "heightMeasureSpec":I
    .end local v10    # "newType":I
    :cond_a1
    move/from16 v15, v17

    .line 369
    goto/16 :goto_20
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 471
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mResolveHoverRunnable:Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    .line 472
    invoke-super {p0}, Landroid/widget/ListView;->onDetachedFromWindow()V

    .line 473
    return-void
.end method

.method public onForwardedEvent(Landroid/view/MotionEvent;I)Z
    .registers 14
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "activePointerId"    # I

    .prologue
    const/4 v10, 0x1

    .line 482
    const/4 v4, 0x1

    .line 483
    .local v4, "handledEvent":Z
    const/4 v3, 0x0

    .line 485
    .local v3, "clearPressedItem":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 486
    .local v0, "actionMasked":I
    packed-switch v0, :pswitch_data_68

    .line 519
    :cond_a
    :goto_a
    if-eqz v4, :cond_e

    if-eqz v3, :cond_11

    .line 520
    :cond_e
    invoke-direct {p0}, Landroid/support/v7/widget/DropDownListView;->clearPressedItem()V

    .line 524
    :cond_11
    if-eqz v4, :cond_5d

    .line 525
    iget-object v8, p0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    if-nez v8, :cond_1e

    .line 526
    new-instance v8, Landroid/support/v4/widget/ListViewAutoScrollHelper;

    invoke-direct {v8, p0}, Landroid/support/v4/widget/ListViewAutoScrollHelper;-><init>(Landroid/widget/ListView;)V

    iput-object v8, p0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    .line 528
    :cond_1e
    iget-object v8, p0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    invoke-virtual {v8, v10}, Landroid/support/v4/widget/ListViewAutoScrollHelper;->setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;

    .line 529
    iget-object v8, p0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    invoke-virtual {v8, p0, p1}, Landroid/support/v4/widget/ListViewAutoScrollHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 534
    :cond_28
    :goto_28
    return v4

    .line 488
    :pswitch_29
    const/4 v4, 0x0

    .line 489
    goto :goto_a

    .line 491
    :pswitch_2b
    const/4 v4, 0x0

    .line 494
    :pswitch_2c
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 495
    .local v1, "activeIndex":I
    if-gez v1, :cond_34

    .line 496
    const/4 v4, 0x0

    .line 497
    goto :goto_a

    .line 500
    :cond_34
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v8

    float-to-int v6, v8

    .line 501
    .local v6, "x":I
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    float-to-int v7, v8

    .line 502
    .local v7, "y":I
    invoke-virtual {p0, v6, v7}, Landroid/support/v7/widget/DropDownListView;->pointToPosition(II)I

    move-result v5

    .line 503
    .local v5, "position":I
    const/4 v8, -0x1

    if-ne v5, v8, :cond_47

    .line 504
    const/4 v3, 0x1

    .line 505
    goto :goto_a

    .line 508
    :cond_47
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v8

    sub-int v8, v5, v8

    invoke-virtual {p0, v8}, Landroid/support/v7/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 509
    .local v2, "child":Landroid/view/View;
    int-to-float v8, v6

    int-to-float v9, v7

    invoke-direct {p0, v2, v5, v8, v9}, Landroid/support/v7/widget/DropDownListView;->setPressedItem(Landroid/view/View;IFF)V

    .line 510
    const/4 v4, 0x1

    .line 512
    if-ne v0, v10, :cond_a

    .line 513
    invoke-direct {p0, v2, v5}, Landroid/support/v7/widget/DropDownListView;->clickPressedItem(Landroid/view/View;I)V

    goto :goto_a

    .line 530
    .end local v1    # "activeIndex":I
    .end local v2    # "child":Landroid/view/View;
    .end local v5    # "position":I
    .end local v6    # "x":I
    .end local v7    # "y":I
    :cond_5d
    iget-object v8, p0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    if-eqz v8, :cond_28

    .line 531
    iget-object v8, p0, Landroid/support/v7/widget/DropDownListView;->mScrollHelper:Landroid/support/v4/widget/ListViewAutoScrollHelper;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/support/v4/widget/ListViewAutoScrollHelper;->setEnabled(Z)Landroid/support/v4/widget/AutoScrollHelper;

    goto :goto_28

    .line 486
    :pswitch_data_68
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_2c
        :pswitch_29
    .end packed-switch
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .registers 9
    .param p1, "ev"    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, -0x1

    .line 430
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-ge v4, v5, :cond_c

    .line 434
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 466
    :cond_b
    :goto_b
    return v1

    .line 437
    :cond_c
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 438
    .local v0, "action":I
    const/16 v4, 0xa

    if-ne v0, v4, :cond_24

    iget-object v4, p0, Landroid/support/v7/widget/DropDownListView;->mResolveHoverRunnable:Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    if-nez v4, :cond_24

    .line 441
    new-instance v4, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    invoke-direct {v4, p0}, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;-><init>(Landroid/support/v7/widget/DropDownListView;)V

    iput-object v4, p0, Landroid/support/v7/widget/DropDownListView;->mResolveHoverRunnable:Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    .line 442
    iget-object v4, p0, Landroid/support/v7/widget/DropDownListView;->mResolveHoverRunnable:Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    invoke-virtual {v4}, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;->post()V

    .line 446
    :cond_24
    invoke-super {p0, p1}, Landroid/widget/ListView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    .line 447
    .local v1, "handled":Z
    const/16 v4, 0x9

    if-eq v0, v4, :cond_2f

    const/4 v4, 0x7

    if-ne v0, v4, :cond_65

    .line 449
    :cond_2f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {p0, v4, v5}, Landroid/support/v7/widget/DropDownListView;->pointToPosition(II)I

    move-result v3

    .line 451
    .local v3, "position":I
    if-eq v3, v6, :cond_b

    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getSelectedItemPosition()I

    move-result v4

    if-eq v3, v4, :cond_b

    .line 452
    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getFirstVisiblePosition()I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {p0, v4}, Landroid/support/v7/widget/DropDownListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 453
    .local v2, "hoveredItem":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_61

    .line 456
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/DropDownListView;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {p0, v3, v4}, Landroid/support/v7/widget/DropDownListView;->setSelectionFromTop(II)V

    .line 458
    :cond_61
    invoke-direct {p0}, Landroid/support/v7/widget/DropDownListView;->updateSelectorStateCompat()V

    goto :goto_b

    .line 463
    .end local v2    # "hoveredItem":Landroid/view/View;
    .end local v3    # "position":I
    :cond_65
    invoke-virtual {p0, v6}, Landroid/support/v7/widget/DropDownListView;->setSelection(I)V

    goto :goto_b
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 208
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_26

    .line 213
    :goto_7
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mResolveHoverRunnable:Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    if-eqz v0, :cond_10

    .line 215
    iget-object v0, p0, Landroid/support/v7/widget/DropDownListView;->mResolveHoverRunnable:Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;

    invoke-virtual {v0}, Landroid/support/v7/widget/DropDownListView$ResolveHoverRunnable;->cancel()V

    .line 217
    :cond_10
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 210
    :pswitch_15
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/DropDownListView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/DropDownListView;->mMotionPosition:I

    goto :goto_7

    .line 208
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_15
    .end packed-switch
.end method

.method setListSelectionHidden(Z)V
    .registers 2
    .param p1, "hideListSelection"    # Z

    .prologue
    .line 554
    iput-boolean p1, p0, Landroid/support/v7/widget/DropDownListView;->mListSelectionHidden:Z

    .line 555
    return-void
.end method

.method public setSelector(Landroid/graphics/drawable/Drawable;)V
    .registers 4
    .param p1, "sel"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 169
    if-eqz p1, :cond_29

    new-instance v1, Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;

    invoke-direct {v1, p1}, Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    :goto_7
    iput-object v1, p0, Landroid/support/v7/widget/DropDownListView;->mSelector:Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;

    .line 170
    iget-object v1, p0, Landroid/support/v7/widget/DropDownListView;->mSelector:Landroid/support/v7/widget/DropDownListView$GateKeeperDrawable;

    invoke-super {p0, v1}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 172
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 173
    .local v0, "padding":Landroid/graphics/Rect;
    if-eqz p1, :cond_18

    .line 174
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 177
    :cond_18
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iput v1, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionLeftPadding:I

    .line 178
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iput v1, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionTopPadding:I

    .line 179
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iput v1, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionRightPadding:I

    .line 180
    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iput v1, p0, Landroid/support/v7/widget/DropDownListView;->mSelectionBottomPadding:I

    .line 181
    return-void

    .line 169
    .end local v0    # "padding":Landroid/graphics/Rect;
    :cond_29
    const/4 v1, 0x0

    goto :goto_7
.end method
