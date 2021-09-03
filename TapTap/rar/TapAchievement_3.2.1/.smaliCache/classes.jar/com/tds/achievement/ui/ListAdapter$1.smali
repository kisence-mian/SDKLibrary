.class Lcom/tds/achievement/ui/ListAdapter$1;
.super Ljava/lang/Object;
.source "ListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/achievement/ui/ListAdapter;->onBindViewHolder(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tds/achievement/ui/ListAdapter;

.field final synthetic val$holder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

.field final synthetic val$source:Lcom/tds/achievement/TapAchievementBean;


# direct methods
.method constructor <init>(Lcom/tds/achievement/ui/ListAdapter;Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;Lcom/tds/achievement/TapAchievementBean;)V
    .registers 4
    .param p1, "this$0"    # Lcom/tds/achievement/ui/ListAdapter;

    .line 63
    iput-object p1, p0, Lcom/tds/achievement/ui/ListAdapter$1;->this$0:Lcom/tds/achievement/ui/ListAdapter;

    iput-object p2, p0, Lcom/tds/achievement/ui/ListAdapter$1;->val$holder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/tds/achievement/ui/ListAdapter$1;->val$source:Lcom/tds/achievement/TapAchievementBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .line 66
    iget-object v0, p0, Lcom/tds/achievement/ui/ListAdapter$1;->this$0:Lcom/tds/achievement/ui/ListAdapter;

    # getter for: Lcom/tds/achievement/ui/ListAdapter;->dialog:Lcom/tds/achievement/ui/DetailDialog;
    invoke-static {v0}, Lcom/tds/achievement/ui/ListAdapter;->access$000(Lcom/tds/achievement/ui/ListAdapter;)Lcom/tds/achievement/ui/DetailDialog;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/tds/achievement/ui/ListAdapter$1;->this$0:Lcom/tds/achievement/ui/ListAdapter;

    # getter for: Lcom/tds/achievement/ui/ListAdapter;->dialog:Lcom/tds/achievement/ui/DetailDialog;
    invoke-static {v0}, Lcom/tds/achievement/ui/ListAdapter;->access$000(Lcom/tds/achievement/ui/ListAdapter;)Lcom/tds/achievement/ui/DetailDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/achievement/ui/DetailDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 67
    return-void

    .line 70
    :cond_15
    iget-object v0, p0, Lcom/tds/achievement/ui/ListAdapter$1;->this$0:Lcom/tds/achievement/ui/ListAdapter;

    new-instance v1, Lcom/tds/achievement/ui/DetailDialog;

    iget-object v2, p0, Lcom/tds/achievement/ui/ListAdapter$1;->val$holder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v2, v2, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 71
    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    iget-object v3, p0, Lcom/tds/achievement/ui/ListAdapter$1;->val$source:Lcom/tds/achievement/TapAchievementBean;

    iget-object v4, p0, Lcom/tds/achievement/ui/ListAdapter$1;->this$0:Lcom/tds/achievement/ui/ListAdapter;

    # getter for: Lcom/tds/achievement/ui/ListAdapter;->status:Landroid/util/Pair;
    invoke-static {v4}, Lcom/tds/achievement/ui/ListAdapter;->access$100(Lcom/tds/achievement/ui/ListAdapter;)Landroid/util/Pair;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/tds/achievement/ui/DetailDialog;-><init>(Landroid/app/Activity;Lcom/tds/achievement/TapAchievementBean;Landroid/util/Pair;)V

    .line 70
    # setter for: Lcom/tds/achievement/ui/ListAdapter;->dialog:Lcom/tds/achievement/ui/DetailDialog;
    invoke-static {v0, v1}, Lcom/tds/achievement/ui/ListAdapter;->access$002(Lcom/tds/achievement/ui/ListAdapter;Lcom/tds/achievement/ui/DetailDialog;)Lcom/tds/achievement/ui/DetailDialog;

    .line 72
    iget-object v0, p0, Lcom/tds/achievement/ui/ListAdapter$1;->this$0:Lcom/tds/achievement/ui/ListAdapter;

    # getter for: Lcom/tds/achievement/ui/ListAdapter;->dialog:Lcom/tds/achievement/ui/DetailDialog;
    invoke-static {v0}, Lcom/tds/achievement/ui/ListAdapter;->access$000(Lcom/tds/achievement/ui/ListAdapter;)Lcom/tds/achievement/ui/DetailDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/achievement/ui/DetailDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/common/utils/NavigationBarUtil;->focusNotAle(Landroid/view/Window;)V

    .line 73
    iget-object v0, p0, Lcom/tds/achievement/ui/ListAdapter$1;->this$0:Lcom/tds/achievement/ui/ListAdapter;

    # getter for: Lcom/tds/achievement/ui/ListAdapter;->dialog:Lcom/tds/achievement/ui/DetailDialog;
    invoke-static {v0}, Lcom/tds/achievement/ui/ListAdapter;->access$000(Lcom/tds/achievement/ui/ListAdapter;)Lcom/tds/achievement/ui/DetailDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/achievement/ui/DetailDialog;->show()V

    .line 74
    iget-object v0, p0, Lcom/tds/achievement/ui/ListAdapter$1;->this$0:Lcom/tds/achievement/ui/ListAdapter;

    # getter for: Lcom/tds/achievement/ui/ListAdapter;->dialog:Lcom/tds/achievement/ui/DetailDialog;
    invoke-static {v0}, Lcom/tds/achievement/ui/ListAdapter;->access$000(Lcom/tds/achievement/ui/ListAdapter;)Lcom/tds/achievement/ui/DetailDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/achievement/ui/DetailDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/common/utils/NavigationBarUtil;->hideNavigationBar(Landroid/view/Window;)V

    .line 75
    iget-object v0, p0, Lcom/tds/achievement/ui/ListAdapter$1;->this$0:Lcom/tds/achievement/ui/ListAdapter;

    # getter for: Lcom/tds/achievement/ui/ListAdapter;->dialog:Lcom/tds/achievement/ui/DetailDialog;
    invoke-static {v0}, Lcom/tds/achievement/ui/ListAdapter;->access$000(Lcom/tds/achievement/ui/ListAdapter;)Lcom/tds/achievement/ui/DetailDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tds/achievement/ui/DetailDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0}, Lcom/tds/common/utils/NavigationBarUtil;->clearFocusNotAle(Landroid/view/Window;)V

    .line 76
    return-void
.end method
