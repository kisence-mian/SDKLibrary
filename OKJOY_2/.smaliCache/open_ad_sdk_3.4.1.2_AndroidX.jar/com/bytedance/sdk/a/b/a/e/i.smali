.class public final Lcom/bytedance/sdk/a/b/a/e/i;
.super Ljava/lang/Object;
.source "Http2Stream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/a/b/a/e/i$c;,
        Lcom/bytedance/sdk/a/b/a/e/i$a;,
        Lcom/bytedance/sdk/a/b/a/e/i$b;
    }
.end annotation


# static fields
.field static final synthetic i:Z


# instance fields
.field a:J

.field b:J

.field final c:I

.field final d:Lcom/bytedance/sdk/a/b/a/e/g;

.field final e:Lcom/bytedance/sdk/a/b/a/e/i$a;

.field final f:Lcom/bytedance/sdk/a/b/a/e/i$c;

.field final g:Lcom/bytedance/sdk/a/b/a/e/i$c;

.field h:Lcom/bytedance/sdk/a/b/a/e/b;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;"
        }
    .end annotation
.end field

.field private l:Z

.field private final m:Lcom/bytedance/sdk/a/b/a/e/i$b;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/bytedance/sdk/a/b/a/e/i;->i:Z

    return-void
.end method

.method constructor <init>(ILcom/bytedance/sdk/a/b/a/e/g;ZZLjava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/bytedance/sdk/a/b/a/e/g;",
            "ZZ",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;)V"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->a:J

    .line 75
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/i$c;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/b/a/e/i$c;-><init>(Lcom/bytedance/sdk/a/b/a/e/i;)V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->f:Lcom/bytedance/sdk/a/b/a/e/i$c;

    .line 76
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/i$c;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/b/a/e/i$c;-><init>(Lcom/bytedance/sdk/a/b/a/e/i;)V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->g:Lcom/bytedance/sdk/a/b/a/e/i$c;

    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->h:Lcom/bytedance/sdk/a/b/a/e/b;

    .line 87
    if-eqz p2, :cond_4d

    .line 88
    if-eqz p5, :cond_45

    .line 89
    iput p1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->c:I

    .line 90
    iput-object p2, p0, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    .line 91
    iget-object p1, p2, Lcom/bytedance/sdk/a/b/a/e/g;->m:Lcom/bytedance/sdk/a/b/a/e/n;

    .line 92
    invoke-virtual {p1}, Lcom/bytedance/sdk/a/b/a/e/n;->d()I

    move-result p1

    int-to-long v0, p1

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->b:J

    .line 93
    new-instance p1, Lcom/bytedance/sdk/a/b/a/e/i$b;

    iget-object p2, p2, Lcom/bytedance/sdk/a/b/a/e/g;->l:Lcom/bytedance/sdk/a/b/a/e/n;

    invoke-virtual {p2}, Lcom/bytedance/sdk/a/b/a/e/n;->d()I

    move-result p2

    int-to-long v0, p2

    invoke-direct {p1, p0, v0, v1}, Lcom/bytedance/sdk/a/b/a/e/i$b;-><init>(Lcom/bytedance/sdk/a/b/a/e/i;J)V

    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->m:Lcom/bytedance/sdk/a/b/a/e/i$b;

    .line 94
    new-instance p2, Lcom/bytedance/sdk/a/b/a/e/i$a;

    invoke-direct {p2, p0}, Lcom/bytedance/sdk/a/b/a/e/i$a;-><init>(Lcom/bytedance/sdk/a/b/a/e/i;)V

    iput-object p2, p0, Lcom/bytedance/sdk/a/b/a/e/i;->e:Lcom/bytedance/sdk/a/b/a/e/i$a;

    .line 95
    iput-boolean p4, p1, Lcom/bytedance/sdk/a/b/a/e/i$b;->b:Z

    .line 96
    iput-boolean p3, p2, Lcom/bytedance/sdk/a/b/a/e/i$a;->b:Z

    .line 97
    iput-object p5, p0, Lcom/bytedance/sdk/a/b/a/e/i;->j:Ljava/util/List;

    .line 98
    return-void

    .line 88
    :cond_45
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "requestHeaders == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 87
    :cond_4d
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "connection == null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private d(Lcom/bytedance/sdk/a/b/a/e/b;)Z
    .registers 4

    .line 258
    sget-boolean v0, Lcom/bytedance/sdk/a/b/a/e/i;->i:Z

    if-nez v0, :cond_11

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_11

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 259
    :cond_11
    :goto_11
    monitor-enter p0

    .line 260
    :try_start_12
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->h:Lcom/bytedance/sdk/a/b/a/e/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    .line 261
    monitor-exit p0

    return v1

    .line 263
    :cond_19
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->m:Lcom/bytedance/sdk/a/b/a/e/i$b;

    iget-boolean v0, v0, Lcom/bytedance/sdk/a/b/a/e/i$b;->b:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->e:Lcom/bytedance/sdk/a/b/a/e/i$a;

    iget-boolean v0, v0, Lcom/bytedance/sdk/a/b/a/e/i$a;->b:Z

    if-eqz v0, :cond_27

    .line 264
    monitor-exit p0

    return v1

    .line 266
    :cond_27
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->h:Lcom/bytedance/sdk/a/b/a/e/b;

    .line 267
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 268
    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_12 .. :try_end_2d} :catchall_36

    .line 269
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->c:I

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/a/e/g;->b(I)Lcom/bytedance/sdk/a/b/a/e/i;

    .line 270
    const/4 p1, 0x1

    return p1

    .line 268
    :catchall_36
    move-exception p1

    :try_start_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    throw p1
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 101
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->c:I

    return v0
.end method

.method a(J)V
    .registers 5

    .line 592
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->b:J

    .line 593
    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-lez p1, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 594
    :cond_e
    return-void
.end method

.method a(Lcom/bytedance/sdk/a/a/e;I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    sget-boolean v0, Lcom/bytedance/sdk/a/b/a/e/i;->i:Z

    if-nez v0, :cond_11

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_11

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 297
    :cond_11
    :goto_11
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->m:Lcom/bytedance/sdk/a/b/a/e/i$b;

    int-to-long v1, p2

    invoke-virtual {v0, p1, v1, v2}, Lcom/bytedance/sdk/a/b/a/e/i$b;->a(Lcom/bytedance/sdk/a/a/e;J)V

    .line 298
    return-void
.end method

.method public a(Lcom/bytedance/sdk/a/b/a/e/b;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 237
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/b/a/e/i;->d(Lcom/bytedance/sdk/a/b/a/e/b;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 238
    return-void

    .line 240
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->c:I

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/a/b/a/e/g;->b(ILcom/bytedance/sdk/a/b/a/e/b;)V

    .line 241
    return-void
.end method

.method a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;)V"
        }
    .end annotation

    .line 274
    sget-boolean v0, Lcom/bytedance/sdk/a/b/a/e/i;->i:Z

    if-nez v0, :cond_11

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_11

    :cond_b
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 275
    :cond_11
    :goto_11
    nop

    .line 276
    monitor-enter p0

    .line 277
    const/4 v0, 0x1

    :try_start_14
    iput-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->l:Z

    .line 278
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->k:Ljava/util/List;

    if-nez v1, :cond_24

    .line 279
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->k:Ljava/util/List;

    .line 280
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/e/i;->b()Z

    move-result v0

    .line 281
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    goto :goto_37

    .line 283
    :cond_24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 284
    iget-object v2, p0, Lcom/bytedance/sdk/a/b/a/e/i;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 285
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 286
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 287
    iput-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->k:Ljava/util/List;

    .line 289
    :goto_37
    monitor-exit p0
    :try_end_38
    .catchall {:try_start_14 .. :try_end_38} :catchall_42

    .line 290
    if-nez v0, :cond_41

    .line 291
    iget-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->c:I

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/a/b/a/e/g;->b(I)Lcom/bytedance/sdk/a/b/a/e/i;

    .line 293
    :cond_41
    return-void

    .line 289
    :catchall_42
    move-exception p1

    :try_start_43
    monitor-exit p0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p1
.end method

.method public b(Lcom/bytedance/sdk/a/b/a/e/b;)V
    .registers 4

    .line 248
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/b/a/e/i;->d(Lcom/bytedance/sdk/a/b/a/e/b;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 249
    return-void

    .line 251
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->c:I

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/a/b/a/e/g;->a(ILcom/bytedance/sdk/a/b/a/e/b;)V

    .line 252
    return-void
.end method

.method public declared-synchronized b()Z
    .registers 3

    monitor-enter p0

    .line 116
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->h:Lcom/bytedance/sdk/a/b/a/e/b;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_29

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 117
    monitor-exit p0

    return v1

    .line 119
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->m:Lcom/bytedance/sdk/a/b/a/e/i$b;

    iget-boolean v0, v0, Lcom/bytedance/sdk/a/b/a/e/i$b;->b:Z

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->m:Lcom/bytedance/sdk/a/b/a/e/i$b;

    iget-boolean v0, v0, Lcom/bytedance/sdk/a/b/a/e/i$b;->a:Z

    if-eqz v0, :cond_26

    :cond_14
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->e:Lcom/bytedance/sdk/a/b/a/e/i$a;

    iget-boolean v0, v0, Lcom/bytedance/sdk/a/b/a/e/i$a;->b:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->e:Lcom/bytedance/sdk/a/b/a/e/i$a;

    iget-boolean v0, v0, Lcom/bytedance/sdk/a/b/a/e/i$a;->a:Z

    if-eqz v0, :cond_26

    :cond_20
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->l:Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_29

    if-eqz v0, :cond_26

    .line 122
    monitor-exit p0

    return v1

    .line 124
    :cond_26
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 115
    :catchall_29
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c(Lcom/bytedance/sdk/a/b/a/e/b;)V
    .registers 3

    monitor-enter p0

    .line 314
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->h:Lcom/bytedance/sdk/a/b/a/e/b;

    if-nez v0, :cond_a

    .line 315
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->h:Lcom/bytedance/sdk/a/b/a/e/b;

    .line 316
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 318
    :cond_a
    monitor-exit p0

    return-void

    .line 313
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()Z
    .registers 5

    .line 131
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->c:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_9

    move v0, v1

    goto :goto_a

    :cond_9
    move v0, v2

    .line 132
    :goto_a
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-boolean v3, v3, Lcom/bytedance/sdk/a/b/a/e/g;->b:Z

    if-ne v3, v0, :cond_11

    goto :goto_12

    :cond_11
    move v1, v2

    :goto_12
    return v1
.end method

.method public declared-synchronized d()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 149
    :try_start_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/e/i;->c()Z

    move-result v0

    if-eqz v0, :cond_36

    .line 152
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->f:Lcom/bytedance/sdk/a/b/a/e/i$c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i$c;->a()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_3e

    .line 154
    :goto_c
    :try_start_c
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->k:Ljava/util/List;

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->h:Lcom/bytedance/sdk/a/b/a/e/b;

    if-nez v0, :cond_18

    .line 155
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/e/i;->l()V
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_2f

    goto :goto_c

    .line 158
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->f:Lcom/bytedance/sdk/a/b/a/e/i$c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i$c;->h()V

    .line 159
    nop

    .line 160
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->k:Ljava/util/List;

    .line 161
    if-eqz v0, :cond_27

    .line 162
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->k:Ljava/util/List;
    :try_end_25
    .catchall {:try_start_18 .. :try_end_25} :catchall_3e

    .line 163
    monitor-exit p0

    return-object v0

    .line 165
    :cond_27
    :try_start_27
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/o;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->h:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/o;-><init>(Lcom/bytedance/sdk/a/b/a/e/b;)V

    throw v0

    .line 158
    :catchall_2f
    move-exception v0

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->f:Lcom/bytedance/sdk/a/b/a/e/i$c;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/e/i$c;->h()V

    .line 159
    throw v0

    .line 150
    :cond_36
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "servers cannot read response headers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3e
    .catchall {:try_start_27 .. :try_end_3e} :catchall_3e

    .line 148
    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .line 203
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->f:Lcom/bytedance/sdk/a/b/a/e/i$c;

    return-object v0
.end method

.method public f()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->g:Lcom/bytedance/sdk/a/b/a/e/i$c;

    return-object v0
.end method

.method public g()Lcom/bytedance/sdk/a/a/s;
    .registers 2

    .line 214
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->m:Lcom/bytedance/sdk/a/b/a/e/i$b;

    return-object v0
.end method

.method public h()Lcom/bytedance/sdk/a/a/r;
    .registers 3

    .line 224
    monitor-enter p0

    .line 225
    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->l:Z

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/e/i;->c()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_14

    .line 226
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :cond_14
    :goto_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_18

    .line 229
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->e:Lcom/bytedance/sdk/a/b/a/e/i$a;

    return-object v0

    .line 228
    :catchall_18
    move-exception v0

    :try_start_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw v0
.end method

.method i()V
    .registers 3

    .line 301
    sget-boolean v0, Lcom/bytedance/sdk/a/b/a/e/i;->i:Z

    if-nez v0, :cond_11

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_11

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 303
    :cond_11
    :goto_11
    monitor-enter p0

    .line 304
    :try_start_12
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->m:Lcom/bytedance/sdk/a/b/a/e/i$b;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/bytedance/sdk/a/b/a/e/i$b;->b:Z

    .line 305
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/e/i;->b()Z

    move-result v0

    .line 306
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 307
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_29

    .line 308
    if-nez v0, :cond_28

    .line 309
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->c:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/g;->b(I)Lcom/bytedance/sdk/a/b/a/e/i;

    .line 311
    :cond_28
    return-void

    .line 307
    :catchall_29
    move-exception v0

    :try_start_2a
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_2a .. :try_end_2b} :catchall_29

    throw v0
.end method

.method j()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 471
    sget-boolean v0, Lcom/bytedance/sdk/a/b/a/e/i;->i:Z

    if-nez v0, :cond_11

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_11

    :cond_b
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 474
    :cond_11
    :goto_11
    monitor-enter p0

    .line 475
    :try_start_12
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->m:Lcom/bytedance/sdk/a/b/a/e/i$b;

    iget-boolean v0, v0, Lcom/bytedance/sdk/a/b/a/e/i$b;->b:Z

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->m:Lcom/bytedance/sdk/a/b/a/e/i$b;

    iget-boolean v0, v0, Lcom/bytedance/sdk/a/b/a/e/i$b;->a:Z

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->e:Lcom/bytedance/sdk/a/b/a/e/i$a;

    iget-boolean v0, v0, Lcom/bytedance/sdk/a/b/a/e/i$a;->b:Z

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->e:Lcom/bytedance/sdk/a/b/a/e/i$a;

    iget-boolean v0, v0, Lcom/bytedance/sdk/a/b/a/e/i$a;->a:Z

    if-eqz v0, :cond_2c

    :cond_2a
    const/4 v0, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v0, 0x0

    .line 476
    :goto_2d
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/e/i;->b()Z

    move-result v1

    .line 477
    monitor-exit p0
    :try_end_32
    .catchall {:try_start_12 .. :try_end_32} :catchall_44

    .line 478
    if-eqz v0, :cond_3a

    .line 483
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/b;->f:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/a/e/i;->a(Lcom/bytedance/sdk/a/b/a/e/b;)V

    goto :goto_43

    .line 484
    :cond_3a
    if-nez v1, :cond_43

    .line 485
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->c:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/g;->b(I)Lcom/bytedance/sdk/a/b/a/e/i;

    .line 487
    :cond_43
    :goto_43
    return-void

    .line 477
    :catchall_44
    move-exception v0

    :try_start_45
    monitor-exit p0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    throw v0
.end method

.method k()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 597
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->e:Lcom/bytedance/sdk/a/b/a/e/i$a;

    iget-boolean v0, v0, Lcom/bytedance/sdk/a/b/a/e/i$a;->a:Z

    if-nez v0, :cond_21

    .line 599
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->e:Lcom/bytedance/sdk/a/b/a/e/i$a;

    iget-boolean v0, v0, Lcom/bytedance/sdk/a/b/a/e/i$a;->b:Z

    if-nez v0, :cond_19

    .line 601
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->h:Lcom/bytedance/sdk/a/b/a/e/b;

    if-nez v0, :cond_11

    .line 604
    return-void

    .line 602
    :cond_11
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/o;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->h:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/o;-><init>(Lcom/bytedance/sdk/a/b/a/e/b;)V

    throw v0

    .line 600
    :cond_19
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 598
    :cond_21
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method l()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .line 612
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_5

    .line 615
    nop

    .line 616
    return-void

    .line 613
    :catch_5
    move-exception v0

    .line 614
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method
