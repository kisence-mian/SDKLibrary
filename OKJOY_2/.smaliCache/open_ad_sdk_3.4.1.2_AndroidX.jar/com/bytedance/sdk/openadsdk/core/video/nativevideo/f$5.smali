.class Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$5;
.super Ljava/lang/Object;
.source "NativeVideoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;
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

    .line 515
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 518
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 519
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->i(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_1d

    .line 520
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->e()V

    .line 522
    :cond_1d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->b(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/core/video/d/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/video/d/d;->f()V

    .line 524
    :cond_26
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f$5;->a:Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;->e(Lcom/bytedance/sdk/openadsdk/core/video/nativevideo/f;)Lcom/bytedance/sdk/openadsdk/utils/al;

    move-result-object v0

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, p0, v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/al;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 525
    return-void
.end method
