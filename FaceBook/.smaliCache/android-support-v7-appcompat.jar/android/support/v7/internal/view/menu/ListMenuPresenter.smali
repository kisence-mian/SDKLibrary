.class public Landroid/support/v7/internal/view/menu/ListMenuPresenter;
.super Ljava/lang/Object;
.source "ListMenuPresenter.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/MenuPresenter;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/internal/view/menu/ListMenuPresenter$MenuAdapter;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ListMenuPresenter"

.field public static final VIEWS_TAG:Ljava/lang/String; = "android:menu:list"


# instance fields
.field mAdapter:Landroid/support/v7/internal/view/menu/ListMenuPresenter$MenuAdapter;

.field private mCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

.field mContext:Landroid/content/Context;

.field private mId:I

.field mInflater:Landroid/view/LayoutInflater;

.field private mItemIndexOffset:I

.field mItemLayoutRes:I

.field mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

.field mMenuView:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

.field mThemeRes:I


# direct methods
.method public constructor <init>(II)V
    .registers 3
    .param p1, "itemLayoutRes"    # I
    .param p2, "themeRes"    # I

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput p1, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mItemLayoutRes:I

    .line 79
    iput p2, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "itemLayoutRes"    # I

    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/support/v7/internal/view/menu/ListMenuPresenter;-><init>(II)V

    .line 68
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 69
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 70
    return-void
.end method

.method static synthetic access$000(Landroid/support/v7/internal/view/menu/ListMenuPresenter;)I
    .registers 2
    .param p0, "x0"    # Landroid/support/v7/internal/view/menu/ListMenuPresenter;

    .line 40
    iget v0, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    return v0
.end method


# virtual methods
.method public collapseItemActionView(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .registers 4
    .param p1, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public expandItemActionView(Landroid/support/v7/internal/view/menu/MenuBuilder;Landroid/support/v7/internal/view/menu/MenuItemImpl;)Z
    .registers 4
    .param p1, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;
    .param p2, "item"    # Landroid/support/v7/internal/view/menu/MenuItemImpl;

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public flagActionItems()Z
    .registers 2

    .line 174
    const/4 v0, 0x0

    return v0
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .registers 2

    .line 121
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mAdapter:Landroid/support/v7/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_b

    .line 122
    new-instance v0, Landroid/support/v7/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Landroid/support/v7/internal/view/menu/ListMenuPresenter;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mAdapter:Landroid/support/v7/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 124
    :cond_b
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mAdapter:Landroid/support/v7/internal/view/menu/ListMenuPresenter$MenuAdapter;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 206
    iget v0, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mId:I

    return v0
.end method

.method getItemIndexOffset()I
    .registers 2

    .line 157
    iget v0, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    return v0
.end method

.method public getMenuView(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/MenuView;
    .registers 5
    .param p1, "root"    # Landroid/view/ViewGroup;

    .line 101
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    if-nez v0, :cond_28

    .line 102
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/v7/appcompat/R$layout;->abc_expanded_menu_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    .line 104
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mAdapter:Landroid/support/v7/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-nez v0, :cond_1c

    .line 105
    new-instance v0, Landroid/support/v7/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/ListMenuPresenter$MenuAdapter;-><init>(Landroid/support/v7/internal/view/menu/ListMenuPresenter;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mAdapter:Landroid/support/v7/internal/view/menu/ListMenuPresenter$MenuAdapter;

    .line 107
    :cond_1c
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mAdapter:Landroid/support/v7/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 108
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    :cond_28
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    return-object v0
.end method

.method public initForMenu(Landroid/content/Context;Landroid/support/v7/internal/view/menu/MenuBuilder;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 84
    iget v0, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    if-eqz v0, :cond_14

    .line 85
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mThemeRes:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 86
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    goto :goto_24

    .line 87
    :cond_14
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_24

    .line 88
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mContext:Landroid/content/Context;

    .line 89
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_24

    .line 90
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mInflater:Landroid/view/LayoutInflater;

    .line 93
    :cond_24
    :goto_24
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    .line 94
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mAdapter:Landroid/support/v7/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-eqz v0, :cond_2d

    .line 95
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 97
    :cond_2d
    return-void
.end method

.method public onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V
    .registers 4
    .param p1, "menu"    # Landroid/support/v7/internal/view/menu/MenuBuilder;
    .param p2, "allMenusAreClosing"    # Z

    .line 151
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_7

    .line 152
    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;->onCloseMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;Z)V

    .line 154
    :cond_7
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 169
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mMenu:Landroid/support/v7/internal/view/menu/MenuBuilder;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mAdapter:Landroid/support/v7/internal/view/menu/ListMenuPresenter$MenuAdapter;

    invoke-virtual {v1, p3}, Landroid/support/v7/internal/view/menu/ListMenuPresenter$MenuAdapter;->getItem(I)Landroid/support/v7/internal/view/menu/MenuItemImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/support/v7/internal/view/menu/MenuBuilder;->performItemAction(Landroid/view/MenuItem;Landroid/support/v7/internal/view/menu/MenuPresenter;I)Z

    .line 170
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 222
    move-object v0, p1

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 223
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .registers 2

    .line 211
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    if-nez v0, :cond_6

    .line 212
    const/4 v0, 0x0

    return-object v0

    .line 215
    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 216
    .local v0, "state":Landroid/os/Bundle;
    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->saveHierarchyState(Landroid/os/Bundle;)V

    .line 217
    return-object v0
.end method

.method public onSubMenuSelected(Landroid/support/v7/internal/view/menu/SubMenuBuilder;)Z
    .registers 4
    .param p1, "subMenu"    # Landroid/support/v7/internal/view/menu/SubMenuBuilder;

    .line 139
    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/SubMenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    .line 142
    :cond_8
    new-instance v0, Landroid/support/v7/internal/view/menu/MenuDialogHelper;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/menu/MenuDialogHelper;-><init>(Landroid/support/v7/internal/view/menu/MenuBuilder;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/MenuDialogHelper;->show(Landroid/os/IBinder;)V

    .line 143
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    if-eqz v0, :cond_18

    .line 144
    invoke-interface {v0, p1}, Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;->onOpenSubMenu(Landroid/support/v7/internal/view/menu/MenuBuilder;)Z

    .line 146
    :cond_18
    const/4 v0, 0x1

    return v0
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "inState"    # Landroid/os/Bundle;

    .line 194
    const-string v0, "android:menu:list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    .line 195
    .local v0, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    if-eqz v0, :cond_d

    .line 196
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 198
    :cond_d
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 186
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 187
    .local v0, "viewStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    if-eqz v1, :cond_c

    .line 188
    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 190
    :cond_c
    const-string v1, "android:menu:list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 191
    return-void
.end method

.method public setCallback(Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;)V
    .registers 2
    .param p1, "cb"    # Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    .line 134
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mCallback:Landroid/support/v7/internal/view/menu/MenuPresenter$Callback;

    .line 135
    return-void
.end method

.method public setId(I)V
    .registers 2
    .param p1, "id"    # I

    .line 201
    iput p1, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mId:I

    .line 202
    return-void
.end method

.method public setItemIndexOffset(I)V
    .registers 3
    .param p1, "offset"    # I

    .line 161
    iput p1, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mItemIndexOffset:I

    .line 162
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mMenuView:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    if-eqz v0, :cond_a

    .line 163
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->updateMenuView(Z)V

    .line 165
    :cond_a
    return-void
.end method

.method public updateMenuView(Z)V
    .registers 3
    .param p1, "cleared"    # Z

    .line 129
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/ListMenuPresenter;->mAdapter:Landroid/support/v7/internal/view/menu/ListMenuPresenter$MenuAdapter;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/ListMenuPresenter$MenuAdapter;->notifyDataSetChanged()V

    .line 130
    :cond_7
    return-void
.end method
