.class Lcom/bytedance/sdk/openadsdk/component/splash/b$8;
.super Ljava/lang/Object;
.source "SplashAdLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/TTNativeExpressAd$ExpressAdInteractionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/d/p;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/component/splash/e;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/g/a/c;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/component/splash/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Lcom/bytedance/sdk/openadsdk/g/a/c;Ljava/lang/String;)V
    .registers 6

    .line 811
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$8;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$8;->a:Lcom/bytedance/sdk/openadsdk/core/d/p;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$8;->b:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$8;->c:Lcom/bytedance/sdk/openadsdk/g/a/c;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$8;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdClicked(Landroid/view/View;I)V
    .registers 3

    .line 815
    return-void
.end method

.method public onAdShow(Landroid/view/View;I)V
    .registers 3

    .line 820
    return-void
.end method

.method public onRenderFail(Landroid/view/View;Ljava/lang/String;I)V
    .registers 13

    .line 824
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$8;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 825
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u7f13\u5b58\u6a21\u7248\u6e32\u67d3--\u300bonRenderFail msg: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " code "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "splashLoadAd"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 827
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$8;->a:Lcom/bytedance/sdk/openadsdk/core/d/p;

    if-nez p1, :cond_33

    const/16 p1, 0x3a98

    goto :goto_35

    :cond_33
    const/16 p1, 0x3a99

    :goto_35
    move v1, p1

    .line 828
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$8;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$8;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$8;->b:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$8;->c:Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$8;->a:Lcom/bytedance/sdk/openadsdk/core/d/p;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$8;->b:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$8;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 829
    return-void
.end method

.method public onRenderSuccess(Landroid/view/View;FF)V
    .registers 13

    .line 833
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$8;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 834
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$8;->a:Lcom/bytedance/sdk/openadsdk/core/d/p;

    const/16 p2, 0x3a98

    if-nez p1, :cond_12

    move v1, p2

    goto :goto_15

    :cond_12
    const/16 p1, 0x3a99

    move v1, p1

    .line 835
    :goto_15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u7f13\u5b58\u6a21\u7248\u6e32\u67d3--\u300bonRenderSuccess start....="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-ne v1, p2, :cond_25

    const-string p2, "\u5b9e\u65f6"

    goto :goto_27

    :cond_25
    const-string p2, "\u7f13\u5b58"

    :goto_27
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "splashLoadAd"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$8;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    new-instance p1, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$8;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$8;->b:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$8;->c:Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$8;->a:Lcom/bytedance/sdk/openadsdk/core/d/p;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$8;->b:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$8;->d:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 837
    return-void
.end method
