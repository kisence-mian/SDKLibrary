.class Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;
.super Ljava/lang/Object;
.source "TTBaseVideoActivity.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/downloadnew/core/a;Lcom/bytedance/sdk/openadsdk/core/x;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/x;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Lcom/bytedance/sdk/openadsdk/core/x;)V
    .registers 3

    .line 1825
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->a:Lcom/bytedance/sdk/openadsdk/core/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 1839
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    .line 1840
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->g(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)J

    move-result-wide v0

    sub-long/2addr p5, v0

    .line 1841
    sget v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->u:I

    int-to-long v0, v0

    cmp-long p5, p5, v0

    if-lez p5, :cond_25

    .line 1842
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->a:Lcom/bytedance/sdk/openadsdk/core/x;

    const/4 v6, 0x3

    move-wide v2, p3

    move-wide v4, p1

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Lcom/bytedance/sdk/openadsdk/core/x;JJI)V

    .line 1843
    iget-object p5, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p5, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->b(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;J)J

    .line 1845
    :cond_25
    const-wide/16 p5, 0x0

    cmp-long p5, p1, p5

    if-lez p5, :cond_4e

    .line 1846
    const-wide/16 p5, 0x64

    mul-long/2addr p3, p5

    div-long/2addr p3, p1

    long-to-int p1, p3

    .line 1847
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "\u5df2\u4e0b\u8f7d"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "%"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c(Ljava/lang/String;)V

    .line 1849
    :cond_4e
    return-void
.end method

.method public onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 1864
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    .line 1865
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->i(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)J

    move-result-wide v0

    sub-long/2addr p5, v0

    .line 1866
    sget v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->u:I

    int-to-long v0, v0

    cmp-long p5, p5, v0

    if-lez p5, :cond_25

    .line 1867
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->a:Lcom/bytedance/sdk/openadsdk/core/x;

    const/4 v6, 0x4

    move-wide v2, p3

    move-wide v4, p1

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Lcom/bytedance/sdk/openadsdk/core/x;JJI)V

    .line 1868
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->d(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;J)J

    .line 1870
    :cond_25
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    const-string p2, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c(Ljava/lang/String;)V

    .line 1871
    return-void
.end method

.method public onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1875
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 1876
    iget-object p3, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-static {p3}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->j(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)J

    move-result-wide p3

    sub-long/2addr p1, p3

    .line 1877
    sget p3, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->u:I

    int-to-long p3, p3

    cmp-long p1, p1, p3

    if-lez p1, :cond_25

    .line 1878
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->a:Lcom/bytedance/sdk/openadsdk/core/x;

    const/4 p3, 0x5

    const/16 p4, 0x64

    invoke-virtual {p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/core/x;II)V

    .line 1879
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->e(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;J)J

    .line 1881
    :cond_25
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    const-string p2, "\u70b9\u51fb\u5b89\u88c5"

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c(Ljava/lang/String;)V

    .line 1882
    return-void
.end method

.method public onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 14

    .line 1853
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    .line 1854
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->h(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)J

    move-result-wide v0

    sub-long/2addr p5, v0

    .line 1855
    sget v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->u:I

    int-to-long v0, v0

    cmp-long p5, p5, v0

    if-lez p5, :cond_25

    .line 1856
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->a:Lcom/bytedance/sdk/openadsdk/core/x;

    const/4 v6, 0x2

    move-wide v2, p3

    move-wide v4, p1

    invoke-static/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;Lcom/bytedance/sdk/openadsdk/core/x;JJI)V

    .line 1857
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;J)J

    .line 1859
    :cond_25
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    const-string p2, "\u4e0b\u8f7d\u6682\u505c"

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c(Ljava/lang/String;)V

    .line 1860
    return-void
.end method

.method public onIdle()V
    .registers 5

    .line 1828
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1829
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 1830
    sget v2, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->u:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_24

    .line 1831
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->a:Lcom/bytedance/sdk/openadsdk/core/x;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/core/x;II)V

    .line 1832
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;J)J

    .line 1834
    :cond_24
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    const-string v1, "\u70b9\u51fb\u5f00\u59cb\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c(Ljava/lang/String;)V

    .line 1835
    return-void
.end method

.method public onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1886
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 1887
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->k(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;)J

    move-result-wide v0

    sub-long/2addr p1, v0

    .line 1888
    sget v0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/NativeExpressView;->u:I

    int-to-long v0, v0

    cmp-long p1, p1, v0

    if-lez p1, :cond_25

    .line 1889
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->a:Lcom/bytedance/sdk/openadsdk/core/x;

    const/4 v0, 0x6

    const/16 v1, 0x64

    invoke-virtual {p1, p2, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->a(Lcom/bytedance/sdk/openadsdk/core/x;II)V

    .line 1890
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->f(Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;J)J

    .line 1892
    :cond_25
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity$8;->b:Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;

    const-string p2, "\u70b9\u51fb\u6253\u5f00"

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/activity/base/TTBaseVideoActivity;->c(Ljava/lang/String;)V

    .line 1893
    return-void
.end method
