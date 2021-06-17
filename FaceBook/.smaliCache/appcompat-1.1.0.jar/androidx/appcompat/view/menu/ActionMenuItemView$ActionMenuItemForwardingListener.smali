.class Landroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;
.super Landroidx/appcompat/widget/ForwardingListener;
.source "ActionMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/view/menu/ActionMenuItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionMenuItemForwardingListener"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/appcompat/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ActionMenuItemView;)V
    .registers 2

    .line 299
    iput-object p1, p0, Landroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Landroidx/appcompat/view/menu/ActionMenuItemView;

    .line 300
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/ForwardingListener;-><init>(Landroid/view/View;)V

    .line 301
    return-void
.end method


# virtual methods
.method public getPopup()Landroidx/appcompat/view/menu/ShowableListMenu;
    .registers 2

    .line 305
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mPopupCallback:Landroidx/appcompat/view/menu/ActionMenuItemView$PopupCallback;

    if-eqz v0, :cond_f

    .line 306
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mPopupCallback:Landroidx/appcompat/view/menu/ActionMenuItemView$PopupCallback;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/ActionMenuItemView$PopupCallback;->getPopup()Landroidx/appcompat/view/menu/ShowableListMenu;

    move-result-object v0

    return-object v0

    .line 308
    :cond_f
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onForwardingStarted()Z
    .registers 4

    .line 314
    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemInvoker:Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    iget-object v0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemInvoker:Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;

    iget-object v2, p0, Landroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->this$0:Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v2, v2, Landroidx/appcompat/view/menu/ActionMenuItemView;->mItemData:Landroidx/appcompat/view/menu/MenuItemImpl;

    invoke-interface {v0, v2}, Landroidx/appcompat/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Landroidx/appcompat/view/menu/MenuItemImpl;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 315
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/ActionMenuItemView$ActionMenuItemForwardingListener;->getPopup()Landroidx/appcompat/view/menu/ShowableListMenu;

    move-result-object v0

    .line 316
    .local v0, "popup":Landroidx/appcompat/view/menu/ShowableListMenu;
    if-eqz v0, :cond_22

    invoke-interface {v0}, Landroidx/appcompat/view/menu/ShowableListMenu;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v1, 0x1

    :cond_22
    return v1

    .line 318
    .end local v0    # "popup":Landroidx/appcompat/view/menu/ShowableListMenu;
    :cond_23
    return v1
.end method
