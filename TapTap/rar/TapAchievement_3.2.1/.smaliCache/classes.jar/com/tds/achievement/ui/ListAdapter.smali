.class Lcom/tds/achievement/ui/ListAdapter;
.super Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;
.source "ListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/achievement/ui/ListAdapter$ListItemViewHolder;,
        Lcom/tds/achievement/ui/ListAdapter$ListEmptyViewHolder;,
        Lcom/tds/achievement/ui/ListAdapter$ListHeadViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ltds/androidx/recyclerview/widget/RecyclerView$Adapter<",
        "Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private beanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tds/achievement/ui/ListItemWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private dialog:Lcom/tds/achievement/ui/DetailDialog;

.field private isLandscape:Z

.field private status:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .registers 3
    .param p1, "isLandscape"    # Z

    .line 22
    invoke-direct {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tds/achievement/ui/ListAdapter;->beanList:Ljava/util/List;

    .line 24
    iput-boolean p1, p0, Lcom/tds/achievement/ui/ListAdapter;->isLandscape:Z

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/tds/achievement/ui/ListAdapter;)Lcom/tds/achievement/ui/DetailDialog;
    .registers 2
    .param p0, "x0"    # Lcom/tds/achievement/ui/ListAdapter;

    .line 15
    iget-object v0, p0, Lcom/tds/achievement/ui/ListAdapter;->dialog:Lcom/tds/achievement/ui/DetailDialog;

    return-object v0
.end method

.method static synthetic access$002(Lcom/tds/achievement/ui/ListAdapter;Lcom/tds/achievement/ui/DetailDialog;)Lcom/tds/achievement/ui/DetailDialog;
    .registers 2
    .param p0, "x0"    # Lcom/tds/achievement/ui/ListAdapter;
    .param p1, "x1"    # Lcom/tds/achievement/ui/DetailDialog;

    .line 15
    iput-object p1, p0, Lcom/tds/achievement/ui/ListAdapter;->dialog:Lcom/tds/achievement/ui/DetailDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/tds/achievement/ui/ListAdapter;)Landroid/util/Pair;
    .registers 2
    .param p0, "x0"    # Lcom/tds/achievement/ui/ListAdapter;

    .line 15
    iget-object v0, p0, Lcom/tds/achievement/ui/ListAdapter;->status:Landroid/util/Pair;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 95
    iget-object v0, p0, Lcom/tds/achievement/ui/ListAdapter;->beanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "position"    # I

    .line 86
    iget-object v0, p0, Lcom/tds/achievement/ui/ListAdapter;->beanList:Ljava/util/List;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt p1, v0, :cond_15

    .line 87
    iget-object v0, p0, Lcom/tds/achievement/ui/ListAdapter;->beanList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/achievement/ui/ListItemWrapper;

    .line 88
    .local v0, "bean":Lcom/tds/achievement/ui/ListItemWrapper;
    iget v1, v0, Lcom/tds/achievement/ui/ListItemWrapper;->itemType:I

    return v1

    .line 90
    .end local v0    # "bean":Lcom/tds/achievement/ui/ListItemWrapper;
    :cond_15
    const/4 v0, 0x0

    return v0
.end method

.method public onBindViewHolder(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 6
    .param p1, "holder"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .line 55
    invoke-virtual {p0, p2}, Lcom/tds/achievement/ui/ListAdapter;->getItemViewType(I)I

    move-result v0

    packed-switch v0, :pswitch_data_4e

    :pswitch_7
    goto :goto_4d

    .line 80
    :pswitch_8
    move-object v0, p1

    check-cast v0, Lcom/tds/achievement/ui/ListAdapter$ListEmptyViewHolder;

    iget-object v1, p0, Lcom/tds/achievement/ui/ListAdapter;->beanList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/achievement/ui/ListItemWrapper;

    iget v1, v1, Lcom/tds/achievement/ui/ListItemWrapper;->itemPosition:I

    invoke-virtual {v0, v1}, Lcom/tds/achievement/ui/ListAdapter$ListEmptyViewHolder;->setData(I)V

    goto :goto_4d

    .line 60
    :pswitch_19
    iget-object v0, p0, Lcom/tds/achievement/ui/ListAdapter;->beanList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/achievement/ui/ListItemWrapper;

    iget-object v0, v0, Lcom/tds/achievement/ui/ListItemWrapper;->achievement:Lcom/tds/achievement/TapAchievementBean;

    .line 61
    .local v0, "source":Lcom/tds/achievement/TapAchievementBean;
    move-object v1, p1

    check-cast v1, Lcom/tds/achievement/ui/ListAdapter$ListItemViewHolder;

    iget-object v2, p0, Lcom/tds/achievement/ui/ListAdapter;->beanList:Ljava/util/List;

    .line 62
    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/achievement/ui/ListItemWrapper;

    iget v2, v2, Lcom/tds/achievement/ui/ListItemWrapper;->itemPosition:I

    .line 61
    invoke-virtual {v1, v0, v2}, Lcom/tds/achievement/ui/ListAdapter$ListItemViewHolder;->setAchievementBean(Lcom/tds/achievement/TapAchievementBean;I)V

    .line 63
    iget-object v1, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/tds/achievement/ui/ListAdapter$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/tds/achievement/ui/ListAdapter$1;-><init>(Lcom/tds/achievement/ui/ListAdapter;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/tds/achievement/TapAchievementBean;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    goto :goto_4d

    .line 57
    .end local v0    # "source":Lcom/tds/achievement/TapAchievementBean;
    :pswitch_3e
    move-object v0, p1

    check-cast v0, Lcom/tds/achievement/ui/ListAdapter$ListHeadViewHolder;

    iget-object v1, p0, Lcom/tds/achievement/ui/ListAdapter;->beanList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/achievement/ui/ListItemWrapper;

    invoke-virtual {v0, v1}, Lcom/tds/achievement/ui/ListAdapter$ListHeadViewHolder;->setData(Lcom/tds/achievement/ui/ListItemWrapper;)V

    .line 58
    nop

    .line 82
    :goto_4d
    return-void

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_3e
        :pswitch_19
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 7
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .line 36
    packed-switch p2, :pswitch_data_4a

    .line 50
    const/4 v0, 0x0

    return-object v0

    .line 47
    :pswitch_5
    new-instance v0, Lcom/tds/achievement/ui/ListAdapter$ListEmptyViewHolder;

    new-instance v1, Lcom/tds/achievement/ui/ListPlaceHolderView;

    .line 48
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/tds/achievement/ui/ListAdapter;->isLandscape:Z

    invoke-direct {v1, v2, v3}, Lcom/tds/achievement/ui/ListPlaceHolderView;-><init>(Landroid/content/Context;Z)V

    invoke-direct {v0, v1}, Lcom/tds/achievement/ui/ListAdapter$ListEmptyViewHolder;-><init>(Landroid/view/View;)V

    .line 47
    return-object v0

    .line 44
    :pswitch_16
    new-instance v0, Lcom/tds/achievement/ui/ListAdapter$ListEmptyViewHolder;

    new-instance v1, Lcom/tds/achievement/ui/ListNotReachView;

    .line 45
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/tds/achievement/ui/ListAdapter;->isLandscape:Z

    invoke-direct {v1, v2, v3}, Lcom/tds/achievement/ui/ListNotReachView;-><init>(Landroid/content/Context;Z)V

    invoke-direct {v0, v1}, Lcom/tds/achievement/ui/ListAdapter$ListEmptyViewHolder;-><init>(Landroid/view/View;)V

    .line 44
    return-object v0

    .line 41
    :pswitch_27
    new-instance v0, Lcom/tds/achievement/ui/ListAdapter$ListItemViewHolder;

    new-instance v1, Lcom/tds/achievement/ui/ListItemView;

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/tds/achievement/ui/ListAdapter;->isLandscape:Z

    invoke-direct {v1, v2, v3}, Lcom/tds/achievement/ui/ListItemView;-><init>(Landroid/content/Context;Z)V

    invoke-direct {v0, v1}, Lcom/tds/achievement/ui/ListAdapter$ListItemViewHolder;-><init>(Landroid/view/View;)V

    .line 41
    return-object v0

    .line 38
    :pswitch_38
    new-instance v0, Lcom/tds/achievement/ui/ListAdapter$ListHeadViewHolder;

    new-instance v1, Lcom/tds/achievement/ui/ListHeadView;

    .line 39
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcom/tds/achievement/ui/ListAdapter;->isLandscape:Z

    invoke-direct {v1, v2, v3}, Lcom/tds/achievement/ui/ListHeadView;-><init>(Landroid/content/Context;Z)V

    invoke-direct {v0, v1}, Lcom/tds/achievement/ui/ListAdapter$ListHeadViewHolder;-><init>(Landroid/view/View;)V

    .line 38
    return-object v0

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_38
        :pswitch_27
        :pswitch_16
        :pswitch_5
    .end packed-switch
.end method

.method public setData(Ljava/util/List;Landroid/util/Pair;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tds/achievement/ui/ListItemWrapper;",
            ">;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 28
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/tds/achievement/ui/ListItemWrapper;>;"
    .local p2, "status":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p2, p0, Lcom/tds/achievement/ui/ListAdapter;->status:Landroid/util/Pair;

    .line 29
    iget-object v0, p0, Lcom/tds/achievement/ui/ListAdapter;->beanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 30
    iget-object v0, p0, Lcom/tds/achievement/ui/ListAdapter;->beanList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    invoke-virtual {p0}, Lcom/tds/achievement/ui/ListAdapter;->notifyDataSetChanged()V

    .line 32
    return-void
.end method
