.class Landroid/support/v7/internal/widget/SpinnerCompat$DropDownAdapter;
.super Ljava/lang/Object;
.source "SpinnerCompat.java"

# interfaces
.implements Landroid/widget/ListAdapter;
.implements Landroid/widget/SpinnerAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/internal/widget/SpinnerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DropDownAdapter"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/SpinnerAdapter;

.field private mListAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/SpinnerAdapter;)V
    .registers 3
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;

    .line 762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 763
    iput-object p1, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    .line 764
    instance-of v0, p1, Landroid/widget/ListAdapter;

    if-eqz v0, :cond_e

    .line 765
    move-object v0, p1

    check-cast v0, Landroid/widget/ListAdapter;

    iput-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    .line 767
    :cond_e
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 3

    .line 811
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    .line 812
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_9

    .line 813
    invoke-interface {v0}, Landroid/widget/ListAdapter;->areAllItemsEnabled()Z

    move-result v1

    return v1

    .line 815
    :cond_9
    const/4 v1, 0x1

    return v1
.end method

.method public getCount()I
    .registers 2

    .line 770
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v0

    :goto_a
    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 786
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SpinnerAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .line 774
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .line 778
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-nez v0, :cond_7

    const-wide/16 v0, -0x1

    goto :goto_b

    :cond_7
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->getItemId(I)J

    move-result-wide v0

    :goto_b
    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 3
    .param p1, "position"    # I

    .line 833
    const/4 v0, 0x0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .line 782
    invoke-virtual {p0, p1, p2, p3}, Landroid/support/v7/internal/widget/SpinnerCompat$DropDownAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .registers 2

    .line 837
    const/4 v0, 0x1

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .line 791
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->hasStableIds()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 841
    invoke-virtual {p0}, Landroid/support/v7/internal/widget/SpinnerCompat$DropDownAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isEnabled(I)Z
    .registers 4
    .param p1, "position"    # I

    .line 824
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DropDownAdapter;->mListAdapter:Landroid/widget/ListAdapter;

    .line 825
    .local v0, "adapter":Landroid/widget/ListAdapter;
    if-eqz v0, :cond_9

    .line 826
    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v1

    return v1

    .line 828
    :cond_9
    const/4 v1, 0x1

    return v1
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 795
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_7

    .line 796
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 798
    :cond_7
    return-void
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .registers 3
    .param p1, "observer"    # Landroid/database/DataSetObserver;

    .line 801
    iget-object v0, p0, Landroid/support/v7/internal/widget/SpinnerCompat$DropDownAdapter;->mAdapter:Landroid/widget/SpinnerAdapter;

    if-eqz v0, :cond_7

    .line 802
    invoke-interface {v0, p1}, Landroid/widget/SpinnerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 804
    :cond_7
    return-void
.end method
