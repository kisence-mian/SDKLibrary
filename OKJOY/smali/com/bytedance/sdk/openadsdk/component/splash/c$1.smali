.class final Lcom/bytedance/sdk/openadsdk/component/splash/c$1;
.super Ljava/lang/Object;
.source "SplashUtils.java"

# interfaces
.implements Lcom/bytedance/sdk/adnet/b/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Lcom/bytedance/sdk/openadsdk/core/d/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/d/a;

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/d/k;

.field final synthetic e:J


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/k;J)V
    .registers 8

    .prologue
    .line 199
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->c:Lcom/bytedance/sdk/openadsdk/core/d/a;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    iput-wide p5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .prologue
    .line 203
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 205
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/h;->c()Lcom/bytedance/sdk/openadsdk/core/h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/core/h;->p()Lcom/bytedance/sdk/openadsdk/b/c;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->b:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/b/c;->a(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1b} :catch_1d

    move-result-object v0

    .line 210
    :goto_1c
    return-object v0

    .line 207
    :catch_1d
    move-exception v0

    .line 208
    const-string v1, "SplashUtils"

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

    .line 210
    :cond_3a
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public a(JJ)V
    .registers 5

    .prologue
    .line 228
    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 11
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
    const/4 v6, 0x0

    const/4 v3, 0x1

    .line 232
    if-eqz p1, :cond_3c

    iget-object v1, p1, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    if-eqz v1, :cond_3c

    .line 234
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/d/n;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->c:Lcom/bytedance/sdk/openadsdk/core/d/a;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {v2, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/d/n;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/k;[B)V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b(Lcom/bytedance/sdk/openadsdk/core/d/n;)V

    .line 236
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/core/d/n;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->c:Lcom/bytedance/sdk/openadsdk/core/d/a;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-direct {v2, v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/core/d/n;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/k;[B)V

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/n;)V

    .line 237
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->e:J

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const-wide/16 v6, 0x0

    move v4, v3

    move-object v8, p1

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(JZZLcom/bytedance/sdk/openadsdk/core/d/k;JLcom/bytedance/sdk/adnet/core/n;)V

    .line 241
    :goto_3b
    return-void

    .line 239
    :cond_3c
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->e:J

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez p1, :cond_4a

    const-wide/16 v6, -0x3

    :goto_45
    move-object v8, p1

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(JZZLcom/bytedance/sdk/openadsdk/core/d/k;JLcom/bytedance/sdk/adnet/core/n;)V

    goto :goto_3b

    :cond_4a
    iget-wide v6, p1, Lcom/bytedance/sdk/adnet/core/n;->h:J

    goto :goto_45
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)V
    .registers 4

    .prologue
    .line 215
    if-eqz p2, :cond_d

    .line 216
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Ljava/io/File;)V

    .line 218
    :cond_d
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/io/File;
    .registers 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->a:Ljava/io/File;

    return-object v0
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 11
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
    .line 245
    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->e:J

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/k;

    if-nez p1, :cond_f

    const-wide/16 v6, -0x2

    :goto_a
    move-object v8, p1

    invoke-static/range {v1 .. v8}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(JZZLcom/bytedance/sdk/openadsdk/core/d/k;JLcom/bytedance/sdk/adnet/core/n;)V

    .line 246
    return-void

    .line 245
    :cond_f
    iget-wide v6, p1, Lcom/bytedance/sdk/adnet/core/n;->h:J

    goto :goto_a
.end method
