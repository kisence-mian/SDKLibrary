.class final Lcom/anythink/hb/HeaderBiddingTransaction$2;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/hb/HeaderBiddingTransaction;->a(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/hb/HeaderBiddingTransaction;


# direct methods
.method constructor <init>(Lcom/anythink/hb/HeaderBiddingTransaction;)V
    .registers 2

    .prologue
    .line 115
    iput-object p1, p0, Lcom/anythink/hb/HeaderBiddingTransaction$2;->a:Lcom/anythink/hb/HeaderBiddingTransaction;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .prologue
    .line 118
    monitor-enter p0

    .line 119
    :try_start_1
    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction$2;->a:Lcom/anythink/hb/HeaderBiddingTransaction;

    invoke-static {v0}, Lcom/anythink/hb/HeaderBiddingTransaction;->b(Lcom/anythink/hb/HeaderBiddingTransaction;)Z

    move-result v0

    if-nez v0, :cond_65

    .line 120
    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction$2;->a:Lcom/anythink/hb/HeaderBiddingTransaction;

    invoke-static {v0}, Lcom/anythink/hb/HeaderBiddingTransaction;->c(Lcom/anythink/hb/HeaderBiddingTransaction;)Z

    .line 122
    invoke-static {}, Lcom/anythink/hb/HeaderBiddingTransaction;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " transId ="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/anythink/hb/HeaderBiddingTransaction$2;->a:Lcom/anythink/hb/HeaderBiddingTransaction;

    invoke-static {v2}, Lcom/anythink/hb/HeaderBiddingTransaction;->d(Lcom/anythink/hb/HeaderBiddingTransaction;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " --> time out, return auction result!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/hb/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/anythink/hb/HeaderBiddingTransaction;->a()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "threadName="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " threadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/hb/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/anythink/hb/HeaderBiddingTransaction$2;->a:Lcom/anythink/hb/HeaderBiddingTransaction;

    invoke-static {v0}, Lcom/anythink/hb/HeaderBiddingTransaction;->e(Lcom/anythink/hb/HeaderBiddingTransaction;)V

    .line 126
    :cond_65
    monitor-exit p0

    return-void

    :catchall_67
    move-exception v0

    monitor-exit p0
    :try_end_69
    .catchall {:try_start_1 .. :try_end_69} :catchall_67

    throw v0
.end method
