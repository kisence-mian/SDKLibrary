.class public Lcom/mintegral/msdk/mtgdownload/g;
.super Lcom/mintegral/msdk/mtgdownload/b;
.source "MTGDownloadAgent.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 18
    const-string v0, "mtg"

    invoke-direct {p0, p1, v0, p2}, Lcom/mintegral/msdk/mtgdownload/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget-boolean v0, Lcom/mintegral/msdk/MIntegralConstans;->RICH_NOTIFICATION:Z

    if-eqz v0, :cond_1b

    .line 20
    invoke-virtual {p0, v2}, Lcom/mintegral/msdk/mtgdownload/g;->setRichNotification(Z)V

    .line 25
    :goto_e
    sget-boolean v0, Lcom/mintegral/msdk/MIntegralConstans;->SLIENT_DOWNLOAD:Z

    if-eqz v0, :cond_1f

    .line 26
    invoke-virtual {p0, v2}, Lcom/mintegral/msdk/mtgdownload/g;->setSilentDownload(Z)V

    .line 30
    :goto_15
    const-string v0, "com.mintegral.msdk.shell.MTGService"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/mtgdownload/g;->setDownloadClz(Ljava/lang/String;)V

    .line 31
    return-void

    .line 22
    :cond_1b
    invoke-virtual {p0, v1}, Lcom/mintegral/msdk/mtgdownload/g;->setRichNotification(Z)V

    goto :goto_e

    .line 28
    :cond_1f
    invoke-virtual {p0, v1}, Lcom/mintegral/msdk/mtgdownload/g;->setSilentDownload(Z)V

    goto :goto_15
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/mintegral/msdk/mtgdownload/b;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0, p4}, Lcom/mintegral/msdk/mtgdownload/g;->setRichNotification(Z)V

    .line 37
    const-string v0, "com.mintegral.msdk.shell.MTGService"

    invoke-virtual {p0, v0}, Lcom/mintegral/msdk/mtgdownload/g;->setDownloadClz(Ljava/lang/String;)V

    .line 38
    return-void
.end method
