.class public final Lcom/mintegral/msdk/videocommon/download/e;
.super Ljava/lang/Object;
.source "DownLoadUtils.java"


# direct methods
.method public static a(Ljava/lang/String;Lcom/mintegral/msdk/videocommon/download/g$b;)V
    .registers 4

    .prologue
    .line 32
    :try_start_0
    invoke-static {p0}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 34
    :cond_c
    const-string v0, "url is error"

    invoke-interface {p1, v0}, Lcom/mintegral/msdk/videocommon/download/g$b;->a(Ljava/lang/String;)V

    .line 153
    :cond_11
    :goto_11
    return-void

    .line 1021
    :cond_12
    sget-object v0, Lcom/mintegral/msdk/videocommon/download/f$a;->a:Lcom/mintegral/msdk/videocommon/download/f;

    .line 38
    new-instance v1, Lcom/mintegral/msdk/videocommon/download/e$1;

    invoke-direct {v1, p1, p0}, Lcom/mintegral/msdk/videocommon/download/e$1;-><init>(Lcom/mintegral/msdk/videocommon/download/g$b;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/videocommon/download/f;->a(Lcom/mintegral/msdk/base/common/f/a;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_11

    .line 147
    :catch_1d
    move-exception v0

    .line 148
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_11

    .line 149
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_11
.end method
