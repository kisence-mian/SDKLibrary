.class public Landroid/support/v7/widget/ActionMenuPresenter;
.super Landroid/support/v7/internal/view/menu/BaseMenuPresenter;
.source "ActionMenuPresenter.java"

# interfaces
.implements Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;,
        Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;,
        Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;,
        Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;,
        Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;,
        Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;,
        Landroid/support/v7/widget/ActionMenuPresenter$SavedState;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActionMenuPresenter"


# instance fields
.field private final mActionButtonGroups:Landroid/util/SparseBooleanArray;

.field private mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

.field private mActionItemWidthLimit:I

.field private mExpandedActionViewsExclusive:Z

.field private mMaxItems:I

.field private mMaxItemsSet:Z

.field private mMinCellSize:I

.field mOpenSubMenuId:I

.field private mOverflowButton:Landroid/view/View;

.field private mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

.field private mPopupCallback:Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

.field final mPopupPresenterCallback:Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;

.field private mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

.field private mReserveOverflow:Z

.field private mReserveOverflowSet:Z

.field private mScrapActionButtonView:Landroid/view/View;

.field private mStrictWidthLimit:Z

.field private mWidthLimit:I

.field private mWidthLimitSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    sget v0, Landroid/support/v7/appcompat/R$layout;->abc_action_menu_layout:I

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_action_menu_item_layout:I

    invoke-direct {p0, p1, v0, v1}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;-><init>(Landroid/content/Context;II)V

    .line 72
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 82
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$1;)V

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;

    .line 87
    return-void
.end method

.method static synthetic access$200(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    return-object v0
.end method

.method static synthetic access$202(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;)Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;
    .param p1, "x1"    # Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    .line 53
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    return-object p1
.end method

.method static synthetic access$300(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    return-object v0
.end method

.method static synthetic access$302(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;)Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;
    .param p1, "x1"    # Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 53
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    return-object p1
.end method

.method static synthetic access$400(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/MenuBuilder;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$500(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/view/View;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$600(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/MenuView;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    return-object v0
.end method

.method static synthetic access$700(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    return-object v0
.end method

.method static synthetic access$702(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;)Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;
    .param p1, "x1"    # Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 53
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    return-object p1
.end method

.method static synthetic access$800(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/MenuBuilder;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method static synthetic access$900(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/MenuView;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/ActionMenuPresenter;

    .line 53
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    return-object v0
.end method

.method private findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;
    .registers 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 282
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/ViewGroup;

    .line 283
    .local v0, "parent":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    return-object v1

    .line 285
    :cond_8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 286
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_d
    if-ge v3, v2, :cond_24

    .line 287
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 288
    .local v4, "child":Landroid/view/View;
    instance-of v5, v4, Landroid/support/v7/internal/view/menu/MenuView$ItemView;

    if-eqz v5, :cond_21

    move-object v5, v4

    check-cast v5, Landroid/support/v7/internal/view/menu/MenuView$ItemView;

    invoke-interface {v5}, Landroid/support/v7/internal/view/menu/MenuView$ItemView;->getItemData()Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v5

    if-ne v5, p1, :cond_21

    .line 290
    return-object v4

    .line 286
    .end local v4    # "child":Landroid/view/View;
    :cond_21
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 293
    .end local v3    # "i":I
    :cond_24
    return-object v1
.end method


# virtual methods
.method public bindItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/support/v7/internal/view/menu/MenuView$ItemView;)V
    .registers 7
    .param p1, "item"    # Landroid/support/v7/internal/view/menu/MenuItemImpl;
    .param p2, "itemView"    # Landroid/support/v7/internal/view/menu/MenuView$ItemView;

    .line 184
    const/4 v0, 0x0

    invoke-interface {p2, p1, v0}, Landroid/support/v7/internal/view/menu/MenuView$ItemView;->initialize(Landroid/support/v7/internal/view/menu/MenuItemImpl;I)V

    .line 186
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    .line 187
    .local v0, "menuView":Landroid/support/v7/widget/ActionMenuView;
    move-object v1, p2

    check-cast v1, Landroid/support/v7/internal/view/menu/ActionMenuItemView;

    .line 188
    .local v1, "actionItemView":Landroid/support/v7/internal/view/menu/ActionMenuItemView;
    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setItemInvoker(Landroid/support/v7/internal/view/menu/MenuBuilder$ItemInvoker;)V

    .line 190
    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupCallback:Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    if-nez v2, :cond_1a

    .line 191
    new-instance v2, Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$1;)V

    iput-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupCallback:Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    .line 193
    :cond_1a
    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupCallback:Landroid/support/v7/widget/ActionMenuPresenter$ActionMenuPopupCallback;

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/view/menu/ActionMenuItemView;->setPopupCallback(Landroid/support/v7/internal/view/menu/ActionMenuItemView$PopupCallback;)V

    .line 194
    return-void
.end method

.method public dismissPopupMenus()Z
    .registers 3

    .line 342
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideOverflowMenu()Z

    move-result v0

    .line 343
    .local v0, "result":Z
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->hideSubMenus()Z

    move-result v1

    or-int/2addr v0, v1

    .line 344
    return v0
.end method

.method public filterLeftoverView(Landroid/view/ViewGroup;I)Z
    .registers 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "childIndex"    # I

    .line 256
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    return v0

    .line 257
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->filterLeftoverView(Landroid/view/ViewGroup;I)Z

    move-result v0

    return v0
.end method

.method public flagActionItems()Z
    .registers 25

    .line 379
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 380
    .local v1, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 381
    .local v2, "itemsSize":I
    iget v3, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItems:I

    .line 382
    .local v3, "maxActions":I
    iget v4, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 383
    .local v4, "widthLimit":I
    const/4 v5, 0x0

    invoke-static {v5, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 384
    .local v6, "querySpec":I
    iget-object v7, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v7, Landroid/view/ViewGroup;

    .line 386
    .local v7, "parent":Landroid/view/ViewGroup;
    const/4 v8, 0x0

    .line 387
    .local v8, "requiredItems":I
    const/4 v9, 0x0

    .line 388
    .local v9, "requestedItems":I
    const/4 v10, 0x0

    .line 389
    .local v10, "firstActionWidth":I
    const/4 v11, 0x0

    .line 390
    .local v11, "hasOverflow":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1e
    if-ge v12, v2, :cond_47

    .line 391
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 392
    .local v13, "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    invoke-virtual {v13}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v14

    if-eqz v14, :cond_2f

    .line 393
    add-int/lit8 v8, v8, 0x1

    goto :goto_39

    .line 394
    :cond_2f
    invoke-virtual {v13}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v14

    if-eqz v14, :cond_38

    .line 395
    add-int/lit8 v9, v9, 0x1

    goto :goto_39

    .line 397
    :cond_38
    const/4 v11, 0x1

    .line 399
    :goto_39
    iget-boolean v14, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    if-eqz v14, :cond_44

    invoke-virtual {v13}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v14

    if-eqz v14, :cond_44

    .line 402
    const/4 v3, 0x0

    .line 390
    .end local v13    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :cond_44
    add-int/lit8 v12, v12, 0x1

    goto :goto_1e

    .line 407
    .end local v12    # "i":I
    :cond_47
    iget-boolean v12, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v12, :cond_53

    if-nez v11, :cond_51

    add-int v12, v8, v9

    if-le v12, v3, :cond_53

    .line 409
    :cond_51
    add-int/lit8 v3, v3, -0x1

    .line 411
    :cond_53
    sub-int/2addr v3, v8

    .line 413
    iget-object v12, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonGroups:Landroid/util/SparseBooleanArray;

    .line 414
    .local v12, "seenGroups":Landroid/util/SparseBooleanArray;
    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->clear()V

    .line 416
    const/4 v13, 0x0

    .line 417
    .local v13, "cellSize":I
    const/4 v14, 0x0

    .line 418
    .local v14, "cellsRemaining":I
    iget-boolean v15, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v15, :cond_69

    .line 419
    iget v15, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mMinCellSize:I

    div-int v14, v4, v15

    .line 420
    rem-int v16, v4, v15

    .line 421
    .local v16, "cellSizeRemaining":I
    div-int v17, v16, v14

    add-int v13, v15, v17

    .line 425
    .end local v16    # "cellSizeRemaining":I
    :cond_69
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_6a
    if-ge v15, v2, :cond_192

    .line 426
    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 428
    .local v5, "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    invoke-virtual {v5}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->requiresActionButton()Z

    move-result v17

    if-eqz v17, :cond_bf

    .line 429
    move/from16 v17, v2

    .end local v2    # "itemsSize":I
    .local v17, "itemsSize":I
    iget-object v2, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v5, v2, v7}, Landroid/support/v7/widget/ActionMenuPresenter;->getItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 430
    .local v2, "v":Landroid/view/View;
    move/from16 v19, v8

    .end local v8    # "requiredItems":I
    .local v19, "requiredItems":I
    iget-object v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    if-nez v8, :cond_8a

    .line 431
    iput-object v2, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 433
    :cond_8a
    iget-boolean v8, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v8, :cond_96

    .line 434
    const/4 v8, 0x0

    invoke-static {v2, v13, v14, v6, v8}, Landroid/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v20

    sub-int v14, v14, v20

    goto :goto_99

    .line 437
    :cond_96
    invoke-virtual {v2, v6, v6}, Landroid/view/View;->measure(II)V

    .line 439
    :goto_99
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    .line 440
    .local v8, "measuredWidth":I
    sub-int/2addr v4, v8

    .line 441
    if-nez v10, :cond_a1

    .line 442
    move v10, v8

    .line 444
    :cond_a1
    move-object/from16 v20, v2

    .end local v2    # "v":Landroid/view/View;
    .local v20, "v":Landroid/view/View;
    invoke-virtual {v5}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    .line 445
    .local v2, "groupId":I
    if-eqz v2, :cond_b0

    .line 446
    move/from16 v21, v4

    const/4 v4, 0x1

    .end local v4    # "widthLimit":I
    .local v21, "widthLimit":I
    invoke-virtual {v12, v2, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_b3

    .line 445
    .end local v21    # "widthLimit":I
    .restart local v4    # "widthLimit":I
    :cond_b0
    move/from16 v21, v4

    const/4 v4, 0x1

    .line 448
    .end local v4    # "widthLimit":I
    .restart local v21    # "widthLimit":I
    :goto_b3
    invoke-virtual {v5, v4}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 449
    .end local v2    # "groupId":I
    .end local v8    # "measuredWidth":I
    .end local v20    # "v":Landroid/view/View;
    move-object/from16 v22, v7

    move/from16 v4, v21

    const/4 v0, 0x0

    move-object/from16 v21, v1

    goto/16 :goto_183

    .end local v17    # "itemsSize":I
    .end local v19    # "requiredItems":I
    .end local v21    # "widthLimit":I
    .local v2, "itemsSize":I
    .restart local v4    # "widthLimit":I
    .local v8, "requiredItems":I
    :cond_bf
    move/from16 v17, v2

    move/from16 v19, v8

    .end local v2    # "itemsSize":I
    .end local v8    # "requiredItems":I
    .restart local v17    # "itemsSize":I
    .restart local v19    # "requiredItems":I
    invoke-virtual {v5}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->requestsActionButton()Z

    move-result v2

    if-eqz v2, :cond_179

    .line 452
    invoke-virtual {v5}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    .line 453
    .local v2, "groupId":I
    invoke-virtual {v12, v2}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v8

    .line 454
    .local v8, "inGroup":Z
    if-gtz v3, :cond_d9

    if-eqz v8, :cond_d6

    goto :goto_d9

    :cond_d6
    move/from16 v20, v3

    goto :goto_e7

    :cond_d9
    :goto_d9
    if-lez v4, :cond_e5

    move/from16 v20, v3

    .end local v3    # "maxActions":I
    .local v20, "maxActions":I
    iget-boolean v3, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v3, :cond_e3

    if-lez v14, :cond_e7

    :cond_e3
    const/4 v3, 0x1

    goto :goto_e8

    .end local v20    # "maxActions":I
    .restart local v3    # "maxActions":I
    :cond_e5
    move/from16 v20, v3

    .end local v3    # "maxActions":I
    .restart local v20    # "maxActions":I
    :cond_e7
    :goto_e7
    const/4 v3, 0x0

    .line 457
    .local v3, "isAction":Z
    :goto_e8
    if-eqz v3, :cond_12e

    .line 458
    move/from16 v21, v3

    .end local v3    # "isAction":Z
    .local v21, "isAction":Z
    iget-object v3, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    invoke-virtual {v0, v5, v3, v7}, Landroid/support/v7/widget/ActionMenuPresenter;->getItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 459
    .local v3, "v":Landroid/view/View;
    move-object/from16 v22, v7

    .end local v7    # "parent":Landroid/view/ViewGroup;
    .local v22, "parent":Landroid/view/ViewGroup;
    iget-object v7, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    if-nez v7, :cond_fa

    .line 460
    iput-object v3, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 462
    :cond_fa
    iget-boolean v7, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v7, :cond_10b

    .line 463
    const/4 v7, 0x0

    invoke-static {v3, v13, v14, v6, v7}, Landroid/support/v7/widget/ActionMenuView;->measureChildForCells(Landroid/view/View;IIII)I

    move-result v23

    .line 465
    .local v23, "cells":I
    sub-int v14, v14, v23

    .line 466
    if-nez v23, :cond_10a

    .line 467
    const/4 v7, 0x0

    move/from16 v21, v7

    .line 469
    .end local v23    # "cells":I
    :cond_10a
    goto :goto_10e

    .line 470
    :cond_10b
    invoke-virtual {v3, v6, v6}, Landroid/view/View;->measure(II)V

    .line 472
    :goto_10e
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 473
    .local v7, "measuredWidth":I
    sub-int/2addr v4, v7

    .line 474
    if-nez v10, :cond_116

    .line 475
    move v10, v7

    .line 478
    :cond_116
    move-object/from16 v23, v3

    .end local v3    # "v":Landroid/view/View;
    .local v23, "v":Landroid/view/View;
    iget-boolean v3, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    if-eqz v3, :cond_124

    .line 479
    if-ltz v4, :cond_120

    const/4 v3, 0x1

    goto :goto_121

    :cond_120
    const/4 v3, 0x0

    :goto_121
    and-int v3, v21, v3

    .end local v21    # "isAction":Z
    .local v3, "isAction":Z
    goto :goto_132

    .line 482
    .end local v3    # "isAction":Z
    .restart local v21    # "isAction":Z
    :cond_124
    add-int v3, v4, v10

    if-lez v3, :cond_12a

    const/4 v3, 0x1

    goto :goto_12b

    :cond_12a
    const/4 v3, 0x0

    :goto_12b
    and-int v3, v21, v3

    .end local v21    # "isAction":Z
    .restart local v3    # "isAction":Z
    goto :goto_132

    .line 457
    .end local v22    # "parent":Landroid/view/ViewGroup;
    .end local v23    # "v":Landroid/view/View;
    .local v7, "parent":Landroid/view/ViewGroup;
    :cond_12e
    move/from16 v21, v3

    move-object/from16 v22, v7

    .line 486
    .end local v7    # "parent":Landroid/view/ViewGroup;
    .restart local v22    # "parent":Landroid/view/ViewGroup;
    :goto_132
    if-eqz v3, :cond_13d

    if-eqz v2, :cond_13d

    .line 487
    const/4 v7, 0x1

    invoke-virtual {v12, v2, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    move-object/from16 v21, v1

    goto :goto_16e

    .line 488
    :cond_13d
    if-eqz v8, :cond_16c

    .line 490
    const/4 v7, 0x0

    invoke-virtual {v12, v2, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 491
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_144
    if-ge v7, v15, :cond_169

    .line 492
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 493
    .local v0, "areYouMyGroupie":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    move-object/from16 v21, v1

    .end local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    .local v21, "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getGroupId()I

    move-result v1

    if-ne v1, v2, :cond_162

    .line 495
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v1

    if-eqz v1, :cond_15e

    add-int/lit8 v20, v20, 0x1

    .line 496
    :cond_15e
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 491
    .end local v0    # "areYouMyGroupie":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    :cond_162
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    goto :goto_144

    .end local v21    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    .restart local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    :cond_169
    move-object/from16 v21, v1

    .end local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    .restart local v21    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    goto :goto_16e

    .line 488
    .end local v7    # "j":I
    .end local v21    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    .restart local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    :cond_16c
    move-object/from16 v21, v1

    .line 501
    .end local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    .restart local v21    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    :goto_16e
    if-eqz v3, :cond_172

    add-int/lit8 v20, v20, -0x1

    .line 503
    :cond_172
    invoke-virtual {v5, v3}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 504
    .end local v2    # "groupId":I
    .end local v3    # "isAction":Z
    .end local v8    # "inGroup":Z
    move/from16 v3, v20

    const/4 v0, 0x0

    goto :goto_183

    .line 506
    .end local v20    # "maxActions":I
    .end local v21    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    .end local v22    # "parent":Landroid/view/ViewGroup;
    .restart local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    .local v3, "maxActions":I
    .local v7, "parent":Landroid/view/ViewGroup;
    :cond_179
    move-object/from16 v21, v1

    move/from16 v20, v3

    move-object/from16 v22, v7

    .end local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    .end local v3    # "maxActions":I
    .end local v7    # "parent":Landroid/view/ViewGroup;
    .restart local v20    # "maxActions":I
    .restart local v21    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    .restart local v22    # "parent":Landroid/view/ViewGroup;
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->setIsActionButton(Z)V

    .line 425
    .end local v5    # "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    .end local v20    # "maxActions":I
    .restart local v3    # "maxActions":I
    :goto_183
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v17

    move/from16 v8, v19

    move-object/from16 v1, v21

    move-object/from16 v7, v22

    const/4 v5, 0x0

    goto/16 :goto_6a

    .line 509
    .end local v15    # "i":I
    .end local v17    # "itemsSize":I
    .end local v19    # "requiredItems":I
    .end local v21    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    .end local v22    # "parent":Landroid/view/ViewGroup;
    .restart local v1    # "visibleItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    .local v2, "itemsSize":I
    .restart local v7    # "parent":Landroid/view/ViewGroup;
    .local v8, "requiredItems":I
    :cond_192
    const/4 v0, 0x1

    return v0
.end method

.method public getItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8
    .param p1, "item"    # Landroid/support/v7/internal/view/menu/MenuItemImpl;
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 168
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getActionView()Landroid/view/View;

    move-result-object v0

    .line 169
    .local v0, "actionView":Landroid/view/View;
    if-eqz v0, :cond_c

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->hasCollapsibleActionView()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 170
    :cond_c
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->getItemView(Landroid/support/v7/internal/view/menu/MenuItemImpl;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 172
    :cond_10
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v1

    if-eqz v1, :cond_19

    const/16 v1, 0x8

    goto :goto_1a

    :cond_19
    const/4 v1, 0x0

    :goto_1a
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 174
    move-object v1, p3

    check-cast v1, Landroid/support/v7/widget/ActionMenuView;

    .line 175
    .local v1, "menuParent":Landroid/support/v7/widget/ActionMenuView;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 176
    .local v2, "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuView;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 177
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 179
    :cond_31
    return-object v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;
    .registers 4
    .param p1, "root"    # Landroid/view/ViewGroup;

    .line 161
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object v0

    .line 162
    .local v0, "result":Landroid/support/v7/internal/view/menu/MenuView;
    move-object v1, v0

    check-cast v1, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v1, p0}, Landroid/support/v7/widget/ActionMenuView;->setPresenter(Landroid/support/v7/widget/ActionMenuPresenter;)V

    .line 163
    return-object v0
.end method

.method public hideOverflowMenu()Z
    .registers 4

    .line 323
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    if-eqz v0, :cond_16

    .line 324
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v0, v2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 325
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 326
    return v1

    .line 329
    :cond_16
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    .line 330
    .local v0, "popup":Landroid/support/v7/internal/view/menu/MenuPopupHelper;
    if-eqz v0, :cond_1e

    .line 331
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 332
    return v1

    .line 334
    :cond_1e
    const/4 v1, 0x0

    return v1
.end method

.method public hideSubMenus()Z
    .registers 2

    .line 353
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    if-eqz v0, :cond_9

    .line 354
    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->dismiss()V

    .line 355
    const/4 v0, 0x1

    return v0

    .line 357
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 91
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->initForMenu(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 95
    .local v0, "res":Landroid/content/res/Resources;
    invoke-static {p1}, Landroid/support/v7/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Landroid/support/v7/internal/view/ActionBarPolicy;

    move-result-object v1

    .line 96
    .local v1, "abp":Landroid/support/v7/internal/view/ActionBarPolicy;
    iget-boolean v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    if-nez v2, :cond_15

    .line 97
    invoke-virtual {v1}, Landroid/support/v7/internal/view/ActionBarPolicy;->showsOverflowMenuButton()Z

    move-result v2

    iput-boolean v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 100
    :cond_15
    iget-boolean v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    if-nez v2, :cond_1f

    .line 101
    invoke-virtual {v1}, Landroid/support/v7/internal/view/ActionBarPolicy;->getEmbeddedMenuWidthLimit()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 105
    :cond_1f
    iget-boolean v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v2, :cond_29

    .line 106
    invoke-virtual {v1}, Landroid/support/v7/internal/view/ActionBarPolicy;->getMaxActionButtons()I

    move-result v2

    iput v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItems:I

    .line 109
    :cond_29
    iget v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 110
    .local v2, "width":I
    iget-boolean v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4f

    .line 111
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v3, :cond_47

    .line 112
    new-instance v3, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v5, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, p0, v5}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 113
    const/4 v3, 0x0

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 114
    .local v3, "spec":I
    iget-object v5, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v5, v3, v3}, Landroid/view/View;->measure(II)V

    .line 116
    .end local v3    # "spec":I
    :cond_47
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v2, v3

    goto :goto_51

    .line 118
    :cond_4f
    iput-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 121
    :goto_51
    iput v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionItemWidthLimit:I

    .line 123
    const/high16 v3, 0x42600000    # 56.0f

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    mul-float v5, v5, v3

    float-to-int v3, v5

    iput v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMinCellSize:I

    .line 126
    iput-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mScrapActionButtonView:Landroid/view/View;

    .line 127
    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .registers 2

    .line 368
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_d

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_d

    :cond_b
    const/4 v0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v0, 0x1

    :goto_e
    return v0
.end method

.method public isOverflowMenuShowing()Z
    .registers 2

    .line 364
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowPopup:Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isOverflowReserved()Z
    .registers 2

    .line 375
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    return v0
.end method

.method public onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .registers 3
    .param p1, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 514
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->dismissPopupMenus()Z

    .line 515
    invoke-super {p0, p1, p2}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V

    .line 516
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .line 130
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    if-nez v0, :cond_12

    .line 131
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/appcompat/R$integer;->abc_max_action_buttons:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItems:I

    .line 134
    :cond_12
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_1c

    .line 135
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->onItemsChanged(Z)V

    .line 137
    :cond_1c
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 5
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 527
    move-object v0, p1

    check-cast v0, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;

    .line 528
    .local v0, "saved":Landroid/support/v7/widget/ActionMenuPresenter$SavedState;
    iget v1, v0, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    if-lez v1, :cond_1a

    .line 529
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget v2, v0, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    invoke-virtual {v1, v2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 530
    .local v1, "item":Landroid/view/MenuItem;
    if-eqz v1, :cond_1a

    .line 531
    invoke-interface {v1}, Landroid/view/MenuItem;->getSubMenu()Landroid/view/SubMenu;

    move-result-object v2

    check-cast v2, Landroid/support/v7/internal/view/menu/SubMenuBuilder;

    .line 532
    .local v2, "subMenu":Landroid/support/v7/internal/view/menu/SubMenuBuilder;
    invoke-virtual {p0, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z

    .line 535
    .end local v1    # "item":Landroid/view/MenuItem;
    .end local v2    # "subMenu":Landroid/support/v7/internal/view/menu/SubMenuBuilder;
    :cond_1a
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 3

    .line 520
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;

    invoke-direct {v0}, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;-><init>()V

    .line 521
    .local v0, "state":Landroid/support/v7/widget/ActionMenuPresenter$SavedState;
    iget v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    iput v1, v0, Landroid/support/v7/widget/ActionMenuPresenter$SavedState;->openSubMenuId:I

    .line 522
    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z
    .registers 6
    .param p1, "subMenu"    # Landroid/support/v7/internal/view/menu/SubMenuBuilder;

    .line 261
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 263
    :cond_8
    move-object v0, p1

    .line 264
    .local v0, "topSubMenu":Landroid/support/v7/internal/view/menu/SubMenuBuilder;
    :goto_9
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eq v2, v3, :cond_19

    .line 265
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getParentMenu()Landroid/view/Menu;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/support/v7/internal/view/menu/SubMenuBuilder;

    goto :goto_9

    .line 267
    :cond_19
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/support/v7/widget/ActionMenuPresenter;->findViewForItem(Landroid/view/MenuItem;)Landroid/view/View;

    move-result-object v2

    .line 268
    .local v2, "anchor":Landroid/view/View;
    if-nez v2, :cond_2a

    .line 269
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v3, :cond_28

    return v1

    .line 270
    :cond_28
    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 273
    :cond_2a
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 274
    new-instance v1, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v3, p1}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/internal/view/menu/SubMenuBuilder;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 275
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 276
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->show()V

    .line 277
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z

    .line 278
    const/4 v1, 0x1

    return v1
.end method

.method public onSubUiVisibilityChanged(Z)V
    .registers 4
    .param p1, "isVisible"    # Z

    .line 539
    if-eqz p1, :cond_7

    .line 541
    const/4 v0, 0x0

    invoke-super {p0, v0}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z

    goto :goto_d

    .line 543
    :cond_7
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->close(Z)V

    .line 545
    :goto_d
    return-void
.end method

.method public setExpandedActionViewsExclusive(Z)V
    .registers 2
    .param p1, "isExclusive"    # Z

    .line 156
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mExpandedActionViewsExclusive:Z

    .line 157
    return-void
.end method

.method public setItemLimit(I)V
    .registers 3
    .param p1, "itemCount"    # I

    .line 151
    iput p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItems:I

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMaxItemsSet:Z

    .line 153
    return-void
.end method

.method public setMenuView(Landroid/support/v7/widget/ActionMenuView;)V
    .registers 3
    .param p1, "menuView"    # Landroid/support/v7/widget/ActionMenuView;

    .line 548
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    .line 549
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/ActionMenuView;->initialize(Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    .line 550
    return-void
.end method

.method public setReserveOverflow(Z)V
    .registers 3
    .param p1, "reserveOverflow"    # Z

    .line 146
    iput-boolean p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflowSet:Z

    .line 148
    return-void
.end method

.method public setWidthLimit(IZ)V
    .registers 4
    .param p1, "width"    # I
    .param p2, "strict"    # Z

    .line 140
    iput p1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimit:I

    .line 141
    iput-boolean p2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mStrictWidthLimit:Z

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mWidthLimitSet:Z

    .line 143
    return-void
.end method

.method public shouldIncludeItem(ILandroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .registers 4
    .param p1, "childIndex"    # I
    .param p2, "item"    # Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 198
    invoke-virtual {p2}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v0

    return v0
.end method

.method public showOverflowMenu()Z
    .registers 8

    .line 301
    iget-boolean v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v0, :cond_46

    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuPresenter;->isOverflowMenuShowing()Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v0, :cond_46

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    if-eqz v0, :cond_46

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    if-nez v0, :cond_46

    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    .line 303
    new-instance v0, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;

    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget-object v5, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    const/4 v6, 0x1

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 304
    .local v0, "popup":Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;
    new-instance v1, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-direct {v1, p0, v0}, Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;)V

    iput-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    .line 306
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mPostedOpenRunnable:Landroid/support/v7/widget/ActionMenuPresenter$OpenOverflowRunnable;

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 310
    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z

    .line 312
    const/4 v1, 0x1

    return v1

    .line 314
    .end local v0    # "popup":Landroid/support/v7/widget/ActionMenuPresenter$OverflowPopup;
    :cond_46
    const/4 v0, 0x0

    return v0
.end method

.method public updateMenuView(Z)V
    .registers 9
    .param p1, "cleared"    # Z

    .line 203
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 204
    .local v0, "menuViewParent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_f

    .line 205
    invoke-static {v0}, Landroid/support/v7/internal/transition/ActionBarTransition;->beginDelayedTransition(Landroid/view/ViewGroup;)V

    .line 207
    :cond_f
    invoke-super {p0, p1}, Landroid/support/v7/internal/view/menu/BaseMenuPresenter;->updateMenuView(Z)V

    .line 209
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestLayout()V

    .line 211
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_3c

    .line 212
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getActionItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 213
    .local v1, "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 214
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_28
    if-ge v3, v2, :cond_3c

    .line 215
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->getSupportActionProvider()Landroid/support/v4/view/ActionProvider;

    move-result-object v4

    .line 216
    .local v4, "provider":Landroid/support/v4/view/ActionProvider;
    if-eqz v4, :cond_39

    .line 217
    invoke-virtual {v4, p0}, Landroid/support/v4/view/ActionProvider;->setSubUiVisibilityListener(Landroid/support/v4/view/ActionProvider$SubUiVisibilityListener;)V

    .line 214
    .end local v4    # "provider":Landroid/support/v4/view/ActionProvider;
    :cond_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_28

    .line 222
    .end local v1    # "actionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_3c
    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    if-eqz v1, :cond_47

    iget-object v1, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_48

    :cond_47
    const/4 v1, 0x0

    .line 225
    .local v1, "nonActionItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/internal/view/menu/MenuItemImpl;>;"
    :goto_48
    const/4 v2, 0x0

    .line 226
    .local v2, "hasOverflow":Z
    iget-boolean v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    if-eqz v3, :cond_68

    if-eqz v1, :cond_68

    .line 227
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 228
    .local v3, "count":I
    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_64

    .line 229
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    invoke-virtual {v4}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionViewExpanded()Z

    move-result v4

    xor-int/2addr v4, v5

    move v2, v4

    goto :goto_68

    .line 231
    :cond_64
    if-lez v3, :cond_67

    const/4 v4, 0x1

    :cond_67
    move v2, v4

    .line 235
    .end local v3    # "count":I
    :cond_68
    :goto_68
    if-eqz v2, :cond_98

    .line 236
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-nez v3, :cond_77

    .line 237
    new-instance v3, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;

    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, p0, v4}, Landroid/support/v7/widget/ActionMenuPresenter$OverflowMenuButton;-><init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;)V

    iput-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    .line 239
    :cond_77
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 240
    .local v3, "parent":Landroid/view/ViewGroup;
    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    if-eq v3, v4, :cond_ae

    .line 241
    if-eqz v3, :cond_8a

    .line 242
    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 244
    :cond_8a
    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v4, Landroid/support/v7/widget/ActionMenuView;

    .line 245
    .local v4, "menuView":Landroid/support/v7/widget/ActionMenuView;
    iget-object v5, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v4}, Landroid/support/v7/widget/ActionMenuView;->generateOverflowButtonLayoutParams()Landroid/support/v7/widget/ActionMenuView$LayoutParams;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/support/v7/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_ae

    .line 247
    .end local v3    # "parent":Landroid/view/ViewGroup;
    .end local v4    # "menuView":Landroid/support/v7/widget/ActionMenuView;
    :cond_98
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    if-eqz v3, :cond_ae

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    if-ne v3, v4, :cond_ae

    .line 248
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v3, Landroid/view/ViewGroup;

    iget-object v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_af

    .line 247
    :cond_ae
    :goto_ae
    nop

    .line 251
    :goto_af
    iget-object v3, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;

    check-cast v3, Landroid/support/v7/widget/ActionMenuView;

    iget-boolean v4, p0, Landroid/support/v7/widget/ActionMenuPresenter;->mReserveOverflow:Z

    invoke-virtual {v3, v4}, Landroid/support/v7/widget/ActionMenuView;->setOverflowReserved(Z)V

    .line 252
    return-void
.end method
