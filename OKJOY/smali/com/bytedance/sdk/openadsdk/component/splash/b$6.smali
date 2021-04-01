.class Lcom/bytedance/sdk/openadsdk/component/splash/b$6;
.super Ljava/lang/Object;
.source "SplashAdLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/core/p$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/f/a/d;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/d/n;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/component/splash/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/component/splash/e;Lcom/bytedance/sdk/openadsdk/f/a/d;Lcom/bytedance/sdk/openadsdk/core/d/n;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 618
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->c:Lcom/bytedance/sdk/openadsdk/core/d/n;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZJJ)V
    .registers 16

    .prologue
    .line 621
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v0

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;ZJJ)V

    .line 623
    if-eqz p1, :cond_4a

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->k(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_4a

    .line 624
    const-string v0, "splashLoadAd"

    const-string v1, "check \u6210\u529f\u56de\u8c03......."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->e(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 627
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/16 v8, 0x3a99

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->c:Lcom/bytedance/sdk/openadsdk/core/d/n;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->a:Lcom/bytedance/sdk/openadsdk/component/splash/e;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->d:Ljava/lang/String;

    move-object v1, v7

    move v2, v8

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 639
    :goto_49
    return-void

    .line 629
    :cond_4a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 630
    const-string v0, "SplashAdLoadManager"

    const-string v1, "\u5f00\u5c4f\u89c6\u9891\u7f13\u5b58\u5e7f\u544a\u4e0d\u5728\u6295\u653e\u671f\u6216\u672c\u6b21\u8c03\u7528\u5df2\u56de\u8c03\u51fa\u53bb"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    goto :goto_49

    .line 634
    :cond_65
    const-string v0, "splashLoadAd"

    const-string v1, "\u5e76\u53d1\u8bf7\u6c42\u5f00\u5c4f\u89c6\u9891check \u5931\u8d25 \u65e0\u9700\u518d\u7f51\u7edc\u8bf7\u6c42"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    long-to-int v1, p2

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->b(I)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v0

    long-to-int v1, p2

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/g;->a(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/f/a/d;->g(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    .line 636
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/16 v8, 0x3a99

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->e:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->b:Lcom/bytedance/sdk/openadsdk/f/a/d;

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$6;->c:Lcom/bytedance/sdk/openadsdk/core/d/n;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v7

    move v2, v8

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    goto :goto_49
.end method
