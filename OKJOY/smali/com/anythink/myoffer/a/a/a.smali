.class public final Lcom/anythink/myoffer/a/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/myoffer/a/a/a$b;,
        Lcom/anythink/myoffer/a/a/a$a;,
        Lcom/anythink/myoffer/a/a/a$c;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "journal"

.field static final b:Ljava/lang/String; = "journal.tmp"

.field static final c:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field static final d:Ljava/lang/String; = "1"

.field static final e:J = -0x1L

.field private static final f:Ljava/lang/String; = "CLEAN"

.field private static final g:Ljava/lang/String; = "DIRTY"

.field private static final h:Ljava/lang/String; = "REMOVE"

.field private static final i:Ljava/lang/String; = "READ"

.field private static final j:Ljava/nio/charset/Charset;

.field private static final k:I = 0x2000


# instance fields
.field private final l:Ljava/io/File;

.field private final m:Ljava/io/File;

.field private final n:Ljava/io/File;

.field private final o:I

.field private final p:J

.field private final q:I

.field private r:J

.field private s:Ljava/io/Writer;

.field private final t:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/anythink/myoffer/a/a/a$b;",
            ">;"
        }
    .end annotation
.end field

.field private u:I

.field private v:J

.field private final w:Ljava/util/concurrent/ExecutorService;

.field private final x:Ljava/util/concurrent/Callable;
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

    .prologue
    .line 107
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/anythink/myoffer/a/a/a;->j:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;J)V
    .registers 12

    .prologue
    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    iput-wide v4, p0, Lcom/anythink/myoffer/a/a/a;->r:J

    .line 145
    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/anythink/myoffer/a/a/a;->t:Ljava/util/LinkedHashMap;

    .line 153
    iput-wide v4, p0, Lcom/anythink/myoffer/a/a/a;->v:J

    .line 249
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/anythink/myoffer/a/a/a;->w:Ljava/util/concurrent/ExecutorService;

    .line 250
    new-instance v0, Lcom/anythink/myoffer/a/a/a$1;

    invoke-direct {v0, p0}, Lcom/anythink/myoffer/a/a/a$1;-><init>(Lcom/anythink/myoffer/a/a/a;)V

    iput-object v0, p0, Lcom/anythink/myoffer/a/a/a;->x:Ljava/util/concurrent/Callable;

    .line 268
    iput-object p1, p0, Lcom/anythink/myoffer/a/a/a;->l:Ljava/io/File;

    .line 269
    iput v3, p0, Lcom/anythink/myoffer/a/a/a;->o:I

    .line 270
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anythink/myoffer/a/a/a;->m:Ljava/io/File;

    .line 271
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anythink/myoffer/a/a/a;->n:Ljava/io/File;

    .line 272
    iput v3, p0, Lcom/anythink/myoffer/a/a/a;->q:I

    .line 273
    iput-wide p2, p0, Lcom/anythink/myoffer/a/a/a;->p:J

    .line 274
    return-void
.end method

.method static synthetic a(Lcom/anythink/myoffer/a/a/a;Ljava/lang/String;J)Lcom/anythink/myoffer/a/a/a$a;
    .registers 6

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Lcom/anythink/myoffer/a/a/a;->a(Ljava/lang/String;J)Lcom/anythink/myoffer/a/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized a(Ljava/lang/String;J)Lcom/anythink/myoffer/a/a/a$a;
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 487
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/anythink/myoffer/a/a/a;->j()V

    .line 488
    invoke-static {p1}, Lcom/anythink/myoffer/a/a/a;->e(Ljava/lang/String;)V

    .line 489
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/myoffer/a/a/a$b;

    .line 490
    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_23

    if-eqz v0, :cond_20

    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a$b;->f(Lcom/anythink/myoffer/a/a/a$b;)J
    :try_end_1b
    .catchall {:try_start_2 .. :try_end_1b} :catchall_5a

    move-result-wide v2

    cmp-long v2, v2, p2

    if-eqz v2, :cond_23

    :cond_20
    move-object v0, v1

    .line 506
    :goto_21
    monitor-exit p0

    return-object v0

    .line 493
    :cond_23
    if-nez v0, :cond_5d

    .line 494
    :try_start_25
    new-instance v0, Lcom/anythink/myoffer/a/a/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/anythink/myoffer/a/a/a$b;-><init>(Lcom/anythink/myoffer/a/a/a;Ljava/lang/String;B)V

    .line 495
    iget-object v1, p0, Lcom/anythink/myoffer/a/a/a;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 500
    :goto_31
    new-instance v0, Lcom/anythink/myoffer/a/a/a$a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/anythink/myoffer/a/a/a$a;-><init>(Lcom/anythink/myoffer/a/a/a;Lcom/anythink/myoffer/a/a/a$b;B)V

    .line 501
    invoke-static {v1, v0}, Lcom/anythink/myoffer/a/a/a$b;->a(Lcom/anythink/myoffer/a/a/a$b;Lcom/anythink/myoffer/a/a/a$a;)Lcom/anythink/myoffer/a/a/a$a;

    .line 504
    iget-object v1, p0, Lcom/anythink/myoffer/a/a/a;->s:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "DIRTY "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 505
    iget-object v1, p0, Lcom/anythink/myoffer/a/a/a;->s:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_59
    .catchall {:try_start_25 .. :try_end_59} :catchall_5a

    goto :goto_21

    .line 487
    :catchall_5a
    move-exception v0

    monitor-exit p0

    throw v0

    .line 496
    :cond_5d
    :try_start_5d
    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a$b;->b(Lcom/anythink/myoffer/a/a/a$b;)Lcom/anythink/myoffer/a/a/a$a;
    :try_end_60
    .catchall {:try_start_5d .. :try_end_60} :catchall_5a

    move-result-object v2

    if-eqz v2, :cond_65

    move-object v0, v1

    .line 497
    goto :goto_21

    :cond_65
    move-object v1, v0

    goto :goto_31
.end method

.method public static a(Ljava/io/File;J)Lcom/anythink/myoffer/a/a/a;
    .registers 8

    .prologue
    .line 286
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_e

    .line 287
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :cond_e
    new-instance v0, Lcom/anythink/myoffer/a/a/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/anythink/myoffer/a/a/a;-><init>(Ljava/io/File;J)V

    .line 295
    iget-object v1, v0, Lcom/anythink/myoffer/a/a/a;->m:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 297
    :try_start_1b
    invoke-direct {v0}, Lcom/anythink/myoffer/a/a/a;->b()V

    .line 298
    invoke-direct {v0}, Lcom/anythink/myoffer/a/a/a;->c()V

    .line 299
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/FileWriter;

    iget-object v3, v0, Lcom/anythink/myoffer/a/a/a;->m:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/16 v3, 0x2000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v1, v0, Lcom/anythink/myoffer/a/a/a;->s:Ljava/io/Writer;
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_32} :catch_33

    .line 312
    :goto_32
    return-object v0

    .line 304
    :catch_33
    move-exception v1

    .line 1679
    invoke-virtual {v0}, Lcom/anythink/myoffer/a/a/a;->close()V

    .line 1680
    iget-object v0, v0, Lcom/anythink/myoffer/a/a/a;->l:Ljava/io/File;

    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a;->a(Ljava/io/File;)V

    .line 309
    :cond_3c
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 310
    new-instance v0, Lcom/anythink/myoffer/a/a/a;

    invoke-direct {v0, p0, p1, p2}, Lcom/anythink/myoffer/a/a/a;-><init>(Ljava/io/File;J)V

    .line 311
    invoke-direct {v0}, Lcom/anythink/myoffer/a/a/a;->d()V

    goto :goto_32
.end method

.method static synthetic a(Lcom/anythink/myoffer/a/a/a;)Ljava/io/Writer;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->s:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic a(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 4690
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/anythink/myoffer/a/a/a;->j:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    .line 96
    return-object v0
.end method

.method private static a(Ljava/io/Reader;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 177
    :try_start_0
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 178
    const/16 v1, 0x400

    new-array v1, v1, [C

    .line 180
    :goto_9
    invoke-virtual {p0, v1}, Ljava/io/Reader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1a

    .line 181
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/StringWriter;->write([CII)V
    :try_end_14
    .catchall {:try_start_0 .. :try_end_14} :catchall_15

    goto :goto_9

    .line 185
    :catchall_15
    move-exception v0

    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    throw v0

    .line 183
    :cond_1a
    :try_start_1a
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_15

    move-result-object v0

    .line 185
    invoke-virtual {p0}, Ljava/io/Reader;->close()V

    .line 183
    return-object v0
.end method

.method static synthetic a()Ljava/nio/charset/Charset;
    .registers 1

    .prologue
    .line 96
    sget-object v0, Lcom/anythink/myoffer/a/a/a;->j:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method private declared-synchronized a(Lcom/anythink/myoffer/a/a/a$a;Z)V
    .registers 13

    .prologue
    const/4 v0, 0x0

    .line 532
    monitor-enter p0

    :try_start_2
    invoke-static {p1}, Lcom/anythink/myoffer/a/a/a$a;->a(Lcom/anythink/myoffer/a/a/a$a;)Lcom/anythink/myoffer/a/a/a$b;

    move-result-object v2

    .line 533
    invoke-static {v2}, Lcom/anythink/myoffer/a/a/a$b;->b(Lcom/anythink/myoffer/a/a/a$b;)Lcom/anythink/myoffer/a/a/a$a;

    move-result-object v1

    if-eq v1, p1, :cond_15

    .line 534
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_12

    .line 532
    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0

    .line 538
    :cond_15
    if-eqz p2, :cond_42

    :try_start_17
    invoke-static {v2}, Lcom/anythink/myoffer/a/a/a$b;->e(Lcom/anythink/myoffer/a/a/a$b;)Z

    move-result v1

    if-nez v1, :cond_42

    move v1, v0

    .line 539
    :goto_1e
    iget v3, p0, Lcom/anythink/myoffer/a/a/a;->q:I

    if-ge v1, v3, :cond_42

    .line 540
    invoke-virtual {v2, v1}, Lcom/anythink/myoffer/a/a/a$b;->b(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 541
    invoke-virtual {p1}, Lcom/anythink/myoffer/a/a/a$a;->b()V

    .line 542
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "edit didn\'t create file "

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 539
    :cond_3f
    add-int/lit8 v1, v1, 0x1

    goto :goto_1e

    .line 547
    :cond_42
    :goto_42
    iget v1, p0, Lcom/anythink/myoffer/a/a/a;->q:I

    if-ge v0, v1, :cond_77

    .line 548
    invoke-virtual {v2, v0}, Lcom/anythink/myoffer/a/a/a$b;->b(I)Ljava/io/File;

    move-result-object v1

    .line 549
    if-eqz p2, :cond_73

    .line 550
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_70

    .line 551
    invoke-virtual {v2, v0}, Lcom/anythink/myoffer/a/a/a$b;->a(I)Ljava/io/File;

    move-result-object v3

    .line 552
    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 553
    invoke-static {v2}, Lcom/anythink/myoffer/a/a/a$b;->c(Lcom/anythink/myoffer/a/a/a$b;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    .line 554
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 555
    invoke-static {v2}, Lcom/anythink/myoffer/a/a/a$b;->c(Lcom/anythink/myoffer/a/a/a$b;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    .line 556
    iget-wide v8, p0, Lcom/anythink/myoffer/a/a/a;->r:J

    sub-long v4, v8, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/anythink/myoffer/a/a/a;->r:J

    .line 547
    :cond_70
    :goto_70
    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    .line 559
    :cond_73
    invoke-static {v1}, Lcom/anythink/myoffer/a/a/a;->b(Ljava/io/File;)V

    goto :goto_70

    .line 563
    :cond_77
    iget v0, p0, Lcom/anythink/myoffer/a/a/a;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/anythink/myoffer/a/a/a;->u:I

    .line 564
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/anythink/myoffer/a/a/a$b;->a(Lcom/anythink/myoffer/a/a/a$b;Lcom/anythink/myoffer/a/a/a$a;)Lcom/anythink/myoffer/a/a/a$a;

    .line 565
    invoke-static {v2}, Lcom/anythink/myoffer/a/a/a$b;->e(Lcom/anythink/myoffer/a/a/a$b;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_d9

    .line 566
    invoke-static {v2}, Lcom/anythink/myoffer/a/a/a$b;->a(Lcom/anythink/myoffer/a/a/a$b;)Z

    .line 567
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->s:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "CLEAN "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/anythink/myoffer/a/a/a$b;->d(Lcom/anythink/myoffer/a/a/a$b;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/anythink/myoffer/a/a/a$b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 568
    if-eqz p2, :cond_bd

    .line 569
    iget-wide v0, p0, Lcom/anythink/myoffer/a/a/a;->v:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/anythink/myoffer/a/a/a;->v:J

    invoke-static {v2, v0, v1}, Lcom/anythink/myoffer/a/a/a$b;->a(Lcom/anythink/myoffer/a/a/a$b;J)J

    .line 577
    :cond_bd
    :goto_bd
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->s:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 579
    iget-wide v0, p0, Lcom/anythink/myoffer/a/a/a;->r:J

    iget-wide v2, p0, Lcom/anythink/myoffer/a/a/a;->p:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_d0

    invoke-direct {p0}, Lcom/anythink/myoffer/a/a/a;->h()Z

    move-result v0

    if-eqz v0, :cond_d7

    .line 580
    :cond_d0
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->w:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/anythink/myoffer/a/a/a;->x:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_d7
    .catchall {:try_start_17 .. :try_end_d7} :catchall_12

    .line 582
    :cond_d7
    monitor-exit p0

    return-void

    .line 572
    :cond_d9
    :try_start_d9
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->t:Ljava/util/LinkedHashMap;

    invoke-static {v2}, Lcom/anythink/myoffer/a/a/a$b;->d(Lcom/anythink/myoffer/a/a/a$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->s:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "REMOVE "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/anythink/myoffer/a/a/a$b;->d(Lcom/anythink/myoffer/a/a/a$b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_100
    .catchall {:try_start_d9 .. :try_end_100} :catchall_12

    goto :goto_bd
.end method

.method static synthetic a(Lcom/anythink/myoffer/a/a/a;Lcom/anythink/myoffer/a/a/a$a;Z)V
    .registers 3

    .prologue
    .line 96
    invoke-direct {p0, p1, p2}, Lcom/anythink/myoffer/a/a/a;->a(Lcom/anythink/myoffer/a/a/a$a;Z)V

    return-void
.end method

.method public static a(Ljava/io/Closeable;)V
    .registers 2

    .prologue
    .line 219
    if-eqz p0, :cond_5

    .line 221
    :try_start_2
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_5} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5} :catch_8

    .line 227
    :cond_5
    :goto_5
    return-void

    .line 223
    :catch_6
    move-exception v0

    throw v0

    :catch_8
    move-exception v0

    goto :goto_5
.end method

.method private static a(Ljava/io/File;)V
    .registers 6

    .prologue
    .line 234
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 235
    if-nez v1, :cond_16

    .line 236
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "not a directory: "

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_16
    array-length v2, v1

    const/4 v0, 0x0

    :goto_18
    if-ge v0, v2, :cond_3e

    aget-object v3, v1, v0

    .line 239
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_25

    .line 240
    invoke-static {v3}, Lcom/anythink/myoffer/a/a/a;->a(Ljava/io/File;)V

    .line 242
    :cond_25
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_3b

    .line 243
    new-instance v0, Ljava/io/IOException;

    const-string v1, "failed to delete file: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_3b
    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 246
    :cond_3e
    return-void
.end method

.method private static a([Ljava/lang/Object;I)[Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 158
    array-length v0, p0

    .line 159
    if-le v3, p1, :cond_a

    .line 160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 162
    :cond_a
    if-le v3, v0, :cond_12

    .line 163
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 165
    :cond_12
    add-int/lit8 v1, p1, -0x2

    .line 166
    add-int/lit8 v0, v0, -0x2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 168
    const/4 v1, 0x0

    invoke-static {p0, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 169
    return-object v0
.end method

.method private static b(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 5

    .prologue
    .line 197
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x50

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 199
    :goto_7
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 200
    const/4 v2, -0x1

    if-ne v1, v2, :cond_14

    .line 201
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    .line 202
    :cond_14
    const/16 v2, 0xa

    if-eq v1, v2, :cond_1d

    .line 206
    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 208
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 209
    if-lez v1, :cond_32

    add-int/lit8 v2, v1, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    const/16 v3, 0xd

    if-ne v2, v3, :cond_32

    .line 210
    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 212
    :cond_32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b()V
    .registers 9

    .prologue
    const/4 v7, 0x2

    .line 316
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/anythink/myoffer/a/a/a;->m:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/16 v1, 0x2000

    invoke-direct {v2, v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 318
    :try_start_f
    invoke-static {v2}, Lcom/anythink/myoffer/a/a/a;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {v2}, Lcom/anythink/myoffer/a/a/a;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    .line 320
    invoke-static {v2}, Lcom/anythink/myoffer/a/a/a;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 321
    invoke-static {v2}, Lcom/anythink/myoffer/a/a/a;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v4

    .line 322
    invoke-static {v2}, Lcom/anythink/myoffer/a/a/a;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v5

    .line 323
    const-string v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    const-string v6, "1"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_53

    iget v6, p0, Lcom/anythink/myoffer/a/a/a;->o:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    iget v3, p0, Lcom/anythink/myoffer/a/a/a;->q:I

    .line 324
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    const-string v3, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a7

    .line 325
    :cond_53
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "unexpected journal header: ["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_8c
    .catchall {:try_start_f .. :try_end_8c} :catchall_8c

    .line 336
    :catchall_8c
    move-exception v0

    invoke-static {v2}, Lcom/anythink/myoffer/a/a/a;->a(Ljava/io/Closeable;)V

    throw v0

    .line 2346
    :cond_91
    const/4 v0, 0x1

    :try_start_92
    aget-object v1, v4, v0

    .line 2347
    const/4 v0, 0x0

    aget-object v0, v4, v0

    const-string v5, "REMOVE"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c9

    array-length v0, v4

    if-ne v0, v7, :cond_c9

    .line 2348
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    :cond_a7
    :goto_a7
    invoke-static {v2}, Lcom/anythink/myoffer/a/a/a;->b(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 2341
    const-string v0, " "

    invoke-virtual {v3, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2342
    array-length v0, v4

    if-ge v0, v7, :cond_91

    .line 2343
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected journal line: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_c4
    .catch Ljava/io/EOFException; {:try_start_92 .. :try_end_c4} :catch_c4
    .catchall {:try_start_92 .. :try_end_c4} :catchall_8c

    :catch_c4
    move-exception v0

    .line 336
    invoke-static {v2}, Lcom/anythink/myoffer/a/a/a;->a(Ljava/io/Closeable;)V

    .line 337
    return-void

    .line 2352
    :cond_c9
    :try_start_c9
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/myoffer/a/a/a$b;

    .line 2353
    if-nez v0, :cond_163

    .line 2354
    new-instance v0, Lcom/anythink/myoffer/a/a/a$b;

    const/4 v5, 0x0

    invoke-direct {v0, p0, v1, v5}, Lcom/anythink/myoffer/a/a/a$b;-><init>(Lcom/anythink/myoffer/a/a/a;Ljava/lang/String;B)V

    .line 2355
    iget-object v5, p0, Lcom/anythink/myoffer/a/a/a;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 2358
    :goto_df
    const/4 v0, 0x0

    aget-object v0, v4, v0

    const-string v5, "CLEAN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12c

    array-length v0, v4

    iget v5, p0, Lcom/anythink/myoffer/a/a/a;->q:I

    add-int/lit8 v5, v5, 0x2

    if-ne v0, v5, :cond_12c

    .line 2359
    invoke-static {v1}, Lcom/anythink/myoffer/a/a/a$b;->a(Lcom/anythink/myoffer/a/a/a$b;)Z

    .line 2360
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/anythink/myoffer/a/a/a$b;->a(Lcom/anythink/myoffer/a/a/a$b;Lcom/anythink/myoffer/a/a/a$a;)Lcom/anythink/myoffer/a/a/a$a;

    .line 2361
    array-length v0, v4

    .line 3158
    array-length v3, v4

    .line 3159
    if-le v7, v0, :cond_102

    .line 3160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 3162
    :cond_102
    if-le v7, v3, :cond_10a

    .line 3163
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 3165
    :cond_10a
    add-int/lit8 v0, v0, -0x2

    .line 3166
    add-int/lit8 v3, v3, -0x2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 3167
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 3168
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v4, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2361
    check-cast v0, [Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/anythink/myoffer/a/a/a$b;->a(Lcom/anythink/myoffer/a/a/a$b;[Ljava/lang/String;)V

    goto/16 :goto_a7

    .line 2362
    :cond_12c
    const/4 v0, 0x0

    aget-object v0, v4, v0

    const-string v5, "DIRTY"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_145

    array-length v0, v4

    if-ne v0, v7, :cond_145

    .line 2363
    new-instance v0, Lcom/anythink/myoffer/a/a/a$a;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v3}, Lcom/anythink/myoffer/a/a/a$a;-><init>(Lcom/anythink/myoffer/a/a/a;Lcom/anythink/myoffer/a/a/a$b;B)V

    invoke-static {v1, v0}, Lcom/anythink/myoffer/a/a/a$b;->a(Lcom/anythink/myoffer/a/a/a$b;Lcom/anythink/myoffer/a/a/a$a;)Lcom/anythink/myoffer/a/a/a$a;

    goto/16 :goto_a7

    .line 2364
    :cond_145
    const/4 v0, 0x0

    aget-object v0, v4, v0

    const-string v1, "READ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_153

    array-length v0, v4

    if-eq v0, v7, :cond_a7

    .line 2367
    :cond_153
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected journal line: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_163
    .catch Ljava/io/EOFException; {:try_start_c9 .. :try_end_163} :catch_c4
    .catchall {:try_start_c9 .. :try_end_163} :catchall_8c

    :cond_163
    move-object v1, v0

    goto/16 :goto_df
.end method

.method static synthetic b(Lcom/anythink/myoffer/a/a/a;)V
    .registers 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/anythink/myoffer/a/a/a;->l()V

    return-void
.end method

.method private static b(Ljava/io/File;)V
    .registers 2

    .prologue
    .line 435
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_12

    .line 436
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 438
    :cond_12
    return-void
.end method

.method private static c(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 690
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/anythink/myoffer/a/a/a;->j:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a;->a(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 376
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->n:Ljava/io/File;

    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a;->b(Ljava/io/File;)V

    .line 377
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_53

    .line 378
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/myoffer/a/a/a$b;

    .line 379
    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a$b;->b(Lcom/anythink/myoffer/a/a/a$b;)Lcom/anythink/myoffer/a/a/a$a;

    move-result-object v1

    if-nez v1, :cond_35

    move v1, v2

    .line 380
    :goto_23
    iget v4, p0, Lcom/anythink/myoffer/a/a/a;->q:I

    if-ge v1, v4, :cond_10

    .line 381
    iget-wide v4, p0, Lcom/anythink/myoffer/a/a/a;->r:J

    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a$b;->c(Lcom/anythink/myoffer/a/a/a$b;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/anythink/myoffer/a/a/a;->r:J

    .line 380
    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    .line 384
    :cond_35
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/anythink/myoffer/a/a/a$b;->a(Lcom/anythink/myoffer/a/a/a$b;Lcom/anythink/myoffer/a/a/a$a;)Lcom/anythink/myoffer/a/a/a$a;

    move v1, v2

    .line 385
    :goto_3a
    iget v4, p0, Lcom/anythink/myoffer/a/a/a;->q:I

    if-ge v1, v4, :cond_4f

    .line 386
    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/a/a/a$b;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/anythink/myoffer/a/a/a;->b(Ljava/io/File;)V

    .line 387
    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/a/a/a$b;->b(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/anythink/myoffer/a/a/a;->b(Ljava/io/File;)V

    .line 385
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 389
    :cond_4f
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    .line 392
    :cond_53
    return-void
.end method

.method static synthetic c(Lcom/anythink/myoffer/a/a/a;)Z
    .registers 2

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/anythink/myoffer/a/a/a;->h()Z

    move-result v0

    return v0
.end method

.method private declared-synchronized d()V
    .registers 6

    .prologue
    .line 399
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->s:Ljava/io/Writer;

    if-eqz v0, :cond_a

    .line 400
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->s:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 403
    :cond_a
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/anythink/myoffer/a/a/a;->n:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    const/16 v2, 0x2000

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    .line 404
    const-string v0, "libcore.io.DiskLruCache"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 405
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 406
    const-string v0, "1"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 407
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 408
    iget v0, p0, Lcom/anythink/myoffer/a/a/a;->o:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 409
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 410
    iget v0, p0, Lcom/anythink/myoffer/a/a/a;->q:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 411
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 412
    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_57
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ae

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/myoffer/a/a/a$b;

    .line 415
    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a$b;->b(Lcom/anythink/myoffer/a/a/a$b;)Lcom/anythink/myoffer/a/a/a$a;

    move-result-object v3

    if-eqz v3, :cond_89

    .line 416
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "DIRTY "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a$b;->d(Lcom/anythink/myoffer/a/a/a$b;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_1 .. :try_end_85} :catchall_86

    goto :goto_57

    .line 399
    :catchall_86
    move-exception v0

    monitor-exit p0

    throw v0

    .line 418
    :cond_89
    :try_start_89
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CLEAN "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a$b;->d(Lcom/anythink/myoffer/a/a/a$b;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/anythink/myoffer/a/a/a$b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0xa

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_57

    .line 422
    :cond_ae
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 423
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->n:Ljava/io/File;

    iget-object v1, p0, Lcom/anythink/myoffer/a/a/a;->m:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 424
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/FileWriter;

    iget-object v2, p0, Lcom/anythink/myoffer/a/a/a;->m:Ljava/io/File;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    const/16 v2, 0x2000

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;I)V

    iput-object v0, p0, Lcom/anythink/myoffer/a/a/a;->s:Ljava/io/Writer;
    :try_end_c9
    .catchall {:try_start_89 .. :try_end_c9} :catchall_86

    .line 425
    monitor-exit p0

    return-void
.end method

.method static synthetic d(Lcom/anythink/myoffer/a/a/a;)V
    .registers 1

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/anythink/myoffer/a/a/a;->d()V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 9

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 341
    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 342
    array-length v0, v2

    if-ge v0, v6, :cond_1b

    .line 343
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected journal line: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 346
    :cond_1b
    const/4 v0, 0x1

    aget-object v1, v2, v0

    .line 347
    aget-object v0, v2, v5

    const-string v3, "REMOVE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    array-length v0, v2

    if-ne v0, v6, :cond_31

    .line 348
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 369
    :cond_30
    :goto_30
    return-void

    .line 352
    :cond_31
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/myoffer/a/a/a$b;

    .line 353
    if-nez v0, :cond_c2

    .line 354
    new-instance v0, Lcom/anythink/myoffer/a/a/a$b;

    invoke-direct {v0, p0, v1, v5}, Lcom/anythink/myoffer/a/a/a$b;-><init>(Lcom/anythink/myoffer/a/a/a;Ljava/lang/String;B)V

    .line 355
    iget-object v3, p0, Lcom/anythink/myoffer/a/a/a;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 358
    :goto_46
    aget-object v0, v2, v5

    const-string v3, "CLEAN"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8f

    array-length v0, v2

    iget v3, p0, Lcom/anythink/myoffer/a/a/a;->q:I

    add-int/lit8 v3, v3, 0x2

    if-ne v0, v3, :cond_8f

    .line 359
    invoke-static {v1}, Lcom/anythink/myoffer/a/a/a$b;->a(Lcom/anythink/myoffer/a/a/a$b;)Z

    .line 360
    const/4 v0, 0x0

    invoke-static {v1, v0}, Lcom/anythink/myoffer/a/a/a$b;->a(Lcom/anythink/myoffer/a/a/a$b;Lcom/anythink/myoffer/a/a/a$a;)Lcom/anythink/myoffer/a/a/a$a;

    .line 361
    array-length v0, v2

    .line 4158
    array-length v3, v2

    .line 4159
    if-le v6, v0, :cond_68

    .line 4160
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 4162
    :cond_68
    if-le v6, v3, :cond_70

    .line 4163
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 4165
    :cond_70
    add-int/lit8 v0, v0, -0x2

    .line 4166
    add-int/lit8 v3, v3, -0x2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 4167
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 4168
    invoke-static {v2, v6, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 361
    check-cast v0, [Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/anythink/myoffer/a/a/a$b;->a(Lcom/anythink/myoffer/a/a/a$b;[Ljava/lang/String;)V

    goto :goto_30

    .line 362
    :cond_8f
    aget-object v0, v2, v5

    const-string v3, "DIRTY"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a5

    array-length v0, v2

    if-ne v0, v6, :cond_a5

    .line 363
    new-instance v0, Lcom/anythink/myoffer/a/a/a$a;

    invoke-direct {v0, p0, v1, v5}, Lcom/anythink/myoffer/a/a/a$a;-><init>(Lcom/anythink/myoffer/a/a/a;Lcom/anythink/myoffer/a/a/a$b;B)V

    invoke-static {v1, v0}, Lcom/anythink/myoffer/a/a/a$b;->a(Lcom/anythink/myoffer/a/a/a$b;Lcom/anythink/myoffer/a/a/a$a;)Lcom/anythink/myoffer/a/a/a$a;

    goto :goto_30

    .line 364
    :cond_a5
    aget-object v0, v2, v5

    const-string v1, "READ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b2

    array-length v0, v2

    if-eq v0, v6, :cond_30

    .line 367
    :cond_b2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "unexpected journal line: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_c2
    move-object v1, v0

    goto :goto_46
.end method

.method static synthetic e(Lcom/anythink/myoffer/a/a/a;)I
    .registers 2

    .prologue
    .line 96
    const/4 v0, 0x0

    iput v0, p0, Lcom/anythink/myoffer/a/a/a;->u:I

    return v0
.end method

.method private e()Ljava/io/File;
    .registers 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->l:Ljava/io/File;

    return-object v0
.end method

.method private static e(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 684
    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const-string v0, "\r"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 685
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "keys must not contain spaces or newlines: \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 687
    :cond_33
    return-void
.end method

.method static synthetic f(Lcom/anythink/myoffer/a/a/a;)I
    .registers 2

    .prologue
    .line 96
    iget v0, p0, Lcom/anythink/myoffer/a/a/a;->q:I

    return v0
.end method

.method private f()J
    .registers 3

    .prologue
    .line 520
    iget-wide v0, p0, Lcom/anythink/myoffer/a/a/a;->p:J

    return-wide v0
.end method

.method private declared-synchronized g()J
    .registers 3

    .prologue
    .line 528
    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/anythink/myoffer/a/a/a;->r:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic g(Lcom/anythink/myoffer/a/a/a;)Ljava/io/File;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->l:Ljava/io/File;

    return-object v0
.end method

.method private h()Z
    .registers 3

    .prologue
    .line 590
    iget v0, p0, Lcom/anythink/myoffer/a/a/a;->u:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_12

    iget v0, p0, Lcom/anythink/myoffer/a/a/a;->u:I

    iget-object v1, p0, Lcom/anythink/myoffer/a/a/a;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    if-lt v0, v1, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private i()Z
    .registers 2

    .prologue
    .line 631
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->s:Ljava/io/Writer;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private j()V
    .registers 3

    .prologue
    .line 635
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->s:Ljava/io/Writer;

    if-nez v0, :cond_c

    .line 636
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 638
    :cond_c
    return-void
.end method

.method private declared-synchronized k()V
    .registers 2

    .prologue
    .line 644
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/anythink/myoffer/a/a/a;->j()V

    .line 645
    invoke-direct {p0}, Lcom/anythink/myoffer/a/a/a;->l()V

    .line 646
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->s:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 647
    monitor-exit p0

    return-void

    .line 644
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private l()V
    .registers 5

    .prologue
    .line 667
    :goto_0
    iget-wide v0, p0, Lcom/anythink/myoffer/a/a/a;->r:J

    iget-wide v2, p0, Lcom/anythink/myoffer/a/a/a;->p:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_22

    .line 669
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 670
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/a/a/a;->c(Ljava/lang/String;)Z

    goto :goto_0

    .line 672
    :cond_22
    return-void
.end method

.method private m()V
    .registers 2

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/anythink/myoffer/a/a/a;->close()V

    .line 680
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->l:Ljava/io/File;

    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a;->a(Ljava/io/File;)V

    .line 681
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lcom/anythink/myoffer/a/a/a$c;
    .registers 10

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 445
    monitor-enter p0

    :try_start_3
    invoke-direct {p0}, Lcom/anythink/myoffer/a/a/a;->j()V

    .line 446
    invoke-static {p1}, Lcom/anythink/myoffer/a/a/a;->e(Ljava/lang/String;)V

    .line 447
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/myoffer/a/a/a$b;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_70

    .line 448
    if-nez v0, :cond_15

    .line 476
    :cond_13
    :goto_13
    monitor-exit p0

    return-object v1

    .line 452
    :cond_15
    :try_start_15
    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a$b;->e(Lcom/anythink/myoffer/a/a/a$b;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 460
    iget v3, p0, Lcom/anythink/myoffer/a/a/a;->q:I

    new-array v6, v3, [Ljava/io/InputStream;
    :try_end_1f
    .catchall {:try_start_15 .. :try_end_1f} :catchall_70

    .line 462
    :goto_1f
    :try_start_1f
    iget v3, p0, Lcom/anythink/myoffer/a/a/a;->q:I

    if-ge v2, v3, :cond_31

    .line 463
    new-instance v3, Ljava/io/FileInputStream;

    invoke-virtual {v0, v2}, Lcom/anythink/myoffer/a/a/a$b;->a(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v3, v6, v2
    :try_end_2e
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_2e} :catch_73
    .catchall {:try_start_1f .. :try_end_2e} :catchall_70

    .line 462
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    .line 470
    :cond_31
    :try_start_31
    iget v1, p0, Lcom/anythink/myoffer/a/a/a;->u:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/anythink/myoffer/a/a/a;->u:I

    .line 471
    iget-object v1, p0, Lcom/anythink/myoffer/a/a/a;->s:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "READ "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 472
    invoke-direct {p0}, Lcom/anythink/myoffer/a/a/a;->h()Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 473
    iget-object v1, p0, Lcom/anythink/myoffer/a/a/a;->w:Ljava/util/concurrent/ExecutorService;

    iget-object v2, p0, Lcom/anythink/myoffer/a/a/a;->x:Ljava/util/concurrent/Callable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 475
    :cond_5e
    iget-object v1, p0, Lcom/anythink/myoffer/a/a/a;->s:Ljava/io/Writer;

    invoke-virtual {v1}, Ljava/io/Writer;->flush()V

    .line 476
    new-instance v1, Lcom/anythink/myoffer/a/a/a$c;

    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a$b;->f(Lcom/anythink/myoffer/a/a/a$b;)J

    move-result-wide v4

    const/4 v7, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v7}, Lcom/anythink/myoffer/a/a/a$c;-><init>(Lcom/anythink/myoffer/a/a/a;Ljava/lang/String;J[Ljava/io/InputStream;B)V
    :try_end_6f
    .catchall {:try_start_31 .. :try_end_6f} :catchall_70

    goto :goto_13

    .line 445
    :catchall_70
    move-exception v0

    monitor-exit p0

    throw v0

    .line 467
    :catch_73
    move-exception v0

    goto :goto_13
.end method

.method public final b(Ljava/lang/String;)Lcom/anythink/myoffer/a/a/a$a;
    .registers 4

    .prologue
    .line 483
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/anythink/myoffer/a/a/a;->a(Ljava/lang/String;J)Lcom/anythink/myoffer/a/a/a$a;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized c(Ljava/lang/String;)Z
    .registers 8

    .prologue
    const/4 v1, 0x0

    .line 600
    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/anythink/myoffer/a/a/a;->j()V

    .line 601
    invoke-static {p1}, Lcom/anythink/myoffer/a/a/a;->e(Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/myoffer/a/a/a$b;

    .line 603
    if-eqz v0, :cond_18

    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a$b;->b(Lcom/anythink/myoffer/a/a/a$b;)Lcom/anythink/myoffer/a/a/a$a;
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_4e

    move-result-object v2

    if-eqz v2, :cond_30

    :cond_18
    move v0, v1

    .line 624
    :goto_19
    monitor-exit p0

    return v0

    .line 612
    :cond_1b
    :try_start_1b
    iget-wide v2, p0, Lcom/anythink/myoffer/a/a/a;->r:J

    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a$b;->c(Lcom/anythink/myoffer/a/a/a$b;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/anythink/myoffer/a/a/a;->r:J

    .line 613
    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a$b;->c(Lcom/anythink/myoffer/a/a/a$b;)[J

    move-result-object v2

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    .line 607
    add-int/lit8 v1, v1, 0x1

    :cond_30
    iget v2, p0, Lcom/anythink/myoffer/a/a/a;->q:I

    if-ge v1, v2, :cond_51

    .line 608
    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/a/a/a$b;->a(I)Ljava/io/File;

    move-result-object v2

    .line 609
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-nez v3, :cond_1b

    .line 610
    new-instance v0, Ljava/io/IOException;

    const-string v1, "failed to delete "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4e
    .catchall {:try_start_1b .. :try_end_4e} :catchall_4e

    .line 600
    :catchall_4e
    move-exception v0

    monitor-exit p0

    throw v0

    .line 616
    :cond_51
    :try_start_51
    iget v0, p0, Lcom/anythink/myoffer/a/a/a;->u:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/anythink/myoffer/a/a/a;->u:I

    .line 617
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->s:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "REMOVE "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 618
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->t:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    invoke-direct {p0}, Lcom/anythink/myoffer/a/a/a;->h()Z

    move-result v0

    if-eqz v0, :cond_83

    .line 621
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->w:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/anythink/myoffer/a/a/a;->x:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_83
    .catchall {:try_start_51 .. :try_end_83} :catchall_4e

    .line 624
    :cond_83
    const/4 v0, 0x1

    goto :goto_19
.end method

.method public final declared-synchronized close()V
    .registers 4

    .prologue
    .line 653
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->s:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_30

    if-nez v0, :cond_7

    .line 664
    :goto_5
    monitor-exit p0

    return-void

    .line 656
    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/anythink/myoffer/a/a/a;->t:Ljava/util/LinkedHashMap;

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

    check-cast v0, Lcom/anythink/myoffer/a/a/a$b;

    .line 657
    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a$b;->b(Lcom/anythink/myoffer/a/a/a$b;)Lcom/anythink/myoffer/a/a/a$a;

    move-result-object v2

    if-eqz v2, :cond_16

    .line 658
    invoke-static {v0}, Lcom/anythink/myoffer/a/a/a$b;->b(Lcom/anythink/myoffer/a/a/a$b;)Lcom/anythink/myoffer/a/a/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/myoffer/a/a/a$a;->b()V
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_30

    goto :goto_16

    .line 653
    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0

    .line 661
    :cond_33
    :try_start_33
    invoke-direct {p0}, Lcom/anythink/myoffer/a/a/a;->l()V

    .line 662
    iget-object v0, p0, Lcom/anythink/myoffer/a/a/a;->s:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 663
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/anythink/myoffer/a/a/a;->s:Ljava/io/Writer;
    :try_end_3e
    .catchall {:try_start_33 .. :try_end_3e} :catchall_30

    goto :goto_5
.end method
