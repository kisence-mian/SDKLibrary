.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$2;
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

    .line 464
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 467
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;J)J

    .line 468
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->a(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/h;->c(I)V

    .line 469
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_39

    .line 470
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Z

    move-result v2

    xor-int/2addr v2, v1

    invoke-virtual {v0, v1, v4, v5, v2}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(ZJZ)V

    goto :goto_57

    .line 471
    :cond_39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 472
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->c(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->d(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Z

    move-result v4

    xor-int/2addr v4, v1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->a(ZJZ)V

    .line 474
    :cond_57
    :goto_57
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->e(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/utils/al;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 475
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->e(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/utils/al;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->f(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/al;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 477
    :cond_70
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$2;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->g(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)V

    .line 478
    return-void
.end method
