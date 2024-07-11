.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;
.super Lcom/bytedance/sdk/openadsdk/preload/b/d;
.source "GetServerChannelVersionInterceptorMulti.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$a;,
        Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$b;,
        Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bytedance/sdk/openadsdk/preload/b/d<",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Ljava/util/List<",
        "Landroid/util/Pair<",
        "Ljava/lang/String;",
        "Ljava/lang/Long;",
        ">;>;>;",
        "Ljava/util/List<",
        "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;",
        ">;>;"
    }
.end annotation


# instance fields
.field private d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$TargetChannel;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

.field private h:Ljava/lang/String;

.field private i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 51
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/b/d;-><init>()V

    .line 58
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .line 327
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 328
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 329
    iget-object p1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    return-wide p1

    .line 331
    :cond_23
    goto :goto_4

    .line 332
    :cond_24
    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method private a(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/lang/String;)V
    .registers 4

    .line 174
    if-nez p1, :cond_3

    .line 175
    return-void

    .line 178
    :cond_3
    :try_start_3
    invoke-virtual {p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;->a(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    .line 181
    goto :goto_f

    .line 179
    :catchall_7
    move-exception p1

    .line 180
    const-string p2, "gecko-debug-tag"

    const-string v0, "onUpdating:"

    invoke-static {p2, v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    :goto_f
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/lang/Exception;)V
    .registers 4

    .line 185
    if-nez p2, :cond_3

    .line 186
    return-void

    .line 189
    :cond_3
    :try_start_3
    invoke-virtual {p2, p1, p3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7

    .line 192
    goto :goto_f

    .line 190
    :catchall_7
    move-exception p1

    .line 191
    const-string p2, "gecko-debug-tag"

    const-string p3, "onUpdateFailed:"

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 193
    :goto_f
    return-void
.end method

.method private a(Ljava/util/Iterator;Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;JJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;",
            ">;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;",
            "JJ)V"
        }
    .end annotation

    .line 219
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getChannel()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "rollback\uff1a"

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 p4, 0x2

    aput-object p3, v0, p4

    const/4 p3, 0x3

    const-string p4, "->"

    aput-object p4, v0, p3

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const/4 p4, 0x4

    aput-object p3, v0, p4

    const-string p3, "gecko-debug-tag"

    invoke-static {p3, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    new-instance p3, Ljava/io/File;

    iget-object p4, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {p4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->m()Ljava/io/File;

    move-result-object p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 221
    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getAccessKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getChannel()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p4, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 222
    new-instance p2, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$1;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$1;-><init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;)V

    invoke-virtual {p3, p2}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p2

    .line 227
    if-eqz p2, :cond_af

    array-length p3, p2

    if-nez p3, :cond_60

    goto :goto_af

    .line 230
    :cond_60
    array-length p3, p2

    :goto_61
    if-ge v2, p3, :cond_ae

    aget-object p4, p2, v2

    .line 233
    :try_start_65
    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_6d} :catch_a9

    .line 236
    nop

    .line 238
    cmp-long v0, v0, p5

    if-lez v0, :cond_a2

    .line 239
    new-instance v0, Ljava/io/File;

    invoke-virtual {p4}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "--pending-delete"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    invoke-virtual {p4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 241
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/f;->a()Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/f;

    move-result-object p4

    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$2;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$2;-><init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;Ljava/io/File;)V

    invoke-virtual {p4, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/f;->execute(Ljava/lang/Runnable;)V

    goto :goto_a8

    .line 246
    :cond_a2
    if-nez v0, :cond_a8

    .line 248
    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_ab

    .line 246
    :cond_a8
    :goto_a8
    goto :goto_ab

    .line 234
    :catch_a9
    move-exception p4

    .line 235
    nop

    .line 230
    :goto_ab
    add-int/lit8 v2, v2, 0x1

    goto :goto_61

    .line 251
    :cond_ae
    return-void

    .line 228
    :cond_af
    :goto_af
    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;",
            ">;)V"
        }
    .end annotation

    .line 97
    if-eqz p1, :cond_3a

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_3a

    .line 100
    :cond_9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_d
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;

    .line 101
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->m()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getAccessKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 102
    new-instance v2, Ljava/io/File;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/c;->a(Ljava/lang/String;)V

    .line 103
    goto :goto_d

    .line 104
    :cond_39
    return-void

    .line 98
    :cond_3a
    :goto_3a
    return-void
.end method

.method private a(Ljava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;",
            ">;>;)V"
        }
    .end annotation

    .line 201
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 202
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 203
    :goto_1e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 204
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;

    .line 205
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getLocalVersion()J

    move-result-wide v4

    .line 206
    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getVersion()J

    move-result-wide v6

    .line 207
    cmp-long v1, v6, v4

    if-ltz v1, :cond_38

    .line 209
    goto :goto_1e

    .line 211
    :cond_38
    move-object v1, p0

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->a(Ljava/util/Iterator;Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;JJ)V

    .line 212
    goto :goto_1e

    .line 213
    :cond_3e
    goto :goto_8

    .line 214
    :cond_3f
    return-void
.end method

.method private b(Ljava/util/Map;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;>;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 255
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->c(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 256
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/gecko/server/v3/package"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    :try_start_23
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;->f:Ljava/lang/String;

    .line 261
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->h()Lcom/bytedance/sdk/openadsdk/preload/geckox/i/b;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/i/c;

    move-result-object v0

    .line 262
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    iget v3, v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/c;->c:I

    iput v3, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;->g:I

    .line 263
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/c;->d:Ljava/lang/String;

    iput-object v3, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;->d:Ljava/lang/String;

    .line 264
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/c;->a:Ljava/util/Map;

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;->e:Ljava/lang/String;

    .line 265
    iget v2, v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/c;->c:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_19d

    .line 266
    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/c;->b:Ljava/lang/String;

    .line 267
    const-string v2, "gecko-debug-tag"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "response:"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_69} :catch_1c2

    .line 274
    nop

    .line 278
    :try_start_6a
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$3;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$3;-><init>(Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;)V

    .line 279
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$3;->b()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 280
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;->a()Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;->b()Lcom/bytedance/sdk/openadsdk/preload/a/f;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Response;
    :try_end_81
    .catch Ljava/lang/Exception; {:try_start_6a .. :try_end_81} :catch_155

    .line 285
    nop

    .line 286
    iget v0, v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Response;->status:I

    if-nez v0, :cond_11e

    .line 287
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Response;->data:Ljava/lang/Object;

    if-eqz v0, :cond_10b

    .line 293
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->a()Landroid/content/Context;

    move-result-object v0

    iget-object v2, v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Response;->data:Ljava/lang/Object;

    check-cast v2, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel;->getUniversalStrategies()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->m()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->g:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

    invoke-static {v0, v2, v3, v4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a;->a(Landroid/content/Context;Ljava/util/Map;Ljava/io/File;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;)V

    .line 295
    iget-object v0, v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Response;->data:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/ComponentModel;->getPackages()Ljava/util/Map;

    move-result-object v0

    .line 296
    if-eqz v0, :cond_100

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b4

    goto :goto_100

    .line 300
    :cond_b4
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->e()Ljava/util/List;

    move-result-object v1

    .line 301
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_be
    :goto_be
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ff

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 302
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 303
    if-eqz v3, :cond_be

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_d9

    .line 304
    goto :goto_be

    .line 309
    :cond_d9
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_dd
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_fe

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;

    .line 310
    invoke-virtual {v4, v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->setAccessKey(Ljava/lang/String;)V

    .line 311
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getChannel()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->a(Ljava/util/List;Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->setLocalVersion(J)V

    .line 312
    goto :goto_dd

    .line 313
    :cond_fe
    goto :goto_be

    .line 314
    :cond_ff
    return-object v0

    .line 297
    :cond_100
    :goto_100
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;)V

    .line 298
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    .line 288
    :cond_10b
    const-string p1, "check update error\uff1aresponse.data==null"

    .line 289
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;->d:Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;)V

    .line 291
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$a;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 315
    :cond_11e
    iget p1, v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Response;->status:I

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_12f

    .line 316
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/a;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;)V

    .line 317
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    return-object p1

    .line 319
    :cond_12f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "check update error\uff0cunknow status code\uff0cresponse.status\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Response;->status:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 320
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;->d:Ljava/lang/String;

    .line 321
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;)V

    .line 322
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$a;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :catch_155
    move-exception p1

    .line 282
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "json parse failed\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;->d:Ljava/lang/String;

    .line 283
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;)V

    .line 284
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$b;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " caused by:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$b;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 269
    :cond_19d
    :try_start_19d
    new-instance p1, Landroid/accounts/NetworkErrorException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "net work get failed, code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/i/c;->c:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", url:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/accounts/NetworkErrorException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1c2
    .catch Ljava/lang/Exception; {:try_start_19d .. :try_end_1c2} :catch_1c2

    .line 271
    :catch_1c2
    move-exception p1

    .line 272
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;)V

    .line 273
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "request failed\uff1aurl:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", caused by:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c$c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private b(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;",
            ">;>;)V"
        }
    .end annotation

    .line 107
    if-nez p1, :cond_3

    .line 108
    return-void

    .line 116
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 118
    :try_start_13
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;->a()V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a} :catch_1b

    .line 121
    goto :goto_23

    .line 119
    :catch_1b
    move-exception v0

    .line 120
    const-string v1, "gecko-debug-tag"

    const-string v2, "releaseLock:"

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 122
    :goto_23
    goto :goto_7

    .line 123
    :cond_24
    return-void
.end method

.method private c(Ljava/util/Map;)Ljava/lang/String;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 336
    new-instance v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel;-><init>()V

    .line 339
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->a()Landroid/content/Context;

    move-result-object v1

    .line 340
    new-instance v11, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->j()J

    move-result-wide v3

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    .line 341
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->n()Ljava/lang/String;

    move-result-object v5

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    .line 342
    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->q()Ljava/lang/String;

    move-result-object v6

    .line 343
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 344
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/i;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    .line 345
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->k()Ljava/lang/String;

    move-result-object v9

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    .line 346
    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->l()Ljava/lang/String;

    move-result-object v10

    move-object v2, v11

    invoke-direct/range {v2 .. v10}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0, v11}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel;->setCommon(Lcom/bytedance/sdk/openadsdk/preload/geckox/model/Common;)V

    .line 350
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 351
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_47
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_87

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 352
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 353
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_62
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    .line 354
    new-instance v6, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$LocalChannel;

    invoke-direct {v6}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$LocalChannel;-><init>()V

    .line 355
    iget-object v7, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Long;

    iput-object v7, v6, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$LocalChannel;->localVersion:Ljava/lang/Long;

    .line 356
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    goto :goto_62

    .line 358
    :cond_7f
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    goto :goto_47

    .line 360
    :cond_87
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;->a()Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;->b()Lcom/bytedance/sdk/openadsdk/preload/a/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;->a:Ljava/lang/String;

    .line 361
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel;->setLocal(Ljava/util/Map;)V

    .line 364
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 365
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 366
    new-instance v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$Group;

    invoke-direct {v3}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$Group;-><init>()V

    .line 367
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->h:Ljava/lang/String;

    iput-object v4, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$Group;->groupName:Ljava/lang/String;

    .line 368
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->f:Ljava/util/Map;

    if-eqz v4, :cond_e4

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e4

    .line 369
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->f:Ljava/util/Map;

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 370
    if-eqz v4, :cond_e4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e4

    .line 371
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$Group;->targetChannels:Ljava/util/List;

    .line 372
    iget-object v5, v3, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel$Group;->targetChannels:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 375
    :cond_e4
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    goto :goto_a9

    .line 377
    :cond_e8
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;->a()Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;->b()Lcom/bytedance/sdk/openadsdk/preload/a/f;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;->b:Ljava/lang/String;

    .line 378
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel;->setDeployments(Ljava/util/Map;)V

    .line 381
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->e:Ljava/util/Map;

    if-eqz p1, :cond_116

    .line 382
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;->a()Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;->b()Lcom/bytedance/sdk/openadsdk/preload/a/f;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->e:Ljava/util/Map;

    invoke-virtual {v1, v2}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;->c:Ljava/lang/String;

    .line 383
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->e:Ljava/util/Map;

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/CheckRequestBodyModel;->setCustom(Ljava/util/Map;)V

    .line 385
    :cond_116
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;->a()Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/c/b;->b()Lcom/bytedance/sdk/openadsdk/preload/a/f;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/a/f;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Ljava/util/List;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;",
            ">;>;"
        }
    .end annotation

    .line 130
    const-string v0, "gecko-debug-tag"

    if-eqz p1, :cond_d8

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    goto/16 :goto_d8

    .line 133
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 134
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;

    .line 137
    :try_start_26
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    invoke-virtual {v6}, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;->m()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getAccessKey()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 138
    new-instance v6, Ljava/io/File;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getChannel()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 139
    invoke-virtual {v6}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_47

    .line 140
    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/d;->a(Ljava/io/File;)Z

    .line 142
    :cond_47
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    move-result v5

    .line 143
    if-nez v5, :cond_83

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_54

    goto :goto_83

    .line 145
    :cond_54
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    const-string v8, "can not create channel dir\uff1a"

    aput-object v8, v5, v7

    const/4 v7, 0x1

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    invoke-static {v0, v5}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can not create channel dir:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 154
    :cond_83
    :goto_83
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "update.lock"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 155
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/g/a;

    move-result-object v5

    .line 157
    if-eqz v5, :cond_b6

    .line 158
    new-instance v6, Landroid/util/Pair;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getChannel()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_bf

    .line 161
    :cond_b6
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->g:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getChannel()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_bf} :catch_c0

    .line 166
    :goto_bf
    goto :goto_cf

    .line 163
    :catch_c0
    move-exception v5

    .line 164
    const-string v6, "filterChannel:"

    invoke-static {v0, v6, v5}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 165
    invoke-virtual {v4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;->getChannel()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->g:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

    invoke-direct {p0, v4, v6, v5}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;Ljava/lang/Exception;)V

    .line 167
    :goto_cf
    goto/16 :goto_1a

    .line 168
    :cond_d1
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 169
    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 170
    return-object v1

    .line 131
    :cond_d8
    :goto_d8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/util/Map;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/openadsdk/preload/b/b<",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/preload/geckox/model/UpdatePackage;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 72
    const-string v0, "all channel update finished"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "start get server channel version[v3]... local channel version:"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v4, "gecko-debug-tag"

    invoke-static {v4, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 73
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->b(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p2

    .line 74
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->i:Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;

    invoke-static {v1, v5}, Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/e;->a(Lcom/bytedance/sdk/openadsdk/preload/geckox/b;Lcom/bytedance/sdk/openadsdk/preload/geckox/statistic/model/b;)V

    .line 75
    invoke-direct {p0, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->a(Ljava/util/Map;)V

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_43

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 78
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    invoke-interface {v1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 79
    goto :goto_2d

    .line 80
    :cond_43
    nop

    .line 81
    nop

    .line 84
    const/4 p2, 0x0

    :try_start_46
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v5
    :try_end_4a
    .catchall {:try_start_46 .. :try_end_4a} :catchall_5b

    .line 85
    :try_start_4a
    invoke-interface {p1, v1}, Lcom/bytedance/sdk/openadsdk/preload/b/b;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_4e
    .catchall {:try_start_4a .. :try_end_4e} :catchall_59

    .line 89
    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->b(Ljava/util/List;)V

    .line 90
    new-array p1, v2, [Ljava/lang/Object;

    aput-object v0, p1, v3

    invoke-static {v4, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    :goto_58
    goto :goto_6d

    .line 86
    :catchall_59
    move-exception p1

    goto :goto_5d

    :catchall_5b
    move-exception p1

    move-object v5, p2

    .line 87
    :goto_5d
    :try_start_5d
    const-string v6, "filterChannel:"

    invoke-static {v4, v6, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_62
    .catchall {:try_start_5d .. :try_end_62} :catchall_71

    .line 89
    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->b(Ljava/util/List;)V

    .line 90
    new-array p1, v2, [Ljava/lang/Object;

    aput-object v0, p1, v3

    invoke-static {v4, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_58

    .line 92
    :goto_6d
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->a(Ljava/util/List;)V

    .line 93
    return-object p2

    .line 89
    :catchall_71
    move-exception p1

    invoke-direct {p0, v5}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->b(Ljava/util/List;)V

    .line 90
    new-array p2, v2, [Ljava/lang/Object;

    aput-object v0, p2, v3

    invoke-static {v4, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 91
    throw p1
.end method

.method protected varargs a([Ljava/lang/Object;)V
    .registers 3

    .line 62
    invoke-super {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/b/d;->a([Ljava/lang/Object;)V

    .line 63
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->d:Lcom/bytedance/sdk/openadsdk/preload/geckox/b;

    .line 64
    const/4 v0, 0x1

    aget-object v0, p1, v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->e:Ljava/util/Map;

    .line 65
    const/4 v0, 0x2

    aget-object v0, p1, v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->f:Ljava/util/Map;

    .line 66
    const/4 v0, 0x3

    aget-object v0, p1, v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->g:Lcom/bytedance/sdk/openadsdk/preload/geckox/e/a;

    .line 67
    const/4 v0, 0x4

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->h:Ljava/lang/String;

    .line 68
    return-void
.end method

.method public synthetic a_(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 51
    check-cast p2, Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/preload/geckox/d/c;->a(Lcom/bytedance/sdk/openadsdk/preload/b/b;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
