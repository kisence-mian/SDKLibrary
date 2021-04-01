.class Lcom/bytedance/sdk/openadsdk/component/splash/e$7;
.super Ljava/lang/Object;
.source "TTSplashAdImpl.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/e;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/splash/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/e;)V
    .registers 2

    .prologue
    .line 534
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$7;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    const-wide/16 v0, 0x0

    .line 538
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$7;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v2

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$7;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v2

    if-eqz v2, :cond_48

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$7;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->o(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Z

    move-result v2

    if-eqz v2, :cond_48

    .line 539
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$7;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/d;

    move-result-object v2

    if-eqz v2, :cond_48

    .line 540
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$7;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->d(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/component/splash/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/component/splash/d;->l()V

    .line 542
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$7;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->i(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_48

    .line 543
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$7;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$7;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->m(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "feed_break"

    invoke-static {v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    :cond_48
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$7;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->P()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7c

    .line 549
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$7;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->p(Lcom/bytedance/sdk/openadsdk/component/splash/e;)J

    move-result-wide v2

    cmp-long v2, v2, v0

    if-lez v2, :cond_6d

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$7;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->p(Lcom/bytedance/sdk/openadsdk/component/splash/e;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 550
    :cond_6d
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$7;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->b(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$7;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->k(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v3

    invoke-static {v2, v0, v1, v3}, Lcom/bytedance/sdk/openadsdk/c/d;->a(Landroid/content/Context;JLcom/bytedance/sdk/openadsdk/core/d/k;)V

    .line 552
    :cond_7c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$7;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    move-result-object v0

    if-eqz v0, :cond_93

    .line 553
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$7;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->a(Lcom/bytedance/sdk/openadsdk/component/splash/e;I)I

    .line 554
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/e$7;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/e;->e(Lcom/bytedance/sdk/openadsdk/component/splash/e;)Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/TTSplashAd$AdInteractionListener;->onAdSkip()V

    .line 556
    :cond_93
    return-void
.end method
