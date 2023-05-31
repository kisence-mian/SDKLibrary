.class Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltds/androidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemAnimatorRestoreListener"
.end annotation


# instance fields
.field final synthetic this$0:Ltds/androidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Ltds/androidx/recyclerview/widget/RecyclerView;)V
    .registers 2

    .line 12867
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12868
    return-void
.end method


# virtual methods
.method public onAnimationFinished(Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 5
    .param p1, "item"    # Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 12872
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 12873
    iget-object v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    iget-object v0, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v0, :cond_f

    .line 12874
    iput-object v1, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowedHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 12878
    :cond_f
    iput-object v1, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->mShadowingHolder:Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 12879
    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldBeKeptAsChild()Z

    move-result v0

    if-nez v0, :cond_2f

    .line 12880
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->removeAnimatingView(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2f

    invoke-virtual {p1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 12881
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$ItemAnimatorRestoreListener;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    iget-object v1, p1, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    .line 12884
    :cond_2f
    return-void
.end method
