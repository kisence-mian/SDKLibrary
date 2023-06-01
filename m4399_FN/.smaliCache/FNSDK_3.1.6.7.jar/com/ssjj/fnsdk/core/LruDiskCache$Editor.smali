.class public final Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/LruDiskCache$Editor$a;
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/LruDiskCache;

.field private final b:Lcom/ssjj/fnsdk/core/LruDiskCache$a;

.field private final c:[Z

.field private d:Z

.field private e:Z


# direct methods
.method private constructor <init>(Lcom/ssjj/fnsdk/core/LruDiskCache;Lcom/ssjj/fnsdk/core/LruDiskCache$a;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->a:Lcom/ssjj/fnsdk/core/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->b:Lcom/ssjj/fnsdk/core/LruDiskCache$a;

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)Z

    move-result p2

    if-eqz p2, :cond_f

    const/4 p1, 0x0

    goto :goto_15

    :cond_f
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LruDiskCache;->e(Lcom/ssjj/fnsdk/core/LruDiskCache;)I

    move-result p1

    new-array p1, p1, [Z

    :goto_15
    iput-object p1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->c:[Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/ssjj/fnsdk/core/LruDiskCache;Lcom/ssjj/fnsdk/core/LruDiskCache$a;Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;-><init>(Lcom/ssjj/fnsdk/core/LruDiskCache;Lcom/ssjj/fnsdk/core/LruDiskCache$a;)V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;)Lcom/ssjj/fnsdk/core/LruDiskCache$a;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->b:Lcom/ssjj/fnsdk/core/LruDiskCache$a;

    return-object p0
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->d:Z

    return-void
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;)[Z
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->c:[Z

    return-object p0
.end method


# virtual methods
.method public abort()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->a:Lcom/ssjj/fnsdk/core/LruDiskCache;

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcom/ssjj/fnsdk/core/LruDiskCache;->a(Lcom/ssjj/fnsdk/core/LruDiskCache;Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;Z)V

    return-void
.end method

.method public abortUnlessCommitted()V
    .registers 2

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->e:Z

    if-nez v0, :cond_9

    :try_start_4
    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->abort()V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_8

    goto :goto_9

    :catchall_8
    move-exception v0

    :cond_9
    :goto_9
    return-void
.end method

.method public commit()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->d:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->a:Lcom/ssjj/fnsdk/core/LruDiskCache;

    const/4 v2, 0x0

    invoke-static {v0, p0, v2}, Lcom/ssjj/fnsdk/core/LruDiskCache;->a(Lcom/ssjj/fnsdk/core/LruDiskCache;Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;Z)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->a:Lcom/ssjj/fnsdk/core/LruDiskCache;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->b:Lcom/ssjj/fnsdk/core/LruDiskCache$a;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->c(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/ssjj/fnsdk/core/LruDiskCache;->a(Lcom/ssjj/fnsdk/core/LruDiskCache;Ljava/lang/String;)Z

    goto :goto_1c

    :cond_17
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->a:Lcom/ssjj/fnsdk/core/LruDiskCache;

    invoke-static {v0, p0, v1}, Lcom/ssjj/fnsdk/core/LruDiskCache;->a(Lcom/ssjj/fnsdk/core/LruDiskCache;Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;Z)V

    :goto_1c
    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->e:Z

    return-void
.end method

.method public getString(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_b

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LruDiskCache;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x0

    :goto_c
    return-object p1
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->a:Lcom/ssjj/fnsdk/core/LruDiskCache;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->b:Lcom/ssjj/fnsdk/core/LruDiskCache$a;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->b(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_26

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->b:Lcom/ssjj/fnsdk/core/LruDiskCache$a;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_16

    monitor-exit v0
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_2c

    return-object v2

    :cond_16
    :try_start_16
    new-instance v1, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->b:Lcom/ssjj/fnsdk/core/LruDiskCache$a;

    invoke-virtual {v3, p1}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a(I)Ljava/io/File;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_21
    .catch Ljava/io/FileNotFoundException; {:try_start_16 .. :try_end_21} :catch_23
    .catchall {:try_start_16 .. :try_end_21} :catchall_2c

    :try_start_21
    monitor-exit v0

    return-object v1

    :catch_23
    move-exception p1

    monitor-exit v0

    return-object v2

    :cond_26
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_2c
    move-exception p1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_21 .. :try_end_2e} :catchall_2c

    throw p1
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->a:Lcom/ssjj/fnsdk/core/LruDiskCache;

    monitor-enter v0

    :try_start_3
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->b:Lcom/ssjj/fnsdk/core/LruDiskCache$a;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->b(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;

    move-result-object v1

    if-ne v1, p0, :cond_42

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->b:Lcom/ssjj/fnsdk/core/LruDiskCache$a;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)Z

    move-result v1

    if-nez v1, :cond_18

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->c:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, p1

    :cond_18
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->b:Lcom/ssjj/fnsdk/core/LruDiskCache$a;

    invoke-virtual {v1, p1}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->b(I)Ljava/io/File;

    move-result-object p1
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_48

    :try_start_1e
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_23} :catch_24
    .catchall {:try_start_1e .. :try_end_23} :catchall_48

    goto :goto_33

    :catch_24
    move-exception v1

    :try_start_25
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->a:Lcom/ssjj/fnsdk/core/LruDiskCache;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LruDiskCache;->f(Lcom/ssjj/fnsdk/core/LruDiskCache;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z
    :try_end_2e
    .catchall {:try_start_25 .. :try_end_2e} :catchall_48

    :try_start_2e
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_2e .. :try_end_33} :catch_3b
    .catchall {:try_start_2e .. :try_end_33} :catchall_48

    :goto_33
    :try_start_33
    new-instance p1, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor$a;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v1, v2}, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor$a;-><init>(Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;Ljava/io/OutputStream;Lcom/ssjj/fnsdk/core/LruDiskCache$Editor$a;)V

    monitor-exit v0

    return-object p1

    :catch_3b
    move-exception p1

    invoke-static {}, Lcom/ssjj/fnsdk/core/LruDiskCache;->a()Ljava/io/OutputStream;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_42
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_48
    move-exception p1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_33 .. :try_end_4a} :catchall_48

    throw p1
.end method

.method public set(ILjava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object p1

    const-string v2, "UTF-8"

    invoke-direct {v1, p1, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    :try_start_c
    invoke-virtual {v1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_13

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :catchall_13
    move-exception p1

    move-object v0, v1

    goto :goto_17

    :catchall_16
    move-exception p1

    :goto_17
    invoke-static {v0}, Lcom/ssjj/fnsdk/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw p1
.end method

.method public setEntryExpiryTimestamp(J)V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->b:Lcom/ssjj/fnsdk/core/LruDiskCache$a;

    invoke-static {v0, p1, p2}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a(Lcom/ssjj/fnsdk/core/LruDiskCache$a;J)V

    return-void
.end method
