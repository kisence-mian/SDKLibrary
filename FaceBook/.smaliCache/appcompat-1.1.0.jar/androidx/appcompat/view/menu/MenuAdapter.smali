.class public Landroidx/appcompat/view/menu/MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuAdapter.java"


# instance fields
.field mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field private mForceShowIcon:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItemLayoutRes:I

.field private final mOverflowOnly:Z


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/LayoutInflater;ZI)V
    .registers 6
    .param p1, "menu"    # Landroidx/appcompat/view/menu/MenuBuilder;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "overflowOnly"    # Z
    .param p4, "itemLayoutRes"    # I

    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mExpandedIndex:I

    .line 45
    iput-boolean p3, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mOverflowOnly:Z

    .line 46
    iput-object p2, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 47
    iput-object p1, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 48
    iput p4, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mItemLayoutRes:I

    .line 49
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuAdapter;->findExpandedIndex()V

    .line 50
    return-void
.end method


# virtual methods
.method findExpandedIndex()V
    .registers 6

    .line 114
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getExpandedItem()Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v0

    .line 115
    .local v0, "expandedItem":Landroidx/appcompat/view/menu/MenuItemImpl;
    if-eqz v0, :cond_23

    .line 116
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v1

    .line 117
    .local v1, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/appcompat/view/menu/MenuItemImpl;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 118
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    if-ge v3, v2, :cond_23

    .line 119
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/appcompat/view/menu/MenuItemImpl;

    .line 120
    .local v4, "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    if-ne v4, v0, :cond_20

    .line 121
    iput v3, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mExpandedIndex:I

    .line 122
    return-void

    .line 118
    .end local v4    # "item":Landroidx/appcompat/view/menu/MenuItemImpl;
    :cond_20
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 126
    .end local v1    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/appcompat/view/menu/MenuItemImpl;>;"
    .end local v2    # "count":I
    .end local v3    # "i":I
    :cond_23
    const/4 v1, -0x1

    iput v1, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mExpandedIndex:I

    .line 127
    return-void
.end method

.method public getAdapterMenu()Landroidx/appcompat/view/menu/MenuBuilder;
    .registers 2

    .line 71
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getCount()I
    .registers 3

    .line 62
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mOverflowOnly:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 63
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_11

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 64
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/appcompat/view/menu/MenuItemImpl;>;"
    :goto_11
    iget v1, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_1a

    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    return v1

    .line 67
    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method public getForceShowIcon()Z
    .registers 2

    .line 53
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mForceShowIcon:Z

    return v0
.end method

.method public getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;
    .registers 4
    .param p1, "position"    # I

    .line 76
    iget-boolean v0, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mOverflowOnly:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 77
    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_11

    :cond_b
    iget-object v0, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 78
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroidx/appcompat/view/menu/MenuItemImpl;>;"
    :goto_11
    iget v1, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_19

    if-lt p1, v1, :cond_19

    .line 79
    add-int/lit8 p1, p1, 0x1

    .line 81
    :cond_19
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/view/menu/MenuItemImpl;

    return-object v1
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    .line 32
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 88
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 93
    const/4 v0, 0x0

    if-nez p2, :cond_b

    .line 94
    iget-object v1, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v2, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mItemLayoutRes:I

    invoke-virtual {v1, v2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 97
    :cond_b
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v1

    .line 98
    .local v1, "currGroupId":I
    add-int/lit8 v2, p1, -0x1

    if-ltz v2, :cond_22

    add-int/lit8 v2, p1, -0x1

    .line 99
    invoke-virtual {p0, v2}, Landroidx/appcompat/view/menu/MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    goto :goto_23

    :cond_22
    move v2, v1

    .line 101
    .local v2, "prevGroupId":I
    :goto_23
    move-object v3, p2

    check-cast v3, Landroidx/appcompat/view/menu/ListMenuItemView;

    iget-object v4, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mAdapterMenu:Landroidx/appcompat/view/menu/MenuBuilder;

    .line 102
    invoke-virtual {v4}, Landroidx/appcompat/view/menu/MenuBuilder;->isGroupDividerEnabled()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_33

    if-eq v1, v2, :cond_33

    const/4 v4, 0x1

    goto :goto_34

    :cond_33
    const/4 v4, 0x0

    :goto_34
    invoke-virtual {v3, v4}, Landroidx/appcompat/view/menu/ListMenuItemView;->setGroupDividerEnabled(Z)V

    .line 105
    move-object v3, p2

    check-cast v3, Landroidx/appcompat/view/menu/MenuView$ItemView;

    .line 106
    .local v3, "itemView":Landroidx/appcompat/view/menu/MenuView$ItemView;
    iget-boolean v4, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mForceShowIcon:Z

    if-eqz v4, :cond_44

    .line 107
    move-object v4, p2

    check-cast v4, Landroidx/appcompat/view/menu/ListMenuItemView;

    invoke-virtual {v4, v5}, Landroidx/appcompat/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 109
    :cond_44
    invoke-virtual {p0, p1}, Landroidx/appcompat/view/menu/MenuAdapter;->getItem(I)Landroidx/appcompat/view/menu/MenuItemImpl;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Landroidx/appcompat/view/menu/MenuView$ItemView;->initialize(Landroidx/appcompat/view/menu/MenuItemImpl;I)V

    .line 110
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .registers 1

    .line 131
    invoke-virtual {p0}, Landroidx/appcompat/view/menu/MenuAdapter;->findExpandedIndex()V

    .line 132
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 133
    return-void
.end method

.method public setForceShowIcon(Z)V
    .registers 2
    .param p1, "forceShow"    # Z

    .line 57
    iput-boolean p1, p0, Landroidx/appcompat/view/menu/MenuAdapter;->mForceShowIcon:Z

    .line 58
    return-void
.end method
