.class Ltds/androidx/recyclerview/widget/RecyclerView$1;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ltds/androidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/RecyclerView;)V
    .registers 2
    .param p1, "this$0"    # Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 388
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$1;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 391
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$1;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-boolean v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v0, :cond_2d

    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$1;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_2d

    .line 395
    :cond_f
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$1;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-boolean v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-nez v0, :cond_1b

    .line 396
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$1;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->requestLayout()V

    .line 398
    return-void

    .line 400
    :cond_1b
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$1;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-boolean v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_27

    .line 401
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$1;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    .line 402
    return-void

    .line 404
    :cond_27
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$1;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    .line 405
    return-void

    .line 393
    :cond_2d
    :goto_2d
    return-void
.end method
