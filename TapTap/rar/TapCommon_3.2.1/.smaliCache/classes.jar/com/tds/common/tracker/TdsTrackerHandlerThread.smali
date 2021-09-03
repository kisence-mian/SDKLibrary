.class public Lcom/tds/common/tracker/TdsTrackerHandlerThread;
.super Landroid/os/HandlerThread;
.source "TdsTrackerHandlerThread.java"


# instance fields
.field private sHandler:Lcom/tds/common/tracker/TdsTrackerHandler;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 16
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 17
    return-void
.end method


# virtual methods
.method protected onLooperPrepared()V
    .registers 3

    .line 21
    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    .line 22
    new-instance v0, Lcom/tds/common/tracker/TdsTrackerHandler;

    invoke-virtual {p0}, Lcom/tds/common/tracker/TdsTrackerHandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tds/common/tracker/TdsTrackerHandler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tds/common/tracker/TdsTrackerHandlerThread;->sHandler:Lcom/tds/common/tracker/TdsTrackerHandler;

    .line 23
    return-void
.end method

.method write(Lcom/tds/common/tracker/TdsTrackerConfig;Ljava/util/Map;)V
    .registers 4
    .param p1, "tdsTrackerConfig"    # Lcom/tds/common/tracker/TdsTrackerConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tds/common/tracker/TdsTrackerConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 26
    .local p2, "logContentsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/tds/common/tracker/TdsTrackerHandlerThread;->sHandler:Lcom/tds/common/tracker/TdsTrackerHandler;

    if-nez v0, :cond_5

    return-void

    .line 27
    :cond_5
    invoke-virtual {v0, p1, p2}, Lcom/tds/common/tracker/TdsTrackerHandler;->sendTrackMessage(Lcom/tds/common/tracker/TdsTrackerConfig;Ljava/util/Map;)V

    .line 28
    return-void
.end method
