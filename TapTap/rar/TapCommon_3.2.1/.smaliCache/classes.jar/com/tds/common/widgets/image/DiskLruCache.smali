.class final Lcom/tds/common/widgets/image/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tds/common/widgets/image/DiskLruCache$DiskLruCacheThreadFactory;,
        Lcom/tds/common/widgets/image/DiskLruCache$Entry;,
        Lcom/tds/common/widgets/image/DiskLruCache$Editor;,
        Lcom/tds/common/widgets/image/DiskLruCache$Value;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private final directory:Ljava/io/File;

.field final executorService:Ljava/util/concurrent/ThreadPoolExecutor;

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/tds/common/widgets/image/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method private constructor <init>(Ljava/io/File;IIJ)V
    .registers 22
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J

    .line 183
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 150
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/tds/common/widgets/image/DiskLruCache;->size:J

    .line 152
    new-instance v4, Ljava/util/LinkedHashMap;

    const/4 v5, 0x0

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v4, v5, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v4, v0, Lcom/tds/common/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 161
    iput-wide v2, v0, Lcom/tds/common/widgets/image/DiskLruCache;->nextSequenceNumber:J

    .line 164
    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v15, Lcom/tds/common/widgets/image/DiskLruCache$DiskLruCacheThreadFactory;

    const/4 v3, 0x0

    invoke-direct {v15, v3}, Lcom/tds/common/widgets/image/DiskLruCache$DiskLruCacheThreadFactory;-><init>(Lcom/tds/common/widgets/image/DiskLruCache$1;)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    move-object v8, v2

    invoke-direct/range {v8 .. v15}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v2, v0, Lcom/tds/common/widgets/image/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 167
    new-instance v2, Lcom/tds/common/widgets/image/DiskLruCache$1;

    invoke-direct {v2, v0}, Lcom/tds/common/widgets/image/DiskLruCache$1;-><init>(Lcom/tds/common/widgets/image/DiskLruCache;)V

    iput-object v2, v0, Lcom/tds/common/widgets/image/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    .line 184
    iput-object v1, v0, Lcom/tds/common/widgets/image/DiskLruCache;->directory:Ljava/io/File;

    .line 185
    move/from16 v2, p2

    iput v2, v0, Lcom/tds/common/widgets/image/DiskLruCache;->appVersion:I

    .line 186
    new-instance v3, Ljava/io/File;

    const-string v4, "journal"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/tds/common/widgets/image/DiskLruCache;->journalFile:Ljava/io/File;

    .line 187
    new-instance v3, Ljava/io/File;

    const-string v4, "journal.tmp"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/tds/common/widgets/image/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 188
    new-instance v3, Ljava/io/File;

    const-string v4, "journal.bkp"

    invoke-direct {v3, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/tds/common/widgets/image/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 189
    move/from16 v3, p3

    iput v3, v0, Lcom/tds/common/widgets/image/DiskLruCache;->valueCount:I

    .line 190
    move-wide/from16 v4, p4

    iput-wide v4, v0, Lcom/tds/common/widgets/image/DiskLruCache;->maxSize:J

    .line 191
    return-void
.end method

.method static synthetic access$100(Lcom/tds/common/widgets/image/DiskLruCache;)Ljava/io/Writer;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/widgets/image/DiskLruCache;

    .line 91
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/tds/common/widgets/image/DiskLruCache;Ljava/lang/String;J)Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    .registers 5
    .param p0, "x0"    # Lcom/tds/common/widgets/image/DiskLruCache;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/tds/common/widgets/image/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/tds/common/widgets/image/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-static {p0}, Lcom/tds/common/widgets/image/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/tds/common/widgets/image/DiskLruCache;)I
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/widgets/image/DiskLruCache;

    .line 91
    iget v0, p0, Lcom/tds/common/widgets/image/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/tds/common/widgets/image/DiskLruCache;)V
    .registers 1
    .param p0, "x0"    # Lcom/tds/common/widgets/image/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Lcom/tds/common/widgets/image/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$2000(Lcom/tds/common/widgets/image/DiskLruCache;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/widgets/image/DiskLruCache;

    .line 91
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/tds/common/widgets/image/DiskLruCache;Lcom/tds/common/widgets/image/DiskLruCache$Editor;Z)V
    .registers 3
    .param p0, "x0"    # Lcom/tds/common/widgets/image/DiskLruCache;
    .param p1, "x1"    # Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/tds/common/widgets/image/DiskLruCache;->completeEdit(Lcom/tds/common/widgets/image/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/tds/common/widgets/image/DiskLruCache;)Z
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/widgets/image/DiskLruCache;

    .line 91
    invoke-direct {p0}, Lcom/tds/common/widgets/image/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/tds/common/widgets/image/DiskLruCache;)V
    .registers 1
    .param p0, "x0"    # Lcom/tds/common/widgets/image/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    invoke-direct {p0}, Lcom/tds/common/widgets/image/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$502(Lcom/tds/common/widgets/image/DiskLruCache;I)I
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/widgets/image/DiskLruCache;
    .param p1, "x1"    # I

    .line 91
    iput p1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method private checkNotClosed()V
    .registers 3

    .line 624
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_5

    .line 627
    return-void

    .line 625
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static closeWriter(Ljava/io/Writer;)V
    .registers 4
    .param p0, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 680
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_a

    .line 681
    invoke-virtual {p0}, Ljava/io/Writer;->close()V

    .line 682
    return-void

    .line 685
    :cond_a
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 686
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 687
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitUnbufferedIo()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 688
    .local v1, "unbufferedIoPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 690
    :try_start_1e
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_26

    .line 692
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 693
    nop

    .line 694
    return-void

    .line 692
    :catchall_26
    move-exception v2

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 693
    throw v2
.end method

.method private declared-synchronized completeEdit(Lcom/tds/common/widgets/image/DiskLruCache$Editor;Z)V
    .registers 13
    .param p1, "editor"    # Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 509
    :try_start_1
    # getter for: Lcom/tds/common/widgets/image/DiskLruCache$Editor;->entry:Lcom/tds/common/widgets/image/DiskLruCache$Entry;
    invoke-static {p1}, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->access$1500(Lcom/tds/common/widgets/image/DiskLruCache$Editor;)Lcom/tds/common/widgets/image/DiskLruCache$Entry;

    move-result-object v0

    .line 510
    .local v0, "entry":Lcom/tds/common/widgets/image/DiskLruCache$Entry;
    # getter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->currentEditor:Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$800(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)Lcom/tds/common/widgets/image/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p1, :cond_10a

    .line 515
    if-eqz p2, :cond_4e

    # getter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->readable:Z
    invoke-static {v0}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$700(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 516
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    iget v2, p0, Lcom/tds/common/widgets/image/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_4e

    .line 517
    # getter for: Lcom/tds/common/widgets/image/DiskLruCache$Editor;->written:[Z
    invoke-static {p1}, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->access$1600(Lcom/tds/common/widgets/image/DiskLruCache$Editor;)[Z

    move-result-object v2

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_32

    .line 521
    invoke-virtual {v0, v1}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 522
    invoke-virtual {p1}, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->abort()V
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_110

    .line 523
    monitor-exit p0

    return-void

    .line 516
    .end local p0    # "this":Lcom/tds/common/widgets/image/DiskLruCache;
    :cond_2f
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 518
    :cond_32
    :try_start_32
    invoke-virtual {p1}, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->abort()V

    .line 519
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Newly created entry didn\'t create value for index "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 528
    .end local v1    # "i":I
    :cond_4e
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4f
    iget v2, p0, Lcom/tds/common/widgets/image/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_83

    .line 529
    invoke-virtual {v0, v1}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v2

    .line 530
    .local v2, "dirty":Ljava/io/File;
    if-eqz p2, :cond_7d

    .line 531
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_80

    .line 532
    invoke-virtual {v0, v1}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    .line 533
    .local v3, "clean":Ljava/io/File;
    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 534
    # getter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$1100(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    .line 535
    .local v4, "oldLength":J
    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 536
    .local v6, "newLength":J
    # getter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$1100(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)[J

    move-result-object v8

    aput-wide v6, v8, v1

    .line 537
    iget-wide v8, p0, Lcom/tds/common/widgets/image/DiskLruCache;->size:J

    sub-long/2addr v8, v4

    add-long/2addr v8, v6

    iput-wide v8, p0, Lcom/tds/common/widgets/image/DiskLruCache;->size:J

    .line 538
    .end local v3    # "clean":Ljava/io/File;
    .end local v4    # "oldLength":J
    .end local v6    # "newLength":J
    goto :goto_80

    .line 540
    :cond_7d
    invoke-static {v2}, Lcom/tds/common/widgets/image/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 528
    .end local v2    # "dirty":Ljava/io/File;
    :cond_80
    :goto_80
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    .line 544
    .end local v1    # "i":I
    :cond_83
    iget v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->redundantOpCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->redundantOpCount:I

    .line 545
    const/4 v1, 0x0

    # setter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->currentEditor:Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    invoke-static {v0, v1}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$802(Lcom/tds/common/widgets/image/DiskLruCache$Entry;Lcom/tds/common/widgets/image/DiskLruCache$Editor;)Lcom/tds/common/widgets/image/DiskLruCache$Editor;

    .line 546
    # getter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->readable:Z
    invoke-static {v0}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$700(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)Z

    move-result v1

    or-int/2addr v1, p2

    const/16 v3, 0xa

    const/16 v4, 0x20

    if-eqz v1, :cond_cb

    .line 547
    # setter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->readable:Z
    invoke-static {v0, v2}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$702(Lcom/tds/common/widgets/image/DiskLruCache$Entry;Z)Z

    .line 548
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string v2, "CLEAN"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 549
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 550
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    # getter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$1200(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 551
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 552
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 554
    if-eqz p2, :cond_ee

    .line 555
    iget-wide v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/tds/common/widgets/image/DiskLruCache;->nextSequenceNumber:J

    # setter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v0, v1, v2}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$1302(Lcom/tds/common/widgets/image/DiskLruCache$Entry;J)J

    goto :goto_ee

    .line 558
    :cond_cb
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    # getter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$1200(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 559
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string v2, "REMOVE"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 560
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1, v4}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 561
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    # getter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$1200(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 562
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 564
    :cond_ee
    :goto_ee
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-static {v1}, Lcom/tds/common/widgets/image/DiskLruCache;->flushWriter(Ljava/io/Writer;)V

    .line 566
    iget-wide v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->size:J

    iget-wide v3, p0, Lcom/tds/common/widgets/image/DiskLruCache;->maxSize:J

    cmp-long v1, v1, v3

    if-gtz v1, :cond_101

    invoke-direct {p0}, Lcom/tds/common/widgets/image/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_108

    .line 567
    :cond_101
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/tds/common/widgets/image/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_108
    .catchall {:try_start_32 .. :try_end_108} :catchall_110

    .line 569
    :cond_108
    monitor-exit p0

    return-void

    .line 511
    :cond_10a
    :try_start_10a
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_110
    .catchall {:try_start_10a .. :try_end_110} :catchall_110

    .line 508
    .end local v0    # "entry":Lcom/tds/common/widgets/image/DiskLruCache$Entry;
    .end local p1    # "editor":Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    .end local p2    # "success":Z
    :catchall_110
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static deleteIfExists(Ljava/io/File;)V
    .registers 2
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 394
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_13

    .line 395
    :cond_d
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 397
    :cond_13
    :goto_13
    return-void
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 452
    :try_start_1
    invoke-direct {p0}, Lcom/tds/common/widgets/image/DiskLruCache;->checkNotClosed()V

    .line 453
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/widgets/image/DiskLruCache$Entry;

    .line 454
    .local v0, "entry":Lcom/tds/common/widgets/image/DiskLruCache$Entry;
    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1f

    if-eqz v0, :cond_1d

    .line 455
    # getter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v0}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$1300(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)J

    move-result-wide v3
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_5e

    cmp-long v1, v3, p2

    if-eqz v1, :cond_1f

    .line 456
    .end local p0    # "this":Lcom/tds/common/widgets/image/DiskLruCache;
    :cond_1d
    monitor-exit p0

    return-object v2

    .line 458
    .restart local p0    # "this":Lcom/tds/common/widgets/image/DiskLruCache;
    :cond_1f
    if-nez v0, :cond_2d

    .line 459
    :try_start_21
    new-instance v1, Lcom/tds/common/widgets/image/DiskLruCache$Entry;

    invoke-direct {v1, p0, p1, v2}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;-><init>(Lcom/tds/common/widgets/image/DiskLruCache;Ljava/lang/String;Lcom/tds/common/widgets/image/DiskLruCache$1;)V

    move-object v0, v1

    .line 460
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    .line 461
    .end local p0    # "this":Lcom/tds/common/widgets/image/DiskLruCache;
    :cond_2d
    # getter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->currentEditor:Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$800(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)Lcom/tds/common/widgets/image/DiskLruCache$Editor;

    move-result-object v1
    :try_end_31
    .catchall {:try_start_21 .. :try_end_31} :catchall_5e

    if-eqz v1, :cond_35

    .line 462
    monitor-exit p0

    return-object v2

    .line 465
    .restart local p0    # "this":Lcom/tds/common/widgets/image/DiskLruCache;
    :cond_35
    :goto_35
    :try_start_35
    new-instance v1, Lcom/tds/common/widgets/image/DiskLruCache$Editor;

    invoke-direct {v1, p0, v0, v2}, Lcom/tds/common/widgets/image/DiskLruCache$Editor;-><init>(Lcom/tds/common/widgets/image/DiskLruCache;Lcom/tds/common/widgets/image/DiskLruCache$Entry;Lcom/tds/common/widgets/image/DiskLruCache$1;)V

    .line 466
    .local v1, "editor":Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    # setter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->currentEditor:Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    invoke-static {v0, v1}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$802(Lcom/tds/common/widgets/image/DiskLruCache$Entry;Lcom/tds/common/widgets/image/DiskLruCache$Editor;)Lcom/tds/common/widgets/image/DiskLruCache$Editor;

    .line 469
    iget-object v2, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string v3, "DIRTY"

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 470
    iget-object v2, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 471
    iget-object v2, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v2, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 472
    iget-object v2, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 473
    iget-object v2, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-static {v2}, Lcom/tds/common/widgets/image/DiskLruCache;->flushWriter(Ljava/io/Writer;)V
    :try_end_5c
    .catchall {:try_start_35 .. :try_end_5c} :catchall_5e

    .line 474
    monitor-exit p0

    return-object v1

    .line 451
    .end local v0    # "entry":Lcom/tds/common/widgets/image/DiskLruCache$Entry;
    .end local v1    # "editor":Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    .end local p0    # "this":Lcom/tds/common/widgets/image/DiskLruCache;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "expectedSequenceNumber":J
    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static flushWriter(Ljava/io/Writer;)V
    .registers 4
    .param p0, "writer"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 704
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_a

    .line 705
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V

    .line 706
    return-void

    .line 709
    :cond_a
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 710
    .local v0, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1, v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 711
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitUnbufferedIo()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 712
    .local v1, "unbufferedIoPolicy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 714
    :try_start_1e
    invoke-virtual {p0}, Ljava/io/Writer;->flush()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_26

    .line 716
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 717
    nop

    .line 718
    return-void

    .line 716
    :catchall_26
    move-exception v2

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 717
    throw v2
.end method

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 3
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 669
    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/tds/common/widgets/image/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/tds/common/widgets/image/Util;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private journalRebuildRequired()Z
    .registers 4

    .line 576
    const/16 v0, 0x7d0

    .line 577
    .local v0, "redundantOpCompactThreshold":I
    iget v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_12

    iget-object v2, p0, Lcom/tds/common/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 578
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 577
    :goto_13
    return v1
.end method

.method public static open(Ljava/io/File;IIJ)Lcom/tds/common/widgets/image/DiskLruCache;
    .registers 16
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "appVersion"    # I
    .param p2, "valueCount"    # I
    .param p3, "maxSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_8d

    .line 207
    if-lez p2, :cond_85

    .line 212
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 213
    .local v0, "backupFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 214
    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 216
    .local v1, "journalFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 217
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2a

    .line 219
    :cond_26
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/tds/common/widgets/image/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 224
    .end local v1    # "journalFile":Ljava/io/File;
    :cond_2a
    :goto_2a
    new-instance v1, Lcom/tds/common/widgets/image/DiskLruCache;

    move-object v3, v1

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/tds/common/widgets/image/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    .line 225
    .local v1, "cache":Lcom/tds/common/widgets/image/DiskLruCache;
    iget-object v2, v1, Lcom/tds/common/widgets/image/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 227
    :try_start_3c
    invoke-direct {v1}, Lcom/tds/common/widgets/image/DiskLruCache;->readJournal()V

    .line 228
    invoke-direct {v1}, Lcom/tds/common/widgets/image/DiskLruCache;->processJournal()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_42} :catch_43

    .line 229
    return-object v1

    .line 230
    :catch_43
    move-exception v2

    .line 231
    .local v2, "journalIsCorrupt":Ljava/io/IOException;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DiskLruCache "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is corrupt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 235
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", removing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 232
    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1}, Lcom/tds/common/widgets/image/DiskLruCache;->delete()V

    .line 242
    .end local v2    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_73
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 243
    new-instance v2, Lcom/tds/common/widgets/image/DiskLruCache;

    move-object v5, v2

    move-object v6, p0

    move v7, p1

    move v8, p2

    move-wide v9, p3

    invoke-direct/range {v5 .. v10}, Lcom/tds/common/widgets/image/DiskLruCache;-><init>(Ljava/io/File;IIJ)V

    move-object v1, v2

    .line 244
    invoke-direct {v1}, Lcom/tds/common/widgets/image/DiskLruCache;->rebuildJournal()V

    .line 245
    return-object v1

    .line 208
    .end local v0    # "backupFile":Ljava/io/File;
    .end local v1    # "cache":Lcom/tds/common/widgets/image/DiskLruCache;
    :cond_85
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 205
    :cond_8d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processJournal()V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v0}, Lcom/tds/common/widgets/image/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 333
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/tds/common/widgets/image/DiskLruCache$Entry;>;"
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    .line 334
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/common/widgets/image/DiskLruCache$Entry;

    .line 335
    .local v1, "entry":Lcom/tds/common/widgets/image/DiskLruCache$Entry;
    # getter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->currentEditor:Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$800(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)Lcom/tds/common/widgets/image/DiskLruCache$Editor;

    move-result-object v2

    if-nez v2, :cond_35

    .line 336
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_22
    iget v3, p0, Lcom/tds/common/widgets/image/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_34

    .line 337
    iget-wide v3, p0, Lcom/tds/common/widgets/image/DiskLruCache;->size:J

    # getter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->lengths:[J
    invoke-static {v1}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$1100(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/tds/common/widgets/image/DiskLruCache;->size:J

    .line 336
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    .end local v2    # "t":I
    :cond_34
    goto :goto_52

    .line 340
    :cond_35
    const/4 v2, 0x0

    # setter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->currentEditor:Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    invoke-static {v1, v2}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$802(Lcom/tds/common/widgets/image/DiskLruCache$Entry;Lcom/tds/common/widgets/image/DiskLruCache$Editor;)Lcom/tds/common/widgets/image/DiskLruCache$Editor;

    .line 341
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_3a
    iget v3, p0, Lcom/tds/common/widgets/image/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_4f

    .line 342
    invoke-virtual {v1, v2}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/tds/common/widgets/image/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 343
    invoke-virtual {v1, v2}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Lcom/tds/common/widgets/image/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 341
    add-int/lit8 v2, v2, 0x1

    goto :goto_3a

    .line 345
    .end local v2    # "t":I
    :cond_4f
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 347
    .end local v1    # "entry":Lcom/tds/common/widgets/image/DiskLruCache$Entry;
    :goto_52
    goto :goto_f

    .line 348
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/tds/common/widgets/image/DiskLruCache$Entry;>;"
    :cond_53
    return-void
.end method

.method private readJournal()V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 249
    const-string v0, ", "

    new-instance v1, Lcom/tds/common/widgets/image/StrictLineReader;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/tds/common/widgets/image/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Lcom/tds/common/widgets/image/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    .line 251
    .local v1, "reader":Lcom/tds/common/widgets/image/StrictLineReader;
    :try_start_10
    invoke-virtual {v1}, Lcom/tds/common/widgets/image/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 252
    .local v2, "magic":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/tds/common/widgets/image/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "version":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/tds/common/widgets/image/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 254
    .local v4, "appVersionString":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/tds/common/widgets/image/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    .line 255
    .local v5, "valueCountString":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/tds/common/widgets/image/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .line 256
    .local v6, "blank":Ljava/lang/String;
    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_90

    const-string v7, "1"

    .line 257
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_90

    iget v7, p0, Lcom/tds/common/widgets/image/DiskLruCache;->appVersion:I

    .line 258
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_90

    iget v7, p0, Lcom/tds/common/widgets/image/DiskLruCache;->valueCount:I

    .line 259
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_90

    const-string v7, ""

    .line 260
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_52
    .catchall {:try_start_10 .. :try_end_52} :catchall_c7

    if-eqz v7, :cond_90

    .line 265
    const/4 v0, 0x0

    .line 268
    .local v0, "lineCount":I
    :goto_55
    :try_start_55
    invoke-virtual {v1}, Lcom/tds/common/widgets/image/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/tds/common/widgets/image/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/io/EOFException; {:try_start_55 .. :try_end_5c} :catch_5f
    .catchall {:try_start_55 .. :try_end_5c} :catchall_c7

    .line 269
    add-int/lit8 v0, v0, 0x1

    .line 272
    goto :goto_55

    .line 270
    :catch_5f
    move-exception v7

    .line 271
    .local v7, "endOfJournal":Ljava/io/EOFException;
    nop

    .line 274
    .end local v7    # "endOfJournal":Ljava/io/EOFException;
    :try_start_61
    iget-object v7, p0, Lcom/tds/common/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->size()I

    move-result v7

    sub-int v7, v0, v7

    iput v7, p0, Lcom/tds/common/widgets/image/DiskLruCache;->redundantOpCount:I

    .line 277
    invoke-virtual {v1}, Lcom/tds/common/widgets/image/StrictLineReader;->hasUnterminatedLine()Z

    move-result v7

    if-eqz v7, :cond_75

    .line 278
    invoke-direct {p0}, Lcom/tds/common/widgets/image/DiskLruCache;->rebuildJournal()V

    goto :goto_8b

    .line 280
    :cond_75
    new-instance v7, Ljava/io/BufferedWriter;

    new-instance v8, Ljava/io/OutputStreamWriter;

    new-instance v9, Ljava/io/FileOutputStream;

    iget-object v10, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v11, 0x1

    invoke-direct {v9, v10, v11}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v10, Lcom/tds/common/widgets/image/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v8, v9, v10}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v7, v8}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v7, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_8b
    .catchall {:try_start_61 .. :try_end_8b} :catchall_c7

    .line 284
    .end local v0    # "lineCount":I
    .end local v2    # "magic":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    .end local v4    # "appVersionString":Ljava/lang/String;
    .end local v5    # "valueCountString":Ljava/lang/String;
    .end local v6    # "blank":Ljava/lang/String;
    :goto_8b
    invoke-static {v1}, Lcom/tds/common/widgets/image/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 285
    nop

    .line 286
    return-void

    .line 261
    .restart local v2    # "magic":Ljava/lang/String;
    .restart local v3    # "version":Ljava/lang/String;
    .restart local v4    # "appVersionString":Ljava/lang/String;
    .restart local v5    # "valueCountString":Ljava/lang/String;
    .restart local v6    # "blank":Ljava/lang/String;
    :cond_90
    :try_start_90
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unexpected journal header: ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, "]"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local v1    # "reader":Lcom/tds/common/widgets/image/StrictLineReader;
    .end local p0    # "this":Lcom/tds/common/widgets/image/DiskLruCache;
    throw v7
    :try_end_c7
    .catchall {:try_start_90 .. :try_end_c7} :catchall_c7

    .line 284
    .end local v2    # "magic":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    .end local v4    # "appVersionString":Ljava/lang/String;
    .end local v5    # "valueCountString":Ljava/lang/String;
    .end local v6    # "blank":Ljava/lang/String;
    .restart local v1    # "reader":Lcom/tds/common/widgets/image/StrictLineReader;
    .restart local p0    # "this":Lcom/tds/common/widgets/image/DiskLruCache;
    :catchall_c7
    move-exception v0

    invoke-static {v1}, Lcom/tds/common/widgets/image/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 285
    throw v0
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .registers 12
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 289
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 290
    .local v1, "firstSpace":I
    const-string v2, "unexpected journal line: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_ad

    .line 294
    add-int/lit8 v4, v1, 0x1

    .line 295
    .local v4, "keyBegin":I
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 297
    .local v0, "secondSpace":I
    if-ne v0, v3, :cond_2b

    .line 298
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 299
    .local v5, "key":Ljava/lang/String;
    const-string v6, "REMOVE"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v1, v7, :cond_2f

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 300
    iget-object v2, p0, Lcom/tds/common/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    return-void

    .line 304
    .end local v5    # "key":Ljava/lang/String;
    :cond_2b
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 307
    .restart local v5    # "key":Ljava/lang/String;
    :cond_2f
    iget-object v6, p0, Lcom/tds/common/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/tds/common/widgets/image/DiskLruCache$Entry;

    .line 308
    .local v6, "entry":Lcom/tds/common/widgets/image/DiskLruCache$Entry;
    const/4 v7, 0x0

    if-nez v6, :cond_45

    .line 309
    new-instance v8, Lcom/tds/common/widgets/image/DiskLruCache$Entry;

    invoke-direct {v8, p0, v5, v7}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;-><init>(Lcom/tds/common/widgets/image/DiskLruCache;Ljava/lang/String;Lcom/tds/common/widgets/image/DiskLruCache$1;)V

    move-object v6, v8

    .line 310
    iget-object v8, p0, Lcom/tds/common/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    :cond_45
    if-eq v0, v3, :cond_6c

    const-string v8, "CLEAN"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v1, v9, :cond_6c

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6c

    .line 314
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 315
    .local v2, "parts":[Ljava/lang/String;
    const/4 v3, 0x1

    # setter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->readable:Z
    invoke-static {v6, v3}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$702(Lcom/tds/common/widgets/image/DiskLruCache$Entry;Z)Z

    .line 316
    # setter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->currentEditor:Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    invoke-static {v6, v7}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$802(Lcom/tds/common/widgets/image/DiskLruCache$Entry;Lcom/tds/common/widgets/image/DiskLruCache$Editor;)Lcom/tds/common/widgets/image/DiskLruCache$Editor;

    .line 317
    # invokes: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V
    invoke-static {v6, v2}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$900(Lcom/tds/common/widgets/image/DiskLruCache$Entry;[Ljava/lang/String;)V

    .line 318
    .end local v2    # "parts":[Ljava/lang/String;
    goto :goto_95

    :cond_6c
    if-ne v0, v3, :cond_85

    const-string v8, "DIRTY"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v1, v9, :cond_85

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_85

    .line 319
    new-instance v2, Lcom/tds/common/widgets/image/DiskLruCache$Editor;

    invoke-direct {v2, p0, v6, v7}, Lcom/tds/common/widgets/image/DiskLruCache$Editor;-><init>(Lcom/tds/common/widgets/image/DiskLruCache;Lcom/tds/common/widgets/image/DiskLruCache$Entry;Lcom/tds/common/widgets/image/DiskLruCache$1;)V

    # setter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->currentEditor:Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    invoke-static {v6, v2}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$802(Lcom/tds/common/widgets/image/DiskLruCache$Entry;Lcom/tds/common/widgets/image/DiskLruCache$Editor;)Lcom/tds/common/widgets/image/DiskLruCache$Editor;

    goto :goto_95

    .line 320
    :cond_85
    if-ne v0, v3, :cond_96

    const-string v3, "READ"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v1, v7, :cond_96

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 325
    :goto_95
    return-void

    .line 323
    :cond_96
    new-instance v3, Ljava/io/IOException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 291
    .end local v0    # "secondSpace":I
    .end local v4    # "keyBegin":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "entry":Lcom/tds/common/widgets/image/DiskLruCache$Entry;
    :cond_ad
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized rebuildJournal()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 355
    :try_start_1
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_8

    .line 356
    invoke-static {v0}, Lcom/tds/common/widgets/image/DiskLruCache;->closeWriter(Ljava/io/Writer;)V

    .line 359
    .end local p0    # "this":Lcom/tds/common/widgets/image/DiskLruCache;
    :cond_8
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/tds/common/widgets/image/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_f1

    .line 362
    .local v0, "writer":Ljava/io/Writer;
    :try_start_1b
    const-string v1, "libcore.io.DiskLruCache"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 363
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 364
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 365
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 366
    iget v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->appVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 367
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 368
    iget v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->valueCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 369
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 370
    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 372
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tds/common/widgets/image/DiskLruCache$Entry;

    .line 373
    .local v2, "entry":Lcom/tds/common/widgets/image/DiskLruCache$Entry;
    # getter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->currentEditor:Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    invoke-static {v2}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$800(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)Lcom/tds/common/widgets/image/DiskLruCache$Editor;

    move-result-object v3

    const/16 v4, 0xa

    if-eqz v3, :cond_8d

    .line 374
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DIRTY "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$1200(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_b3

    .line 376
    :cond_8d
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CLEAN "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$1200(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_b3
    .catchall {:try_start_1b .. :try_end_b3} :catchall_ec

    .line 378
    .end local v2    # "entry":Lcom/tds/common/widgets/image/DiskLruCache$Entry;
    :goto_b3
    goto :goto_5a

    .line 380
    :cond_b4
    :try_start_b4
    invoke-static {v0}, Lcom/tds/common/widgets/image/DiskLruCache;->closeWriter(Ljava/io/Writer;)V

    .line 381
    nop

    .line 383
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c8

    .line 384
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalFile:Ljava/io/File;

    iget-object v3, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-static {v1, v3, v2}, Lcom/tds/common/widgets/image/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 386
    :cond_c8
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v3, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/tds/common/widgets/image/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    .line 387
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 389
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/OutputStreamWriter;

    new-instance v4, Ljava/io/FileOutputStream;

    iget-object v5, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v4, v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v2, Lcom/tds/common/widgets/image/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v3, v4, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_ea
    .catchall {:try_start_b4 .. :try_end_ea} :catchall_f1

    .line 391
    monitor-exit p0

    return-void

    .line 380
    :catchall_ec
    move-exception v1

    :try_start_ed
    invoke-static {v0}, Lcom/tds/common/widgets/image/DiskLruCache;->closeWriter(Ljava/io/Writer;)V

    .line 381
    throw v1
    :try_end_f1
    .catchall {:try_start_ed .. :try_end_f1} :catchall_f1

    .line 354
    .end local v0    # "writer":Ljava/io/Writer;
    :catchall_f1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static renameTo(Ljava/io/File;Ljava/io/File;Z)V
    .registers 4
    .param p0, "from"    # Ljava/io/File;
    .param p1, "to"    # Ljava/io/File;
    .param p2, "deleteDestination"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 400
    if-eqz p2, :cond_5

    .line 401
    invoke-static {p1}, Lcom/tds/common/widgets/image/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    .line 403
    :cond_5
    invoke-virtual {p0, p1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 406
    return-void

    .line 404
    :cond_c
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
.end method

.method private trimToSize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 652
    :goto_0
    iget-wide v0, p0, Lcom/tds/common/widgets/image/DiskLruCache;->size:J

    iget-wide v2, p0, Lcom/tds/common/widgets/image/DiskLruCache;->maxSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_22

    .line 653
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 654
    .local v0, "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tds/common/widgets/image/DiskLruCache$Entry;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/tds/common/widgets/image/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 655
    .end local v0    # "toEvict":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/tds/common/widgets/image/DiskLruCache$Entry;>;"
    goto :goto_0

    .line 656
    :cond_22
    return-void
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

    .line 638
    :try_start_1
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_3d

    if-nez v0, :cond_7

    .line 639
    monitor-exit p0

    return-void

    .line 641
    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_30

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tds/common/widgets/image/DiskLruCache$Entry;

    .line 642
    .local v1, "entry":Lcom/tds/common/widgets/image/DiskLruCache$Entry;
    # getter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->currentEditor:Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$800(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)Lcom/tds/common/widgets/image/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 643
    # getter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->currentEditor:Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$800(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)Lcom/tds/common/widgets/image/DiskLruCache$Editor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tds/common/widgets/image/DiskLruCache$Editor;->abort()V

    .line 645
    .end local v1    # "entry":Lcom/tds/common/widgets/image/DiskLruCache$Entry;
    .end local p0    # "this":Lcom/tds/common/widgets/image/DiskLruCache;
    :cond_2f
    goto :goto_16

    .line 646
    :cond_30
    invoke-direct {p0}, Lcom/tds/common/widgets/image/DiskLruCache;->trimToSize()V

    .line 647
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-static {v0}, Lcom/tds/common/widgets/image/DiskLruCache;->closeWriter(Ljava/io/Writer;)V

    .line 648
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_3d

    .line 649
    monitor-exit p0

    return-void

    .line 637
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

    .line 664
    invoke-virtual {p0}, Lcom/tds/common/widgets/image/DiskLruCache;->close()V

    .line 665
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/tds/common/widgets/image/Util;->deleteContents(Ljava/io/File;)V

    .line 666
    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 448
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/tds/common/widgets/image/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/tds/common/widgets/image/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 631
    :try_start_1
    invoke-direct {p0}, Lcom/tds/common/widgets/image/DiskLruCache;->checkNotClosed()V

    .line 632
    invoke-direct {p0}, Lcom/tds/common/widgets/image/DiskLruCache;->trimToSize()V

    .line 633
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-static {v0}, Lcom/tds/common/widgets/image/DiskLruCache;->flushWriter(Ljava/io/Writer;)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 634
    monitor-exit p0

    return-void

    .line 630
    .end local p0    # "this":Lcom/tds/common/widgets/image/DiskLruCache;
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/tds/common/widgets/image/DiskLruCache$Value;
    .registers 12
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 414
    :try_start_1
    invoke-direct {p0}, Lcom/tds/common/widgets/image/DiskLruCache;->checkNotClosed()V

    .line 415
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/widgets/image/DiskLruCache$Entry;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_6e

    .line 416
    .local v0, "entry":Lcom/tds/common/widgets/image/DiskLruCache$Entry;
    const/4 v1, 0x0

    if-nez v0, :cond_11

    .line 417
    monitor-exit p0

    return-object v1

    .line 420
    :cond_11
    :try_start_11
    # getter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->readable:Z
    invoke-static {v0}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$700(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)Z

    move-result v2
    :try_end_15
    .catchall {:try_start_11 .. :try_end_15} :catchall_6e

    if-nez v2, :cond_19

    .line 421
    monitor-exit p0

    return-object v1

    .line 424
    :cond_19
    :try_start_19
    iget-object v2, v0, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1d
    if-ge v4, v3, :cond_2c

    aget-object v5, v2, v4

    .line 426
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_6e

    if-nez v6, :cond_29

    .line 427
    monitor-exit p0

    return-object v1

    .line 424
    .end local v5    # "file":Ljava/io/File;
    :cond_29
    add-int/lit8 v4, v4, 0x1

    goto :goto_1d

    .line 431
    .end local p0    # "this":Lcom/tds/common/widgets/image/DiskLruCache;
    :cond_2c
    :try_start_2c
    iget v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->redundantOpCount:I

    .line 432
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string v2, "READ"

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 433
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 434
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 435
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 436
    invoke-direct {p0}, Lcom/tds/common/widgets/image/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_59

    .line 437
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/tds/common/widgets/image/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    .line 440
    :cond_59
    new-instance v9, Lcom/tds/common/widgets/image/DiskLruCache$Value;

    # getter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v0}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$1300(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)J

    move-result-wide v4

    iget-object v6, v0, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    # getter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$1100(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)[J

    move-result-object v7

    const/4 v8, 0x0

    move-object v1, v9

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/tds/common/widgets/image/DiskLruCache$Value;-><init>(Lcom/tds/common/widgets/image/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[JLcom/tds/common/widgets/image/DiskLruCache$1;)V
    :try_end_6c
    .catchall {:try_start_2c .. :try_end_6c} :catchall_6e

    monitor-exit p0

    return-object v9

    .line 413
    .end local v0    # "entry":Lcom/tds/common/widgets/image/DiskLruCache$Entry;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_6e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDirectory()Ljava/io/File;
    .registers 2

    .line 479
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized getMaxSize()J
    .registers 3

    monitor-enter p0

    .line 487
    :try_start_1
    iget-wide v0, p0, Lcom/tds/common/widgets/image/DiskLruCache;->maxSize:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    .line 487
    .end local p0    # "this":Lcom/tds/common/widgets/image/DiskLruCache;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .registers 2

    monitor-enter p0

    .line 620
    :try_start_1
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_a

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    monitor-exit p0

    return v0

    .line 620
    .end local p0    # "this":Lcom/tds/common/widgets/image/DiskLruCache;
    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 588
    :try_start_1
    invoke-direct {p0}, Lcom/tds/common/widgets/image/DiskLruCache;->checkNotClosed()V

    .line 589
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tds/common/widgets/image/DiskLruCache$Entry;

    .line 590
    .local v0, "entry":Lcom/tds/common/widgets/image/DiskLruCache$Entry;
    if-eqz v0, :cond_8f

    # getter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->currentEditor:Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$800(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)Lcom/tds/common/widgets/image/DiskLruCache$Editor;

    move-result-object v1

    if-eqz v1, :cond_16

    goto/16 :goto_8f

    .line 594
    :cond_16
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_17
    iget v2, p0, Lcom/tds/common/widgets/image/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_5b

    .line 595
    invoke-virtual {v0, v1}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    .line 596
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_45

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_2c

    goto :goto_45

    .line 597
    :cond_2c
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "failed to delete "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 599
    .end local p0    # "this":Lcom/tds/common/widgets/image/DiskLruCache;
    :cond_45
    :goto_45
    iget-wide v3, p0, Lcom/tds/common/widgets/image/DiskLruCache;->size:J

    # getter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$1100(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v5, v5, v1

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lcom/tds/common/widgets/image/DiskLruCache;->size:J

    .line 600
    # getter for: Lcom/tds/common/widgets/image/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->access$1100(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)[J

    move-result-object v3

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v1

    .line 594
    .end local v2    # "file":Ljava/io/File;
    add-int/lit8 v1, v1, 0x1

    goto :goto_17

    .line 603
    .end local v1    # "i":I
    :cond_5b
    iget v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->redundantOpCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->redundantOpCount:I

    .line 604
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const-string v3, "REMOVE"

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 605
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 606
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v1, p1}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 607
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->journalWriter:Ljava/io/Writer;

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 609
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    invoke-direct {p0}, Lcom/tds/common/widgets/image/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_8d

    .line 612
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v3, p0, Lcom/tds/common/widgets/image/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_8d
    .catchall {:try_start_1 .. :try_end_8d} :catchall_92

    .line 615
    :cond_8d
    monitor-exit p0

    return v2

    .line 591
    :cond_8f
    :goto_8f
    const/4 v1, 0x0

    monitor-exit p0

    return v1

    .line 587
    .end local v0    # "entry":Lcom/tds/common/widgets/image/DiskLruCache$Entry;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_92
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMaxSize(J)V
    .registers 5
    .param p1, "maxSize"    # J

    monitor-enter p0

    .line 495
    :try_start_1
    iput-wide p1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->maxSize:J

    .line 496
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 497
    monitor-exit p0

    return-void

    .line 494
    .end local p0    # "this":Lcom/tds/common/widgets/image/DiskLruCache;
    .end local p1    # "maxSize":J
    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()J
    .registers 3

    monitor-enter p0

    .line 505
    :try_start_1
    iget-wide v0, p0, Lcom/tds/common/widgets/image/DiskLruCache;->size:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    .line 505
    .end local p0    # "this":Lcom/tds/common/widgets/image/DiskLruCache;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
