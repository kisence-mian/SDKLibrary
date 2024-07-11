.class Lcom/kwad/sdk/api/loader/r;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/content/Context;)V
    .registers 7

    const-string v0, "lastUpdateTime"

    invoke-static {p0, v0}, Lcom/kwad/sdk/api/loader/q;->b(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "interval"

    invoke-static {p0, v2}, Lcom/kwad/sdk/api/loader/q;->b(Landroid/content/Context;Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    cmp-long p0, v0, v2

    if-gez p0, :cond_1d

    return-void

    :cond_1d
    const-string p0, "https://open.e.kuaishou.com/rest/e/v3/open/sdk"

    invoke-static {p0}, Lcom/kwad/sdk/api/loader/k;->a(Ljava/lang/String;)Lcom/kwad/sdk/api/loader/k$f;

    move-result-object p0

    new-instance v0, Lcom/kwad/sdk/api/loader/r$1;

    invoke-direct {v0}, Lcom/kwad/sdk/api/loader/r$1;-><init>()V

    invoke-interface {p0, v0}, Lcom/kwad/sdk/api/loader/k$f;->a(Lcom/kwad/sdk/api/loader/k$c;)V

    return-void
.end method
