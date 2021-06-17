.class public final Lcom/tapjoy/internal/hn;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Flushable;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/lang/Object;

.field private c:Lcom/tapjoy/internal/as;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/as<",
            "Lcom/tapjoy/internal/ew;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/tapjoy/internal/hn;->a:Ljava/io/File;

    .line 29
    iput-object p0, p0, Lcom/tapjoy/internal/hn;->b:Ljava/lang/Object;

    .line 31
    :try_start_7
    new-instance v0, Lcom/tapjoy/internal/hn$1;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/hn$1;-><init>(Lcom/tapjoy/internal/hn;)V

    .line 43
    new-instance v1, Lcom/tapjoy/internal/f;

    invoke-direct {v1, p1, v0}, Lcom/tapjoy/internal/f;-><init>(Ljava/io/File;Lcom/tapjoy/internal/ay;)V

    .line 44
    invoke-static {v1}, Lcom/tapjoy/internal/ap;->a(Lcom/tapjoy/internal/as;)Lcom/tapjoy/internal/ap;

    move-result-object p1

    iput-object p1, p0, Lcom/tapjoy/internal/hn;->c:Lcom/tapjoy/internal/as;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_17} :catch_18

    .line 47
    return-void

    .line 45
    :catch_18
    move-exception p1

    .line 46
    invoke-direct {p0}, Lcom/tapjoy/internal/hn;->c()V

    .line 48
    return-void
.end method

.method private c()V
    .registers 3

    .line 52
    iget-object v0, p0, Lcom/tapjoy/internal/hn;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 53
    iget-object v0, p0, Lcom/tapjoy/internal/hn;->c:Lcom/tapjoy/internal/as;

    instance-of v1, v0, Ljava/io/Closeable;

    if-eqz v1, :cond_12

    .line 55
    :try_start_b
    check-cast v0, Ljava/io/Closeable;

    invoke-interface {v0}, Ljava/io/Closeable;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_11

    .line 59
    goto :goto_12

    .line 56
    :catch_11
    move-exception v0

    .line 61
    :cond_12
    :goto_12
    new-instance v0, Lcom/tapjoy/internal/aq;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-direct {v0, v1}, Lcom/tapjoy/internal/aq;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/tapjoy/internal/hn;->c:Lcom/tapjoy/internal/as;

    .line 62
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 3

    .line 78
    iget-object v0, p0, Lcom/tapjoy/internal/hn;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 80
    :try_start_3
    iget-object v1, p0, Lcom/tapjoy/internal/hn;->c:Lcom/tapjoy/internal/as;

    invoke-interface {v1}, Lcom/tapjoy/internal/as;->size()I

    move-result v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_d
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    :try_start_9
    monitor-exit v0

    return v1

    .line 85
    :catchall_b
    move-exception v1

    goto :goto_14

    .line 81
    :catch_d
    move-exception v1

    .line 82
    invoke-direct {p0}, Lcom/tapjoy/internal/hn;->c()V

    .line 83
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    .line 85
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_b

    throw v1
.end method

.method public final a(I)V
    .registers 4

    .line 100
    iget-object v0, p0, Lcom/tapjoy/internal/hn;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 102
    :try_start_3
    iget-object v1, p0, Lcom/tapjoy/internal/hn;->c:Lcom/tapjoy/internal/as;

    invoke-interface {v1, p1}, Lcom/tapjoy/internal/as;->b(I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    .line 105
    goto :goto_f

    .line 106
    :catchall_9
    move-exception p1

    goto :goto_11

    .line 103
    :catch_b
    move-exception p1

    .line 104
    :try_start_c
    invoke-direct {p0}, Lcom/tapjoy/internal/hn;->c()V

    .line 106
    :goto_f
    monitor-exit v0

    return-void

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_9

    throw p1
.end method

.method public final a(Lcom/tapjoy/internal/ew;)V
    .registers 4

    .line 122
    iget-object v0, p0, Lcom/tapjoy/internal/hn;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 124
    :try_start_3
    iget-object v1, p0, Lcom/tapjoy/internal/hn;->c:Lcom/tapjoy/internal/as;

    invoke-interface {v1, p1}, Lcom/tapjoy/internal/as;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_b
    .catchall {:try_start_3 .. :try_end_8} :catchall_9

    .line 132
    goto :goto_16

    .line 133
    :catchall_9
    move-exception p1

    goto :goto_18

    .line 125
    :catch_b
    move-exception v1

    .line 126
    :try_start_c
    invoke-direct {p0}, Lcom/tapjoy/internal/hn;->c()V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_9

    .line 128
    :try_start_f
    iget-object v1, p0, Lcom/tapjoy/internal/hn;->c:Lcom/tapjoy/internal/as;

    invoke-interface {v1, p1}, Lcom/tapjoy/internal/as;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_15
    .catchall {:try_start_f .. :try_end_14} :catchall_9

    .line 131
    goto :goto_16

    .line 129
    :catch_15
    move-exception p1

    .line 133
    :goto_16
    :try_start_16
    monitor-exit v0

    return-void

    :goto_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_9

    throw p1
.end method

.method public final b(I)Lcom/tapjoy/internal/ew;
    .registers 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/tapjoy/internal/hn;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 113
    :try_start_3
    iget-object v1, p0, Lcom/tapjoy/internal/hn;->c:Lcom/tapjoy/internal/as;

    invoke-interface {v1, p1}, Lcom/tapjoy/internal/as;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/internal/ew;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_b} :catch_f
    .catchall {:try_start_3 .. :try_end_b} :catchall_d

    :try_start_b
    monitor-exit v0

    return-object p1

    .line 118
    :catchall_d
    move-exception p1

    goto :goto_16

    .line 114
    :catch_f
    move-exception p1

    .line 115
    invoke-direct {p0}, Lcom/tapjoy/internal/hn;->c()V

    .line 116
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 118
    :goto_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_b .. :try_end_17} :catchall_d

    throw p1
.end method

.method public final b()Z
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/tapjoy/internal/hn;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 91
    :try_start_3
    iget-object v1, p0, Lcom/tapjoy/internal/hn;->c:Lcom/tapjoy/internal/as;

    invoke-interface {v1}, Lcom/tapjoy/internal/as;->isEmpty()Z

    move-result v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_9} :catch_d
    .catchall {:try_start_3 .. :try_end_9} :catchall_b

    :try_start_9
    monitor-exit v0

    return v1

    .line 96
    :catchall_b
    move-exception v1

    goto :goto_14

    .line 92
    :catch_d
    move-exception v1

    .line 93
    invoke-direct {p0}, Lcom/tapjoy/internal/hn;->c()V

    .line 94
    const/4 v1, 0x1

    monitor-exit v0

    return v1

    .line 96
    :goto_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_9 .. :try_end_15} :catchall_b

    throw v1
.end method

.method public final flush()V
    .registers 4

    .line 66
    iget-object v0, p0, Lcom/tapjoy/internal/hn;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 67
    :try_start_3
    iget-object v1, p0, Lcom/tapjoy/internal/hn;->c:Lcom/tapjoy/internal/as;

    instance-of v2, v1, Ljava/io/Flushable;
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_15

    if-eqz v2, :cond_13

    .line 69
    :try_start_9
    check-cast v1, Ljava/io/Flushable;

    invoke-interface {v1}, Ljava/io/Flushable;->flush()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_f
    .catchall {:try_start_9 .. :try_end_e} :catchall_15

    .line 72
    goto :goto_13

    .line 70
    :catch_f
    move-exception v1

    .line 71
    :try_start_10
    invoke-direct {p0}, Lcom/tapjoy/internal/hn;->c()V

    .line 74
    :cond_13
    :goto_13
    monitor-exit v0

    return-void

    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_15

    throw v1
.end method
