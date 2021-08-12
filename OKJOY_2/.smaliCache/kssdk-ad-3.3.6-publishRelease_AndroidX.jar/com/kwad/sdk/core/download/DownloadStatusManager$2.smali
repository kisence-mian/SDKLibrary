.class final Lcom/kwad/sdk/core/download/DownloadStatusManager$2;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/download/DownloadStatusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    invoke-static {}, Lcom/kwad/sdk/core/download/DownloadStatusManager;->a()Lcom/kwad/sdk/core/download/DownloadStatusManager;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/download/DownloadStatusManager;->b(Lcom/kwad/sdk/core/download/DownloadStatusManager;Landroid/content/Intent;)V

    return-void
.end method
