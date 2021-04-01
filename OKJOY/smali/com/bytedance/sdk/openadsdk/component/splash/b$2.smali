.class Lcom/bytedance/sdk/openadsdk/component/splash/b$2;
.super Ljava/lang/Object;
.source "SplashAdLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/splash/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/component/splash/b;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;)V
    .registers 2

    .prologue
    .line 340
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 10

    .prologue
    const/4 v4, 0x0

    .line 380
    const-string v0, "splashLoadAd"

    const-string v1, "\u7f13\u5b58\u5e7f\u544a\u5bf9\u8c61\u89e3\u6790\u51fa\u9519"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 382
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    .line 388
    :goto_1b
    return-void

    .line 384
    :cond_1c
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v1, 0x4

    invoke-static {v0, v1, v4}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/core/d/n;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v6

    .line 386
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/16 v8, 0x3a99

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v2, 0x2

    const/4 v3, 0x0

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    move-object v1, v7

    move v2, v8

    move-object v3, v0

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    goto :goto_1b
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/n;)V
    .registers 15
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/d/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v8, 0x3a99

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 343
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/core/d/n;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v6

    .line 345
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->b(Lcom/bytedance/sdk/openadsdk/core/d/n;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 347
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/openadsdk/core/d/k;->c(Z)V

    .line 348
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/bytedance/sdk/openadsdk/core/d/k;->d(Z)V

    .line 349
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->x()Lcom/bytedance/sdk/openadsdk/core/d/k$a;

    move-result-object v0

    if-nez v0, :cond_57

    move v0, v2

    :goto_31
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 351
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0, p1, v4}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/n;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/component/splash/e;

    move-result-object v5

    .line 354
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->d(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 355
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0, p1, v5, v4}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 363
    :goto_47
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->x()Lcom/bytedance/sdk/openadsdk/core/d/k$a;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 364
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0, p1, v5, v4, v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    .line 376
    :cond_56
    :goto_56
    return-void

    :cond_57
    move v0, v3

    .line 349
    goto :goto_31

    .line 357
    :cond_59
    const-string v0, "splashLoadAd"

    const-string v1, ".....\u4e0d\u68c0\u6d4b\u76f4\u63a5\u8fd4\u56de\u7f13\u5b58...."

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->e(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 359
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    move-object v9, v0

    move-object v10, p1

    move-object v11, v5

    move-object v12, v4

    invoke-static/range {v7 .. v12}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    goto :goto_47

    .line 368
    :cond_7a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 369
    const-string v0, "SplashAdLoadManager"

    const-string v1, "\u7f13\u5b58\u5e7f\u544a\u7d20\u6750\u89e3\u6790\u51fa\u9519"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    goto :goto_56

    .line 373
    :cond_95
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$2;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v2, 0x2

    move-object v5, v4

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    move-object v9, v0

    move-object v10, p1

    move-object v11, v4

    move-object v12, v4

    invoke-static/range {v7 .. v12}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    goto :goto_56
.end method
