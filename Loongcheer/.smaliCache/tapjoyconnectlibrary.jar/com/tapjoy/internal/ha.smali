.class public final Lcom/tapjoy/internal/ha;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final a:Lcom/tapjoy/internal/he;

.field final b:Lcom/tapjoy/internal/gz;

.field c:J

.field private d:I

.field private final e:Lcom/tapjoy/internal/ey$a;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/he;Lcom/tapjoy/internal/gz;)V
    .registers 4

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/tapjoy/internal/ha;->d:I

    .line 60
    new-instance v0, Lcom/tapjoy/internal/ey$a;

    invoke-direct {v0}, Lcom/tapjoy/internal/ey$a;-><init>()V

    iput-object v0, p0, Lcom/tapjoy/internal/ha;->e:Lcom/tapjoy/internal/ey$a;

    .line 65
    iput-object p1, p0, Lcom/tapjoy/internal/ha;->a:Lcom/tapjoy/internal/he;

    .line 66
    iput-object p2, p0, Lcom/tapjoy/internal/ha;->b:Lcom/tapjoy/internal/gz;

    .line 67
    return-void
.end method


# virtual methods
.method public final a(Lcom/tapjoy/internal/ez;Ljava/lang/String;)Lcom/tapjoy/internal/ew$a;
    .registers 6

    .line 282
    iget-object v0, p0, Lcom/tapjoy/internal/ha;->a:Lcom/tapjoy/internal/he;

    invoke-virtual {v0}, Lcom/tapjoy/internal/he;->b()Lcom/tapjoy/internal/fc;

    move-result-object v0

    .line 283
    new-instance v1, Lcom/tapjoy/internal/ew$a;

    invoke-direct {v1}, Lcom/tapjoy/internal/ew$a;-><init>()V

    .line 284
    sget-object v2, Lcom/tapjoy/internal/he;->a:Ljava/lang/String;

    iput-object v2, v1, Lcom/tapjoy/internal/ew$a;->g:Ljava/lang/String;

    .line 285
    iput-object p1, v1, Lcom/tapjoy/internal/ew$a;->c:Lcom/tapjoy/internal/ez;

    .line 286
    iput-object p2, v1, Lcom/tapjoy/internal/ew$a;->d:Ljava/lang/String;

    .line 288
    invoke-static {}, Lcom/tapjoy/internal/u;->c()Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 289
    invoke-static {}, Lcom/tapjoy/internal/u;->b()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v1, Lcom/tapjoy/internal/ew$a;->e:Ljava/lang/Long;

    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v1, Lcom/tapjoy/internal/ew$a;->f:Ljava/lang/Long;

    goto :goto_42

    .line 292
    :cond_2e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v1, Lcom/tapjoy/internal/ew$a;->e:Ljava/lang/Long;

    .line 293
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, v1, Lcom/tapjoy/internal/ew$a;->h:Ljava/lang/Long;

    .line 296
    :goto_42
    iget-object p1, v0, Lcom/tapjoy/internal/fc;->d:Lcom/tapjoy/internal/fb;

    iput-object p1, v1, Lcom/tapjoy/internal/ew$a;->j:Lcom/tapjoy/internal/fb;

    .line 297
    iget-object p1, v0, Lcom/tapjoy/internal/fc;->e:Lcom/tapjoy/internal/ev;

    iput-object p1, v1, Lcom/tapjoy/internal/ew$a;->k:Lcom/tapjoy/internal/ev;

    .line 298
    iget-object p1, v0, Lcom/tapjoy/internal/fc;->f:Lcom/tapjoy/internal/fi;

    iput-object p1, v1, Lcom/tapjoy/internal/ew$a;->l:Lcom/tapjoy/internal/fi;

    .line 299
    return-object v1
.end method

.method final a()V
    .registers 5

    .line 88
    iget-object v0, p0, Lcom/tapjoy/internal/ha;->a:Lcom/tapjoy/internal/he;

    invoke-virtual {v0}, Lcom/tapjoy/internal/he;->d()Lcom/tapjoy/internal/fd;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/tapjoy/internal/ha;->a:Lcom/tapjoy/internal/he;

    .line 1401
    monitor-enter v1

    .line 1402
    :try_start_9
    iget-object v2, v1, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object v2, v2, Lcom/tapjoy/internal/hl;->h:Lcom/tapjoy/internal/j;

    invoke-virtual {v2}, Lcom/tapjoy/internal/j;->b()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 1403
    iget-object v3, v1, Lcom/tapjoy/internal/he;->c:Lcom/tapjoy/internal/hl;

    iget-object v3, v3, Lcom/tapjoy/internal/hl;->h:Lcom/tapjoy/internal/j;

    invoke-virtual {v3, v2}, Lcom/tapjoy/internal/j;->a(I)V

    .line 1404
    iget-object v3, v1, Lcom/tapjoy/internal/he;->b:Lcom/tapjoy/internal/fi$a;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v3, Lcom/tapjoy/internal/fi$a;->h:Ljava/lang/Integer;

    .line 1405
    monitor-exit v1
    :try_end_23
    .catchall {:try_start_9 .. :try_end_23} :catchall_39

    .line 90
    sget-object v1, Lcom/tapjoy/internal/ez;->a:Lcom/tapjoy/internal/ez;

    const-string v2, "bootup"

    invoke-virtual {p0, v1, v2}, Lcom/tapjoy/internal/ha;->a(Lcom/tapjoy/internal/ez;Ljava/lang/String;)Lcom/tapjoy/internal/ew$a;

    move-result-object v1

    .line 91
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/tapjoy/internal/ha;->c:J

    .line 92
    if-eqz v0, :cond_35

    .line 93
    iput-object v0, v1, Lcom/tapjoy/internal/ew$a;->s:Lcom/tapjoy/internal/fd;

    .line 95
    :cond_35
    invoke-virtual {p0, v1}, Lcom/tapjoy/internal/ha;->a(Lcom/tapjoy/internal/ew$a;)V

    .line 96
    return-void

    .line 1405
    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0
.end method

.method public final declared-synchronized a(Lcom/tapjoy/internal/ew$a;)V
    .registers 4

    monitor-enter p0

    .line 303
    :try_start_1
    iget-object v0, p1, Lcom/tapjoy/internal/ew$a;->c:Lcom/tapjoy/internal/ez;

    sget-object v1, Lcom/tapjoy/internal/ez;->d:Lcom/tapjoy/internal/ez;

    if-eq v0, v1, :cond_33

    .line 304
    iget v0, p0, Lcom/tapjoy/internal/ha;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/tapjoy/internal/ha;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/tapjoy/internal/ew$a;->n:Ljava/lang/Integer;

    .line 305
    iget-object v0, p0, Lcom/tapjoy/internal/ha;->e:Lcom/tapjoy/internal/ey$a;

    iget-object v0, v0, Lcom/tapjoy/internal/ey$a;->c:Lcom/tapjoy/internal/ez;

    if-eqz v0, :cond_21

    .line 306
    iget-object v0, p0, Lcom/tapjoy/internal/ha;->e:Lcom/tapjoy/internal/ey$a;

    invoke-virtual {v0}, Lcom/tapjoy/internal/ey$a;->b()Lcom/tapjoy/internal/ey;

    move-result-object v0

    iput-object v0, p1, Lcom/tapjoy/internal/ew$a;->o:Lcom/tapjoy/internal/ey;

    .line 309
    :cond_21
    iget-object v0, p0, Lcom/tapjoy/internal/ha;->e:Lcom/tapjoy/internal/ey$a;

    iget-object v1, p1, Lcom/tapjoy/internal/ew$a;->c:Lcom/tapjoy/internal/ez;

    iput-object v1, v0, Lcom/tapjoy/internal/ey$a;->c:Lcom/tapjoy/internal/ez;

    .line 310
    iget-object v0, p0, Lcom/tapjoy/internal/ha;->e:Lcom/tapjoy/internal/ey$a;

    iget-object v1, p1, Lcom/tapjoy/internal/ew$a;->d:Ljava/lang/String;

    iput-object v1, v0, Lcom/tapjoy/internal/ey$a;->d:Ljava/lang/String;

    .line 311
    iget-object v0, p0, Lcom/tapjoy/internal/ha;->e:Lcom/tapjoy/internal/ey$a;

    iget-object v1, p1, Lcom/tapjoy/internal/ew$a;->t:Ljava/lang/String;

    iput-object v1, v0, Lcom/tapjoy/internal/ey$a;->e:Ljava/lang/String;

    .line 313
    :cond_33
    iget-object v0, p0, Lcom/tapjoy/internal/ha;->b:Lcom/tapjoy/internal/gz;

    invoke-virtual {p1}, Lcom/tapjoy/internal/ew$a;->b()Lcom/tapjoy/internal/ew;

    move-result-object p1
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_64

    .line 2214
    :try_start_39
    iget-object v1, v0, Lcom/tapjoy/internal/gz;->a:Lcom/tapjoy/internal/hn;

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/hn;->a(Lcom/tapjoy/internal/ew;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_3e} :catch_61
    .catchall {:try_start_39 .. :try_end_3e} :catchall_64

    .line 2218
    nop

    .line 2220
    :try_start_3f
    iget-object v1, v0, Lcom/tapjoy/internal/gz;->b:Lcom/tapjoy/internal/by;

    if-eqz v1, :cond_5a

    .line 3017
    sget-boolean v1, Lcom/tapjoy/internal/gy;->a:Z

    .line 2221
    if-nez v1, :cond_54

    iget-object p1, p1, Lcom/tapjoy/internal/ew;->n:Lcom/tapjoy/internal/ez;

    sget-object v1, Lcom/tapjoy/internal/ez;->c:Lcom/tapjoy/internal/ez;

    if-eq p1, v1, :cond_4e

    goto :goto_54

    .line 2226
    :cond_4e
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/gz;->a(Z)V
    :try_end_52
    .catchall {:try_start_3f .. :try_end_52} :catchall_64

    monitor-exit p0

    return-void

    .line 2223
    :cond_54
    :goto_54
    const/4 p1, 0x1

    :try_start_55
    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/gz;->a(Z)V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_64

    .line 2224
    monitor-exit p0

    return-void

    .line 2229
    :cond_5a
    :try_start_5a
    iget-object p1, v0, Lcom/tapjoy/internal/gz;->a:Lcom/tapjoy/internal/hn;

    invoke-virtual {p1}, Lcom/tapjoy/internal/hn;->flush()V
    :try_end_5f
    .catchall {:try_start_5a .. :try_end_5f} :catchall_64

    .line 314
    monitor-exit p0

    return-void

    .line 2215
    :catch_61
    move-exception p1

    .line 2217
    monitor-exit p0

    return-void

    .line 302
    :catchall_64
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final a(Ljava/lang/String;)V
    .registers 5

    .line 210
    sget-object v0, Lcom/tapjoy/internal/ez;->a:Lcom/tapjoy/internal/ez;

    const-string v1, "push_ignore"

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/ha;->a(Lcom/tapjoy/internal/ez;Ljava/lang/String;)Lcom/tapjoy/internal/ew$a;

    move-result-object v0

    .line 211
    new-instance v1, Lcom/tapjoy/internal/fd;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1}, Lcom/tapjoy/internal/fd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/tapjoy/internal/ew$a;->s:Lcom/tapjoy/internal/fd;

    .line 212
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/ha;->a(Lcom/tapjoy/internal/ew$a;)V

    .line 213
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;DLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 119
    iget-object v0, p0, Lcom/tapjoy/internal/ha;->a:Lcom/tapjoy/internal/he;

    invoke-virtual {v0, p2, p3, p4}, Lcom/tapjoy/internal/he;->a(Ljava/lang/String;D)V

    .line 121
    sget-object v0, Lcom/tapjoy/internal/ez;->a:Lcom/tapjoy/internal/ez;

    const-string v1, "purchase"

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/ha;->a(Lcom/tapjoy/internal/ez;Ljava/lang/String;)Lcom/tapjoy/internal/ew$a;

    move-result-object v0

    .line 122
    new-instance v1, Lcom/tapjoy/internal/fe$a;

    invoke-direct {v1}, Lcom/tapjoy/internal/fe$a;-><init>()V

    .line 123
    iput-object p1, v1, Lcom/tapjoy/internal/fe$a;->c:Ljava/lang/String;

    .line 124
    if-eqz p2, :cond_18

    .line 125
    iput-object p2, v1, Lcom/tapjoy/internal/fe$a;->f:Ljava/lang/String;

    .line 127
    :cond_18
    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput-object p1, v1, Lcom/tapjoy/internal/fe$a;->e:Ljava/lang/Double;

    .line 128
    if-eqz p7, :cond_22

    .line 129
    iput-object p7, v1, Lcom/tapjoy/internal/fe$a;->m:Ljava/lang/String;

    .line 131
    :cond_22
    if-eqz p5, :cond_26

    .line 132
    iput-object p5, v1, Lcom/tapjoy/internal/fe$a;->o:Ljava/lang/String;

    .line 134
    :cond_26
    if-eqz p6, :cond_2a

    .line 135
    iput-object p6, v1, Lcom/tapjoy/internal/fe$a;->p:Ljava/lang/String;

    .line 137
    :cond_2a
    invoke-virtual {v1}, Lcom/tapjoy/internal/fe$a;->b()Lcom/tapjoy/internal/fe;

    move-result-object p1

    iput-object p1, v0, Lcom/tapjoy/internal/ew$a;->p:Lcom/tapjoy/internal/fe;

    .line 138
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/ha;->a(Lcom/tapjoy/internal/ew$a;)V

    .line 140
    iget-object p1, p0, Lcom/tapjoy/internal/ha;->a:Lcom/tapjoy/internal/he;

    iget-object p2, v0, Lcom/tapjoy/internal/ew$a;->e:Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p5

    invoke-virtual {p1, p5, p6, p3, p4}, Lcom/tapjoy/internal/he;->a(JD)V

    .line 141
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;IJJLjava/util/Map;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "IJJ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 268
    sget-object v0, Lcom/tapjoy/internal/ez;->d:Lcom/tapjoy/internal/ez;

    invoke-virtual {p0, v0, p1}, Lcom/tapjoy/internal/ha;->a(Lcom/tapjoy/internal/ez;Ljava/lang/String;)Lcom/tapjoy/internal/ew$a;

    move-result-object p1

    .line 269
    iput-object p2, p1, Lcom/tapjoy/internal/ew$a;->x:Ljava/lang/String;

    .line 270
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p1, Lcom/tapjoy/internal/ew$a;->y:Ljava/lang/Integer;

    .line 271
    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p1, Lcom/tapjoy/internal/ew$a;->z:Ljava/lang/Long;

    .line 272
    invoke-static {p6, p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, p1, Lcom/tapjoy/internal/ew$a;->A:Ljava/lang/Long;

    .line 273
    if-eqz p8, :cond_47

    .line 274
    invoke-interface {p8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_24
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_47

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 275
    iget-object p4, p1, Lcom/tapjoy/internal/ew$a;->w:Ljava/util/List;

    new-instance p5, Lcom/tapjoy/internal/fa;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-direct {p5, p6, p3}, Lcom/tapjoy/internal/fa;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    goto :goto_24

    .line 278
    :cond_47
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/ha;->a(Lcom/tapjoy/internal/ew$a;)V

    .line 279
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 229
    sget-object v0, Lcom/tapjoy/internal/ez;->c:Lcom/tapjoy/internal/ez;

    invoke-virtual {p0, v0, p2}, Lcom/tapjoy/internal/ha;->a(Lcom/tapjoy/internal/ez;Ljava/lang/String;)Lcom/tapjoy/internal/ew$a;

    move-result-object p2

    .line 230
    iput-object p1, p2, Lcom/tapjoy/internal/ew$a;->t:Ljava/lang/String;

    .line 231
    iput-object p3, p2, Lcom/tapjoy/internal/ew$a;->u:Ljava/lang/String;

    .line 232
    iput-object p4, p2, Lcom/tapjoy/internal/ew$a;->v:Ljava/lang/String;

    .line 233
    if-eqz p5, :cond_39

    .line 234
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_39

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 235
    iget-object p4, p2, Lcom/tapjoy/internal/ew$a;->w:Ljava/util/List;

    new-instance p5, Lcom/tapjoy/internal/fa;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-direct {p5, v0, p3}, Lcom/tapjoy/internal/fa;-><init>(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    goto :goto_16

    .line 238
    :cond_39
    invoke-virtual {p0, p2}, Lcom/tapjoy/internal/ha;->a(Lcom/tapjoy/internal/ew$a;)V

    .line 239
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 242
    sget-object v0, Lcom/tapjoy/internal/ez;->b:Lcom/tapjoy/internal/ez;

    const-string v1, "impression"

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/ha;->a(Lcom/tapjoy/internal/ez;Ljava/lang/String;)Lcom/tapjoy/internal/ew$a;

    move-result-object v0

    .line 243
    if-eqz p1, :cond_10

    .line 244
    invoke-static {p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/tapjoy/internal/ew$a;->r:Ljava/lang/String;

    .line 246
    :cond_10
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/ha;->a(Lcom/tapjoy/internal/ew$a;)V

    .line 247
    return-void
.end method

.method public final a(Ljava/util/Map;J)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;J)V"
        }
    .end annotation

    .line 250
    sget-object v0, Lcom/tapjoy/internal/ez;->b:Lcom/tapjoy/internal/ez;

    const-string v1, "view"

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/ha;->a(Lcom/tapjoy/internal/ez;Ljava/lang/String;)Lcom/tapjoy/internal/ew$a;

    move-result-object v0

    .line 251
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iput-object p2, v0, Lcom/tapjoy/internal/ew$a;->i:Ljava/lang/Long;

    .line 252
    if-eqz p1, :cond_16

    .line 253
    invoke-static {p1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/tapjoy/internal/ew$a;->r:Ljava/lang/String;

    .line 255
    :cond_16
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/ha;->a(Lcom/tapjoy/internal/ew$a;)V

    .line 256
    return-void
.end method

.method public final a(Ljava/util/Map;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 259
    sget-object v0, Lcom/tapjoy/internal/ez;->b:Lcom/tapjoy/internal/ez;

    const-string v1, "click"

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/ha;->a(Lcom/tapjoy/internal/ez;Ljava/lang/String;)Lcom/tapjoy/internal/ew$a;

    move-result-object v0

    .line 260
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 261
    const-string p1, "region"

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    invoke-static {v1}, Lcom/tapjoy/internal/bc;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/tapjoy/internal/ew$a;->r:Ljava/lang/String;

    .line 263
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/ha;->a(Lcom/tapjoy/internal/ew$a;)V

    .line 264
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 5

    .line 216
    sget-object v0, Lcom/tapjoy/internal/ez;->a:Lcom/tapjoy/internal/ez;

    const-string v1, "push_show"

    invoke-virtual {p0, v0, v1}, Lcom/tapjoy/internal/ha;->a(Lcom/tapjoy/internal/ez;Ljava/lang/String;)Lcom/tapjoy/internal/ew$a;

    move-result-object v0

    .line 217
    new-instance v1, Lcom/tapjoy/internal/fd;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, p1}, Lcom/tapjoy/internal/fd;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/tapjoy/internal/ew$a;->s:Lcom/tapjoy/internal/fd;

    .line 218
    invoke-virtual {p0, v0}, Lcom/tapjoy/internal/ha;->a(Lcom/tapjoy/internal/ew$a;)V

    .line 219
    return-void
.end method
