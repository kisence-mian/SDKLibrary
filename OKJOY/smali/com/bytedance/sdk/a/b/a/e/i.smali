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
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
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

    .prologue
    .line 36
    const-class v0, Lcom/bytedance/sdk/a/b/a/e/i;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/bytedance/sdk/a/b/a/e/i;->i:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method constructor <init>(ILcom/bytedance/sdk/a/b/a/e/g;ZZLjava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/bytedance/sdk/a/b/a/e/g;",
            "ZZ",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;)V"
        }
    .end annotation

    .prologue
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
    if-nez p2, :cond_22

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connection == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_22
    if-nez p5, :cond_2c

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "requestHeaders == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 89
    :cond_2c
    iput p1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->c:I

    .line 90
    iput-object p2, p0, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    .line 91
    iget-object v0, p2, Lcom/bytedance/sdk/a/b/a/e/g;->m:Lcom/bytedance/sdk/a/b/a/e/n;

    .line 92
    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/n;->d()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->b:J

    .line 93
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/i$b;

    iget-object v1, p2, Lcom/bytedance/sdk/a/b/a/e/g;->l:Lcom/bytedance/sdk/a/b/a/e/n;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/e/n;->d()I

    move-result v1

    int-to-long v2, v1

    invoke-direct {v0, p0, v2, v3}, Lcom/bytedance/sdk/a/b/a/e/i$b;-><init>(Lcom/bytedance/sdk/a/b/a/e/i;J)V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->m:Lcom/bytedance/sdk/a/b/a/e/i$b;

    .line 94
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/i$a;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/a/b/a/e/i$a;-><init>(Lcom/bytedance/sdk/a/b/a/e/i;)V

    iput-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->e:Lcom/bytedance/sdk/a/b/a/e/i$a;

    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->m:Lcom/bytedance/sdk/a/b/a/e/i$b;

    iput-boolean p4, v0, Lcom/bytedance/sdk/a/b/a/e/i$b;->b:Z

    .line 96
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->e:Lcom/bytedance/sdk/a/b/a/e/i$a;

    iput-boolean p3, v0, Lcom/bytedance/sdk/a/b/a/e/i$a;->b:Z

    .line 97
    iput-object p5, p0, Lcom/bytedance/sdk/a/b/a/e/i;->j:Ljava/util/List;

    .line 98
    return-void
.end method

.method private d(Lcom/bytedance/sdk/a/b/a/e/b;)Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 258
    sget-boolean v1, Lcom/bytedance/sdk/a/b/a/e/i;->i:Z

    if-nez v1, :cond_11

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 259
    :cond_11
    monitor-enter p0

    .line 260
    :try_start_12
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->h:Lcom/bytedance/sdk/a/b/a/e/b;

    if-eqz v1, :cond_18

    .line 261
    monitor-exit p0

    .line 270
    :goto_17
    return v0

    .line 263
    :cond_18
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->m:Lcom/bytedance/sdk/a/b/a/e/i$b;

    iget-boolean v1, v1, Lcom/bytedance/sdk/a/b/a/e/i$b;->b:Z

    if-eqz v1, :cond_29

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->e:Lcom/bytedance/sdk/a/b/a/e/i$a;

    iget-boolean v1, v1, Lcom/bytedance/sdk/a/b/a/e/i$a;->b:Z

    if-eqz v1, :cond_29

    .line 264
    monitor-exit p0

    goto :goto_17

    .line 268
    :catchall_26
    move-exception v0

    monitor-exit p0
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_26

    throw v0

    .line 266
    :cond_29
    :try_start_29
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->h:Lcom/bytedance/sdk/a/b/a/e/b;

    .line 267
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 268
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_29 .. :try_end_2f} :catchall_26

    .line 269
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->c:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/g;->b(I)Lcom/bytedance/sdk/a/b/a/e/i;

    .line 270
    const/4 v0, 0x1

    goto :goto_17
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 101
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->c:I

    return v0
.end method

.method a(J)V
    .registers 6

    .prologue
    .line 592
    iget-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->b:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->b:J

    .line 593
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_e

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 594
    :cond_e
    return-void
.end method

.method a(Lcom/bytedance/sdk/a/a/e;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    sget-boolean v0, Lcom/bytedance/sdk/a/b/a/e/i;->i:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 297
    :cond_10
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->m:Lcom/bytedance/sdk/a/b/a/e/i$b;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v2, v3}, Lcom/bytedance/sdk/a/b/a/e/i$b;->a(Lcom/bytedance/sdk/a/a/e;J)V

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

    .prologue
    .line 237
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/b/a/e/i;->d(Lcom/bytedance/sdk/a/b/a/e/b;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 241
    :goto_6
    return-void

    .line 240
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->c:I

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/a/b/a/e/g;->b(ILcom/bytedance/sdk/a/b/a/e/b;)V

    goto :goto_6
.end method

.method a(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 274
    sget-boolean v1, Lcom/bytedance/sdk/a/b/a/e/i;->i:Z

    if-nez v1, :cond_11

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 276
    :cond_11
    monitor-enter p0

    .line 277
    const/4 v1, 0x1

    :try_start_13
    iput-boolean v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->l:Z

    .line 278
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->k:Ljava/util/List;

    if-nez v1, :cond_2d

    .line 279
    iput-object p1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->k:Ljava/util/List;

    .line 280
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/e/i;->b()Z

    move-result v0

    .line 281
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 289
    :goto_22
    monitor-exit p0
    :try_end_23
    .catchall {:try_start_13 .. :try_end_23} :catchall_41

    .line 290
    if-nez v0, :cond_2c

    .line 291
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->c:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/g;->b(I)Lcom/bytedance/sdk/a/b/a/e/i;

    .line 293
    :cond_2c
    return-void

    .line 283
    :cond_2d
    :try_start_2d
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

    goto :goto_22

    .line 289
    :catchall_41
    move-exception v0

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_2d .. :try_end_43} :catchall_41

    throw v0
.end method

.method public b(Lcom/bytedance/sdk/a/b/a/e/b;)V
    .registers 4

    .prologue
    .line 248
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/a/b/a/e/i;->d(Lcom/bytedance/sdk/a/b/a/e/b;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 252
    :goto_6
    return-void

    .line 251
    :cond_7
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->c:I

    invoke-virtual {v0, v1, p1}, Lcom/bytedance/sdk/a/b/a/e/g;->a(ILcom/bytedance/sdk/a/b/a/e/b;)V

    goto :goto_6
.end method

.method public declared-synchronized b()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 116
    monitor-enter p0

    :try_start_2
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->h:Lcom/bytedance/sdk/a/b/a/e/b;
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_26

    if-eqz v1, :cond_8

    .line 124
    :cond_6
    :goto_6
    monitor-exit p0

    return v0

    .line 119
    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->m:Lcom/bytedance/sdk/a/b/a/e/i$b;

    iget-boolean v1, v1, Lcom/bytedance/sdk/a/b/a/e/i$b;->b:Z

    if-nez v1, :cond_14

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->m:Lcom/bytedance/sdk/a/b/a/e/i$b;

    iget-boolean v1, v1, Lcom/bytedance/sdk/a/b/a/e/i$b;->a:Z

    if-eqz v1, :cond_24

    :cond_14
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->e:Lcom/bytedance/sdk/a/b/a/e/i$a;

    iget-boolean v1, v1, Lcom/bytedance/sdk/a/b/a/e/i$a;->b:Z

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->e:Lcom/bytedance/sdk/a/b/a/e/i$a;

    iget-boolean v1, v1, Lcom/bytedance/sdk/a/b/a/e/i$a;->a:Z

    if-eqz v1, :cond_24

    :cond_20
    iget-boolean v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->l:Z
    :try_end_22
    .catchall {:try_start_8 .. :try_end_22} :catchall_26

    if-nez v1, :cond_6

    .line 124
    :cond_24
    const/4 v0, 0x1

    goto :goto_6

    .line 116
    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized c(Lcom/bytedance/sdk/a/b/a/e/b;)V
    .registers 3

    .prologue
    .line 314
    monitor-enter p0

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

    .line 314
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public c()Z
    .registers 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 131
    iget v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->c:I

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_10

    move v0, v1

    .line 132
    :goto_9
    iget-object v3, p0, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget-boolean v3, v3, Lcom/bytedance/sdk/a/b/a/e/g;->b:Z

    if-ne v3, v0, :cond_12

    :goto_f
    return v1

    :cond_10
    move v0, v2

    .line 131
    goto :goto_9

    :cond_12
    move v1, v2

    .line 132
    goto :goto_f
.end method

.method public declared-synchronized d()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/a/b/a/e/c;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 149
    monitor-enter p0

    :try_start_1
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/e/i;->c()Z

    move-result v0

    if-nez v0, :cond_12

    .line 150
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "servers cannot read response headers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_f

    .line 149
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 152
    :cond_12
    :try_start_12
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->f:Lcom/bytedance/sdk/a/b/a/e/i$c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i$c;->a()V
    :try_end_17
    .catchall {:try_start_12 .. :try_end_17} :catchall_f

    .line 154
    :goto_17
    :try_start_17
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->k:Ljava/util/List;

    if-nez v0, :cond_2a

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->h:Lcom/bytedance/sdk/a/b/a/e/b;

    if-nez v0, :cond_2a

    .line 155
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/e/i;->l()V
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_23

    goto :goto_17

    .line 158
    :catchall_23
    move-exception v0

    :try_start_24
    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->f:Lcom/bytedance/sdk/a/b/a/e/i$c;

    invoke-virtual {v1}, Lcom/bytedance/sdk/a/b/a/e/i$c;->h()V

    .line 159
    throw v0

    .line 158
    :cond_2a
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->f:Lcom/bytedance/sdk/a/b/a/e/i$c;

    invoke-virtual {v0}, Lcom/bytedance/sdk/a/b/a/e/i$c;->h()V

    .line 160
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->k:Ljava/util/List;

    .line 161
    if-eqz v0, :cond_38

    .line 162
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->k:Ljava/util/List;
    :try_end_36
    .catchall {:try_start_24 .. :try_end_36} :catchall_f

    .line 163
    monitor-exit p0

    return-object v0

    .line 165
    :cond_38
    :try_start_38
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/o;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->h:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/o;-><init>(Lcom/bytedance/sdk/a/b/a/e/b;)V

    throw v0
    :try_end_40
    .catchall {:try_start_38 .. :try_end_40} :catchall_f
.end method

.method public e()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->f:Lcom/bytedance/sdk/a/b/a/e/i$c;

    return-object v0
.end method

.method public f()Lcom/bytedance/sdk/a/a/t;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->g:Lcom/bytedance/sdk/a/b/a/e/i$c;

    return-object v0
.end method

.method public g()Lcom/bytedance/sdk/a/a/s;
    .registers 2

    .prologue
    .line 214
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->m:Lcom/bytedance/sdk/a/b/a/e/i$b;

    return-object v0
.end method

.method public h()Lcom/bytedance/sdk/a/a/r;
    .registers 3

    .prologue
    .line 224
    monitor-enter p0

    .line 225
    :try_start_1
    iget-boolean v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->l:Z

    if-nez v0, :cond_16

    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/e/i;->c()Z

    move-result v0

    if-nez v0, :cond_16

    .line 226
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "reply before requesting the sink"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    :catchall_13
    move-exception v0

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_1 .. :try_end_15} :catchall_13

    throw v0

    :cond_16
    :try_start_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_13

    .line 229
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->e:Lcom/bytedance/sdk/a/b/a/e/i$a;

    return-object v0
.end method

.method i()V
    .registers 3

    .prologue
    .line 301
    sget-boolean v0, Lcom/bytedance/sdk/a/b/a/e/i;->i:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 303
    :cond_10
    monitor-enter p0

    .line 304
    :try_start_11
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
    :try_end_1e
    .catchall {:try_start_11 .. :try_end_1e} :catchall_28

    .line 308
    if-nez v0, :cond_27

    .line 309
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->c:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/g;->b(I)Lcom/bytedance/sdk/a/b/a/e/i;

    .line 311
    :cond_27
    return-void

    .line 307
    :catchall_28
    move-exception v0

    :try_start_29
    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw v0
.end method

.method j()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 471
    sget-boolean v0, Lcom/bytedance/sdk/a/b/a/e/i;->i:Z

    if-nez v0, :cond_10

    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 474
    :cond_10
    monitor-enter p0

    .line 475
    :try_start_11
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->m:Lcom/bytedance/sdk/a/b/a/e/i$b;

    iget-boolean v0, v0, Lcom/bytedance/sdk/a/b/a/e/i$b;->b:Z

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->m:Lcom/bytedance/sdk/a/b/a/e/i$b;

    iget-boolean v0, v0, Lcom/bytedance/sdk/a/b/a/e/i$b;->a:Z

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->e:Lcom/bytedance/sdk/a/b/a/e/i$a;

    iget-boolean v0, v0, Lcom/bytedance/sdk/a/b/a/e/i$a;->b:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->e:Lcom/bytedance/sdk/a/b/a/e/i$a;

    iget-boolean v0, v0, Lcom/bytedance/sdk/a/b/a/e/i$a;->a:Z

    if-eqz v0, :cond_37

    :cond_29
    const/4 v0, 0x1

    .line 476
    :goto_2a
    invoke-virtual {p0}, Lcom/bytedance/sdk/a/b/a/e/i;->b()Z

    move-result v1

    .line 477
    monitor-exit p0
    :try_end_2f
    .catchall {:try_start_11 .. :try_end_2f} :catchall_39

    .line 478
    if-eqz v0, :cond_3c

    .line 483
    sget-object v0, Lcom/bytedance/sdk/a/b/a/e/b;->f:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/a/b/a/e/i;->a(Lcom/bytedance/sdk/a/b/a/e/b;)V

    .line 487
    :cond_36
    :goto_36
    return-void

    .line 475
    :cond_37
    const/4 v0, 0x0

    goto :goto_2a

    .line 477
    :catchall_39
    move-exception v0

    :try_start_3a
    monitor-exit p0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    throw v0

    .line 484
    :cond_3c
    if-nez v1, :cond_36

    .line 485
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->d:Lcom/bytedance/sdk/a/b/a/e/g;

    iget v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->c:I

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/g;->b(I)Lcom/bytedance/sdk/a/b/a/e/i;

    goto :goto_36
.end method

.method k()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 597
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->e:Lcom/bytedance/sdk/a/b/a/e/i$a;

    iget-boolean v0, v0, Lcom/bytedance/sdk/a/b/a/e/i$a;->a:Z

    if-eqz v0, :cond_e

    .line 598
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 599
    :cond_e
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->e:Lcom/bytedance/sdk/a/b/a/e/i$a;

    iget-boolean v0, v0, Lcom/bytedance/sdk/a/b/a/e/i$a;->b:Z

    if-eqz v0, :cond_1c

    .line 600
    new-instance v0, Ljava/io/IOException;

    const-string v1, "stream finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_1c
    iget-object v0, p0, Lcom/bytedance/sdk/a/b/a/e/i;->h:Lcom/bytedance/sdk/a/b/a/e/b;

    if-eqz v0, :cond_28

    .line 602
    new-instance v0, Lcom/bytedance/sdk/a/b/a/e/o;

    iget-object v1, p0, Lcom/bytedance/sdk/a/b/a/e/i;->h:Lcom/bytedance/sdk/a/b/a/e/b;

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/a/b/a/e/o;-><init>(Lcom/bytedance/sdk/a/b/a/e/b;)V

    throw v0

    .line 604
    :cond_28
    return-void
.end method

.method l()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InterruptedIOException;
        }
    .end annotation

    .prologue
    .line 612
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4

    .line 616
    return-void

    .line 613
    :catch_4
    move-exception v0

    .line 614
    new-instance v0, Ljava/io/InterruptedIOException;

    invoke-direct {v0}, Ljava/io/InterruptedIOException;-><init>()V

    throw v0
.end method
