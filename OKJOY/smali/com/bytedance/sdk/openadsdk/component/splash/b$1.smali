.class Lcom/bytedance/sdk/openadsdk/component/splash/b$1;
.super Ljava/lang/Object;
.source "SplashAdLoadManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/component/splash/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/b;->d()V
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
    .line 253
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b(Lcom/bytedance/sdk/openadsdk/component/splash/b;)V

    .line 291
    return-void
.end method

.method public a(Lcom/bytedance/sdk/openadsdk/core/d/n;)V
    .registers 15
    .param p1    # Lcom/bytedance/sdk/openadsdk/core/d/n;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 256
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    if-eqz v0, :cond_aa

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    if-eqz v0, :cond_aa

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->z()Lcom/bytedance/sdk/openadsdk/core/d/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/r;->g()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_aa

    .line 257
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;)Ljava/lang/String;

    move-result-object v12

    .line 258
    if-nez v12, :cond_36

    .line 259
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b(Lcom/bytedance/sdk/openadsdk/component/splash/b;)V

    .line 285
    :cond_35
    :goto_35
    return-void

    .line 263
    :cond_36
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v1, 0x4

    invoke-static {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/core/d/n;)Lcom/bytedance/sdk/openadsdk/f/a/d;

    move-result-object v6

    .line 265
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0, p1, v12}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/n;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/component/splash/e;

    move-result-object v5

    .line 266
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->c(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->x()Lcom/bytedance/sdk/openadsdk/core/d/k$a;

    move-result-object v0

    if-nez v0, :cond_74

    move v0, v2

    :goto_54
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 269
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->d(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Z

    move-result v0

    if-eqz v0, :cond_76

    .line 270
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0, p1, v5, v12}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    .line 278
    :goto_64
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/d/n;->a()Lcom/bytedance/sdk/openadsdk/core/d/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/d/k;->x()Lcom/bytedance/sdk/openadsdk/core/d/k$a;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 279
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0, p1, v5, v12, v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    goto :goto_35

    :cond_74
    move v0, v3

    .line 266
    goto :goto_54

    .line 272
    :cond_76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->e(Lcom/bytedance/sdk/openadsdk/component/splash/b;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 273
    const-string v0, "splashLoadAd"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0d\u68c0\u6d4b\u76f4\u63a5\u8fd4\u56de\u7f13\u5b58....splashAd="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/16 v8, 0x3a99

    new-instance v0, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/openadsdk/component/splash/b$a;-><init>(Lcom/bytedance/sdk/openadsdk/component/splash/b;IILjava/lang/String;Lcom/bytedance/sdk/openadsdk/TTSplashAd;Lcom/bytedance/sdk/openadsdk/f/a/d;)V

    move-object v9, v0

    move-object v10, p1

    move-object v11, v5

    invoke-static/range {v7 .. v12}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->a(Lcom/bytedance/sdk/openadsdk/component/splash/b;ILcom/bytedance/sdk/openadsdk/component/splash/b$a;Lcom/bytedance/sdk/openadsdk/core/d/n;Lcom/bytedance/sdk/openadsdk/component/splash/e;Ljava/lang/String;)V

    goto :goto_64

    .line 283
    :cond_aa
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/b$1;->a:Lcom/bytedance/sdk/openadsdk/component/splash/b;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/b;->b(Lcom/bytedance/sdk/openadsdk/component/splash/b;)V

    goto :goto_35
.end method
