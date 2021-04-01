.class public final Lcom/mintegral/msdk/base/utils/n;
.super Ljava/lang/Object;
.source "MapUtils.java"


# direct methods
.method public static a(Lcom/mintegral/msdk/base/common/net/l;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 15
    :try_start_0
    invoke-static {p1}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p2}, Lcom/mintegral/msdk/base/utils/s;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 22
    :cond_c
    :goto_c
    return-void

    .line 18
    :cond_d
    invoke-virtual {p0, p1, p2}, Lcom/mintegral/msdk/base/common/net/l;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_c

    .line 20
    :catch_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method
