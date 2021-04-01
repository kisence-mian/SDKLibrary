.class Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;
.super Ljava/lang/Object;
.source "PlayableCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/g/a$2;->a(Lcom/bytedance/sdk/adnet/core/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/g/a$b;

.field final synthetic b:Lcom/bytedance/sdk/adnet/core/n;

.field final synthetic c:Lcom/bytedance/sdk/openadsdk/core/g/a$2;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/g/a$2;Lcom/bytedance/sdk/openadsdk/core/g/a$b;Lcom/bytedance/sdk/adnet/core/n;)V
    .registers 4

    .prologue
    .line 310
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/g/a$2;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/g/a$b;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->b:Lcom/bytedance/sdk/adnet/core/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    .line 313
    const/4 v7, 0x0

    .line 316
    :try_start_4
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/g/a$b;

    if-eqz v0, :cond_11

    .line 317
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/g/a$b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/g/a$b;->c(J)Lcom/bytedance/sdk/openadsdk/core/g/a$b;

    .line 319
    :cond_11
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->b:Lcom/bytedance/sdk/adnet/core/n;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/g/a$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->f:Lcom/bytedance/sdk/openadsdk/core/g/a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Lcom/bytedance/sdk/openadsdk/core/g/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/al;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    .line 320
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/g/a$b;

    if-eqz v0, :cond_33

    .line 321
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/g/a$b;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/g/a$b;->d(J)Lcom/bytedance/sdk/openadsdk/core/g/a$b;

    .line 326
    :cond_33
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/g/a$b;

    if-eqz v0, :cond_a1

    .line 327
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/g/a$b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/g/a$b;->a()J

    move-result-wide v2

    .line 328
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->a:Lcom/bytedance/sdk/openadsdk/core/g/a$b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/g/a$b;->b()J

    move-result-wide v4

    .line 330
    :goto_43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/g/a$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/g/b;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;JJ)V

    .line 333
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/g/a$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->f:Lcom/bytedance/sdk/openadsdk/core/g/a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/g/a$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->d:Ljava/io/File;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Lcom/bytedance/sdk/openadsdk/core/g/a;Ljava/io/File;)V
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_59} :catch_82

    .line 337
    :try_start_59
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/g/a$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->d:Ljava/io/File;

    const-string v2, "tt_open_ad_sdk_check_res.dat"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 338
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/g/a$2;

    iget-object v1, v1, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->f:Lcom/bytedance/sdk/openadsdk/core/g/a;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Lcom/bytedance/sdk/openadsdk/core/g/a;Ljava/io/File;Z)Lorg/json/JSONObject;
    :try_end_6c
    .catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_6c} :catch_9f

    :goto_6c
    move v1, v6

    .line 350
    :goto_6d
    :try_start_6d
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->b:Lcom/bytedance/sdk/adnet/core/n;

    iget-object v0, v0, Lcom/bytedance/sdk/adnet/core/n;->a:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_76
    .catch Ljava/lang/Throwable; {:try_start_6d .. :try_end_76} :catch_9d

    .line 354
    :goto_76
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/g/a$2;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->f:Lcom/bytedance/sdk/openadsdk/core/g/a;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/g/a$2;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->e:Lcom/bytedance/sdk/openadsdk/core/g/a$a;

    invoke-static {v0, v2, v1}, Lcom/bytedance/sdk/openadsdk/core/g/a;->a(Lcom/bytedance/sdk/openadsdk/core/g/a;Lcom/bytedance/sdk/openadsdk/core/g/a$a;Z)V

    .line 355
    return-void

    .line 343
    :catch_82
    move-exception v0

    .line 344
    const-string v1, "PlayableCache"

    const-string v2, "unzip error: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 345
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/g/a$2$1;->c:Lcom/bytedance/sdk/openadsdk/core/g/a$2;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/core/g/a$2;->c:Lcom/bytedance/sdk/openadsdk/core/d/k;

    const/16 v3, -0x2c0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/core/g/b;->a(Landroid/content/Context;Lcom/bytedance/sdk/openadsdk/core/d/k;ILjava/lang/String;)V

    move v1, v7

    goto :goto_6d

    .line 351
    :catch_9d
    move-exception v0

    goto :goto_76

    .line 339
    :catch_9f
    move-exception v0

    goto :goto_6c

    :cond_a1
    move-wide v2, v4

    goto :goto_43
.end method
