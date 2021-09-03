.class Ltds/androidx/recyclerview/widget/RecyclerView$2;
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

    .line 586
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$2;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 589
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$2;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    if-eqz v0, :cond_d

    .line 590
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$2;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v0, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mItemAnimator:Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator;->runPendingAnimations()V

    .line 592
    :cond_d
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$2;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Ltds/androidx/recyclerview/widget/RecyclerView;->mPostedAnimatorRunner:Z

    .line 593
    return-void
.end method
