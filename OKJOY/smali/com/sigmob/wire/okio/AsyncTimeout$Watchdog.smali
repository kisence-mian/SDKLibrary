.class final Lcom/sigmob/wire/okio/AsyncTimeout$Watchdog;
.super Ljava/lang/Thread;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "Okio Watchdog"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sigmob/wire/okio/AsyncTimeout$Watchdog;->setDaemon(Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    :cond_0
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/sigmob/wire/okio/AsyncTimeout;->awaitTimeout()Lcom/sigmob/wire/okio/AsyncTimeout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sigmob/wire/okio/AsyncTimeout;->timedOut()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_0

    :catch_a
    move-exception v0

    goto :goto_0
.end method
