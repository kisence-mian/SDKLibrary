.class Lcom/tds/achievement/ui/ListAdapter$ListEmptyViewHolder;
.super Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/achievement/ui/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListEmptyViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "itemView"    # Landroid/view/View;

    .line 113
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 114
    return-void
.end method


# virtual methods
.method public setData(I)V
    .registers 3
    .param p1, "itemPosition"    # I

    .line 117
    iget-object v0, p0, Lcom/tds/achievement/ui/ListAdapter$ListEmptyViewHolder;->itemView:Landroid/view/View;

    instance-of v0, v0, Lcom/tds/achievement/ui/ListPlaceHolderView;

    if-eqz v0, :cond_d

    .line 118
    iget-object v0, p0, Lcom/tds/achievement/ui/ListAdapter$ListEmptyViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/tds/achievement/ui/ListPlaceHolderView;

    invoke-virtual {v0, p1}, Lcom/tds/achievement/ui/ListPlaceHolderView;->setPosition(I)V

    .line 120
    :cond_d
    return-void
.end method
