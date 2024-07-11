.class Lcom/bytedance/sdk/openadsdk/d/a$1;
.super Ljava/lang/Object;
.source "JsAppAdDownloadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/d/a;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/d/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/d/a;Ljava/lang/String;)V
    .registers 3

    .line 165
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/a$1;->b:Lcom/bytedance/sdk/openadsdk/d/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/d/a$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 173
    const-wide/16 p5, 0x0

    cmp-long p5, p1, p5

    if-lez p5, :cond_11

    .line 174
    const-wide/16 p5, 0x64

    mul-long/2addr p3, p5

    div-long/2addr p3, p1

    long-to-int p1, p3

    .line 175
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/d/a$1;->a:Ljava/lang/String;

    const/4 p3, 0x3

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/d/a$a;->a(Ljava/lang/String;II)V

    .line 178
    :cond_11
    return-void
.end method

.method public onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 190
    const-wide/16 p5, 0x0

    cmp-long p5, p1, p5

    if-lez p5, :cond_11

    .line 191
    const-wide/16 p5, 0x64

    mul-long/2addr p3, p5

    div-long/2addr p3, p1

    long-to-int p1, p3

    .line 192
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/d/a$1;->a:Ljava/lang/String;

    const/4 p3, 0x4

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/d/a$a;->a(Ljava/lang/String;II)V

    .line 194
    :cond_11
    return-void
.end method

.method public onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 198
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/a$1;->a:Ljava/lang/String;

    const/4 p2, 0x5

    const/16 p3, 0x64

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/d/a$a;->a(Ljava/lang/String;II)V

    .line 199
    return-void
.end method

.method public onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 182
    const-wide/16 p5, 0x0

    cmp-long p5, p1, p5

    if-lez p5, :cond_11

    .line 183
    const-wide/16 p5, 0x64

    mul-long/2addr p3, p5

    div-long/2addr p3, p1

    long-to-int p1, p3

    .line 184
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/d/a$1;->a:Ljava/lang/String;

    const/4 p3, 0x2

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/d/a$a;->a(Ljava/lang/String;II)V

    .line 186
    :cond_11
    return-void
.end method

.method public onIdle()V
    .registers 4

    .line 168
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/d/a$1;->a:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/d/a$a;->a(Ljava/lang/String;II)V

    .line 169
    return-void
.end method

.method public onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 203
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/d/a$1;->a:Ljava/lang/String;

    const/4 p2, 0x6

    const/16 v0, 0x64

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/d/a$a;->a(Ljava/lang/String;II)V

    .line 204
    return-void
.end method
