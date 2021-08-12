.class final Lcom/sigmob/wire/okio/AsyncTimeout$Watchdog;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/wire/okio/AsyncTimeout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Watchdog"
.end annotation


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

    :goto_0
    :try_start_0
    invoke-static {}, Lcom/sigmob/wire/okio/AsyncTimeout;->awaitTimeout()Lcom/sigmob/wire/okio/AsyncTimeout;

    move-result-object v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {v0}, Lcom/sigmob/wire/okio/AsyncTimeout;->timedOut()V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_a} :catch_b

    goto :goto_0

    :catch_b
    move-exception v0

    goto :goto_0
.end method
