.class Lcom/bytedance/sdk/openadsdk/component/splash/b$5;
.super Ljava/lang/Object;
.source "SplashAdLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/f/a/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/core/d/n;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/f/a/d;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/component/splash/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/component/splash/e;Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/f/a/d;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 574
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->b:Lcom/bytedance/sdk/openadsdk/core/d/n;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->c:Lcom/bytedance/sdk/openadsdk/f/a/d;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 578
    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .registers 3

    .prologue
    .line 583
    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .registers 13

    .prologue
    const/4 v2, 0x1

    .line 587
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 588
    const-string v0, "splashLoadAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u6e32\u67d3--\u300bonRenderFail start....splashAd="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->b:Lcom/bytedance/sdk/openadsdk/core/d/n;

    if-nez v0, :cond_47

    const/16 v0, 0x3a98

    move v7, v0

    .line 591
    :goto_2b
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->c:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->b:Lcom/bytedance/sdk/openadsdk/core/d/n;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->d:Ljava/lang/String;

    move-object v1, v8

    move v2, v7

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 592
    return-void

    .line 590
    :cond_47
    const/16 v0, 0x3a99

    move v7, v0

    goto :goto_2b
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .registers 13

    .prologue
    const/16 v0, 0x3a98

    const/4 v2, 0x1

    .line 596
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 597
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->b:Lcom/bytedance/sdk/openadsdk/core/d/n;

    if-nez v1, :cond_49

    move v7, v0

    .line 598
    :goto_11
    const-string v1, "splashLoadAd"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6e32\u67d3--\u300bonRenderSuccess start....="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ne v7, v0, :cond_4d

    const-string v0, "\u5b9e\u65f6"

    :goto_22
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->c:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->b:Lcom/bytedance/sdk/openadsdk/core/d/n;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$5;->d:Ljava/lang/String;

    move-object v1, v8

    move v2, v7

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 600
    return-void

    .line 597
    :cond_49
    const/16 v1, 0x3a99

    move v7, v1

    goto :goto_11

    .line 598
    :cond_4d
    const-string v0, "\u7f13\u5b58"

    goto :goto_22
.end method
