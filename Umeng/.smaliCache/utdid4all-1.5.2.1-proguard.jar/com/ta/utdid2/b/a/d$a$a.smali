.class public final Lcom/ta/utdid2/b/a/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ta/utdid2/b/a/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ta/utdid2/b/a/d$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ta/utdid2/b/a/d$a;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private k:Z


# direct methods
.method public constructor <init>(Lcom/ta/utdid2/b/a/d$a;)V
    .registers 2

    .line 231
    iput-object p1, p0, Lcom/ta/utdid2/b/a/d$a$a;->a:Lcom/ta/utdid2/b/a/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 232
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/ta/utdid2/b/a/d$a$a;->b:Ljava/util/Map;

    .line 233
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ta/utdid2/b/a/d$a$a;->k:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/ta/utdid2/b/a/b$a;
    .registers 3

    .line 271
    monitor-enter p0

    .line 272
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    monitor-exit p0

    return-object p0

    .line 274
    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public a(Ljava/lang/String;F)Lcom/ta/utdid2/b/a/b$a;
    .registers 4

    .line 257
    monitor-enter p0

    .line 258
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a$a;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    monitor-exit p0

    return-object p0

    .line 260
    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public a(Ljava/lang/String;I)Lcom/ta/utdid2/b/a/b$a;
    .registers 4

    .line 243
    monitor-enter p0

    .line 244
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a$a;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    monitor-exit p0

    return-object p0

    .line 246
    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public a(Ljava/lang/String;J)Lcom/ta/utdid2/b/a/b$a;
    .registers 5

    .line 250
    monitor-enter p0

    .line 251
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a$a;->b:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    monitor-exit p0

    return-object p0

    .line 253
    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/ta/utdid2/b/a/b$a;
    .registers 4

    .line 236
    monitor-enter p0

    .line 237
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a$a;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    monitor-exit p0

    return-object p0

    .line 239
    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public a(Ljava/lang/String;Z)Lcom/ta/utdid2/b/a/b$a;
    .registers 4

    .line 264
    monitor-enter p0

    .line 265
    :try_start_1
    iget-object v0, p0, Lcom/ta/utdid2/b/a/d$a$a;->b:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    monitor-exit p0

    return-object p0

    .line 267
    :catchall_c
    move-exception p1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_c

    throw p1
.end method

.method public b()Lcom/ta/utdid2/b/a/b$a;
    .registers 2

    .line 278
    monitor-enter p0

    .line 279
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/ta/utdid2/b/a/d$a$a;->k:Z

    .line 280
    monitor-exit p0

    return-object p0

    .line 281
    :catchall_6
    move-exception v0

    monitor-exit p0
    :try_end_8
    .catchall {:try_start_2 .. :try_end_8} :catchall_6

    throw v0
.end method

.method public commit()Z
    .registers 10

    .line 288
    nop

    .line 289
    nop

    .line 291
    invoke-static {}, Lcom/ta/utdid2/b/a/d;->a()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 292
    :try_start_7
    iget-object v1, p0, Lcom/ta/utdid2/b/a/d$a$a;->a:Lcom/ta/utdid2/b/a/d$a;

    invoke-static {v1}, Lcom/ta/utdid2/b/a/d$a;->a(Lcom/ta/utdid2/b/a/d$a;)Ljava/util/WeakHashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_17

    const/4 v1, 0x1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    .line 293
    :goto_18
    const/4 v4, 0x0

    if-eqz v1, :cond_30

    .line 294
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 295
    new-instance v5, Ljava/util/HashSet;

    iget-object v6, p0, Lcom/ta/utdid2/b/a/d$a$a;->a:Lcom/ta/utdid2/b/a/d$a;

    invoke-static {v6}, Lcom/ta/utdid2/b/a/d$a;->a(Lcom/ta/utdid2/b/a/d$a;)Ljava/util/WeakHashMap;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto :goto_31

    .line 293
    :cond_30
    move-object v5, v4

    .line 298
    :goto_31
    monitor-enter p0
    :try_end_32
    .catchall {:try_start_7 .. :try_end_32} :catchall_be

    .line 299
    :try_start_32
    iget-boolean v6, p0, Lcom/ta/utdid2/b/a/d$a$a;->k:Z

    if-eqz v6, :cond_41

    .line 300
    iget-object v6, p0, Lcom/ta/utdid2/b/a/d$a$a;->a:Lcom/ta/utdid2/b/a/d$a;

    invoke-static {v6}, Lcom/ta/utdid2/b/a/d$a;->a(Lcom/ta/utdid2/b/a/d$a;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->clear()V

    .line 301
    iput-boolean v2, p0, Lcom/ta/utdid2/b/a/d$a$a;->k:Z

    .line 304
    :cond_41
    iget-object v2, p0, Lcom/ta/utdid2/b/a/d$a$a;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 305
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 306
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 307
    if-ne v6, p0, :cond_6d

    .line 308
    iget-object v6, p0, Lcom/ta/utdid2/b/a/d$a$a;->a:Lcom/ta/utdid2/b/a/d$a;

    invoke-static {v6}, Lcom/ta/utdid2/b/a/d$a;->a(Lcom/ta/utdid2/b/a/d$a;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_76

    .line 310
    :cond_6d
    iget-object v8, p0, Lcom/ta/utdid2/b/a/d$a$a;->a:Lcom/ta/utdid2/b/a/d$a;

    invoke-static {v8}, Lcom/ta/utdid2/b/a/d$a;->a(Lcom/ta/utdid2/b/a/d$a;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :goto_76
    if-eqz v1, :cond_7b

    .line 314
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    :cond_7b
    goto :goto_4b

    .line 318
    :cond_7c
    iget-object v2, p0, Lcom/ta/utdid2/b/a/d$a$a;->b:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 319
    monitor-exit p0
    :try_end_82
    .catchall {:try_start_32 .. :try_end_82} :catchall_bb

    .line 320
    :try_start_82
    iget-object v2, p0, Lcom/ta/utdid2/b/a/d$a$a;->a:Lcom/ta/utdid2/b/a/d$a;

    invoke-static {v2}, Lcom/ta/utdid2/b/a/d$a;->a(Lcom/ta/utdid2/b/a/d$a;)Z

    move-result v2

    .line 321
    if-eqz v2, :cond_8f

    .line 322
    iget-object v6, p0, Lcom/ta/utdid2/b/a/d$a$a;->a:Lcom/ta/utdid2/b/a/d$a;

    invoke-virtual {v6, v3}, Lcom/ta/utdid2/b/a/d$a;->a(Z)V

    .line 324
    :cond_8f
    monitor-exit v0
    :try_end_90
    .catchall {:try_start_82 .. :try_end_90} :catchall_be

    .line 326
    if-eqz v1, :cond_ba

    .line 327
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    :goto_97
    if-ltz v0, :cond_ba

    .line 328
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 329
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_a3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_b7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ta/utdid2/b/a/b$b;

    .line 330
    if-eqz v6, :cond_b6

    .line 331
    iget-object v7, p0, Lcom/ta/utdid2/b/a/d$a$a;->a:Lcom/ta/utdid2/b/a/d$a;

    invoke-interface {v6, v7, v1}, Lcom/ta/utdid2/b/a/b$b;->a(Lcom/ta/utdid2/b/a/b;Ljava/lang/String;)V

    .line 334
    :cond_b6
    goto :goto_a3

    .line 327
    :cond_b7
    add-int/lit8 v0, v0, -0x1

    goto :goto_97

    .line 338
    :cond_ba
    return v2

    .line 319
    :catchall_bb
    move-exception v1

    :try_start_bc
    monitor-exit p0
    :try_end_bd
    .catchall {:try_start_bc .. :try_end_bd} :catchall_bb

    :try_start_bd
    throw v1

    .line 324
    :catchall_be
    move-exception v1

    monitor-exit v0
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_be

    goto :goto_c2

    :goto_c1
    throw v1

    :goto_c2
    goto :goto_c1
.end method
