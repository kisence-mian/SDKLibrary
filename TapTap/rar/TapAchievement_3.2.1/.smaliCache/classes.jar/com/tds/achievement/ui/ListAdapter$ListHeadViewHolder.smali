.class Lcom/tds/achievement/ui/ListAdapter$ListHeadViewHolder;
.super Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/achievement/ui/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListHeadViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "itemView"    # Landroid/view/View;

    .line 101
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 102
    return-void
.end method


# virtual methods
.method public setData(Lcom/tds/achievement/ui/ListItemWrapper;)V
    .registers 6
    .param p1, "bean"    # Lcom/tds/achievement/ui/ListItemWrapper;

    .line 105
    iget-object v0, p0, Lcom/tds/achievement/ui/ListAdapter$ListHeadViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/tds/achievement/ui/ListHeadView;

    iget v1, p1, Lcom/tds/achievement/ui/ListItemWrapper;->reachNum:I

    iget v2, p1, Lcom/tds/achievement/ui/ListItemWrapper;->allNum:I

    iget-boolean v3, p1, Lcom/tds/achievement/ui/ListItemWrapper;->hasReachedRecord:Z

    .line 106
    invoke-virtual {v0, v1, v2, v3}, Lcom/tds/achievement/ui/ListHeadView;->updateText(IIZ)V

    .line 107
    return-void
.end method
