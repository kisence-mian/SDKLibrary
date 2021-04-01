.class abstract Landroid/arch/lifecycle/LiveData$ObserverWrapper;
.super Ljava/lang/Object;
.source "LiveData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/LiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ObserverWrapper"
.end annotation


# instance fields
.field mActive:Z

.field mLastVersion:I

.field final mObserver:Landroid/arch/lifecycle/Observer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/lifecycle/Observer",
            "<TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/arch/lifecycle/LiveData;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/Observer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/arch/lifecycle/Observer",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 387
    .local p0, "this":Landroid/arch/lifecycle/LiveData$ObserverWrapper;, "Landroid/arch/lifecycle/LiveData<TT;>.ObserverWrapper;"
    .local p2, "observer":Landroid/arch/lifecycle/Observer;, "Landroid/arch/lifecycle/Observer<TT;>;"
    iput-object p1, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 385
    const/4 v0, -0x1

    iput v0, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->mLastVersion:I

    .line 388
    iput-object p2, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->mObserver:Landroid/arch/lifecycle/Observer;

    .line 389
    return-void
.end method


# virtual methods
.method activeStateChanged(Z)V
    .registers 7
    .param p1, "newActive"    # Z

    .prologue
    .local p0, "this":Landroid/arch/lifecycle/LiveData$ObserverWrapper;, "Landroid/arch/lifecycle/LiveData<TT;>.ObserverWrapper;"
    const/4 v1, 0x1

    .line 401
    iget-boolean v2, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-ne p1, v2, :cond_6

    .line 418
    :cond_5
    :goto_5
    return-void

    .line 406
    :cond_6
    iput-boolean p1, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    .line 407
    iget-object v2, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->this$0:Landroid/arch/lifecycle/LiveData;

    # getter for: Landroid/arch/lifecycle/LiveData;->mActiveCount:I
    invoke-static {v2}, Landroid/arch/lifecycle/LiveData;->access$300(Landroid/arch/lifecycle/LiveData;)I

    move-result v2

    if-nez v2, :cond_45

    move v0, v1

    .line 408
    .local v0, "wasInactive":Z
    :goto_11
    iget-object v2, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->this$0:Landroid/arch/lifecycle/LiveData;

    # getter for: Landroid/arch/lifecycle/LiveData;->mActiveCount:I
    invoke-static {v2}, Landroid/arch/lifecycle/LiveData;->access$300(Landroid/arch/lifecycle/LiveData;)I

    move-result v3

    iget-boolean v4, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-eqz v4, :cond_47

    :goto_1b
    add-int/2addr v1, v3

    # setter for: Landroid/arch/lifecycle/LiveData;->mActiveCount:I
    invoke-static {v2, v1}, Landroid/arch/lifecycle/LiveData;->access$302(Landroid/arch/lifecycle/LiveData;I)I

    .line 409
    if-eqz v0, :cond_2a

    iget-boolean v1, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-eqz v1, :cond_2a

    .line 410
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v1}, Landroid/arch/lifecycle/LiveData;->onActive()V

    .line 412
    :cond_2a
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->this$0:Landroid/arch/lifecycle/LiveData;

    # getter for: Landroid/arch/lifecycle/LiveData;->mActiveCount:I
    invoke-static {v1}, Landroid/arch/lifecycle/LiveData;->access$300(Landroid/arch/lifecycle/LiveData;)I

    move-result v1

    if-nez v1, :cond_3b

    iget-boolean v1, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-nez v1, :cond_3b

    .line 413
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->this$0:Landroid/arch/lifecycle/LiveData;

    invoke-virtual {v1}, Landroid/arch/lifecycle/LiveData;->onInactive()V

    .line 415
    :cond_3b
    iget-boolean v1, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->mActive:Z

    if-eqz v1, :cond_5

    .line 416
    iget-object v1, p0, Landroid/arch/lifecycle/LiveData$ObserverWrapper;->this$0:Landroid/arch/lifecycle/LiveData;

    # invokes: Landroid/arch/lifecycle/LiveData;->dispatchingValue(Landroid/arch/lifecycle/LiveData$ObserverWrapper;)V
    invoke-static {v1, p0}, Landroid/arch/lifecycle/LiveData;->access$400(Landroid/arch/lifecycle/LiveData;Landroid/arch/lifecycle/LiveData$ObserverWrapper;)V

    goto :goto_5

    .line 407
    .end local v0    # "wasInactive":Z
    :cond_45
    const/4 v0, 0x0

    goto :goto_11

    .line 408
    .restart local v0    # "wasInactive":Z
    :cond_47
    const/4 v1, -0x1

    goto :goto_1b
.end method

.method detachObserver()V
    .registers 1

    .prologue
    .line 398
    .local p0, "this":Landroid/arch/lifecycle/LiveData$ObserverWrapper;, "Landroid/arch/lifecycle/LiveData<TT;>.ObserverWrapper;"
    return-void
.end method

.method isAttachedTo(Landroid/arch/lifecycle/LifecycleOwner;)Z
    .registers 3
    .param p1, "owner"    # Landroid/arch/lifecycle/LifecycleOwner;

    .prologue
    .line 394
    .local p0, "this":Landroid/arch/lifecycle/LiveData$ObserverWrapper;, "Landroid/arch/lifecycle/LiveData<TT;>.ObserverWrapper;"
    const/4 v0, 0x0

    return v0
.end method

.method abstract shouldBeActive()Z
.end method
