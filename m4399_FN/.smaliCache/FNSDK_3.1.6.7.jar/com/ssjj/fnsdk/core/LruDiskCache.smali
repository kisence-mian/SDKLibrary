.class public final Lcom/ssjj/fnsdk/core/LruDiskCache;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;,
        Lcom/ssjj/fnsdk/core/LruDiskCache$a;,
        Lcom/ssjj/fnsdk/core/LruDiskCache$FileNameGenerator;,
        Lcom/ssjj/fnsdk/core/LruDiskCache$MD5FileNameGenerator;,
        Lcom/ssjj/fnsdk/core/LruDiskCache$Snapshot;,
        Lcom/ssjj/fnsdk/core/LruDiskCache$b;
    }
.end annotation


# static fields
.field private static final o:Ljava/io/OutputStream;


# instance fields
.field final a:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:Ljava/io/File;

.field private final f:I

.field private g:J

.field private final h:I

.field private i:J

.field private j:Ljava/io/Writer;

.field private final k:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/ssjj/fnsdk/core/LruDiskCache$a;",
            ">;"
        }
    .end annotation
.end field

.field private l:I

.field private m:J

.field private final n:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/ssjj/fnsdk/core/LruDiskCache$FileNameGenerator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ssjj/fnsdk/core/o;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/o;-><init>()V

    sput-object v0, Lcom/ssjj/fnsdk/core/LruDiskCache;->o:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .registers 21

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/ssjj/fnsdk/core/LruDiskCache;->i:J

    new-instance v4, Ljava/util/LinkedHashMap;

    const/high16 v5, 0x3f400000    # 0.75f

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v4, v7, v5, v6}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v4, v0, Lcom/ssjj/fnsdk/core/LruDiskCache;->k:Ljava/util/LinkedHashMap;

    iput-wide v2, v0, Lcom/ssjj/fnsdk/core/LruDiskCache;->m:J

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v2, v0, Lcom/ssjj/fnsdk/core/LruDiskCache;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/ssjj/fnsdk/core/n;

    invoke-direct {v2, p0}, Lcom/ssjj/fnsdk/core/n;-><init>(Lcom/ssjj/fnsdk/core/LruDiskCache;)V

    iput-object v2, v0, Lcom/ssjj/fnsdk/core/LruDiskCache;->n:Ljava/util/concurrent/Callable;

    new-instance v2, Lcom/ssjj/fnsdk/core/LruDiskCache$MD5FileNameGenerator;

    invoke-direct {v2, p0}, Lcom/ssjj/fnsdk/core/LruDiskCache$MD5FileNameGenerator;-><init>(Lcom/ssjj/fnsdk/core/LruDiskCache;)V

    iput-object v2, v0, Lcom/ssjj/fnsdk/core/LruDiskCache;->p:Lcom/ssjj/fnsdk/core/LruDiskCache$FileNameGenerator;

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/LruDiskCache;->b:Ljava/io/File;

    move/from16 v2, p2

    iput v2, v0, Lcom/ssjj/fnsdk/core/LruDiskCache;->f:I

    new-instance v2, Ljava/io/File;

    const-string v3, "journal"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/ssjj/fnsdk/core/LruDiskCache;->c:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v3, "journal.tmp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/ssjj/fnsdk/core/LruDiskCache;->d:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v3, "journal.bkp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/ssjj/fnsdk/core/LruDiskCache;->e:Ljava/io/File;

    move/from16 v1, p3

    iput v1, v0, Lcom/ssjj/fnsdk/core/LruDiskCache;->h:I

    move-wide/from16 v1, p4

    iput-wide v1, v0, Lcom/ssjj/fnsdk/core/LruDiskCache;->g:J

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/LruDiskCache;Ljava/lang/String;J)Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/LruDiskCache;->a(Ljava/lang/String;J)Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;

    move-result-object p0

    return-object p0
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/LruDiskCache;->f()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ssjj/fnsdk/core/LruDiskCache$a;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_1f

    if-eqz v0, :cond_1d

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->f(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)J

    move-result-wide v1
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_5d

    cmp-long v4, v1, p2

    if-eqz v4, :cond_1f

    :cond_1d
    monitor-exit p0

    return-object v3

    :cond_1f
    if-nez v0, :cond_2c

    :try_start_21
    new-instance v0, Lcom/ssjj/fnsdk/core/LruDiskCache$a;

    invoke-direct {v0, p0, p1, v3}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;-><init>(Lcom/ssjj/fnsdk/core/LruDiskCache;Ljava/lang/String;Lcom/ssjj/fnsdk/core/LruDiskCache$a;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_34

    :cond_2c
    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->b(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;

    move-result-object p2
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_5d

    if-eqz p2, :cond_34

    monitor-exit p0

    return-object v3

    :cond_34
    :goto_34
    :try_start_34
    new-instance p2, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;

    invoke-direct {p2, p0, v0, v3}, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;-><init>(Lcom/ssjj/fnsdk/core/LruDiskCache;Lcom/ssjj/fnsdk/core/LruDiskCache$a;Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;)V

    invoke-static {v0, p2}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a(Lcom/ssjj/fnsdk/core/LruDiskCache$a;Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;)V

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->j:Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "U "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->j:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_5b
    .catchall {:try_start_34 .. :try_end_5b} :catchall_5d

    monitor-exit p0

    return-object p2

    :catchall_5d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a()Ljava/io/OutputStream;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/core/LruDiskCache;->o:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/LruDiskCache;)Ljava/io/Writer;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->j:Ljava/io/Writer;

    return-object p0
.end method

.method static synthetic a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LruDiskCache;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/io/Reader;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_23

    const/16 v0, 0x400

    :try_start_8
    new-array v0, v0, [C

    :goto_a
    invoke-virtual {p0, v0}, Ljava/io/Reader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1c

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_15
    .catchall {:try_start_8 .. :try_end_15} :catchall_21

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :cond_1c
    const/4 v3, 0x0

    :try_start_1d
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/StringWriter;->write([CII)V
    :try_end_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_21

    goto :goto_a

    :catchall_21
    move-exception v0

    goto :goto_27

    :catchall_23
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_27
    invoke-static {p0}, Lcom/ssjj/fnsdk/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method private declared-synchronized a(Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->a(Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;)Lcom/ssjj/fnsdk/core/LruDiskCache$a;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->b(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;

    move-result-object v1

    if-ne v1, p1, :cond_11d

    const/4 v1, 0x0

    if-eqz p2, :cond_4c

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)Z

    move-result v2

    if-nez v2, :cond_4c

    const/4 v2, 0x0

    :goto_15
    iget v3, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->h:I

    if-lt v2, v3, :cond_1a

    goto :goto_4c

    :cond_1a
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->b(Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_34

    invoke-virtual {v0, v2}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_31

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->abort()V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_123

    monitor-exit p0

    return-void

    :cond_31
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_34
    :try_start_34
    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->abort()V

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4c
    :goto_4c
    iget p1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->h:I

    if-lt v1, p1, :cond_ec

    iget p1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->l:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->l:I

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a(Lcom/ssjj/fnsdk/core/LruDiskCache$a;Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)Z

    move-result p1

    or-int/2addr p1, p2

    const/16 v2, 0xa

    if-eqz p1, :cond_ab

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a(Lcom/ssjj/fnsdk/core/LruDiskCache$a;Z)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->j:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "C "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->c(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0x74

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->e(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_d0

    iget-wide p1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->m:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->m:J

    invoke-static {v0, p1, p2}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->b(Lcom/ssjj/fnsdk/core/LruDiskCache$a;J)V

    goto :goto_d0

    :cond_ab
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->k:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->c(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->j:Ljava/io/Writer;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "D "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->c(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_d0
    :goto_d0
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->j:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    iget-wide p1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->i:J

    iget-wide v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->g:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_e3

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/LruDiskCache;->e()Z

    move-result p1

    if-eqz p1, :cond_ea

    :cond_e3
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_ea
    .catchall {:try_start_34 .. :try_end_ea} :catchall_123

    :cond_ea
    monitor-exit p0

    return-void

    :cond_ec
    :try_start_ec
    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->b(I)Ljava/io/File;

    move-result-object p1

    if-eqz p2, :cond_116

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_119

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->d(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)[J

    move-result-object p1

    aget-wide v3, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->d(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)[J

    move-result-object p1

    aput-wide v5, p1, v1

    iget-wide v7, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->i:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->i:J

    goto :goto_119

    :cond_116
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LruDiskCache;->a(Ljava/io/File;)V

    :cond_119
    :goto_119
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_4c

    :cond_11d
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_123
    .catchall {:try_start_ec .. :try_end_123} :catchall_123

    :catchall_123
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/LruDiskCache;I)V
    .registers 2

    iput p1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->l:I

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/LruDiskCache;Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/LruDiskCache;->a(Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;Z)V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_13

    :cond_d
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0

    :cond_13
    :goto_13
    return-void
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_5

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LruDiskCache;->a(Ljava/io/File;)V

    :cond_5
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result p0

    if-eqz p0, :cond_c

    return-void

    :cond_c
    new-instance p0, Ljava/io/IOException;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    throw p0
.end method

.method private a(Ljava/lang/String;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "unexpected journal line: "

    const/4 v3, 0x1

    if-ne v1, v3, :cond_b2

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_26

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const/16 v6, 0x44

    if-ne v5, v6, :cond_2a

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_26
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_2a
    iget-object v6, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ssjj/fnsdk/core/LruDiskCache$a;

    const/4 v7, 0x0

    if-nez v6, :cond_3f

    new-instance v6, Lcom/ssjj/fnsdk/core/LruDiskCache$a;

    invoke-direct {v6, p0, v1, v7}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;-><init>(Lcom/ssjj/fnsdk/core/LruDiskCache;Ljava/lang/String;Lcom/ssjj/fnsdk/core/LruDiskCache$a;)V

    iget-object v8, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v1, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    sparse-switch v5, :sswitch_data_c6

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_55
    new-instance p1, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;

    invoke-direct {p1, p0, v6, v7}, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;-><init>(Lcom/ssjj/fnsdk/core/LruDiskCache;Lcom/ssjj/fnsdk/core/LruDiskCache$a;Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;)V

    invoke-static {v6, p1}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a(Lcom/ssjj/fnsdk/core/LruDiskCache$a;Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;)V

    goto :goto_b1

    :sswitch_5e
    invoke-static {v6, v3}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a(Lcom/ssjj/fnsdk/core/LruDiskCache$a;Z)V

    invoke-static {v6, v7}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a(Lcom/ssjj/fnsdk/core/LruDiskCache$a;Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;)V

    add-int/2addr v0, v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_b1

    :try_start_72
    aget-object v1, v0, v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v5, 0x74

    if-ne v1, v5, :cond_91

    aget-object v1, v0, v4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v6, v4, v5}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a(Lcom/ssjj/fnsdk/core/LruDiskCache$a;J)V

    invoke-static {v6, v0, v3}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a(Lcom/ssjj/fnsdk/core/LruDiskCache$a;[Ljava/lang/String;I)V

    goto :goto_b1

    :cond_91
    const-wide v7, 0x7fffffffffffffffL

    invoke-static {v6, v7, v8}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a(Lcom/ssjj/fnsdk/core/LruDiskCache$a;J)V

    invoke-static {v6, v0, v4}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a(Lcom/ssjj/fnsdk/core/LruDiskCache$a;[Ljava/lang/String;I)V
    :try_end_9c
    .catchall {:try_start_72 .. :try_end_9c} :catchall_9d

    goto :goto_b1

    :catchall_9d
    move-exception v0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b1
    :goto_b1
    :sswitch_b1
    return-void

    :cond_b2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_c6
    .sparse-switch
        0x43 -> :sswitch_5e
        0x52 -> :sswitch_b1
        0x55 -> :sswitch_55
    .end sparse-switch
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/LruDiskCache;Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/LruDiskCache;->c(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private declared-synchronized b(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/LruDiskCache$Snapshot;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/LruDiskCache;->f()V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/LruDiskCache$a;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_101

    const/4 v2, 0x0

    if-nez v1, :cond_11

    monitor-exit p0

    return-object v2

    :cond_11
    :try_start_11
    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)Z

    move-result v3
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_101

    if-nez v3, :cond_19

    monitor-exit p0

    return-object v2

    :cond_19
    :try_start_19
    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->e(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)J

    move-result-wide v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/16 v7, 0xa

    const/4 v8, 0x0

    cmp-long v9, v3, v5

    if-gez v9, :cond_9a

    :goto_28
    iget v3, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->h:I

    if-lt v8, v3, :cond_5e

    iget v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->l:I

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->j:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "D "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/LruDiskCache;->e()Z

    move-result v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_5c
    .catchall {:try_start_19 .. :try_end_5c} :catchall_101

    :cond_5c
    monitor-exit p0

    return-object v2

    :cond_5e
    :try_start_5e
    invoke-virtual {v1, v8}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_84

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_6f

    goto :goto_84

    :cond_6f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to delete "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_84
    :goto_84
    iget-wide v3, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->i:J

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->d(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)[J

    move-result-object v5

    aget-wide v9, v5, v8

    sub-long/2addr v3, v9

    iput-wide v3, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->i:J

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->d(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_28

    :cond_9a
    iget v3, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->h:I

    new-array v6, v3, [Ljava/io/FileInputStream;
    :try_end_9e
    .catchall {:try_start_5e .. :try_end_9e} :catchall_101

    const/4 v3, 0x0

    :goto_9f
    :try_start_9f
    iget v4, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->h:I
    :try_end_a1
    .catch Ljava/io/FileNotFoundException; {:try_start_9f .. :try_end_a1} :catch_ef
    .catchall {:try_start_9f .. :try_end_a1} :catchall_101

    if-lt v3, v4, :cond_e1

    :try_start_a3
    iget v2, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->l:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->l:I

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->j:Ljava/io/Writer;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "R "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/LruDiskCache;->e()Z

    move-result v2

    if-eqz v2, :cond_ce

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_ce
    new-instance v9, Lcom/ssjj/fnsdk/core/LruDiskCache$Snapshot;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->f(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)J

    move-result-wide v4

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->d(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)[J

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/ssjj/fnsdk/core/LruDiskCache$Snapshot;-><init>(Lcom/ssjj/fnsdk/core/LruDiskCache;Ljava/lang/String;J[Ljava/io/FileInputStream;[JLcom/ssjj/fnsdk/core/LruDiskCache$Snapshot;)V
    :try_end_df
    .catchall {:try_start_a3 .. :try_end_df} :catchall_101

    monitor-exit p0

    return-object v9

    :cond_e1
    :try_start_e1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v1, v3}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a(I)Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v4, v6, v3
    :try_end_ec
    .catch Ljava/io/FileNotFoundException; {:try_start_e1 .. :try_end_ec} :catch_ef
    .catchall {:try_start_e1 .. :try_end_ec} :catchall_101

    add-int/lit8 v3, v3, 0x1

    goto :goto_9f

    :catch_ef
    move-exception v0

    :goto_f0
    :try_start_f0
    iget v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->h:I

    if-lt v8, v0, :cond_f5

    goto :goto_ff

    :cond_f5
    aget-object v0, v6, v8

    if-eqz v0, :cond_ff

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_fc
    .catchall {:try_start_f0 .. :try_end_fc} :catchall_101

    add-int/lit8 v8, v8, 0x1

    goto :goto_f0

    :cond_ff
    :goto_ff
    monitor-exit p0

    return-object v2

    :catchall_101
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static b(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/InputStreamReader;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LruDiskCache;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ", "

    const/4 v1, 0x0

    :try_start_3
    new-instance v2, Lcom/ssjj/fnsdk/core/LruDiskCache$b;

    new-instance v3, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->c:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, p0, v3}, Lcom/ssjj/fnsdk/core/LruDiskCache$b;-><init>(Lcom/ssjj/fnsdk/core/LruDiskCache;Ljava/io/InputStream;)V
    :try_end_f
    .catchall {:try_start_3 .. :try_end_f} :catchall_a2

    :try_start_f
    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6c

    const-string v7, "1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6c

    iget v7, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->f:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    iget v4, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->h:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    const-string v4, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_51
    .catchall {:try_start_f .. :try_end_51} :catchall_9f

    if-eqz v4, :cond_6c

    const/4 v0, 0x0

    :goto_54
    :try_start_54
    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/LruDiskCache$b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ssjj/fnsdk/core/LruDiskCache;->a(Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/io/EOFException; {:try_start_54 .. :try_end_5b} :catch_5e
    .catchall {:try_start_54 .. :try_end_5b} :catchall_9f

    add-int/lit8 v0, v0, 0x1

    goto :goto_54

    :catch_5e
    move-exception v1

    :try_start_5f
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->l:I
    :try_end_68
    .catchall {:try_start_5f .. :try_end_68} :catchall_9f

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_6c
    :try_start_6c
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "unexpected journal header: ["

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_9f
    .catchall {:try_start_6c .. :try_end_9f} :catchall_9f

    :catchall_9f
    move-exception v0

    move-object v1, v2

    goto :goto_a3

    :catchall_a2
    move-exception v0

    :goto_a3
    invoke-static {v1}, Lcom/ssjj/fnsdk/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/LruDiskCache;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/LruDiskCache;->g()V

    return-void
.end method

.method private static b(Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_3b

    array-length v1, v0

    const/4 p0, 0x0

    :goto_8
    if-lt p0, v1, :cond_b

    return-void

    :cond_b
    aget-object v2, v0, p0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/LruDiskCache;->b(Ljava/io/File;)V

    :cond_16
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_38

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_23

    goto :goto_38

    :cond_23
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to delete file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_38
    :goto_38
    add-int/lit8 p0, p0, 0x1

    goto :goto_8

    :cond_3b
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "not a readable directory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private c()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->d:Ljava/io/File;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LruDiskCache;->a(Ljava/io/File;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_16

    return-void

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/LruDiskCache$a;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->b(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_36

    :goto_23
    iget v2, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->h:I

    if-lt v3, v2, :cond_28

    goto :goto_f

    :cond_28
    iget-wide v4, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->i:J

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->d(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)[J

    move-result-object v2

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->i:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_36
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a(Lcom/ssjj/fnsdk/core/LruDiskCache$a;Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;)V

    :goto_3a
    iget v2, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->h:I

    if-lt v3, v2, :cond_42

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    :cond_42
    invoke-virtual {v1, v3}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/LruDiskCache;->a(Ljava/io/File;)V

    invoke-virtual {v1, v3}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->b(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/LruDiskCache;->a(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a
.end method

.method static synthetic c(Lcom/ssjj/fnsdk/core/LruDiskCache;)Z
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/LruDiskCache;->e()Z

    move-result p0

    return p0
.end method

.method private declared-synchronized c(Ljava/lang/String;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/LruDiskCache;->f()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ssjj/fnsdk/core/LruDiskCache$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_8a

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->b(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_16

    goto :goto_8a

    :cond_16
    :goto_16
    iget v2, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->h:I

    if-lt v1, v2, :cond_4e

    iget v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->l:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->l:I

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->j:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "D "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/LruDiskCache;->e()Z

    move-result p1

    if-eqz p1, :cond_4c

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_8c

    :cond_4c
    monitor-exit p0

    return v1

    :cond_4e
    :try_start_4e
    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_74

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_5f

    goto :goto_74

    :cond_5f
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failed to delete "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_74
    :goto_74
    iget-wide v2, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->i:J

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->d(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)[J

    move-result-object v4

    aget-wide v5, v4, v1

    sub-long/2addr v2, v5

    iput-wide v2, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->i:J

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->d(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1
    :try_end_87
    .catchall {:try_start_4e .. :try_end_87} :catchall_8c

    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_8a
    :goto_8a
    monitor-exit p0

    return v1

    :catchall_8c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized d()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->j:Ljava/io/Writer;

    if-eqz v0, :cond_8

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_ff

    :cond_8
    const/4 v0, 0x0

    :try_start_9
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->d:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v4, "US-ASCII"

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1c
    .catchall {:try_start_9 .. :try_end_1c} :catchall_f7

    :try_start_1c
    const-string v0, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "1"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->f:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->h:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_5f
    .catchall {:try_start_1c .. :try_end_5f} :catchall_f5

    if-nez v2, :cond_98

    :try_start_61
    invoke-static {v1}, Lcom/ssjj/fnsdk/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->c:Ljava/io/File;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->e:Ljava/io/File;

    invoke-static {v0, v2, v1}, Lcom/ssjj/fnsdk/core/LruDiskCache;->a(Ljava/io/File;Ljava/io/File;Z)V

    :cond_74
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->d:Ljava/io/File;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->c:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/ssjj/fnsdk/core/LruDiskCache;->a(Ljava/io/File;Ljava/io/File;Z)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->e:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->c:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v1, "US-ASCII"

    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->j:Ljava/io/Writer;
    :try_end_96
    .catchall {:try_start_61 .. :try_end_96} :catchall_ff

    monitor-exit p0

    return-void

    :cond_98
    :try_start_98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ssjj/fnsdk/core/LruDiskCache$a;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->b(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;

    move-result-object v3

    const/16 v4, 0xa

    if-eqz v3, :cond_c1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "U "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->c(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_bd
    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_5b

    :cond_c1
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "C "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->c(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v5, 0x74

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->e(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_f4
    .catchall {:try_start_98 .. :try_end_f4} :catchall_f5

    goto :goto_bd

    :catchall_f5
    move-exception v0

    goto :goto_fb

    :catchall_f7
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_fb
    :try_start_fb
    invoke-static {v1}, Lcom/ssjj/fnsdk/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
    :try_end_ff
    .catchall {:try_start_fb .. :try_end_ff} :catchall_ff

    :catchall_ff
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic d(Lcom/ssjj/fnsdk/core/LruDiskCache;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/LruDiskCache;->d()V

    return-void
.end method

.method static synthetic e(Lcom/ssjj/fnsdk/core/LruDiskCache;)I
    .registers 1

    iget p0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->h:I

    return p0
.end method

.method private e()Z
    .registers 3

    iget v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->l:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_10

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic f(Lcom/ssjj/fnsdk/core/LruDiskCache;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->b:Ljava/io/File;

    return-object p0
.end method

.method private f()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->j:Ljava/io/Writer;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private g()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    iget-wide v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->i:J

    iget-wide v2, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->g:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_9

    return-void

    :cond_9
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/LruDiskCache;->c(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/ssjj/fnsdk/core/LruDiskCache;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-lez v2, :cond_a5

    if-lez p2, :cond_9d

    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2a

    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2a

    :cond_26
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/ssjj/fnsdk/core/LruDiskCache;->a(Ljava/io/File;Ljava/io/File;Z)V

    :cond_2a
    :goto_2a
    new-instance v0, Lcom/ssjj/fnsdk/core/LruDiskCache;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/ssjj/fnsdk/core/LruDiskCache;-><init>(Ljava/io/File;IIJ)V

    iget-object v1, v0, Lcom/ssjj/fnsdk/core/LruDiskCache;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_83

    :try_start_3c
    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/LruDiskCache;->b()V

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/LruDiskCache;->c()V

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/ssjj/fnsdk/core/LruDiskCache;->c:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    const-string v4, "US-ASCII"

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/LruDiskCache;->j:Ljava/io/Writer;
    :try_end_58
    .catchall {:try_start_3c .. :try_end_58} :catchall_59

    return-object v0

    :catchall_59
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DiskLruCache "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is corrupt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", removing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/LruDiskCache;->delete()V

    :cond_83
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8f

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_9c

    :cond_8f
    new-instance v0, Lcom/ssjj/fnsdk/core/LruDiskCache;

    move-object v2, v0

    move-object v3, p0

    move v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-direct/range {v2 .. v7}, Lcom/ssjj/fnsdk/core/LruDiskCache;-><init>(Ljava/io/File;IIJ)V

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/LruDiskCache;->d()V

    :cond_9c
    return-object v0

    :cond_9d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->j:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3d

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/LruDiskCache;->g()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->j:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->j:Ljava/io/Writer;
    :try_end_27
    .catchall {:try_start_7 .. :try_end_27} :catchall_3d

    monitor-exit p0

    return-void

    :cond_29
    :try_start_29
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/LruDiskCache$a;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->b(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->b(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;->abort()V
    :try_end_3c
    .catchall {:try_start_29 .. :try_end_3c} :catchall_3d

    goto :goto_16

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public delete()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->b:Ljava/io/File;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LruDiskCache;->b(Ljava/io/File;)V

    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->p:Lcom/ssjj/fnsdk/core/LruDiskCache$FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/ssjj/fnsdk/core/LruDiskCache$FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/ssjj/fnsdk/core/LruDiskCache;->a(Ljava/lang/String;J)Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/LruDiskCache;->f()V

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/LruDiskCache;->g()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->j:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/LruDiskCache$Snapshot;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->p:Lcom/ssjj/fnsdk/core/LruDiskCache$FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/ssjj/fnsdk/core/LruDiskCache$FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/LruDiskCache;->b(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/LruDiskCache$Snapshot;

    move-result-object p1

    return-object p1
.end method

.method public getCacheFile(Ljava/lang/String;I)Ljava/io/File;
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->p:Lcom/ssjj/fnsdk/core/LruDiskCache$FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/ssjj/fnsdk/core/LruDiskCache$FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->b:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDirectory()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->b:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized getExpiryTimestamp(Ljava/lang/String;)J
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->p:Lcom/ssjj/fnsdk/core/LruDiskCache$FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/ssjj/fnsdk/core/LruDiskCache$FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/LruDiskCache;->f()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->k:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ssjj/fnsdk/core/LruDiskCache$a;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_1e

    if-nez p1, :cond_18

    monitor-exit p0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_18
    :try_start_18
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->e(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)J

    move-result-wide v0
    :try_end_1c
    .catchall {:try_start_18 .. :try_end_1c} :catchall_1e

    monitor-exit p0

    return-wide v0

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFileNameGenerator()Lcom/ssjj/fnsdk/core/LruDiskCache$FileNameGenerator;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->p:Lcom/ssjj/fnsdk/core/LruDiskCache$FileNameGenerator;

    return-object v0
.end method

.method public declared-synchronized getMaxSize()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->g:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->j:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    monitor-exit p0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public remove(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->p:Lcom/ssjj/fnsdk/core/LruDiskCache$FileNameGenerator;

    invoke-interface {v0, p1}, Lcom/ssjj/fnsdk/core/LruDiskCache$FileNameGenerator;->generate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/LruDiskCache;->c(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setFileNameGenerator(Lcom/ssjj/fnsdk/core/LruDiskCache$FileNameGenerator;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->p:Lcom/ssjj/fnsdk/core/LruDiskCache$FileNameGenerator;

    :cond_4
    return-void
.end method

.method public declared-synchronized setMaxSize(J)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->g:J

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache;->i:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
