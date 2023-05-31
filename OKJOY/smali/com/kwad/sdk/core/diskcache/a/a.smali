.class public final Lcom/kwad/sdk/core/diskcache/a/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/diskcache/a/a$d;,
        Lcom/kwad/sdk/core/diskcache/a/a$c;
    }
.end annotation


# static fields
.field static final o:Ljava/util/regex/Pattern;

.field private static final p:Ljava/io/OutputStream;


# instance fields
.field private final a:Ljava/io/File;

.field private final b:Ljava/io/File;

.field private final c:Ljava/io/File;

.field private final d:Ljava/io/File;

.field private final e:I

.field private f:J

.field private final g:I

.field private h:J

.field private i:Ljava/io/Writer;

.field private final j:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/kwad/sdk/core/diskcache/a/a$d;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:J

.field final m:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final n:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable",
            "<",
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

    sput-object v0, Lcom/kwad/sdk/core/diskcache/a/a;->o:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/kwad/sdk/core/diskcache/a/a$b;

    invoke-direct {v0}, Lcom/kwad/sdk/core/diskcache/a/a$b;-><init>()V

    sput-object v0, Lcom/kwad/sdk/core/diskcache/a/a;->p:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJ)V
    .registers 14

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lcom/kwad/sdk/core/diskcache/a/a;->h:J

    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->j:Ljava/util/LinkedHashMap;

    iput-wide v4, p0, Lcom/kwad/sdk/core/diskcache/a/a;->l:J

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v4, 0x3c

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->m:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/kwad/sdk/core/diskcache/a/a$a;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/diskcache/a/a$a;-><init>(Lcom/kwad/sdk/core/diskcache/a/a;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->n:Ljava/util/concurrent/Callable;

    iput-object p1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->a:Ljava/io/File;

    iput p2, p0, Lcom/kwad/sdk/core/diskcache/a/a;->e:I

    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->b:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->c:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->d:Ljava/io/File;

    iput p3, p0, Lcom/kwad/sdk/core/diskcache/a/a;->g:I

    iput-wide p4, p0, Lcom/kwad/sdk/core/diskcache/a/a;->f:J

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/diskcache/a/a;I)I
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->k:I

    return p1
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/kwad/sdk/core/diskcache/a/a$c;
    .registers 8

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/a/a;->e()V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/diskcache/a/a;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/diskcache/a/a$d;

    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_23

    if-eqz v0, :cond_20

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a$d;->c(Lcom/kwad/sdk/core/diskcache/a/a$d;)J
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_5e

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_23

    :cond_20
    move-object v0, v1

    :goto_21
    monitor-exit p0

    return-object v0

    :cond_23
    if-nez v0, :cond_61

    :try_start_25
    new-instance v0, Lcom/kwad/sdk/core/diskcache/a/a$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/kwad/sdk/core/diskcache/a/a$d;-><init>(Lcom/kwad/sdk/core/diskcache/a/a;Ljava/lang/String;Lcom/kwad/sdk/core/diskcache/a/a$a;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_31
    new-instance v0, Lcom/kwad/sdk/core/diskcache/a/a$c;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/kwad/sdk/core/diskcache/a/a$c;-><init>(Lcom/kwad/sdk/core/diskcache/a/a;Lcom/kwad/sdk/core/diskcache/a/a$d;Lcom/kwad/sdk/core/diskcache/a/a$a;)V

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/diskcache/a/a$d;->a(Lcom/kwad/sdk/core/diskcache/a/a$d;Lcom/kwad/sdk/core/diskcache/a/a$c;)Lcom/kwad/sdk/core/diskcache/a/a$c;

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->i:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DIRTY "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->i:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_5d
    .catchall {:try_start_25 .. :try_end_5d} :catchall_5e

    goto :goto_21

    :catchall_5e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_61
    :try_start_61
    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a$d;->e(Lcom/kwad/sdk/core/diskcache/a/a$d;)Lcom/kwad/sdk/core/diskcache/a/a$c;
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_5e

    move-result-object v2

    if-eqz v2, :cond_69

    move-object v0, v1

    goto :goto_21

    :cond_69
    move-object v1, v0

    goto :goto_31
.end method

.method public static a(Ljava/io/File;IIJ)Lcom/kwad/sdk/core/diskcache/a/a;
    .registers 12

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_8a

    if-lez p2, :cond_82

    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_25

    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3d

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_25
    :goto_25
    new-instance v0, Lcom/kwad/sdk/core/diskcache/a/a;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/kwad/sdk/core/diskcache/a/a;-><init>(Ljava/io/File;IIJ)V

    iget-object v1, v0, Lcom/kwad/sdk/core/diskcache/a/a;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_72

    :try_start_36
    invoke-direct {v0}, Lcom/kwad/sdk/core/diskcache/a/a;->h()V

    invoke-direct {v0}, Lcom/kwad/sdk/core/diskcache/a/a;->g()V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3c} :catch_42

    :goto_3c
    return-object v0

    :cond_3d
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_25

    :catch_42
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

    invoke-virtual {v0}, Lcom/kwad/sdk/core/diskcache/a/a;->a()V

    :cond_72
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Lcom/kwad/sdk/core/diskcache/a/a;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/kwad/sdk/core/diskcache/a/a;-><init>(Ljava/io/File;IIJ)V

    invoke-direct {v0}, Lcom/kwad/sdk/core/diskcache/a/a;->i()V

    goto :goto_3c

    :cond_82
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/kwad/sdk/core/diskcache/a/a;)Ljava/io/Writer;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->i:Ljava/io/Writer;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/kwad/sdk/core/diskcache/a/a$c;Z)V
    .registers 13

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Lcom/kwad/sdk/core/diskcache/a/a$c;->a(Lcom/kwad/sdk/core/diskcache/a/a$c;)Lcom/kwad/sdk/core/diskcache/a/a$d;

    move-result-object v2

    invoke-static {v2}, Lcom/kwad/sdk/core/diskcache/a/a$d;->e(Lcom/kwad/sdk/core/diskcache/a/a$d;)Lcom/kwad/sdk/core/diskcache/a/a$c;

    move-result-object v1

    if-ne v1, p1, :cond_11a

    if-eqz p2, :cond_52

    invoke-static {v2}, Lcom/kwad/sdk/core/diskcache/a/a$d;->d(Lcom/kwad/sdk/core/diskcache/a/a$d;)Z

    move-result v1

    if-nez v1, :cond_52

    move v1, v0

    :goto_15
    iget v3, p0, Lcom/kwad/sdk/core/diskcache/a/a;->g:I

    if-ge v1, v3, :cond_52

    invoke-static {p1}, Lcom/kwad/sdk/core/diskcache/a/a$c;->b(Lcom/kwad/sdk/core/diskcache/a/a$c;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_33

    invoke-virtual {v2, v1}, Lcom/kwad/sdk/core/diskcache/a/a$d;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_30

    invoke-virtual {p1}, Lcom/kwad/sdk/core/diskcache/a/a$c;->a()V
    :try_end_2e
    .catchall {:try_start_2 .. :try_end_2e} :catchall_4f

    :cond_2e
    :goto_2e
    monitor-exit p0

    return-void

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_33
    :try_start_33
    invoke-virtual {p1}, Lcom/kwad/sdk/core/diskcache/a/a$c;->a()V

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Newly created entry didn\'t create value for index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4f
    .catchall {:try_start_33 .. :try_end_4f} :catchall_4f

    :catchall_4f
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_52
    :goto_52
    :try_start_52
    iget v1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->g:I

    if-ge v0, v1, :cond_87

    invoke-virtual {v2, v0}, Lcom/kwad/sdk/core/diskcache/a/a$d;->b(I)Ljava/io/File;

    move-result-object v1

    if-eqz p2, :cond_83

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_80

    invoke-virtual {v2, v0}, Lcom/kwad/sdk/core/diskcache/a/a$d;->a(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-static {v2}, Lcom/kwad/sdk/core/diskcache/a/a$d;->a(Lcom/kwad/sdk/core/diskcache/a/a$d;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    invoke-static {v2}, Lcom/kwad/sdk/core/diskcache/a/a$d;->a(Lcom/kwad/sdk/core/diskcache/a/a$d;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    iget-wide v8, p0, Lcom/kwad/sdk/core/diskcache/a/a;->h:J

    sub-long v4, v8, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/kwad/sdk/core/diskcache/a/a;->h:J

    :cond_80
    :goto_80
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    :cond_83
    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Ljava/io/File;)V

    goto :goto_80

    :cond_87
    iget v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->k:I

    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/kwad/sdk/core/diskcache/a/a$d;->a(Lcom/kwad/sdk/core/diskcache/a/a$d;Lcom/kwad/sdk/core/diskcache/a/a$c;)Lcom/kwad/sdk/core/diskcache/a/a$c;

    invoke-static {v2}, Lcom/kwad/sdk/core/diskcache/a/a$d;->d(Lcom/kwad/sdk/core/diskcache/a/a$d;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_ee

    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/kwad/sdk/core/diskcache/a/a$d;->a(Lcom/kwad/sdk/core/diskcache/a/a$d;Z)Z

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->i:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLEAN "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/kwad/sdk/core/diskcache/a/a$d;->b(Lcom/kwad/sdk/core/diskcache/a/a$d;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/kwad/sdk/core/diskcache/a/a$d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_d2

    iget-wide v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->l:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/kwad/sdk/core/diskcache/a/a;->l:J

    invoke-static {v2, v0, v1}, Lcom/kwad/sdk/core/diskcache/a/a$d;->a(Lcom/kwad/sdk/core/diskcache/a/a$d;J)J

    :cond_d2
    :goto_d2
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->i:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    iget-wide v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->h:J

    iget-wide v2, p0, Lcom/kwad/sdk/core/diskcache/a/a;->f:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_e5

    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_e5
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->m:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_2e

    :cond_ee
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->j:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/kwad/sdk/core/diskcache/a/a$d;->b(Lcom/kwad/sdk/core/diskcache/a/a$d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->i:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REMOVE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Lcom/kwad/sdk/core/diskcache/a/a$d;->b(Lcom/kwad/sdk/core/diskcache/a/a$d;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_d2

    :cond_11a
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_120
    .catchall {:try_start_52 .. :try_end_120} :catchall_4f
.end method

.method static synthetic a(Lcom/kwad/sdk/core/diskcache/a/a;Lcom/kwad/sdk/core/diskcache/a/a$c;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Lcom/kwad/sdk/core/diskcache/a/a$c;Z)V

    return-void
.end method

.method private static a(Ljava/io/File;)V
    .registers 2

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_d

    :cond_c
    return-void

    :cond_d
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method private static a(Ljava/io/File;Ljava/io/File;Z)V
    .registers 4

    if-eqz p2, :cond_5

    invoke-static {p1}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Ljava/io/File;)V

    :cond_5
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    :cond_c
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method static synthetic b(Lcom/kwad/sdk/core/diskcache/a/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/a/a;->j()V

    return-void
.end method

.method static synthetic c(Lcom/kwad/sdk/core/diskcache/a/a;)I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->g:I

    return v0
.end method

.method private c(Ljava/lang/String;)V
    .registers 10

    const/16 v1, 0x20

    const/4 v7, 0x5

    const/4 v6, 0x0

    const/4 v5, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-eq v2, v5, :cond_9f

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    if-ne v3, v5, :cond_28

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    if-ne v2, v1, :cond_b8

    const-string v1, "REMOVE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b8

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    :goto_27
    return-void

    :cond_28
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_2d
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/diskcache/a/a$d;

    if-nez v0, :cond_41

    new-instance v0, Lcom/kwad/sdk/core/diskcache/a/a$d;

    invoke-direct {v0, p0, v1, v6}, Lcom/kwad/sdk/core/diskcache/a/a$d;-><init>(Lcom/kwad/sdk/core/diskcache/a/a;Ljava/lang/String;Lcom/kwad/sdk/core/diskcache/a/a$a;)V

    iget-object v4, p0, Lcom/kwad/sdk/core/diskcache/a/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    if-eq v3, v5, :cond_64

    if-ne v2, v7, :cond_64

    const-string v1, "CLEAN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_64

    add-int/lit8 v1, v3, 0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/kwad/sdk/core/diskcache/a/a$d;->a(Lcom/kwad/sdk/core/diskcache/a/a$d;Z)Z

    invoke-static {v0, v6}, Lcom/kwad/sdk/core/diskcache/a/a$d;->a(Lcom/kwad/sdk/core/diskcache/a/a$d;Lcom/kwad/sdk/core/diskcache/a/a$c;)Lcom/kwad/sdk/core/diskcache/a/a$c;

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/diskcache/a/a$d;->a(Lcom/kwad/sdk/core/diskcache/a/a$d;[Ljava/lang/String;)V

    goto :goto_27

    :cond_64
    if-ne v3, v5, :cond_79

    if-ne v2, v7, :cond_79

    const-string v1, "DIRTY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_79

    new-instance v1, Lcom/kwad/sdk/core/diskcache/a/a$c;

    invoke-direct {v1, p0, v0, v6}, Lcom/kwad/sdk/core/diskcache/a/a$c;-><init>(Lcom/kwad/sdk/core/diskcache/a/a;Lcom/kwad/sdk/core/diskcache/a/a$d;Lcom/kwad/sdk/core/diskcache/a/a$a;)V

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/diskcache/a/a$d;->a(Lcom/kwad/sdk/core/diskcache/a/a$d;Lcom/kwad/sdk/core/diskcache/a/a$c;)Lcom/kwad/sdk/core/diskcache/a/a$c;

    goto :goto_27

    :cond_79
    if-ne v3, v5, :cond_86

    const/4 v0, 0x4

    if-ne v2, v0, :cond_86

    const-string v0, "READ"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_27

    :cond_86
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9f
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b8
    move-object v1, v0

    goto/16 :goto_2d
.end method

.method static synthetic d(Lcom/kwad/sdk/core/diskcache/a/a;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->a:Ljava/io/File;

    return-object v0
.end method

.method static synthetic d()Ljava/io/OutputStream;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/diskcache/a/a;->p:Ljava/io/OutputStream;

    return-object v0
.end method

.method private d(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/kwad/sdk/core/diskcache/a/a;->o:Ljava/util/regex/Pattern;

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

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private e()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->i:Ljava/io/Writer;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic e(Lcom/kwad/sdk/core/diskcache/a/a;)Z
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/a/a;->f()Z

    move-result v0

    return v0
.end method

.method static synthetic f(Lcom/kwad/sdk/core/diskcache/a/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/a/a;->i()V

    return-void
.end method

.method private f()Z
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->k:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_10

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_10

    const/4 v0, 0x1

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method private g()V
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->c:Ljava/io/File;

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Ljava/io/File;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/diskcache/a/a$d;

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a$d;->e(Lcom/kwad/sdk/core/diskcache/a/a$d;)Lcom/kwad/sdk/core/diskcache/a/a$c;

    move-result-object v1

    if-nez v1, :cond_35

    move v1, v2

    :goto_23
    iget v4, p0, Lcom/kwad/sdk/core/diskcache/a/a;->g:I

    if-ge v1, v4, :cond_10

    iget-wide v4, p0, Lcom/kwad/sdk/core/diskcache/a/a;->h:J

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a$d;->a(Lcom/kwad/sdk/core/diskcache/a/a$d;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/kwad/sdk/core/diskcache/a/a;->h:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_35
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/diskcache/a/a$d;->a(Lcom/kwad/sdk/core/diskcache/a/a$d;Lcom/kwad/sdk/core/diskcache/a/a$c;)Lcom/kwad/sdk/core/diskcache/a/a$c;

    move v1, v2

    :goto_3a
    iget v4, p0, Lcom/kwad/sdk/core/diskcache/a/a;->g:I

    if-ge v1, v4, :cond_4f

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/diskcache/a/a$d;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/diskcache/a/a$d;->b(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    :cond_4f
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    :cond_53
    return-void
.end method

.method private h()V
    .registers 9

    new-instance v1, Lcom/kwad/sdk/core/diskcache/a/b;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/kwad/sdk/core/diskcache/a/a;->b:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Lcom/kwad/sdk/core/diskcache/a/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Lcom/kwad/sdk/core/diskcache/a/b;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    :try_start_e
    invoke-virtual {v1}, Lcom/kwad/sdk/core/diskcache/a/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/kwad/sdk/core/diskcache/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/kwad/sdk/core/diskcache/a/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/kwad/sdk/core/diskcache/a/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/kwad/sdk/core/diskcache/a/b;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_90

    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_90

    iget v6, p0, Lcom/kwad/sdk/core/diskcache/a/a;->e:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    iget v3, p0, Lcom/kwad/sdk/core/diskcache/a/a;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    const-string v3, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4f
    .catchall {:try_start_e .. :try_end_4f} :catchall_8b

    move-result v3

    if-eqz v3, :cond_90

    const/4 v0, 0x0

    :goto_53
    :try_start_53
    invoke-virtual {v1}, Lcom/kwad/sdk/core/diskcache/a/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kwad/sdk/core/diskcache/a/a;->c(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/io/EOFException; {:try_start_53 .. :try_end_5a} :catch_5d
    .catchall {:try_start_53 .. :try_end_5a} :catchall_8b

    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    :catch_5d
    move-exception v2

    :try_start_5e
    iget-object v2, p0, Lcom/kwad/sdk/core/diskcache/a/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->k:I

    invoke-virtual {v1}, Lcom/kwad/sdk/core/diskcache/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_74

    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/a/a;->i()V
    :try_end_70
    .catchall {:try_start_5e .. :try_end_70} :catchall_8b

    :goto_70
    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/a/c;->a(Ljava/io/Closeable;)V

    return-void

    :cond_74
    :try_start_74
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/kwad/sdk/core/diskcache/a/a;->b:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/kwad/sdk/core/diskcache/a/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->i:Ljava/io/Writer;
    :try_end_8a
    .catchall {:try_start_74 .. :try_end_8a} :catchall_8b

    goto :goto_70

    :catchall_8b
    move-exception v0

    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/a/c;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_90
    :try_start_90
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unexpected journal header: ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_cd
    .catchall {:try_start_90 .. :try_end_cd} :catchall_8b
.end method

.method private declared-synchronized i()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->i:Ljava/io/Writer;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    :cond_8
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/kwad/sdk/core/diskcache/a/a;->c:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/kwad/sdk/core/diskcache/a/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v2, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_93

    :try_start_1b
    const-string v0, "libcore.io.DiskLruCache"

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "1"

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->e:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->g:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/diskcache/a/a$d;

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a$d;->e(Lcom/kwad/sdk/core/diskcache/a/a$d;)Lcom/kwad/sdk/core/diskcache/a/a$c;

    move-result-object v1

    if-eqz v1, :cond_96

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a$d;->b(Lcom/kwad/sdk/core/diskcache/a/a$d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v2

    :goto_8a
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_8d
    .catchall {:try_start_1b .. :try_end_8d} :catchall_8e

    goto :goto_5a

    :catchall_8e
    move-exception v0

    :try_start_8f
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    throw v0
    :try_end_93
    .catchall {:try_start_8f .. :try_end_93} :catchall_93

    :catchall_93
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_96
    :try_start_96
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CLEAN "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a$d;->b(Lcom/kwad/sdk/core/diskcache/a/a$d;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kwad/sdk/core/diskcache/a/a$d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_ba
    .catchall {:try_start_96 .. :try_end_ba} :catchall_8e

    move-result-object v0

    move-object v1, v2

    goto :goto_8a

    :cond_bd
    :try_start_bd
    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->b:Ljava/io/File;

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->d:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    :cond_d0
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->c:Ljava/io/File;

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->b:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Ljava/io/File;Ljava/io/File;Z)V

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/kwad/sdk/core/diskcache/a/a;->b:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v3, Lcom/kwad/sdk/core/diskcache/a/c;->a:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->i:Ljava/io/Writer;
    :try_end_f3
    .catchall {:try_start_bd .. :try_end_f3} :catchall_93

    monitor-exit p0

    return-void
.end method

.method private j()V
    .registers 5

    :goto_0
    iget-wide v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->h:J

    iget-wide v2, p0, Lcom/kwad/sdk/core/diskcache/a/a;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_22

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->j:Ljava/util/LinkedHashMap;

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
.method public a(Ljava/lang/String;)Lcom/kwad/sdk/core/diskcache/a/a$c;
    .registers 4

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/kwad/sdk/core/diskcache/a/a;->a(Ljava/lang/String;J)Lcom/kwad/sdk/core/diskcache/a/a$c;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/core/diskcache/a/a;->close()V

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->a:Ljava/io/File;

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/c;->a(Ljava/io/File;)V

    return-void
.end method

.method public declared-synchronized b()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/a/a;->e()V

    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/a/a;->j()V

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->i:Ljava/io/Writer;

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
    .registers 8

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/a/a;->e()V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/diskcache/a/a;->d(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/diskcache/a/a$d;

    if-eqz v0, :cond_18

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a$d;->e(Lcom/kwad/sdk/core/diskcache/a/a$d;)Lcom/kwad/sdk/core/diskcache/a/a$c;
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_5e

    move-result-object v2

    if-eqz v2, :cond_1b

    :cond_18
    move v0, v1

    :goto_19
    monitor-exit p0

    return v0

    :cond_1b
    :goto_1b
    :try_start_1b
    iget v2, p0, Lcom/kwad/sdk/core/diskcache/a/a;->g:I

    if-ge v1, v2, :cond_61

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/diskcache/a/a$d;->a(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_45

    :cond_2f
    iget-wide v2, p0, Lcom/kwad/sdk/core/diskcache/a/a;->h:J

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a$d;->a(Lcom/kwad/sdk/core/diskcache/a/a$d;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/kwad/sdk/core/diskcache/a/a;->h:J

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a$d;->a(Lcom/kwad/sdk/core/diskcache/a/a$d;)[J

    move-result-object v2

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_45
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to delete "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5e
    .catchall {:try_start_1b .. :try_end_5e} :catchall_5e

    :catchall_5e
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_61
    :try_start_61
    iget v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->k:I

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->i:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REMOVE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/a/a;->f()Z

    move-result v0

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->m:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->n:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_97
    .catchall {:try_start_61 .. :try_end_97} :catchall_5e

    :cond_97
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public c()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->a:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized close()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->i:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_30

    if-nez v0, :cond_7

    :goto_5
    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a;->j:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/diskcache/a/a$d;

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a$d;->e(Lcom/kwad/sdk/core/diskcache/a/a$d;)Lcom/kwad/sdk/core/diskcache/a/a$c;

    move-result-object v2

    if-eqz v2, :cond_16

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a$d;->e(Lcom/kwad/sdk/core/diskcache/a/a$d;)Lcom/kwad/sdk/core/diskcache/a/a$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/core/diskcache/a/a$c;->a()V
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_30

    goto :goto_16

    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_33
    :try_start_33
    invoke-direct {p0}, Lcom/kwad/sdk/core/diskcache/a/a;->j()V

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->i:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a;->i:Ljava/io/Writer;
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_30

    goto :goto_5
.end method
