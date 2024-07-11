.class Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;
.super Ljava/lang/Object;
.source "GeckoClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

.field final synthetic c:Ljava/util/Map;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Lcom/bytedance/sdk/openadsdk/preload/geckox/a;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/a;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/util/Map;Ljava/util/Map;)V
    .registers 6

    .line 231
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->e:Lcom/bytedance/sdk/openadsdk/preload/geckox/a;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->b:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

    iput-object p4, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->c:Ljava/util/Map;

    iput-object p5, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->d:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 234
    const-string v0, "all channel update finished"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "start check update..."

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->a:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "gecko-debug-tag"

    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 235
    nop

    .line 236
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->e:Lcom/bytedance/sdk/openadsdk/preload/geckox/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->b()Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;

    move-result-object v2

    if-eqz v2, :cond_51

    .line 237
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->e:Lcom/bytedance/sdk/openadsdk/preload/geckox/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->b()Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;->a()Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;

    move-result-object v2

    .line 238
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->e:Lcom/bytedance/sdk/openadsdk/preload/geckox/a;

    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->b()Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->e:Lcom/bytedance/sdk/openadsdk/preload/geckox/a;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->m()Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->e:Lcom/bytedance/sdk/openadsdk/preload/geckox/a;

    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->e()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v2, v6, v7, v8}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/a;Ljava/io/File;Ljava/util/List;)V

    goto :goto_52

    .line 236
    :cond_51
    const/4 v2, 0x0

    .line 241
    :goto_52
    :try_start_52
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->b:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->e:Lcom/bytedance/sdk/openadsdk/preload/geckox/a;

    invoke-static {v7}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->b(Lcom/bytedance/sdk/openadsdk/preload/geckox/a;)Ljava/io/File;

    move-result-object v7

    iget-object v8, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->e:Lcom/bytedance/sdk/openadsdk/preload/geckox/a;

    .line 242
    invoke-static {v8}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    move-result-object v8

    iget-object v9, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->e:Lcom/bytedance/sdk/openadsdk/preload/geckox/a;

    invoke-static {v9}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->c(Lcom/bytedance/sdk/openadsdk/preload/geckox/a;)Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;

    move-result-object v9

    iget-object v10, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->c:Ljava/util/Map;

    iget-object v11, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->d:Ljava/util/Map;

    iget-object v12, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->a:Ljava/lang/String;

    .line 241
    invoke-static/range {v6 .. v12}, Lcom/bytedance/sdk/openadsdk/preload/geckox/j/a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/b;Ljava/util/Map;Ljava/util/Map;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/b/b;

    move-result-object v6

    iget-object v7, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->a:Ljava/lang/String;

    .line 243
    invoke-interface {v6, v7}, Lcom/bytedance/sdk/openadsdk/preload/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 244
    new-array v1, v1, [Ljava/lang/Object;

    const-string v7, "update finished"

    aput-object v7, v1, v4

    aput-object v6, v1, v5

    invoke-static {v3, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_81} :catch_97
    .catchall {:try_start_52 .. :try_end_81} :catchall_95

    .line 248
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->b:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

    if-eqz v1, :cond_88

    .line 249
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;->a()V

    .line 251
    :cond_88
    if-eqz v2, :cond_8d

    .line 252
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;->a()V

    .line 254
    :cond_8d
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-static {v3, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_b0

    .line 248
    :catchall_95
    move-exception v1

    goto :goto_b7

    .line 245
    :catch_97
    move-exception v1

    .line 246
    :try_start_98
    const-string v6, "Gecko update failed:"

    invoke-static {v3, v6, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9d
    .catchall {:try_start_98 .. :try_end_9d} :catchall_95

    .line 248
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->b:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

    if-eqz v1, :cond_a4

    .line 249
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;->a()V

    .line 251
    :cond_a4
    if-eqz v2, :cond_a9

    .line 252
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;->a()V

    .line 254
    :cond_a9
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v4

    invoke-static {v3, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    :goto_b0
    nop

    .line 256
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->e:Lcom/bytedance/sdk/openadsdk/preload/geckox/a;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a;->d(Lcom/bytedance/sdk/openadsdk/preload/geckox/a;)V

    .line 257
    return-void

    .line 248
    :goto_b7
    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/a$1;->b:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

    if-eqz v6, :cond_be

    .line 249
    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;->a()V

    .line 251
    :cond_be
    if-eqz v2, :cond_c3

    .line 252
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a/b;->a()V

    .line 254
    :cond_c3
    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    throw v1
.end method
