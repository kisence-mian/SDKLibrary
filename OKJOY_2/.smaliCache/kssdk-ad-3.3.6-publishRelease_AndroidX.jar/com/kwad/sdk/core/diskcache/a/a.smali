.class public final Lcom/kwad/sdk/core/diskcache/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/diskcache/a/a$b;,
        Lcom/kwad/sdk/core/diskcache/a/a$a;
    }
.end annotation


# static fields
.field static final a:Ljava/util/regex/Pattern;

.field private static final p:Ljava/io/OutputStream;


# instance fields
.field final b:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:Ljava/io/File;

.field private final f:Ljava/io/File;

.field private final g:I

.field private h:J

.field private final i:I

.field private j:J

.field private k:Ljava/io/Writer;

.field private final l:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/kwad/sdk/core/diskcache/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private m:I

.field private n:J

.field private final o:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/core/diskcache/a/a;->a:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/kwad/sdk/core/diskcache/a/a$2;

    invoke-direct {v0}, Lcom/kwad/sdk/core/diskcache/a/a$2;-><init>()V

    sput-object v0, Lcom/kwad/sdk/core/diskcache/a/a;->p:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .registers 21

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/kwad/sdk/core/diskcache/a/a;->j:J

    new-instance v4, Ljava/util/LinkedHashMap;

    const/4 v5, 0x0

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v4, v0, Lcom/kwad/sdk/core/diskcache/a/a;->l:Ljava/util/LinkedHashMap;

    iput-wide v2, v0, Lcom/kwad/sdk/core/diskcache/a/a;->n:J

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v2, v0, Lcom/kwad/sdk/core/diskcache/a/a;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/kwad/sdk/core/diskcache/a/a$1;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/core/diskcache/a/a$1;-><init>(Lcom/kwad/sdk/core/diskcache/a/a;)V

    iput-object v2, v0, Lcom/kwad/sdk/core/diskcache/a/a;->o:Ljava/util/concurrent/Callable;

    iput-object v1, v0, Lcom/kwad/sdk/core/diskcache/a/a;->c:Ljava/io/File;

    move/from16 v2, p2

    iput v2, v0, Lcom/kwad/sdk/core/diskcache/a/a;->g:I

    new-instance v2, Ljava/io/File;

    const-string v3, "journal"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/kwad/sdk/core/diskcache/a/a;->d:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v3, "journal.tmp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/kwad/sdk/core/diskcache/a/a;->e:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v3, "journal.bkp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/kwad/sdk/core/diskcache/a/a;->f:Ljava/io/File;

    move/from16 v1, p3

    iput v1, v0, Lcom/kwad/sdk/core/diskcache/a/a;->i:I

    move-wide/from16 v1, p4

    iput-wide v1, v0, Lcom/kwad/sdk/core/diskcache/a/a;->h:J

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/diskcache/a/a;I)I
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->m:I

    return p1
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/kwad/sdk/core/diskcache/a/a$a;
    .registers 9

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/a/a;->i()V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/diskcache/a/a;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/diskcache/a/a$b;

    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    if-eqz v0, :cond_20

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a$b;->e(Lcom/kwad/sdk/core/diskcache/a/a$b;)J

    move-result-wide v3
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_64

    cmp-long p2, v3, p2

    if-eqz p2, :cond_22

    :cond_20
    monitor-exit p0

    return-object v2

    :cond_22
    if-nez v0, :cond_2f

    :try_start_24
    new-instance v0, Lcom/kwad/sdk/core/diskcache/a/a$b;

    invoke-direct {v0, p0, p1, v2}, Lcom/kwad/sdk/core/diskcache/a/a$b;-><init>(Lcom/kwad/sdk/core/diskcache/a/a;Ljava/lang/String;Lcom/kwad/sdk/core/diskcache/a/a$1;)V

    iget-object p2, p0, Lcom/kwad/sdk/core/diskcache/a/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    :cond_2f
    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a$b;->a(Lcom/kwad/sdk/core/diskcache/a/a$b;)Lcom/kwad/sdk/core/diskcache/a/a$a;

    move-result-object p2
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_64

    if-eqz p2, :cond_37

    monitor-exit p0

    return-object v2

    :cond_37
    :goto_37
    :try_start_37
    new-instance p2, Lcom/kwad/sdk/core/diskcache/a/a$a;

    invoke-direct {p2, p0, v0, v2}, Lcom/kwad/sdk/core/diskcache/a/a$a;-><init>(Lcom/kwad/sdk/core/diskcache/a/a;Lcom/kwad/sdk/core/diskcache/a/a$b;Lcom/kwad/sdk/core/diskcache/a/a$1;)V

    invoke-static {v0, p2}, Lcom/kwad/sdk/core/diskcache/a/a$b;->a(Lcom/kwad/sdk/core/diskcache/a/a$b;Lcom/kwad/sdk/core/diskcache/a/a$a;)Lcom/kwad/sdk/core/diskcache/a/a$a;

    iget-object p3, p0, Lcom/kwad/sdk/core/diskcache/a/a;->k:Ljava/io/Writer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DIRTY "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->k:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V
    :try_end_62
    .catchall {:try_start_37 .. :try_end_62} :catchall_64

    monitor-exit p0

    return-object p2

    :catchall_64
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public static a(Ljava/io/File;IIJ)Lcom/kwad/sdk/core/diskcache/a/a;
    .registers 14

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_8c

    if-lez p2, :cond_84

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

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    :cond_2a
    :goto_2a
    new-instance v0, Lcom/kwad/sdk/core/diskcache/a/a;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/kwad/sdk/core/diskcache/a/a;-><init>(Ljava/io/File;IIJ)V

    iget-object v1, v0, Lcom/kwad/sdk/core/diskcache/a/a;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_73

    :try_start_3c
    invoke-direct {v0}, Lcom/kwad/sdk/core/diskcache/a/a;->e()V

    invoke-direct {v0}, Lcom/kwad/sdk/core/diskcache/a/a;->f()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_42} :catch_43

    return-object v0

    :catch_43
    move-exception v1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DiskLruCache "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is corrupt: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", removing"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/kwad/sdk/core/diskcache/a/a;->c()V

    :cond_73
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Lcom/kwad/sdk/core/diskcache/a/a;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/kwad/sdk/core/diskcache/a/a;-><init>(Ljava/io/File;IIJ)V

    invoke-direct {v0}, Lcom/kwad/sdk/core/diskcache/a/a;->g()V

    return-object v0

    :cond_84
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic a(Lcom/kwad/sdk/core/diskcache/a/a;)Ljava/io/Writer;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->k:Ljava/io/Writer;

    return-object p0
.end method

.method private declared-synchronized a(Lcom/kwad/sdk/core/diskcache/a/a$a;Z)V
    .registers 12

    monitor-enter p0

    :try_start_1
    invoke-static {p1}, Lcom/kwad/sdk/core/diskcache/a/a$a;->a(Lcom/kwad/sdk/core/diskcache/a/a$a;)Lcom/kwad/sdk/core/diskcache/a/a$b;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a$b;->a(Lcom/kwad/sdk/core/diskcache/a/a$b;)Lcom/kwad/sdk/core/diskcache/a/a$a;

    move-result-object v1

    if-ne v1, p1, :cond_113

    const/4 v1, 0x0

    if-eqz p2, :cond_4f

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a$b;->d(Lcom/kwad/sdk/core/diskcache/a/a$b;)Z

    move-result v2

    if-nez v2, :cond_4f

    move v2, v1

    :goto_15
    iget v3, p0, Lcom/kwad/sdk/core/diskcache/a/a;->i:I

    if-ge v2, v3, :cond_4f

    invoke-static {p1}, Lcom/kwad/sdk/core/diskcache/a/a$a;->b(Lcom/kwad/sdk/core/diskcache/a/a$a;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_33

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/core/diskcache/a/a$b;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_30

    invoke-virtual {p1}, Lcom/kwad/sdk/core/diskcache/a/a$a;->b()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_119

    monitor-exit p0

    return-void

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_33
    :try_start_33
    invoke-virtual {p1}, Lcom/kwad/sdk/core/diskcache/a/a$a;->b()V

    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Newly created entry didn\'t create value for index "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4f
    :goto_4f
    iget p1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->i:I

    if-ge v1, p1, :cond_83

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/diskcache/a/a$b;->b(I)Ljava/io/File;

    move-result-object p1

    if-eqz p2, :cond_7d

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_80

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/diskcache/a/a$b;->a(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a$b;->b(Lcom/kwad/sdk/core/diskcache/a/a$b;)[J

    move-result-object p1

    aget-wide v3, p1, v1

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v5

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a$b;->b(Lcom/kwad/sdk/core/diskcache/a/a$b;)[J

    move-result-object p1

    aput-wide v5, p1, v1

    iget-wide v7, p0, Lcom/kwad/sdk/core/diskcache/a/a;->j:J

    sub-long/2addr v7, v3

    add-long/2addr v7, v5

    iput-wide v7, p0, Lcom/kwad/sdk/core/diskcache/a/a;->j:J

    goto :goto_80

    :cond_7d
    invoke-static {p1}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Ljava/io/File;)V

    :cond_80
    :goto_80
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    :cond_83
    iget p1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->m:I

    const/4 v1, 0x1

    add-int/2addr p1, v1

    iput p1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->m:I

    const/4 p1, 0x0

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/diskcache/a/a$b;->a(Lcom/kwad/sdk/core/diskcache/a/a$b;Lcom/kwad/sdk/core/diskcache/a/a$a;)Lcom/kwad/sdk/core/diskcache/a/a$a;

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a$b;->d(Lcom/kwad/sdk/core/diskcache/a/a$b;)Z

    move-result p1

    or-int/2addr p1, p2

    const/16 v2, 0xa

    if-eqz p1, :cond_ce

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/diskcache/a/a$b;->a(Lcom/kwad/sdk/core/diskcache/a/a$b;Z)Z

    iget-object p1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->k:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLEAN "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a$b;->c(Lcom/kwad/sdk/core/diskcache/a/a$b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kwad/sdk/core/diskcache/a/a$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_f7

    iget-wide p1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->n:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->n:J

    invoke-static {v0, p1, p2}, Lcom/kwad/sdk/core/diskcache/a/a$b;->a(Lcom/kwad/sdk/core/diskcache/a/a$b;J)J

    goto :goto_f7

    :cond_ce
    iget-object p1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->l:Ljava/util/LinkedHashMap;

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a$b;->c(Lcom/kwad/sdk/core/diskcache/a/a$b;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->k:Ljava/io/Writer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "REMOVE "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a$b;->c(Lcom/kwad/sdk/core/diskcache/a/a$b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_f7
    :goto_f7
    iget-object p1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->k:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    iget-wide p1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->j:J

    iget-wide v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->h:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_10a

    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/a/a;->h()Z

    move-result p1

    if-eqz p1, :cond_111

    :cond_10a
    iget-object p1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lcom/kwad/sdk/core/diskcache/a/a;->o:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_111
    .catchall {:try_start_33 .. :try_end_111} :catchall_119

    :cond_111
    monitor-exit p0

    return-void

    :cond_113
    :try_start_113
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_119
    .catchall {:try_start_113 .. :try_end_119} :catchall_119

    :catchall_119
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lcom/kwad/sdk/core/diskcache/a/a;Lcom/kwad/sdk/core/diskcache/a/a$a;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Lcom/kwad/sdk/core/diskcache/a/a$a;Z)V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .registers 2

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

    if-eqz p2, :cond_5

    invoke-static {p1}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Ljava/io/File;)V

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

.method static synthetic b(Lcom/kwad/sdk/core/diskcache/a/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/a/a;->j()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 10

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "unexpected journal line: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_ab

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    if-ne v0, v3, :cond_2b

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "REMOVE"

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v1, v6, :cond_2f

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    iget-object p1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2b
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_2f
    iget-object v5, p0, Lcom/kwad/sdk/core/diskcache/a/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kwad/sdk/core/diskcache/a/a$b;

    const/4 v6, 0x0

    if-nez v5, :cond_44

    new-instance v5, Lcom/kwad/sdk/core/diskcache/a/a$b;

    invoke-direct {v5, p0, v4, v6}, Lcom/kwad/sdk/core/diskcache/a/a$b;-><init>(Lcom/kwad/sdk/core/diskcache/a/a;Ljava/lang/String;Lcom/kwad/sdk/core/diskcache/a/a$1;)V

    iget-object v7, p0, Lcom/kwad/sdk/core/diskcache/a/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v7, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_44
    if-eq v0, v3, :cond_6a

    const-string v4, "CLEAN"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v1, v7, :cond_6a

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6a

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, v1}, Lcom/kwad/sdk/core/diskcache/a/a$b;->a(Lcom/kwad/sdk/core/diskcache/a/a$b;Z)Z

    invoke-static {v5, v6}, Lcom/kwad/sdk/core/diskcache/a/a$b;->a(Lcom/kwad/sdk/core/diskcache/a/a$b;Lcom/kwad/sdk/core/diskcache/a/a$a;)Lcom/kwad/sdk/core/diskcache/a/a$a;

    invoke-static {v5, p1}, Lcom/kwad/sdk/core/diskcache/a/a$b;->a(Lcom/kwad/sdk/core/diskcache/a/a$b;[Ljava/lang/String;)V

    goto :goto_93

    :cond_6a
    if-ne v0, v3, :cond_83

    const-string v4, "DIRTY"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v1, v7, :cond_83

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_83

    new-instance p1, Lcom/kwad/sdk/core/diskcache/a/a$a;

    invoke-direct {p1, p0, v5, v6}, Lcom/kwad/sdk/core/diskcache/a/a$a;-><init>(Lcom/kwad/sdk/core/diskcache/a/a;Lcom/kwad/sdk/core/diskcache/a/a$b;Lcom/kwad/sdk/core/diskcache/a/a$1;)V

    invoke-static {v5, p1}, Lcom/kwad/sdk/core/diskcache/a/a$b;->a(Lcom/kwad/sdk/core/diskcache/a/a$b;Lcom/kwad/sdk/core/diskcache/a/a$a;)Lcom/kwad/sdk/core/diskcache/a/a$a;

    goto :goto_93

    :cond_83
    if-ne v0, v3, :cond_94

    const-string v0, "READ"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v1, v3, :cond_94

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_94

    :goto_93
    return-void

    :cond_94
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ab
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic c(Lcom/kwad/sdk/core/diskcache/a/a;)Z
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/a/a;->h()Z

    move-result p0

    return p0
.end method

.method static synthetic d()Ljava/io/OutputStream;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/diskcache/a/a;->p:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic d(Lcom/kwad/sdk/core/diskcache/a/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/a/a;->g()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/kwad/sdk/core/diskcache/a/a;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic e(Lcom/kwad/sdk/core/diskcache/a/a;)I
    .registers 1

    iget p0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->i:I

    return p0
.end method

.method private e()V
    .registers 10

    const-string v0, ", "

    new-instance v1, Lcom/kwad/sdk/core/diskcache/a/b;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/kwad/sdk/core/diskcache/a/a;->d:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/kwad/sdk/core/diskcache/a/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Lcom/kwad/sdk/core/diskcache/a/b;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    :try_start_10
    invoke-virtual {v1}, Lcom/kwad/sdk/core/diskcache/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/kwad/sdk/core/diskcache/a/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/kwad/sdk/core/diskcache/a/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/kwad/sdk/core/diskcache/a/b;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/kwad/sdk/core/diskcache/a/b;->a()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8d

    const-string v7, "1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8d

    iget v7, p0, Lcom/kwad/sdk/core/diskcache/a/a;->g:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8d

    iget v4, p0, Lcom/kwad/sdk/core/diskcache/a/a;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8d

    const-string v4, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_52
    .catchall {:try_start_10 .. :try_end_52} :catchall_c4

    if-eqz v4, :cond_8d

    const/4 v0, 0x0

    :goto_55
    :try_start_55
    invoke-virtual {v1}, Lcom/kwad/sdk/core/diskcache/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kwad/sdk/core/diskcache/a/a;->c(Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/io/EOFException; {:try_start_55 .. :try_end_5c} :catch_5f
    .catchall {:try_start_55 .. :try_end_5c} :catchall_c4

    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    :catch_5f
    move-exception v2

    :try_start_60
    iget-object v2, p0, Lcom/kwad/sdk/core/diskcache/a/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->m:I

    invoke-virtual {v1}, Lcom/kwad/sdk/core/diskcache/a/b;->b()Z

    move-result v0

    if-eqz v0, :cond_73

    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/a/a;->g()V

    goto :goto_89

    :cond_73
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/kwad/sdk/core/diskcache/a/a;->d:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/kwad/sdk/core/diskcache/a/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->k:Ljava/io/Writer;
    :try_end_89
    .catchall {:try_start_60 .. :try_end_89} :catchall_c4

    :goto_89
    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/a/c;->a(Ljava/io/Closeable;)V

    return-void

    :cond_8d
    :try_start_8d
    new-instance v4, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected journal header: ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_c4
    .catchall {:try_start_8d .. :try_end_c4} :catchall_c4

    :catchall_c4
    move-exception v0

    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/a/c;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method static synthetic f(Lcom/kwad/sdk/core/diskcache/a/a;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->c:Ljava/io/File;

    return-object p0
.end method

.method private f()V
    .registers 9

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->e:Ljava/io/File;

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Ljava/io/File;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_51

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/core/diskcache/a/a$b;

    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/a/a$b;->a(Lcom/kwad/sdk/core/diskcache/a/a$b;)Lcom/kwad/sdk/core/diskcache/a/a$a;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_34

    :goto_22
    iget v2, p0, Lcom/kwad/sdk/core/diskcache/a/a;->i:I

    if-ge v3, v2, :cond_f

    iget-wide v4, p0, Lcom/kwad/sdk/core/diskcache/a/a;->j:J

    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/a/a$b;->b(Lcom/kwad/sdk/core/diskcache/a/a$b;)[J

    move-result-object v2

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/kwad/sdk/core/diskcache/a/a;->j:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_34
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/kwad/sdk/core/diskcache/a/a$b;->a(Lcom/kwad/sdk/core/diskcache/a/a$b;Lcom/kwad/sdk/core/diskcache/a/a$a;)Lcom/kwad/sdk/core/diskcache/a/a$a;

    :goto_38
    iget v2, p0, Lcom/kwad/sdk/core/diskcache/a/a;->i:I

    if-ge v3, v2, :cond_4d

    invoke-virtual {v1, v3}, Lcom/kwad/sdk/core/diskcache/a/a$b;->a(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Ljava/io/File;)V

    invoke-virtual {v1, v3}, Lcom/kwad/sdk/core/diskcache/a/a$b;->b(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    :cond_4d
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    :cond_51
    return-void
.end method

.method private declared-synchronized g()V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->k:Ljava/io/Writer;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    :cond_8
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/kwad/sdk/core/diskcache/a/a;->e:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/kwad/sdk/core/diskcache/a/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_ed

    :try_start_1b
    const-string v1, "libcore.io.DiskLruCache"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->g:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/core/diskcache/a/a$b;

    invoke-static {v2}, Lcom/kwad/sdk/core/diskcache/a/a$b;->a(Lcom/kwad/sdk/core/diskcache/a/a$b;)Lcom/kwad/sdk/core/diskcache/a/a$a;

    move-result-object v3

    const/16 v4, 0xa

    if-eqz v3, :cond_8d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DIRTY "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/kwad/sdk/core/diskcache/a/a$b;->c(Lcom/kwad/sdk/core/diskcache/a/a$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_89
    invoke-virtual {v0, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_5a

    :cond_8d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CLEAN "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/kwad/sdk/core/diskcache/a/a$b;->c(Lcom/kwad/sdk/core/diskcache/a/a$b;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/kwad/sdk/core/diskcache/a/a$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_b0
    .catchall {:try_start_1b .. :try_end_b0} :catchall_e8

    goto :goto_89

    :cond_b1
    :try_start_b1
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->d:Ljava/io/File;

    iget-object v2, p0, Lcom/kwad/sdk/core/diskcache/a/a;->f:Ljava/io/File;

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    :cond_c4
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->e:Ljava/io/File;

    iget-object v2, p0, Lcom/kwad/sdk/core/diskcache/a/a;->d:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->f:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/kwad/sdk/core/diskcache/a/a;->d:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v1, Lcom/kwad/sdk/core/diskcache/a/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->k:Ljava/io/Writer;
    :try_end_e6
    .catchall {:try_start_b1 .. :try_end_e6} :catchall_ed

    monitor-exit p0

    return-void

    :catchall_e8
    move-exception v1

    :try_start_e9
    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    throw v1
    :try_end_ed
    .catchall {:try_start_e9 .. :try_end_ed} :catchall_ed

    :catchall_ed
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private h()Z
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->m:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_10

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private i()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->k:Ljava/io/Writer;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private j()V
    .registers 5

    :goto_0
    iget-wide v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->j:J

    iget-wide v2, p0, Lcom/kwad/sdk/core/diskcache/a/a;->h:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_22

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->l:Ljava/util/LinkedHashMap;

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

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/diskcache/a/a;->b(Ljava/lang/String;)Z

    goto :goto_0

    :cond_22
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/kwad/sdk/core/diskcache/a/a$a;
    .registers 4

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Ljava/lang/String;J)Lcom/kwad/sdk/core/diskcache/a/a$a;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->c:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized b()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/a/a;->i()V

    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/a/a;->j()V

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->k:Ljava/io/Writer;

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

.method public declared-synchronized b(Ljava/lang/String;)Z
    .registers 9

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/a/a;->i()V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/diskcache/a/a;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/diskcache/a/a$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_96

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a$b;->a(Lcom/kwad/sdk/core/diskcache/a/a$b;)Lcom/kwad/sdk/core/diskcache/a/a$a;

    move-result-object v2

    if-eqz v2, :cond_1a

    goto/16 :goto_96

    :cond_1a
    :goto_1a
    iget v2, p0, Lcom/kwad/sdk/core/diskcache/a/a;->i:I

    if-ge v1, v2, :cond_5e

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/diskcache/a/a$b;->a(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_48

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_2f

    goto :goto_48

    :cond_2f
    new-instance p1, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "failed to delete "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_48
    :goto_48
    iget-wide v2, p0, Lcom/kwad/sdk/core/diskcache/a/a;->j:J

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a$b;->b(Lcom/kwad/sdk/core/diskcache/a/a$b;)[J

    move-result-object v4

    aget-wide v5, v4, v1

    sub-long/2addr v2, v5

    iput-wide v2, p0, Lcom/kwad/sdk/core/diskcache/a/a;->j:J

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a$b;->b(Lcom/kwad/sdk/core/diskcache/a/a$b;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_5e
    iget v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->m:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->m:I

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->k:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REMOVE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/a/a;->h()Z

    move-result p1

    if-eqz p1, :cond_94

    iget-object p1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->o:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_94
    .catchall {:try_start_1 .. :try_end_94} :catchall_98

    :cond_94
    monitor-exit p0

    return v1

    :cond_96
    :goto_96
    monitor-exit p0

    return v1

    :catchall_98
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public c()V
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/core/diskcache/a/a;->close()V

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->c:Ljava/io/File;

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/c;->a(Ljava/io/File;)V

    return-void
.end method

.method public declared-synchronized close()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->k:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3d

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->l:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/core/diskcache/a/a$b;

    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/a/a$b;->a(Lcom/kwad/sdk/core/diskcache/a/a$b;)Lcom/kwad/sdk/core/diskcache/a/a$a;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/a/a$b;->a(Lcom/kwad/sdk/core/diskcache/a/a$b;)Lcom/kwad/sdk/core/diskcache/a/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/core/diskcache/a/a$a;->b()V

    goto :goto_16

    :cond_30
    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/a/a;->j()V

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->k:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->k:Ljava/io/Writer;
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_3d

    monitor-exit p0

    return-void

    :catchall_3d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
