.class public Lcom/tds/common/log/LogHandlerThread;
.super Landroid/os/HandlerThread;
.source "LogHandlerThread.java"


# instance fields
.field private sHandler:Lcom/tds/common/log/LogHandler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 13
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 14
    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .registers 3

    .line 18
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 19
    new-instance v0, Lcom/tds/common/log/LogHandler;

    invoke-virtual {p0}, Lcom/tds/common/log/LogHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tds/common/log/LogHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tds/common/log/LogHandlerThread;->sHandler:Lcom/tds/common/log/LogHandler;

    .line 20
    return-void
.end method

.method write(Lcom/tds/common/log/entities/LogConfig;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "logConfig"    # Lcom/tds/common/log/entities/LogConfig;
    .param p2, "logMessage"    # Ljava/lang/String;
    .param p3, "customTag"    # Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/tds/common/log/LogHandlerThread;->sHandler:Lcom/tds/common/log/LogHandler;

    if-nez v0, :cond_5

    return-void

    .line 24
    :cond_5
    invoke-virtual {v0, p1, p2, p3}, Lcom/tds/common/log/LogHandler;->sendLogMessage(Lcom/tds/common/log/entities/LogConfig;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method
