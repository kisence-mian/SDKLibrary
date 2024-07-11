.class Lcom/bytedance/sdk/openadsdk/component/splash/b$4;
.super Ljava/lang/Object;
.source "SplashAdLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/splash/a$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Ljava/lang/String;)V
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

    .line 414
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 11

    .line 454
    const-string v0, "splashLoadAd"

    const-string v1, "\u7f13\u5b58\u5e7f\u544a\u5bf9\u8c61\u89e3\u6790\u51fa\u9519"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 456
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    goto :goto_37

    .line 458
    :cond_19
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/core/d/p;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v9

    .line 460
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/16 v1, 0x3a99

    new-instance v2, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 462
    :goto_37
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/p;)V
    .registers 18

    .line 417
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v2, 0x4

    invoke-static {v1, v2, v7}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/core/d/p;)Lcom/bytedance/sdk/openadsdk/g/a/c;

    move-result-object v15

    .line 419
    invoke-static/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->b(Lcom/bytedance/sdk/openadsdk/core/d/p;)Z

    move-result v1

    const-string v2, "splashLoadAd"

    if-eqz v1, :cond_88

    .line 421
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->a()Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/bytedance/sdk/openadsdk/core/d/l;->c(Z)V

    .line 422
    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->a()Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/bytedance/sdk/openadsdk/core/d/l;->d(Z)V

    .line 424
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->a()Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v4

    xor-int/2addr v4, v3

    invoke-virtual {v1, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 425
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v6, 0x0

    invoke-static {v1, v7, v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/p;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/component/splash/e;

    move-result-object v5

    .line 428
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->d(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 429
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v1, v7, v5, v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    move-object v9, v5

    move-object v10, v6

    goto :goto_76

    .line 431
    :cond_4e
    const-string v1, ".....\u4e0d\u68c0\u6d4b\u76f4\u63a5\u8fd4\u56de\u7f13\u5b58...."

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->e(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 433
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/16 v2, 0x3a99

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v3

    move-object v13, v5

    move-object v14, v15

    invoke-direct/range {v8 .. v14}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    const/4 v8, 0x0

    move-object/from16 v4, p1

    move-object v9, v5

    move-object v10, v6

    move-object v6, v8

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 437
    :goto_76
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-virtual/range {p1 .. p1}, Lcom/bytedance/sdk/openadsdk/core/d/p;->a()Lcom/bytedance/sdk/openadsdk/core/d/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/core/d/l;)Z

    move-result v1

    if-eqz v1, :cond_87

    .line 438
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v1, v7, v9, v10, v15}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    .line 441
    :cond_87
    goto :goto_b7

    .line 442
    :cond_88
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->f(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 443
    const-string v1, "\u7f13\u5b58\u5e7f\u544a\u7d20\u6750\u89e3\u6790\u51fa\u9519"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->g(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Lcom/bytedance/sdk/openadsdk/AdSlot;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/AdSlot;)V

    goto :goto_b7

    .line 447
    :cond_9f
    iget-object v1, v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/16 v2, 0x3a99

    new-instance v3, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    iget-object v9, v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$4;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v8, v3

    move-object v14, v15

    invoke-direct/range {v8 .. v14}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/g/a/c;)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v4, p1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/p;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 450
    :goto_b7
    return-void
.end method
