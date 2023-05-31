.class Landroid/arch/lifecycle/ComputableLiveData$2;
.super Ljava/lang/Object;
.source "ComputableLiveData.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/ComputableLiveData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/arch/lifecycle/ComputableLiveData;


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/ComputableLiveData;)V
    .registers 2
    .param p1, "this$0"    # Landroid/arch/lifecycle/ComputableLiveData;

    .prologue
    .line 86
    .local p0, "this":Landroid/arch/lifecycle/ComputableLiveData$2;, "Landroid/arch/lifecycle/ComputableLiveData$2;"
    iput-object p1, p0, Landroid/arch/lifecycle/ComputableLiveData$2;->this$0:Landroid/arch/lifecycle/ComputableLiveData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .prologue
    .local p0, "this":Landroid/arch/lifecycle/ComputableLiveData$2;, "Landroid/arch/lifecycle/ComputableLiveData$2;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 92
    :cond_2
    const/4 v0, 0x0

    .line 94
    .local v0, "computed":Z
    iget-object v2, p0, Landroid/arch/lifecycle/ComputableLiveData$2;->this$0:Landroid/arch/lifecycle/ComputableLiveData;

    # getter for: Landroid/arch/lifecycle/ComputableLiveData;->mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Landroid/arch/lifecycle/ComputableLiveData;->access$100(Landroid/arch/lifecycle/ComputableLiveData;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v5, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 97
    const/4 v1, 0x0

    .line 98
    :goto_10
    :try_start_10
    iget-object v2, p0, Landroid/arch/lifecycle/ComputableLiveData$2;->this$0:Landroid/arch/lifecycle/ComputableLiveData;

    # getter for: Landroid/arch/lifecycle/ComputableLiveData;->mInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Landroid/arch/lifecycle/ComputableLiveData;->access$200(Landroid/arch/lifecycle/ComputableLiveData;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 99
    const/4 v0, 0x1

    .line 100
    iget-object v2, p0, Landroid/arch/lifecycle/ComputableLiveData$2;->this$0:Landroid/arch/lifecycle/ComputableLiveData;

    invoke-virtual {v2}, Landroid/arch/lifecycle/ComputableLiveData;->compute()Ljava/lang/Object;

    move-result-object v1

    .local v1, "value":Ljava/lang/Object;, "TT;"
    goto :goto_10

    .line 102
    .end local v1    # "value":Ljava/lang/Object;, "TT;"
    :cond_26
    if-eqz v0, :cond_31

    .line 103
    iget-object v2, p0, Landroid/arch/lifecycle/ComputableLiveData$2;->this$0:Landroid/arch/lifecycle/ComputableLiveData;

    # getter for: Landroid/arch/lifecycle/ComputableLiveData;->mLiveData:Landroid/arch/lifecycle/LiveData;
    invoke-static {v2}, Landroid/arch/lifecycle/ComputableLiveData;->access$300(Landroid/arch/lifecycle/ComputableLiveData;)Landroid/arch/lifecycle/LiveData;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/arch/lifecycle/LiveData;->postValue(Ljava/lang/Object;)V
    :try_end_31
    .catchall {:try_start_10 .. :try_end_31} :catchall_49

    .line 107
    :cond_31
    iget-object v2, p0, Landroid/arch/lifecycle/ComputableLiveData$2;->this$0:Landroid/arch/lifecycle/ComputableLiveData;

    # getter for: Landroid/arch/lifecycle/ComputableLiveData;->mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Landroid/arch/lifecycle/ComputableLiveData;->access$100(Landroid/arch/lifecycle/ComputableLiveData;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 117
    :cond_3a
    if-eqz v0, :cond_48

    iget-object v2, p0, Landroid/arch/lifecycle/ComputableLiveData$2;->this$0:Landroid/arch/lifecycle/ComputableLiveData;

    # getter for: Landroid/arch/lifecycle/ComputableLiveData;->mInvalid:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Landroid/arch/lifecycle/ComputableLiveData;->access$200(Landroid/arch/lifecycle/ComputableLiveData;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_2

    .line 118
    :cond_48
    return-void

    .line 107
    :catchall_49
    move-exception v2

    iget-object v3, p0, Landroid/arch/lifecycle/ComputableLiveData$2;->this$0:Landroid/arch/lifecycle/ComputableLiveData;

    # getter for: Landroid/arch/lifecycle/ComputableLiveData;->mComputing:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v3}, Landroid/arch/lifecycle/ComputableLiveData;->access$100(Landroid/arch/lifecycle/ComputableLiveData;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    throw v2
.end method
