.class public Lcom/mintegral/msdk/videocommon/download/NetStateOnReceive;
.super Landroid/content/BroadcastReceiver;
.source "NetStateOnReceive.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .prologue
    const/4 v2, 0x1

    .line 16
    :try_start_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 17
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 19
    const-string v0, "connectivity"

    .line 20
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 21
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 22
    if-eqz v0, :cond_43

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 24
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-ne v1, v2, :cond_30

    .line 26
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/c;->getInstance()Lcom/mintegral/msdk/videocommon/download/c;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/download/c;->b(Z)V

    .line 40
    :cond_2f
    :goto_2f
    return-void

    .line 27
    :cond_30
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    if-nez v0, :cond_2f

    .line 29
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/c;->getInstance()Lcom/mintegral/msdk/videocommon/download/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/videocommon/download/c;->a()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3d} :catch_3e

    goto :goto_2f

    .line 37
    :catch_3e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f

    .line 32
    :cond_43
    :try_start_43
    invoke-static {}, Lcom/mintegral/msdk/videocommon/download/c;->getInstance()Lcom/mintegral/msdk/videocommon/download/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/download/c;->a(Z)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_4b} :catch_3e

    goto :goto_2f
.end method
