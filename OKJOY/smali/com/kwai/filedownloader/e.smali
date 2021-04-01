.class public abstract Lcom/kwai/filedownloader/e;
.super Lcom/kwai/filedownloader/event/d;
.source ""


# instance fields
.field private a:Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/kwai/filedownloader/event/d;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public a(Lcom/kwai/filedownloader/event/b;)Z
    .registers 4

    instance-of v0, p1, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent;

    if-eqz v0, :cond_15

    check-cast p1, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent;

    invoke-virtual {p1}, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent;->b()Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/kwai/filedownloader/e;->a:Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    iget-object v0, p0, Lcom/kwai/filedownloader/e;->a:Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    sget-object v1, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;->connected:Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    if-ne v0, v1, :cond_17

    invoke-virtual {p0}, Lcom/kwai/filedownloader/e;->a()V

    :cond_15
    :goto_15
    const/4 v0, 0x0

    return v0

    :cond_17
    invoke-virtual {p0}, Lcom/kwai/filedownloader/e;->b()V

    goto :goto_15
.end method

.method public abstract b()V
.end method

.method public c()Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/e;->a:Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    return-object v0
.end method
