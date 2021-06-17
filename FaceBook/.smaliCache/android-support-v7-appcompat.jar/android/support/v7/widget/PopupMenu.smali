.class public Landroid/support/v7/widget/PopupMenu;
.super Ljava/lang/Object;
.source "PopupMenu.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;
.implements Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;,
        Landroid/support/v7/widget/PopupMenu$OnDismissListener;
    }
.end annotation


# instance fields
.field private mAnchor:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDismissListener:Landroid/support/v7/widget/PopupMenu$OnDismissListener;

.field private mDragListener:Landroid/view/View$OnTouchListener;

.field private mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

.field private mMenuItemClickListener:Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;

.field private mPopup:Landroid/support/v7/internal/view/menu/MenuPopupHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchor"    # Landroid/view/View;

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;I)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "gravity"    # I

    .line 85
    sget v4, Landroid/support/v7/appcompat/R$attr;->popupMenuStyle:I

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;III)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;III)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "anchor"    # Landroid/view/View;
    .param p3, "gravity"    # I
    .param p4, "popupStyleAttr"    # I
    .param p5, "popupStyleRes"    # I

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Landroid/support/v7/widget/PopupMenu;->mContext:Landroid/content/Context;

    .line 108
    new-instance v0, Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/widget/PopupMenu;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 109
    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/MenuBuilder;->setCallback(Landroid/support/v7/internal/view/menu/MenuBuilder$Callback;)V

    .line 110
    iput-object p2, p0, Landroid/support/v7/widget/PopupMenu;->mAnchor:Landroid/view/View;

    .line 111
    new-instance v0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;

    iget-object v3, p0, Landroid/support/v7/widget/PopupMenu;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    const/4 v5, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v4, p2

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    iput-object v0, p0, Landroid/support/v7/widget/PopupMenu;->mPopup:Landroid/support/v7/internal/view/menu/MenuPopupHelper;

    .line 112
    invoke-virtual {v0, p3}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->setGravity(I)V

    .line 113
    iget-object v0, p0, Landroid/support/v7/widget/PopupMenu;->mPopup:Landroid/support/v7/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->setCallback(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V

    .line 114
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/widget/PopupMenu;)Landroid/support/v7/internal/view/menu/MenuPopupHelper;
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/widget/PopupMenu;

    .line 41
    iget-object v0, p0, Landroid/support/v7/widget/PopupMenu;->mPopup:Landroid/support/v7/internal/view/menu/MenuPopupHelper;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .registers 2

    .line 201
    iget-object v0, p0, Landroid/support/v7/widget/PopupMenu;->mPopup:Landroid/support/v7/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->dismiss()V

    .line 202
    return-void
.end method

.method public getDragToOpenListener()Landroid/view/View$OnTouchListener;
    .registers 3

    .line 133
    iget-object v0, p0, Landroid/support/v7/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_d

    .line 134
    new-instance v0, Landroid/support/v7/widget/PopupMenu$1;

    iget-object v1, p0, Landroid/support/v7/widget/PopupMenu;->mAnchor:Landroid/view/View;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/PopupMenu$1;-><init>(Landroid/support/v7/widget/PopupMenu;Landroid/view/View;)V

    iput-object v0, p0, Landroid/support/v7/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    .line 155
    :cond_d
    iget-object v0, p0, Landroid/support/v7/widget/PopupMenu;->mDragListener:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .registers 2

    .line 166
    iget-object v0, p0, Landroid/support/v7/widget/PopupMenu;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .registers 3

    .line 176
    new-instance v0, Landroid/support/v7/internal/view/SupportMenuInflater;

    iget-object v1, p0, Landroid/support/v7/widget/PopupMenu;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/internal/view/SupportMenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public inflate(I)V
    .registers 4
    .param p1, "menuRes"    # I

    .line 185
    invoke-virtual {p0}, Landroid/support/v7/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/PopupMenu;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 186
    return-void
.end method

.method public onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .registers 4
    .param p1, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 236
    iget-object v0, p0, Landroid/support/v7/widget/PopupMenu;->mDismissListener:Landroid/support/v7/widget/PopupMenu$OnDismissListener;

    if-eqz v0, :cond_7

    .line 237
    invoke-interface {v0, p0}, Landroid/support/v7/widget/PopupMenu$OnDismissListener;->onDismiss(Landroid/support/v7/widget/PopupMenu;)V

    .line 239
    :cond_7
    return-void
.end method

.method public onCloseSubMenu(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)V
    .registers 2
    .param p1, "menu"    # Landroid/support/v7/internal/view/menu/SubMenuBuilder;

    .line 260
    return-void
.end method

.method public onMenuItemSelected(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/MenuItem;)Z
    .registers 4
    .param p1, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/view/MenuItem;

    .line 226
    iget-object v0, p0, Landroid/support/v7/widget/PopupMenu;->mMenuItemClickListener:Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;

    if-eqz v0, :cond_9

    .line 227
    invoke-interface {v0, p2}, Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;->onMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 229
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuModeChange(Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .registers 2
    .param p1, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 266
    return-void
.end method

.method public onOpenSubMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;)Z
    .registers 6
    .param p1, "subMenu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 245
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return v0

    .line 247
    :cond_4
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_c

    .line 248
    return v1

    .line 252
    :cond_c
    new-instance v0, Landroid/support/v7/internal/view/menu/MenuPopupHelper;

    iget-object v2, p0, Landroid/support/v7/widget/PopupMenu;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/support/v7/widget/PopupMenu;->mAnchor:Landroid/view/View;

    invoke-direct {v0, v2, p1, v3}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->show()V

    .line 253
    return v1
.end method

.method public setOnDismissListener(Landroid/support/v7/widget/PopupMenu$OnDismissListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/support/v7/widget/PopupMenu$OnDismissListener;

    .line 219
    iput-object p1, p0, Landroid/support/v7/widget/PopupMenu;->mDismissListener:Landroid/support/v7/widget/PopupMenu$OnDismissListener;

    .line 220
    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V
    .registers 2
    .param p1, "listener"    # Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;

    .line 210
    iput-object p1, p0, Landroid/support/v7/widget/PopupMenu;->mMenuItemClickListener:Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;

    .line 211
    return-void
.end method

.method public show()V
    .registers 2

    .line 193
    iget-object v0, p0, Landroid/support/v7/widget/PopupMenu;->mPopup:Landroid/support/v7/internal/view/menu/MenuPopupHelper;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/MenuPopupHelper;->show()V

    .line 194
    return-void
.end method
