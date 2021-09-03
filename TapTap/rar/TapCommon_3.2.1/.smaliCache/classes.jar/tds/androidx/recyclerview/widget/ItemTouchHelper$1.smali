.class Ltds/androidx/recyclerview/widget/ItemTouchHelper$1;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/ItemTouchHelper;)V
    .registers 2
    .param p1, "this$0"    # Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    .line 256
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$1;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 259
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$1;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$1;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->scrollIfNecessary()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 260
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$1;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_1b

    .line 261
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$1;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mSelected:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->moveIfNecessary(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 263
    :cond_1b
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$1;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$1;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, v1, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mScrollRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 264
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/ItemTouchHelper$1;->this$0:Ltds/androidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-static {v0, p0}, Ltds/androidx/core/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 266
    :cond_2d
    return-void
.end method
