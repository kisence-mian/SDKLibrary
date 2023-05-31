.class public final enum Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ConnectStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

.field public static final enum connected:Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

.field public static final enum disconnected:Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

.field public static final enum lost:Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    const-string v1, "connected"

    invoke-direct {v0, v1, v2}, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;->connected:Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    new-instance v0, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    const-string v1, "disconnected"

    invoke-direct {v0, v1, v3}, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;->disconnected:Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    new-instance v0, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    const-string v1, "lost"

    invoke-direct {v0, v1, v4}, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;->lost:Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    sget-object v1, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;->connected:Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;->disconnected:Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;->lost:Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;->$VALUES:[Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;
    .registers 2

    const-class v0, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    return-object v0
.end method

.method public static values()[Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;
    .registers 1

    sget-object v0, Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;->$VALUES:[Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    invoke-virtual {v0}, [Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/kwai/filedownloader/event/DownloadServiceConnectChangedEvent$ConnectStatus;

    return-object v0
.end method
