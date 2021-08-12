.class public Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;
.super Ljava/lang/Object;
.source "TTNativeExpressAdStub.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;Ljava/lang/String;)V
    .registers 4

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 131
    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;->b:Ljava/lang/String;

    .line 134
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;->a:Ljava/lang/ref/WeakReference;

    .line 135
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;->b:Ljava/lang/String;

    .line 136
    return-void
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;)V
    .registers 3

    .line 138
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;->a:Ljava/lang/ref/WeakReference;

    .line 139
    return-void
.end method

.method public onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 151
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadActive(JJLjava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_1a
    const-wide/16 p5, 0x0

    cmp-long p5, p1, p5

    if-lez p5, :cond_2b

    .line 155
    const-wide/16 p5, 0x64

    mul-long/2addr p3, p5

    div-long/2addr p3, p1

    long-to-int p1, p3

    .line 156
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;->b:Ljava/lang/String;

    const/4 p3, 0x3

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/d/a$a;->a(Ljava/lang/String;II)V

    .line 158
    :cond_2b
    return-void
.end method

.method public onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 173
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadFailed(JJLjava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_1a
    const-wide/16 p5, 0x0

    cmp-long p5, p1, p5

    if-lez p5, :cond_2b

    .line 177
    const-wide/16 p5, 0x64

    mul-long/2addr p3, p5

    div-long/2addr p3, p1

    long-to-int p1, p3

    .line 178
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;->b:Ljava/lang/String;

    const/4 p3, 0x4

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/d/a$a;->a(Ljava/lang/String;II)V

    .line 180
    :cond_2b
    return-void
.end method

.method public onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 184
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 185
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadFinished(JLjava/lang/String;Ljava/lang/String;)V

    .line 187
    :cond_15
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;->b:Ljava/lang/String;

    const/4 p2, 0x5

    const/16 p3, 0x64

    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/d/a$a;->a(Ljava/lang/String;II)V

    .line 188
    return-void
.end method

.method public onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V
    .registers 15

    .line 162
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 163
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onDownloadPaused(JJLjava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_1a
    const-wide/16 p5, 0x0

    cmp-long p5, p1, p5

    if-lez p5, :cond_2b

    .line 166
    const-wide/16 p5, 0x64

    mul-long/2addr p3, p5

    div-long/2addr p3, p1

    long-to-int p1, p3

    .line 167
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;->b:Ljava/lang/String;

    const/4 p3, 0x2

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/d/a$a;->a(Ljava/lang/String;II)V

    .line 169
    :cond_2b
    return-void
.end method

.method public onIdle()V
    .registers 4

    .line 143
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 144
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onIdle()V

    .line 146
    :cond_15
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;->b:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/d/a$a;->a(Ljava/lang/String;II)V

    .line 147
    return-void
.end method

.method public onInstalled(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 192
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 193
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/openadsdk/TTAppDownloadListener;->onInstalled(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :cond_15
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/nativeexpress/l$a;->b:Ljava/lang/String;

    const/4 p2, 0x6

    const/16 v0, 0x64

    invoke-static {p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/d/a$a;->a(Ljava/lang/String;II)V

    .line 196
    return-void
.end method
