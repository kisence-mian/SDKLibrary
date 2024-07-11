.class public Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;
.super Ljava/lang/Object;
.source "FileLock.java"


# static fields
.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->a:Ljava/util/Map;

    .line 15
    const-string v0, "file_lock_pg"

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/g;->a(Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->c:Ljava/lang/String;

    .line 23
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->b:I

    .line 24
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;
    .registers 5

    .line 29
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->d(Ljava/lang/String;)I

    move-result v0

    .line 30
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->nLockFile(I)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_e

    .line 33
    nop

    .line 34
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 31
    :catch_e
    move-exception v0

    .line 32
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lock failed, file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ", pid:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " caused by:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(Ljava/lang/String;I)Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;
    .registers 5

    .line 76
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->d(Ljava/lang/String;)I

    move-result v0

    .line 77
    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->nLockFileSegment(II)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_e

    .line 80
    nop

    .line 81
    new-instance p1, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;

    invoke-direct {p1, p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;-><init>(Ljava/lang/String;I)V

    return-object p1

    .line 78
    :catch_e
    move-exception p1

    .line 79
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lock segment failed, file:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " caused by:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;
    .registers 5

    .line 42
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->d(Ljava/lang/String;)I

    move-result v0

    .line 43
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->nTryLock(I)Z

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_13

    .line 46
    nop

    .line 47
    if-nez v1, :cond_d

    .line 48
    const/4 p0, 0x0

    return-object p0

    .line 50
    :cond_d
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 44
    :catch_13
    move-exception v0

    .line 45
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try lock failed, file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " caused by:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    :try_start_0
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->d(Ljava/lang/String;)I

    move-result v0

    .line 59
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->nTryLock(I)Z

    move-result v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8} :catch_1b

    .line 62
    nop

    .line 63
    if-nez v1, :cond_15

    .line 65
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->b()V

    .line 67
    const/4 p0, 0x0

    return-object p0

    .line 69
    :cond_15
    new-instance v1, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;

    invoke-direct {v1, p0, v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;-><init>(Ljava/lang/String;I)V

    return-object v1

    .line 60
    :catch_1b
    move-exception v0

    .line 61
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "try lock failed, file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, " caused by:"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static d(Ljava/lang/String;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 86
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->a:Ljava/util/Map;

    monitor-enter v0

    .line 87
    :try_start_3
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 88
    if-nez v1, :cond_22

    .line 89
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 90
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->nGetFD(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 91
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_28

    .line 94
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    .line 93
    :catchall_28
    move-exception p0

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    throw p0
.end method

.method private static native nGetFD(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private static native nLockFile(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private static native nLockFileSegment(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private static native nRelease(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private static native nTryLock(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method private static native nUnlockFile(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method


# virtual methods
.method public a()V
    .registers 4

    .line 111
    :try_start_0
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->b:I

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->nUnlockFile(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    .line 114
    nop

    .line 115
    return-void

    .line 112
    :catch_7
    move-exception v0

    .line 113
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "release lock failed\uff0cpath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()V
    .registers 5

    .line 123
    sget-object v0, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->a:Ljava/util/Map;

    monitor-enter v0

    .line 124
    :try_start_3
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 125
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_3f

    .line 127
    :try_start_c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->nRelease(I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_13} :catch_15

    .line 130
    nop

    .line 131
    return-void

    .line 128
    :catch_15
    move-exception v0

    .line 129
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "release lock failed, file:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/preload/geckox/utils/FileLock;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " caused by:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 125
    :catchall_3f
    move-exception v1

    :try_start_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_40 .. :try_end_41} :catchall_3f

    throw v1
.end method
