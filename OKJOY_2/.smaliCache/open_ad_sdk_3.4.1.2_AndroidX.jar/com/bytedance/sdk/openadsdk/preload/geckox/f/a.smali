.class Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;
.super Ljava/lang/Object;
.source "ChannelVerLoader.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private volatile c:Ljava/io/File;

.field private volatile d:Ljava/lang/Long;

.field private volatile e:Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a/a;

.field private f:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->a:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->b:Ljava/lang/String;

    .line 32
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private b()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "select.lock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;

    move-result-object v0

    .line 117
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "channel version loader clean"

    aput-object v3, v1, v2

    const-string v2, "gecko-file-lock"

    invoke-static {v2, v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/h/b;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    :try_start_38
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->c:Ljava/io/File;
    :try_end_3a
    .catchall {:try_start_38 .. :try_end_3a} :catchall_85

    if-nez v1, :cond_40

    .line 125
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;->a()V

    .line 120
    return-void

    .line 122
    :cond_40
    :try_start_40
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->c:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "using.lock"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/c;->b(Ljava/lang/String;)V
    :try_end_62
    .catchall {:try_start_40 .. :try_end_62} :catchall_85

    .line 125
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;->a()V

    .line 126
    nop

    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/a/c;->a(Ljava/lang/String;)V

    .line 128
    return-void

    .line 125
    :catchall_85
    move-exception v1

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;->a()V

    .line 126
    throw v1
.end method

.method private declared-synchronized c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a/a;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 43
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->e:Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a/a;

    if-eqz v0, :cond_9

    .line 44
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->e:Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a/a;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_7e

    monitor-exit p0

    return-object p1

    .line 46
    :cond_9
    :try_start_9
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->d(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 47
    if-eqz v0, :cond_65

    .line 50
    new-instance p1, Ljava/io/File;

    const-string v1, "res.macv"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 51
    new-instance v1, Ljava/io/File;

    const-string v2, "res"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_31

    .line 53
    new-instance p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a/c;

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a/c;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->e:Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a/a;

    goto :goto_44

    .line 54
    :cond_31
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_48

    .line 55
    new-instance p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a/b;

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a/b;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->e:Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a/a;

    .line 59
    :goto_44
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->e:Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a/a;
    :try_end_46
    .catchall {:try_start_9 .. :try_end_46} :catchall_7e

    monitor-exit p0

    return-object p1

    .line 57
    :cond_48
    :try_start_48
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not find res, dir:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 48
    :cond_65
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "channel no exist\uff0cchannel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7e
    .catchall {:try_start_48 .. :try_end_7e} :catchall_7e

    .line 42
    :catchall_7e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized d(Ljava/lang/String;)Ljava/io/File;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 74
    :try_start_1
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->c:Ljava/io/File;

    if-eqz v0, :cond_9

    .line 75
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->c:Ljava/io/File;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b1

    monitor-exit p0

    return-object p1

    .line 77
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->d:Ljava/lang/Long;

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->d:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4
    :try_end_16
    .catchall {:try_start_9 .. :try_end_16} :catchall_b1

    cmp-long v0, v4, v2

    if-nez v0, :cond_1c

    .line 78
    monitor-exit p0

    return-object v1

    .line 85
    :cond_1c
    :try_start_1c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "select.lock"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;

    move-result-object v0
    :try_end_45
    .catchall {:try_start_1c .. :try_end_45} :catchall_b1

    .line 88
    :try_start_45
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->d:Ljava/lang/Long;

    if-nez v4, :cond_56

    .line 89
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->a:Ljava/lang/String;

    invoke-direct {v4, v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/k;->a(Ljava/io/File;)Ljava/lang/Long;

    move-result-object v4

    iput-object v4, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->d:Ljava/lang/Long;

    .line 91
    :cond_56
    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->d:Ljava/lang/Long;

    if-nez v4, :cond_66

    .line 92
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->d:Ljava/lang/Long;
    :try_end_60
    .catchall {:try_start_45 .. :try_end_60} :catchall_ac

    .line 93
    nop

    .line 101
    :try_start_61
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;->a()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_b1

    .line 93
    monitor-exit p0

    return-object v1

    .line 95
    :cond_66
    :try_start_66
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->d:Ljava/lang/Long;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, "using.lock"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->c:Ljava/io/File;

    .line 98
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/c;->a(Ljava/lang/String;)V

    .line 99
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->c:Ljava/io/File;
    :try_end_a7
    .catchall {:try_start_66 .. :try_end_a7} :catchall_ac

    .line 101
    :try_start_a7
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;->a()V
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_b1

    .line 99
    monitor-exit p0

    return-object p1

    .line 101
    :catchall_ac
    move-exception p1

    :try_start_ad
    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/g/b;->a()V

    .line 102
    throw p1
    :try_end_b1
    .catchall {:try_start_ad .. :try_end_b1} :catchall_b1

    .line 73
    :catchall_b1
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method final a(Ljava/lang/String;)Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->b:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a/a;->a(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method a()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 133
    return-void

    .line 135
    :cond_a
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->b()V

    .line 136
    return-void
.end method

.method final b(Ljava/lang/String;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->b:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->b:Ljava/lang/String;

    invoke-direct {p0, v1, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a/a;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 140
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 142
    :try_start_3
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/f/a;->a()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_6} :catch_7

    .line 145
    goto :goto_b

    .line 143
    :catch_7
    move-exception v0

    .line 144
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/c;->a(Ljava/lang/Throwable;)V

    .line 146
    :goto_b
    return-void
.end method
