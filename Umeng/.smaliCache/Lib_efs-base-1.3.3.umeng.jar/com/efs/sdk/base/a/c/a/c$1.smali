.class final Lcom/efs/sdk/base/a/c/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/efs/sdk/base/a/c/a/c;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/efs/sdk/base/a/c/a/c;


# direct methods
.method constructor <init>(Lcom/efs/sdk/base/a/c/a/c;)V
    .registers 2

    .line 421
    iput-object p1, p0, Lcom/efs/sdk/base/a/c/a/c$1;->a:Lcom/efs/sdk/base/a/c/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 11

    .line 425
    :try_start_0
    iget-object v0, p0, Lcom/efs/sdk/base/a/c/a/c$1;->a:Lcom/efs/sdk/base/a/c/a/c;

    invoke-static {v0}, Lcom/efs/sdk/base/a/c/a/c;->a(Lcom/efs/sdk/base/a/c/a/c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_82

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/efs/sdk/base/observer/IConfigCallback;

    .line 426
    iget-object v2, p0, Lcom/efs/sdk/base/a/c/a/c$1;->a:Lcom/efs/sdk/base/a/c/a/c;

    invoke-static {v2}, Lcom/efs/sdk/base/a/c/a/c;->a(Lcom/efs/sdk/base/a/c/a/c;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 428
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 429
    if-eqz v2, :cond_7e

    array-length v4, v2

    if-eqz v4, :cond_7e

    .line 430
    array-length v4, v2

    const/4 v5, 0x0

    :goto_32
    if-ge v5, v4, :cond_7e

    aget-object v6, v2, v5

    .line 431
    iget-object v7, p0, Lcom/efs/sdk/base/a/c/a/c$1;->a:Lcom/efs/sdk/base/a/c/a/c;

    invoke-static {v7}, Lcom/efs/sdk/base/a/c/a/c;->b(Lcom/efs/sdk/base/a/c/a/c;)Lcom/efs/sdk/base/a/c/a/b;

    move-result-object v7

    .line 1136
    iget-object v7, v7, Lcom/efs/sdk/base/a/c/a/b;->e:Ljava/util/Map;

    .line 431
    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7b

    .line 432
    iget-object v7, p0, Lcom/efs/sdk/base/a/c/a/c$1;->a:Lcom/efs/sdk/base/a/c/a/c;

    invoke-virtual {v7}, Lcom/efs/sdk/base/a/c/a/c;->c()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    const-string v7, "efs.config"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "--->>> configCallback key is "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ## value is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/efs/sdk/base/a/c/a/c$1;->a:Lcom/efs/sdk/base/a/c/a/c;

    invoke-virtual {v9}, Lcom/efs/sdk/base/a/c/a/c;->c()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2024
    invoke-static {v7, v6}, Lcom/efs/sdk/base/a/h/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_7b
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 437
    :cond_7e
    invoke-interface {v1, v3}, Lcom/efs/sdk/base/observer/IConfigCallback;->onChange(Ljava/util/Map;)V

    .line 438
    goto :goto_e

    .line 439
    :cond_82
    iget-object v0, p0, Lcom/efs/sdk/base/a/c/a/c$1;->a:Lcom/efs/sdk/base/a/c/a/c;

    invoke-static {v0}, Lcom/efs/sdk/base/a/c/a/c;->a(Lcom/efs/sdk/base/a/c/a/c;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_8b
    .catchall {:try_start_0 .. :try_end_8b} :catchall_8c

    .line 441
    return-void

    .line 440
    :catchall_8c
    move-exception v0

    .line 442
    return-void
.end method
