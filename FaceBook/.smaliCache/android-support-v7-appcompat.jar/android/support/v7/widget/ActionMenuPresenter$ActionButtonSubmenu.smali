.class Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;
.super Landroid/support/v7/internal/view/menu/MenuPopupHelper;
.source "ActionMenuPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/ActionMenuPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionButtonSubmenu"
.end annotation


# instance fields
.field private mSubMenu:Landroid/support/v7/internal/view/menu/SubMenuBuilder;

.field final synthetic this$0:Landroid/support/v7/widget/ActionMenuPresenter;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/content/Context;Landroid/support/v7/internal/view/menu/SubMenuBuilder;)V
    .registers 10
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "subMenu"    # Landroid/support/v7/internal/view/menu/SubMenuBuilder;

    .line 686
    iput-object p1, p0, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    .line 687
    sget v5, Landroid/support/v7/appcompat/R$attr;->actionOverflowMenuStyle:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/View;ZI)V

    .line 689
    iput-object p3, p0, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->mSubMenu:Landroid/support/v7/internal/view/menu/SubMenuBuilder;

    .line 691
    invoke-virtual {p3}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 692
    .local v0, "item":Landroid/support/v7/internal/view/menu/MenuItemImpl;
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v1

    if-nez v1, :cond_2e

    .line 694
    # getter for: Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;
    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->access$500(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_27

    # getter for: Landroid/support/v7/widget/ActionMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/MenuView;
    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->access$600(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/support/v7/internal/view/menu/MenuView;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    goto :goto_2b

    :cond_27
    # getter for: Landroid/support/v7/widget/ActionMenuPresenter;->mOverflowButton:Landroid/view/View;
    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuPresenter;->access$500(Landroid/support/v7/widget/ActionMenuPresenter;)Landroid/view/View;

    move-result-object v1

    :goto_2b
    invoke-virtual {p0, v1}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 697
    :cond_2e
    iget-object p1, p1, Landroid/support/v7/widget/ActionMenuPresenter;->mPopupPresenterCallback:Landroid/support/v7/widget/ActionMenuPresenter$PopupPresenterCallback;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->setCallback(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V

    .line 699
    const/4 p1, 0x0

    .line 700
    .local p1, "preserveIconSpacing":Z
    invoke-virtual {p3}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->size()I

    move-result v1

    .line 701
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_39
    if-ge v2, v1, :cond_50

    .line 702
    invoke-virtual {p3, v2}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 703
    .local v3, "childItem":Landroid/view/MenuItem;
    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_4d

    .line 704
    const/4 p1, 0x1

    .line 705
    goto :goto_50

    .line 701
    .end local v3    # "childItem":Landroid/view/MenuItem;
    :cond_4d
    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 708
    .end local v2    # "i":I
    :cond_50
    :goto_50
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->setForceShowIcon(Z)V

    .line 709
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    .line 713
    invoke-super {p0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 714
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    # setter for: Landroid/support/v7/widget/ActionMenuPresenter;->mActionButtonPopup:Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;
    invoke-static {v0, v1}, Landroid/support/v7/widget/ActionMenuPresenter;->access$702(Landroid/support/v7/widget/ActionMenuPresenter;Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;)Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;

    .line 715
    iget-object v0, p0, Landroid/support/v7/widget/ActionMenuPresenter$ActionButtonSubmenu;->this$0:Landroid/support/v7/widget/ActionMenuPresenter;

    const/4 v1, 0x0

    iput v1, v0, Landroid/support/v7/widget/ActionMenuPresenter;->mOpenSubMenuId:I

    .line 716
    return-void
.end method
