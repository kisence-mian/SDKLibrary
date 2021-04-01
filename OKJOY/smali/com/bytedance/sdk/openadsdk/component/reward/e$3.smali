.class Lcom/bytedance/sdk/openadsdk/component/reward/e$3;
.super Ljava/lang/Object;
.source "RewardVideoCache.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Lcom/bytedance/sdk/openadsdk/core/d/k;Lcom/bytedance/sdk/openadsdk/component/reward/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/component/reward/e$a;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/component/reward/e;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/component/reward/e;Ljava/io/File;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/component/reward/e$a;Lcom/bytedance/sdk/openadsdk/core/d/k;)V
    .registers 6

    .prologue
    .line 315
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->e:Lcom/bytedance/sdk/openadsdk/component/reward/e;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->a:Ljava/io/File;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->c:Lcom/bytedance/sdk/openadsdk/component/reward/e$a;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .prologue
    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 320
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 321
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/h;->p()Lcom/bytedance/sdk/openadsdk/b/c;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/b/c;->a(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1b} :catch_1d

    move-result-object v0

    .line 326
    :goto_1c
    return-object v0

    .line 323
    :catch_1d
    move-exception v0

    .line 324
    const-string v1, "RewardVideoCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "datastoreGet throw IOException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    :cond_3a
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public a(JJ)V
    .registers 5

    .prologue
    .line 344
    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 348
    if-eqz p1, :cond_1d

    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    if-eqz v0, :cond_1d

    .line 349
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->c:Lcom/bytedance/sdk/openadsdk/component/reward/e$a;

    if-eqz v0, :cond_12

    .line 350
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->c:Lcom/bytedance/sdk/openadsdk/component/reward/e$a;

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/e$a;->a(ZLjava/lang/Object;)V

    .line 353
    :cond_12
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->e:Lcom/bytedance/sdk/openadsdk/component/reward/e;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-wide/16 v4, 0x0

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Lcom/bytedance/sdk/openadsdk/component/reward/e;ZLcom/bytedance/sdk/openadsdk/core/d/k;JLcom/bytedance/sdk/adnet/core/n;)V

    .line 361
    :goto_1c
    return-void

    .line 355
    :cond_1d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->c:Lcom/bytedance/sdk/openadsdk/component/reward/e$a;

    if-eqz v0, :cond_26

    .line 356
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->c:Lcom/bytedance/sdk/openadsdk/component/reward/e$a;

    invoke-interface {v0, v6, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/e$a;->a(ZLjava/lang/Object;)V

    .line 359
    :cond_26
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->e:Lcom/bytedance/sdk/openadsdk/component/reward/e;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez p1, :cond_34

    const-wide/16 v4, -0x3

    :goto_2e
    move v2, v6

    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Lcom/bytedance/sdk/openadsdk/component/reward/e;ZLcom/bytedance/sdk/openadsdk/core/d/k;JLcom/bytedance/sdk/adnet/core/n;)V

    goto :goto_1c

    :cond_34
    iget-wide v4, p1, Lcom/bytedance/sdk/adnet/core/n;->h:J

    goto :goto_2e
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    .prologue
    .line 331
    if-eqz p2, :cond_7

    .line 332
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->e:Lcom/bytedance/sdk/openadsdk/component/reward/e;

    invoke-static {v0, p2}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Lcom/bytedance/sdk/openadsdk/component/reward/e;Ljava/io/File;)V

    .line 334
    :cond_7
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->a:Ljava/io/File;

    return-object v0
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/n",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 365
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->c:Lcom/bytedance/sdk/openadsdk/component/reward/e$a;

    if-eqz v0, :cond_b

    .line 366
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->c:Lcom/bytedance/sdk/openadsdk/component/reward/e$a;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/component/reward/e$a;->a(ZLjava/lang/Object;)V

    .line 369
    :cond_b
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->e:Lcom/bytedance/sdk/openadsdk/component/reward/e;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/reward/e$3;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez p1, :cond_18

    const-wide/16 v4, -0x2

    :goto_13
    move-object v6, p1

    invoke-static/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/component/reward/e;->a(Lcom/bytedance/sdk/openadsdk/component/reward/e;ZLcom/bytedance/sdk/openadsdk/core/d/k;JLcom/bytedance/sdk/adnet/core/n;)V

    .line 370
    return-void

    .line 369
    :cond_18
    iget-wide v4, p1, Lcom/bytedance/sdk/adnet/core/n;->h:J

    goto :goto_13
.end method
