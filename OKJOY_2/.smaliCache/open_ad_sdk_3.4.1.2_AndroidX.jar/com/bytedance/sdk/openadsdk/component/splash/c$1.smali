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

.field final synthetic d:Lcom/bytedance/sdk/openadsdk/core/d/l;

.field final synthetic e:J


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/l;J)V
    .registers 7

    .line 201
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->a:Ljava/io/File;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->c:Lcom/bytedance/sdk/openadsdk/core/d/a;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    iput-wide p5, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->e:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 206
    if-eqz v0, :cond_3a

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 207
    const-string v1, "splashLoadAd"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SplashUtils preLoadVideo getFile  s "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->a:Ljava/io/File;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Ljava/io/File;)V

    .line 209
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/i;->d()Lcom/bytedance/sdk/openadsdk/core/i;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/i;->p()Lcom/bytedance/sdk/openadsdk/b/c;

    move-result-object p1

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lcom/bytedance/sdk/openadsdk/b/c;->a(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p1
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_39} :catch_3b

    return-object p1

    .line 213
    :cond_3a
    goto :goto_58

    .line 211
    :catch_3b
    move-exception p1

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "datastoreGet throw IOException : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SplashUtils"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :goto_58
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(JJ)V
    .registers 5

    .line 234
    return-void
.end method

.method public a(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 238
    if-eqz p1, :cond_3c

    iget-object v0, p1, Lcom/bytedance/sdk/adnet/core/m;->a:Ljava/lang/Object;

    if-eqz v0, :cond_3c

    .line 240
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/p;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->c:Lcom/bytedance/sdk/openadsdk/core/d/a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/p;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/l;[B)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->b(Lcom/bytedance/sdk/openadsdk/core/d/p;)V

    .line 242
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object v0

    new-instance v1, Lcom/bytedance/sdk/openadsdk/core/d/p;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->c:Lcom/bytedance/sdk/openadsdk/core/d/a;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    invoke-direct {v1, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/core/d/p;-><init>(Lcom/bytedance/sdk/openadsdk/core/d/a;Lcom/bytedance/sdk/openadsdk/core/d/l;[B)V

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Lcom/bytedance/sdk/openadsdk/core/d/p;)V

    .line 243
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->e:J

    const/4 v2, 0x1

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    const-wide/16 v5, 0x0

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(JZZLcom/bytedance/sdk/openadsdk/core/d/l;JLcom/bytedance/sdk/adnet/core/m;)V

    goto :goto_4d

    .line 245
    :cond_3c
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->e:J

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez p1, :cond_47

    const-wide/16 v5, -0x3

    goto :goto_49

    :cond_47
    iget-wide v5, p1, Lcom/bytedance/sdk/adnet/core/m;->h:J

    :goto_49
    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(JZZLcom/bytedance/sdk/openadsdk/core/d/l;JLcom/bytedance/sdk/adnet/core/m;)V

    .line 247
    :goto_4d
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/io/File;)V
    .registers 5

    .line 219
    if-eqz p2, :cond_36

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SplashUtils preLoadVideo putFile  s "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " file "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "splashLoadAd"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-static {p2}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(Ljava/io/File;)V

    .line 222
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/component/splash/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/component/splash/a;->a(Ljava/io/File;)V

    .line 224
    :cond_36
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/io/File;
    .registers 2

    .line 228
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->a:Ljava/io/File;

    return-object p1
.end method

.method public b(Lcom/bytedance/sdk/adnet/core/m;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 251
    iget-wide v0, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->e:J

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/component/splash/c$1;->d:Lcom/bytedance/sdk/openadsdk/core/d/l;

    if-nez p1, :cond_9

    const-wide/16 v2, -0x2

    goto :goto_b

    :cond_9
    iget-wide v2, p1, Lcom/bytedance/sdk/adnet/core/m;->h:J

    :goto_b
    move-wide v5, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/component/splash/c;->a(JZZLcom/bytedance/sdk/openadsdk/core/d/l;JLcom/bytedance/sdk/adnet/core/m;)V

    .line 252
    return-void
.end method
