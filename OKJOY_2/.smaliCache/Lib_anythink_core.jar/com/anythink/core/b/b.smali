.class public Lcom/anythink/core/b/b;
.super Lcom/anythink/core/common/g/a;

# interfaces
.implements Lcom/anythink/core/common/h$b;


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/anythink/core/common/h$a;

.field private e:Lcom/anythink/core/b/c;

.field private f:Lcom/anythink/core/b/a;

.field private g:Lcom/anythink/core/b/f;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:J

.field private m:J

.field private n:Z

.field private o:Z

.field private p:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 24
    const-class v0, Lcom/anythink/core/b/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/b/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/anythink/core/common/d/a;)V
    .registers 11

    .line 45
    invoke-direct {p0}, Lcom/anythink/core/common/g/a;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/b;->b:Ljava/util/List;

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/b;->c:Ljava/util/List;

    .line 47
    iget-object v0, p1, Lcom/anythink/core/common/d/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/core/b/b;->k:Ljava/lang/String;

    .line 48
    iget-wide v0, p1, Lcom/anythink/core/common/d/a;->i:J

    iput-wide v0, p0, Lcom/anythink/core/b/b;->l:J

    .line 49
    iget-wide v0, p1, Lcom/anythink/core/common/d/a;->e:J

    iput-wide v0, p0, Lcom/anythink/core/b/b;->m:J

    .line 51
    iget-object v0, p1, Lcom/anythink/core/common/d/a;->g:Ljava/util/List;

    .line 53
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 54
    nop

    .line 55
    nop

    .line 56
    nop

    .line 60
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move v5, v3

    move-object v3, v4

    :goto_33
    if-ge v5, v1, :cond_77

    .line 61
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/anythink/core/c/c$b;

    .line 63
    iget v7, v6, Lcom/anythink/core/c/c$b;->F:I

    sget v8, Lcom/anythink/core/c/c$b;->H:I

    if-eq v7, v8, :cond_6a

    iget v7, v6, Lcom/anythink/core/c/c$b;->F:I

    sget v8, Lcom/anythink/core/c/c$b;->J:I

    if-ne v7, v8, :cond_48

    goto :goto_6a

    .line 69
    :cond_48
    iget v7, v6, Lcom/anythink/core/c/c$b;->F:I

    sget v8, Lcom/anythink/core/c/c$b;->I:I

    if-ne v7, v8, :cond_59

    .line 70
    if-nez v3, :cond_55

    .line 71
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 73
    :cond_55
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_74

    .line 74
    :cond_59
    iget v7, v6, Lcom/anythink/core/c/c$b;->F:I

    sget v8, Lcom/anythink/core/c/c$b;->L:I

    if-ne v7, v8, :cond_74

    .line 75
    if-nez v4, :cond_66

    .line 76
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 78
    :cond_66
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_74

    .line 65
    :cond_6a
    :goto_6a
    if-nez v2, :cond_71

    .line 66
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 68
    :cond_71
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    :cond_74
    :goto_74
    add-int/lit8 v5, v5, 0x1

    goto :goto_33

    .line 83
    :cond_77
    const/4 v0, 0x1

    if-eqz v2, :cond_8c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8c

    .line 84
    new-instance v1, Lcom/anythink/core/b/c;

    invoke-virtual {p1, v2}, Lcom/anythink/core/common/d/a;->a(Ljava/util/List;)Lcom/anythink/core/common/d/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/anythink/core/b/c;-><init>(Lcom/anythink/core/common/d/a;)V

    iput-object v1, p0, Lcom/anythink/core/b/b;->e:Lcom/anythink/core/b/c;

    goto :goto_8e

    .line 86
    :cond_8c
    iput-boolean v0, p0, Lcom/anythink/core/b/b;->i:Z

    .line 89
    :goto_8e
    if-eqz v3, :cond_a2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_a2

    .line 90
    new-instance v1, Lcom/anythink/core/b/a;

    invoke-virtual {p1, v3}, Lcom/anythink/core/common/d/a;->b(Ljava/util/List;)Lcom/anythink/core/common/d/a;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/anythink/core/b/a;-><init>(Lcom/anythink/core/common/d/a;)V

    iput-object v1, p0, Lcom/anythink/core/b/b;->f:Lcom/anythink/core/b/a;

    goto :goto_a4

    .line 92
    :cond_a2
    iput-boolean v0, p0, Lcom/anythink/core/b/b;->h:Z

    .line 95
    :goto_a4
    if-eqz v4, :cond_b8

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b8

    .line 96
    new-instance v0, Lcom/anythink/core/b/f;

    invoke-virtual {p1, v4}, Lcom/anythink/core/common/d/a;->b(Ljava/util/List;)Lcom/anythink/core/common/d/a;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/anythink/core/b/f;-><init>(Lcom/anythink/core/common/d/a;)V

    iput-object v0, p0, Lcom/anythink/core/b/b;->g:Lcom/anythink/core/b/f;

    return-void

    .line 98
    :cond_b8
    iput-boolean v0, p0, Lcom/anythink/core/b/b;->j:Z

    .line 100
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/b/b;ZLjava/util/List;Z)V
    .registers 4

    .line 22
    nop

    .line 3241
    monitor-enter p0

    .line 3243
    if-eqz p1, :cond_a

    .line 3244
    :try_start_4
    iget-object p1, p0, Lcom/anythink/core/b/b;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_f

    .line 3246
    :cond_a
    iget-object p1, p0, Lcom/anythink/core/b/b;->c:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3248
    :goto_f
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_1a

    .line 3251
    iget-boolean p1, p0, Lcom/anythink/core/b/b;->o:Z

    if-eqz p1, :cond_16

    if-eqz p3, :cond_19

    .line 3252
    :cond_16
    invoke-direct {p0}, Lcom/anythink/core/b/b;->d()V

    .line 22
    :cond_19
    return-void

    .line 3248
    :catchall_1a
    move-exception p1

    :try_start_1b
    monitor-exit p0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method private a(ZLjava/util/List;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;Z)V"
        }
    .end annotation

    .line 241
    monitor-enter p0

    .line 243
    if-eqz p1, :cond_9

    .line 244
    :try_start_3
    iget-object p1, p0, Lcom/anythink/core/b/b;->b:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_e

    .line 246
    :cond_9
    iget-object p1, p0, Lcom/anythink/core/b/b;->c:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 248
    :goto_e
    monitor-exit p0
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_19

    .line 251
    iget-boolean p1, p0, Lcom/anythink/core/b/b;->o:Z

    if-eqz p1, :cond_15

    if-eqz p3, :cond_18

    .line 252
    :cond_15
    invoke-direct {p0}, Lcom/anythink/core/b/b;->d()V

    .line 254
    :cond_18
    return-void

    .line 248
    :catchall_19
    move-exception p1

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw p1
.end method

.method static synthetic a(Lcom/anythink/core/b/b;)Z
    .registers 2

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/b/b;->i:Z

    return v0
.end method

.method static synthetic b(Lcom/anythink/core/b/b;)V
    .registers 4

    .line 22
    nop

    .line 3279
    iget-boolean v0, p0, Lcom/anythink/core/b/b;->i:Z

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/anythink/core/b/b;->h:Z

    if-eqz v0, :cond_35

    iget-boolean v0, p0, Lcom/anythink/core/b/b;->j:Z

    if-eqz v0, :cond_35

    .line 3281
    iget-object v0, p0, Lcom/anythink/core/b/b;->p:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    .line 3282
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 3283
    iput-object v1, p0, Lcom/anythink/core/b/b;->p:Ljava/util/Timer;

    .line 3286
    :cond_17
    invoke-virtual {p0}, Lcom/anythink/core/b/b;->a()V

    .line 3288
    invoke-direct {p0}, Lcom/anythink/core/b/b;->d()V

    .line 3290
    iget-object v0, p0, Lcom/anythink/core/b/b;->d:Lcom/anythink/core/common/h$a;

    if-eqz v0, :cond_26

    .line 3291
    iget-object v2, p0, Lcom/anythink/core/b/b;->k:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/anythink/core/common/h$a;->a(Ljava/lang/String;)V

    .line 3294
    :cond_26
    nop

    .line 3299
    iget-object v0, p0, Lcom/anythink/core/b/b;->e:Lcom/anythink/core/b/c;

    if-eqz v0, :cond_2d

    .line 3300
    iput-object v1, p0, Lcom/anythink/core/b/b;->e:Lcom/anythink/core/b/c;

    .line 3302
    :cond_2d
    iget-object v0, p0, Lcom/anythink/core/b/b;->f:Lcom/anythink/core/b/a;

    if-eqz v0, :cond_33

    .line 3303
    iput-object v1, p0, Lcom/anythink/core/b/b;->f:Lcom/anythink/core/b/a;

    .line 3305
    :cond_33
    iput-object v1, p0, Lcom/anythink/core/b/b;->d:Lcom/anythink/core/common/h$a;

    .line 22
    :cond_35
    return-void
.end method

.method private c()V
    .registers 7

    .line 187
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/b/b;->p:Ljava/util/Timer;

    .line 188
    new-instance v0, Lcom/anythink/core/b/b$4;

    invoke-direct {v0, p0}, Lcom/anythink/core/b/b$4;-><init>(Lcom/anythink/core/b/b;)V

    .line 195
    iget-object v1, p0, Lcom/anythink/core/b/b;->p:Ljava/util/Timer;

    .line 2232
    iget-wide v2, p0, Lcom/anythink/core/b/b;->l:J

    .line 2233
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gtz v4, :cond_18

    .line 2234
    const-wide/16 v2, 0x7d0

    .line 2236
    :cond_18
    nop

    .line 195
    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 196
    return-void
.end method

.method static synthetic c(Lcom/anythink/core/b/b;)Z
    .registers 2

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/b/b;->h:Z

    return v0
.end method

.method private declared-synchronized d()V
    .registers 5

    monitor-enter p0

    .line 199
    :try_start_1
    iget-object v0, p0, Lcom/anythink/core/b/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 200
    iget-object v1, p0, Lcom/anythink/core/b/b;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 203
    if-gtz v0, :cond_11

    if-lez v1, :cond_59

    .line 204
    :cond_11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 205
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 207
    monitor-enter p0
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_5d

    .line 208
    if-lez v0, :cond_2b

    .line 209
    :try_start_1e
    iget-object v0, p0, Lcom/anythink/core/b/b;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 210
    iget-object v0, p0, Lcom/anythink/core/b/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_2b

    .line 217
    :catchall_29
    move-exception v0

    goto :goto_5b

    .line 213
    :cond_2b
    :goto_2b
    if-lez v1, :cond_37

    .line 214
    iget-object v0, p0, Lcom/anythink/core/b/b;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 215
    iget-object v0, p0, Lcom/anythink/core/b/b;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 217
    :cond_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_1e .. :try_end_38} :catchall_29

    .line 219
    :try_start_38
    iget-object v0, p0, Lcom/anythink/core/b/b;->d:Lcom/anythink/core/common/h$a;

    if-eqz v0, :cond_59

    .line 220
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4c

    .line 221
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 222
    iget-object v0, p0, Lcom/anythink/core/b/b;->d:Lcom/anythink/core/common/h$a;

    iget-object v1, p0, Lcom/anythink/core/b/b;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/anythink/core/common/h$a;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 224
    :cond_4c
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_59

    .line 225
    iget-object v0, p0, Lcom/anythink/core/b/b;->d:Lcom/anythink/core/common/h$a;

    iget-object v1, p0, Lcom/anythink/core/b/b;->k:Ljava/lang/String;

    invoke-interface {v0, v1, v3}, Lcom/anythink/core/common/h$a;->b(Ljava/lang/String;Ljava/util/List;)V
    :try_end_59
    .catchall {:try_start_38 .. :try_end_59} :catchall_5d

    .line 229
    :cond_59
    monitor-exit p0

    return-void

    .line 217
    :goto_5b
    :try_start_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_29

    :try_start_5c
    throw v0
    :try_end_5d
    .catchall {:try_start_5c .. :try_end_5d} :catchall_5d

    .line 198
    :catchall_5d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/anythink/core/b/b;)Z
    .registers 2

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/b/b;->j:Z

    return v0
.end method

.method private e()J
    .registers 5

    .line 232
    iget-wide v0, p0, Lcom/anythink/core/b/b;->l:J

    .line 233
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_a

    .line 234
    const-wide/16 v0, 0x7d0

    .line 236
    :cond_a
    return-wide v0
.end method

.method static synthetic e(Lcom/anythink/core/b/b;)Z
    .registers 2

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/b/b;->o:Z

    return v0
.end method

.method private f()V
    .registers 4

    .line 279
    iget-boolean v0, p0, Lcom/anythink/core/b/b;->i:Z

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lcom/anythink/core/b/b;->h:Z

    if-eqz v0, :cond_34

    iget-boolean v0, p0, Lcom/anythink/core/b/b;->j:Z

    if-eqz v0, :cond_34

    .line 281
    iget-object v0, p0, Lcom/anythink/core/b/b;->p:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_16

    .line 282
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 283
    iput-object v1, p0, Lcom/anythink/core/b/b;->p:Ljava/util/Timer;

    .line 286
    :cond_16
    invoke-virtual {p0}, Lcom/anythink/core/b/b;->a()V

    .line 288
    invoke-direct {p0}, Lcom/anythink/core/b/b;->d()V

    .line 290
    iget-object v0, p0, Lcom/anythink/core/b/b;->d:Lcom/anythink/core/common/h$a;

    if-eqz v0, :cond_25

    .line 291
    iget-object v2, p0, Lcom/anythink/core/b/b;->k:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/anythink/core/common/h$a;->a(Ljava/lang/String;)V

    .line 294
    :cond_25
    nop

    .line 2299
    iget-object v0, p0, Lcom/anythink/core/b/b;->e:Lcom/anythink/core/b/c;

    if-eqz v0, :cond_2c

    .line 2300
    iput-object v1, p0, Lcom/anythink/core/b/b;->e:Lcom/anythink/core/b/c;

    .line 2302
    :cond_2c
    iget-object v0, p0, Lcom/anythink/core/b/b;->f:Lcom/anythink/core/b/a;

    if-eqz v0, :cond_32

    .line 2303
    iput-object v1, p0, Lcom/anythink/core/b/b;->f:Lcom/anythink/core/b/a;

    .line 2305
    :cond_32
    iput-object v1, p0, Lcom/anythink/core/b/b;->d:Lcom/anythink/core/common/h$a;

    .line 296
    :cond_34
    return-void
.end method

.method static synthetic f(Lcom/anythink/core/b/b;)V
    .registers 1

    .line 22
    invoke-direct {p0}, Lcom/anythink/core/b/b;->d()V

    return-void
.end method

.method private g()V
    .registers 3

    .line 299
    iget-object v0, p0, Lcom/anythink/core/b/b;->e:Lcom/anythink/core/b/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 300
    iput-object v1, p0, Lcom/anythink/core/b/b;->e:Lcom/anythink/core/b/c;

    .line 302
    :cond_7
    iget-object v0, p0, Lcom/anythink/core/b/b;->f:Lcom/anythink/core/b/a;

    if-eqz v0, :cond_d

    .line 303
    iput-object v1, p0, Lcom/anythink/core/b/b;->f:Lcom/anythink/core/b/a;

    .line 305
    :cond_d
    iput-object v1, p0, Lcom/anythink/core/b/b;->d:Lcom/anythink/core/common/h$a;

    .line 306
    return-void
.end method


# virtual methods
.method public final a(Lcom/anythink/core/common/h$a;)V
    .registers 7

    .line 109
    iput-object p1, p0, Lcom/anythink/core/b/b;->d:Lcom/anythink/core/common/h$a;

    .line 112
    nop

    .line 1187
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/anythink/core/b/b;->p:Ljava/util/Timer;

    .line 1188
    new-instance p1, Lcom/anythink/core/b/b$4;

    invoke-direct {p1, p0}, Lcom/anythink/core/b/b$4;-><init>(Lcom/anythink/core/b/b;)V

    .line 1195
    iget-object v0, p0, Lcom/anythink/core/b/b;->p:Ljava/util/Timer;

    .line 1232
    iget-wide v1, p0, Lcom/anythink/core/b/b;->l:J

    .line 1233
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-gtz v3, :cond_1b

    .line 1234
    const-wide/16 v1, 0x7d0

    .line 1236
    :cond_1b
    nop

    .line 1195
    invoke-virtual {v0, p1, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 115
    iget-wide v0, p0, Lcom/anythink/core/b/b;->m:J

    invoke-super {p0, v0, v1}, Lcom/anythink/core/common/g/a;->a(J)V

    .line 117
    iget-object p1, p0, Lcom/anythink/core/b/b;->e:Lcom/anythink/core/b/c;

    if-eqz p1, :cond_37

    .line 119
    iget-boolean v0, p0, Lcom/anythink/core/b/b;->n:Z

    invoke-virtual {p1, v0}, Lcom/anythink/core/b/c;->a(Z)V

    .line 120
    iget-object p1, p0, Lcom/anythink/core/b/b;->e:Lcom/anythink/core/b/c;

    new-instance v0, Lcom/anythink/core/b/b$1;

    invoke-direct {v0, p0}, Lcom/anythink/core/b/b$1;-><init>(Lcom/anythink/core/b/b;)V

    invoke-virtual {p1, v0}, Lcom/anythink/core/b/c;->a(Lcom/anythink/core/b/b/a;)V

    .line 139
    :cond_37
    iget-object p1, p0, Lcom/anythink/core/b/b;->f:Lcom/anythink/core/b/a;

    if-eqz p1, :cond_4a

    .line 141
    iget-boolean v0, p0, Lcom/anythink/core/b/b;->n:Z

    invoke-virtual {p1, v0}, Lcom/anythink/core/b/a;->a(Z)V

    .line 142
    iget-object p1, p0, Lcom/anythink/core/b/b;->f:Lcom/anythink/core/b/a;

    new-instance v0, Lcom/anythink/core/b/b$2;

    invoke-direct {v0, p0}, Lcom/anythink/core/b/b$2;-><init>(Lcom/anythink/core/b/b;)V

    invoke-virtual {p1, v0}, Lcom/anythink/core/b/a;->a(Lcom/anythink/core/b/b/a;)V

    .line 161
    :cond_4a
    iget-object p1, p0, Lcom/anythink/core/b/b;->g:Lcom/anythink/core/b/f;

    if-eqz p1, :cond_5d

    .line 162
    iget-boolean v0, p0, Lcom/anythink/core/b/b;->n:Z

    invoke-virtual {p1, v0}, Lcom/anythink/core/b/f;->a(Z)V

    .line 163
    iget-object p1, p0, Lcom/anythink/core/b/b;->g:Lcom/anythink/core/b/f;

    new-instance v0, Lcom/anythink/core/b/b$3;

    invoke-direct {v0, p0}, Lcom/anythink/core/b/b$3;-><init>(Lcom/anythink/core/b/b;)V

    invoke-virtual {p1, v0}, Lcom/anythink/core/b/f;->a(Lcom/anythink/core/b/b/a;)V

    .line 181
    :cond_5d
    return-void
.end method

.method public final a(Z)V
    .registers 2

    .line 104
    iput-boolean p1, p0, Lcom/anythink/core/b/b;->n:Z

    .line 105
    return-void
.end method

.method protected final b()V
    .registers 2

    .line 258
    iget-boolean v0, p0, Lcom/anythink/core/b/b;->i:Z

    if-nez v0, :cond_b

    .line 259
    iget-object v0, p0, Lcom/anythink/core/b/b;->e:Lcom/anythink/core/b/c;

    if-eqz v0, :cond_b

    .line 260
    invoke-virtual {v0}, Lcom/anythink/core/b/c;->a()V

    .line 264
    :cond_b
    iget-boolean v0, p0, Lcom/anythink/core/b/b;->h:Z

    if-nez v0, :cond_16

    .line 265
    iget-object v0, p0, Lcom/anythink/core/b/b;->f:Lcom/anythink/core/b/a;

    if-eqz v0, :cond_16

    .line 266
    invoke-virtual {v0}, Lcom/anythink/core/b/a;->a()V

    .line 270
    :cond_16
    iget-boolean v0, p0, Lcom/anythink/core/b/b;->j:Z

    if-nez v0, :cond_21

    .line 271
    iget-object v0, p0, Lcom/anythink/core/b/b;->g:Lcom/anythink/core/b/f;

    if-eqz v0, :cond_21

    .line 272
    invoke-virtual {v0}, Lcom/anythink/core/b/f;->a()V

    .line 275
    :cond_21
    return-void
.end method
