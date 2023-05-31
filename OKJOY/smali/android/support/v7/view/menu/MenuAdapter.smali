.class public Landroid/support/v7/view/menu/MenuAdapter;
.super Landroid/widget/BaseAdapter;
.source "MenuAdapter.java"


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

.field private mExpandedIndex:I

.field private mForceShowIcon:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItemLayoutRes:I

.field private final mOverflowOnly:Z


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/MenuBuilder;Landroid/view/LayoutInflater;ZI)V
    .registers 6
    .param p1, "menu"    # Landroid/support/v7/view/menu/MenuBuilder;
    .param p2, "inflater"    # Landroid/view/LayoutInflater;
    .param p3, "overflowOnly"    # Z
    .param p4, "itemLayoutRes"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/view/menu/MenuAdapter;->mExpandedIndex:I

    .line 45
    iput-boolean p3, p0, Landroid/support/v7/view/menu/MenuAdapter;->mOverflowOnly:Z

    .line 46
    iput-object p2, p0, Landroid/support/v7/view/menu/MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 47
    iput-object p1, p0, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 48
    iput p4, p0, Landroid/support/v7/view/menu/MenuAdapter;->mItemLayoutRes:I

    .line 49
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuAdapter;->findExpandedIndex()V

    .line 50
    return-void
.end method


# virtual methods
.method findExpandedIndex()V
    .registers 7

    .prologue
    .line 114
    iget-object v5, p0, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v5}, Landroid/support/v7/view/menu/MenuBuilder;->getExpandedItem()Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v1

    .line 115
    .local v1, "expandedItem":Landroid/support/v7/view/menu/MenuItemImpl;
    if-eqz v1, :cond_23

    .line 116
    iget-object v5, p0, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v5}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v4

    .line 117
    .local v4, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 118
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_13
    if-ge v2, v0, :cond_23

    .line 119
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/view/menu/MenuItemImpl;

    .line 120
    .local v3, "item":Landroid/support/v7/view/menu/MenuItemImpl;
    if-ne v3, v1, :cond_20

    .line 121
    iput v2, p0, Landroid/support/v7/view/menu/MenuAdapter;->mExpandedIndex:I

    .line 127
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    :goto_1f
    return-void

    .line 118
    .restart local v0    # "count":I
    .restart local v2    # "i":I
    .restart local v3    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    .restart local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    :cond_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 126
    .end local v0    # "count":I
    .end local v2    # "i":I
    .end local v3    # "item":Landroid/support/v7/view/menu/MenuItemImpl;
    .end local v4    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    :cond_23
    const/4 v5, -0x1

    iput v5, p0, Landroid/support/v7/view/menu/MenuAdapter;->mExpandedIndex:I

    goto :goto_1f
.end method

.method public getAdapterMenu()Landroid/support/v7/view/menu/MenuBuilder;
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    return-object v0
.end method

.method public getCount()I
    .registers 3

    .prologue
    .line 62
    iget-boolean v1, p0, Landroid/support/v7/view/menu/MenuAdapter;->mOverflowOnly:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 63
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 64
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    :goto_a
    iget v1, p0, Landroid/support/v7/view/menu/MenuAdapter;->mExpandedIndex:I

    if-gez v1, :cond_1a

    .line 65
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 67
    :goto_12
    return v1

    .line 63
    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    :cond_13
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_a

    .line 67
    .restart local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    :cond_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    goto :goto_12
.end method

.method public getForceShowIcon()Z
    .registers 2

    .prologue
    .line 53
    iget-boolean v0, p0, Landroid/support/v7/view/menu/MenuAdapter;->mForceShowIcon:Z

    return v0
.end method

.method public getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 76
    iget-boolean v1, p0, Landroid/support/v7/view/menu/MenuAdapter;->mOverflowOnly:Z

    if-eqz v1, :cond_1b

    iget-object v1, p0, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 77
    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->getNonActionItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 78
    .local v0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    :goto_a
    iget v1, p0, Landroid/support/v7/view/menu/MenuAdapter;->mExpandedIndex:I

    if-ltz v1, :cond_14

    iget v1, p0, Landroid/support/v7/view/menu/MenuAdapter;->mExpandedIndex:I

    if-lt p1, v1, :cond_14

    .line 79
    add-int/lit8 p1, p1, 0x1

    .line 81
    :cond_14
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/view/menu/MenuItemImpl;

    return-object v1

    .line 77
    .end local v0    # "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v7/view/menu/MenuItemImpl;>;"
    :cond_1b
    iget-object v1, p0, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    invoke-virtual {v1}, Landroid/support/v7/view/menu/MenuBuilder;->getVisibleItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_a
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuAdapter;->getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 88
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 93
    if-nez p2, :cond_c

    .line 94
    iget-object v3, p0, Landroid/support/v7/view/menu/MenuAdapter;->mInflater:Landroid/view/LayoutInflater;

    iget v4, p0, Landroid/support/v7/view/menu/MenuAdapter;->mItemLayoutRes:I

    invoke-virtual {v3, v4, p3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 97
    :cond_c
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuAdapter;->getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v0

    .line 98
    .local v0, "currGroupId":I
    add-int/lit8 v3, p1, -0x1

    if-ltz v3, :cond_48

    add-int/lit8 v3, p1, -0x1

    .line 99
    invoke-virtual {p0, v3}, Landroid/support/v7/view/menu/MenuAdapter;->getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v7/view/menu/MenuItemImpl;->getGroupId()I

    move-result v2

    .local v2, "prevGroupId":I
    :goto_22
    move-object v3, p2

    .line 101
    check-cast v3, Landroid/support/v7/view/menu/ListMenuItemView;

    iget-object v4, p0, Landroid/support/v7/view/menu/MenuAdapter;->mAdapterMenu:Landroid/support/v7/view/menu/MenuBuilder;

    .line 102
    invoke-virtual {v4}, Landroid/support/v7/view/menu/MenuBuilder;->isGroupDividerEnabled()Z

    move-result v4

    if-eqz v4, :cond_4a

    if-eq v0, v2, :cond_4a

    move v4, v5

    :goto_30
    invoke-virtual {v3, v4}, Landroid/support/v7/view/menu/ListMenuItemView;->setGroupDividerEnabled(Z)V

    move-object v1, p2

    .line 105
    check-cast v1, Landroid/support/v7/view/menu/MenuView$ItemView;

    .line 106
    .local v1, "itemView":Landroid/support/v7/view/menu/MenuView$ItemView;
    iget-boolean v3, p0, Landroid/support/v7/view/menu/MenuAdapter;->mForceShowIcon:Z

    if-eqz v3, :cond_40

    move-object v3, p2

    .line 107
    check-cast v3, Landroid/support/v7/view/menu/ListMenuItemView;

    invoke-virtual {v3, v5}, Landroid/support/v7/view/menu/ListMenuItemView;->setForceShowIcon(Z)V

    .line 109
    :cond_40
    invoke-virtual {p0, p1}, Landroid/support/v7/view/menu/MenuAdapter;->getItem(I)Landroid/support/v7/view/menu/MenuItemImpl;

    move-result-object v3

    invoke-interface {v1, v3, v6}, Landroid/support/v7/view/menu/MenuView$ItemView;->initialize(Landroid/support/v7/view/menu/MenuItemImpl;I)V

    .line 110
    return-object p2

    .end local v1    # "itemView":Landroid/support/v7/view/menu/MenuView$ItemView;
    .end local v2    # "prevGroupId":I
    :cond_48
    move v2, v0

    .line 99
    goto :goto_22

    .restart local v2    # "prevGroupId":I
    :cond_4a
    move v4, v6

    .line 102
    goto :goto_30
.end method

.method public notifyDataSetChanged()V
    .registers 1

    .prologue
    .line 131
    invoke-virtual {p0}, Landroid/support/v7/view/menu/MenuAdapter;->findExpandedIndex()V

    .line 132
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 133
    return-void
.end method

.method public setForceShowIcon(Z)V
    .registers 2
    .param p1, "forceShow"    # Z

    .prologue
    .line 57
    iput-boolean p1, p0, Landroid/support/v7/view/menu/MenuAdapter;->mForceShowIcon:Z

    .line 58
    return-void
.end method
