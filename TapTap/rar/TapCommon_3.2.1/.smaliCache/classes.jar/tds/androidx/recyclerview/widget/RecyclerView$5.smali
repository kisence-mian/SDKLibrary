.class Ltds/androidx/recyclerview/widget/RecyclerView$5;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ltds/androidx/recyclerview/widget/ChildHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ltds/androidx/recyclerview/widget/RecyclerView;->initChildrenHelper()V
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

    .line 860
    iput-object p1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$5;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .line 871
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$5;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1, p2}, Ltds/androidx/recyclerview/widget/RecyclerView;->addView(Landroid/view/View;I)V

    .line 875
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$5;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->dispatchChildAttached(Landroid/view/View;)V

    .line 876
    return-void
.end method

.method public attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 8
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "layoutParams"    # Landroid/view/ViewGroup$LayoutParams;

    .line 931
    invoke-static {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 932
    .local v0, "vh":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_39

    .line 933
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v1

    if-nez v1, :cond_36

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v1

    if-eqz v1, :cond_13

    goto :goto_36

    .line 934
    :cond_13
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Called attach on a child which is not detached: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$5;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 935
    invoke-virtual {v3}, Ltds/androidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 940
    :cond_36
    :goto_36
    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->clearTmpDetachFlag()V

    .line 942
    :cond_39
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$5;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    # invokes: Ltds/androidx/recyclerview/widget/RecyclerView;->attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    invoke-static {v1, p1, p2, p3}, Ltds/androidx/recyclerview/widget/RecyclerView;->access$000(Ltds/androidx/recyclerview/widget/RecyclerView;Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 943
    return-void
.end method

.method public detachViewFromParent(I)V
    .registers 7
    .param p1, "offset"    # I

    .line 947
    invoke-virtual {p0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView$5;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 948
    .local v0, "view":Landroid/view/View;
    if-eqz v0, :cond_41

    .line 949
    invoke-static {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 950
    .local v1, "vh":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v1, :cond_41

    .line 951
    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->isTmpDetached()Z

    move-result v2

    if-eqz v2, :cond_3c

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->shouldIgnore()Z

    move-result v2

    if-eqz v2, :cond_19

    goto :goto_3c

    .line 952
    :cond_19
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "called detach on an already detached child "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Ltds/androidx/recyclerview/widget/RecyclerView$5;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    .line 953
    invoke-virtual {v4}, Ltds/androidx/recyclerview/widget/RecyclerView;->exceptionLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 958
    :cond_3c
    :goto_3c
    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->addFlags(I)V

    .line 961
    .end local v1    # "vh":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    :cond_41
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$5;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    # invokes: Ltds/androidx/recyclerview/widget/RecyclerView;->detachViewFromParent(I)V
    invoke-static {v1, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->access$100(Ltds/androidx/recyclerview/widget/RecyclerView;I)V

    .line 962
    return-void
.end method

.method public getChildAt(I)Landroid/view/View;
    .registers 3
    .param p1, "offset"    # I

    .line 905
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$5;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .registers 2

    .line 863
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$5;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildViewHolder(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 925
    invoke-static {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public indexOfChild(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .line 880
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$5;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public onEnteredHiddenState(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 966
    invoke-static {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 967
    .local v0, "vh":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_b

    .line 968
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$5;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->onEnteredHiddenState(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    .line 970
    :cond_b
    return-void
.end method

.method public onLeftHiddenState(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .line 974
    invoke-static {p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildViewHolderInt(Landroid/view/View;)Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 975
    .local v0, "vh":Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;
    if-eqz v0, :cond_b

    .line 976
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$5;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$ViewHolder;->onLeftHiddenState(Ltds/androidx/recyclerview/widget/RecyclerView;)V

    .line 978
    :cond_b
    return-void
.end method

.method public removeAllViews()V
    .registers 5

    .line 910
    invoke-virtual {p0}, Ltds/androidx/recyclerview/widget/RecyclerView$5;->getChildCount()I

    move-result v0

    .line 911
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_16

    .line 912
    invoke-virtual {p0, v1}, Ltds/androidx/recyclerview/widget/RecyclerView$5;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 913
    .local v2, "child":Landroid/view/View;
    iget-object v3, p0, Ltds/androidx/recyclerview/widget/RecyclerView$5;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Ltds/androidx/recyclerview/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 918
    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 911
    .end local v2    # "child":Landroid/view/View;
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 920
    .end local v1    # "i":I
    :cond_16
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$5;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Ltds/androidx/recyclerview/widget/RecyclerView;->removeAllViews()V

    .line 921
    return-void
.end method

.method public removeViewAt(I)V
    .registers 4
    .param p1, "index"    # I

    .line 885
    iget-object v0, p0, Ltds/androidx/recyclerview/widget/RecyclerView$5;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 886
    .local v0, "child":Landroid/view/View;
    if-eqz v0, :cond_10

    .line 887
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$5;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Ltds/androidx/recyclerview/widget/RecyclerView;->dispatchChildDetached(Landroid/view/View;)V

    .line 892
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 897
    :cond_10
    iget-object v1, p0, Ltds/androidx/recyclerview/widget/RecyclerView$5;->this$0:Ltds/androidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, p1}, Ltds/androidx/recyclerview/widget/RecyclerView;->removeViewAt(I)V

    .line 901
    return-void
.end method
