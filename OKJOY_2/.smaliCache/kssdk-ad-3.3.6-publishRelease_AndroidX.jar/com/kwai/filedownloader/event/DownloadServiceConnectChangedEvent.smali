.class public Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent;
.super Lcom/kwai/filedownloader/event/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;
    }
.end annotation


# instance fields
.field private final c:Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "event.service.connect.changed"

    invoke-direct {p0, v0}, Lcom/kwai/filedownloader/event/b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent;->c:Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    iput-object p2, p0, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent;->d:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a()Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent;->c:Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    return-object v0
.end method
