.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$1;
.super Ljava/lang/Object;
.source "NativeVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V
    .registers 2

    .prologue
    .line 442
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const-wide/16 v6, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 445
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;J)J

    .line 446
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(I)V

    .line 447
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-nez v2, :cond_59

    .line 448
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Z

    move-result v3

    if-nez v3, :cond_37

    move v0, v1

    :cond_37
    invoke-virtual {v2, v1, v6, v7, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(ZJZ)V

    .line 452
    :cond_3a
    :goto_3a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->e(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/utils/ak;

    move-result-object v0

    if-eqz v0, :cond_53

    .line 453
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->e(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/utils/ak;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->f(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/ak;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 455
    :cond_53
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    .line 456
    return-void

    .line 449
    :cond_59
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v2

    if-eqz v2, :cond_3a

    .line 450
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/core/video/c/d;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)J

    move-result-wide v4

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$1;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Z

    move-result v3

    if-nez v3, :cond_76

    move v0, v1

    :cond_76
    invoke-virtual {v2, v1, v4, v5, v0}, Lcom/bytedance/sdk/openadsdk/core/video/c/d;->a(ZJZ)V

    goto :goto_3a
.end method
