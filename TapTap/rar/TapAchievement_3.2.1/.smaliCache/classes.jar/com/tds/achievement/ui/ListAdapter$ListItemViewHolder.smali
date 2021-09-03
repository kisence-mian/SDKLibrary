.class Lcom/tds/achievement/ui/ListAdapter$ListItemViewHolder;
.super Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/achievement/ui/ListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ListItemViewHolder"
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 2
    .param p1, "itemView"    # Landroid/view/View;

    .line 126
    invoke-direct {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 127
    return-void
.end method


# virtual methods
.method public setAchievementBean(Lcom/tds/achievement/TapAchievementBean;I)V
    .registers 4
    .param p1, "source"    # Lcom/tds/achievement/TapAchievementBean;
    .param p2, "positionType"    # I

    .line 130
    iget-object v0, p0, Lcom/tds/achievement/ui/ListAdapter$ListItemViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/tds/achievement/ui/ListItemView;

    invoke-virtual {v0, p1, p2}, Lcom/tds/achievement/ui/ListItemView;->setSourceBean(Lcom/tds/achievement/TapAchievementBean;I)V

    .line 131
    return-void
.end method
