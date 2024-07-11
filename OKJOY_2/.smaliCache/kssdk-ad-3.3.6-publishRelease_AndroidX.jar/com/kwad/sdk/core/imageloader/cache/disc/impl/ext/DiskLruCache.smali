.class final Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;,
        Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;,
        Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

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

.field private fileCount:I

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Ljava/io/Writer;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxFileCount:I

.field private maxSize:J

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "[a-z0-9_-]{1,64}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    new-instance v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$2;

    invoke-direct {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$2;-><init>()V

    sput-object v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;IIJI)V
    .registers 22

    move-object v0, p0

    move-object/from16 v1, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->size:J

    const/4 v4, 0x0

    iput v4, v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->fileCount:I

    new-instance v5, Ljava/util/LinkedHashMap;

    const/high16 v6, 0x3f400000    # 0.75f

    const/4 v7, 0x1

    invoke-direct {v5, v4, v6, v7}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v5, v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    iput-wide v2, v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->nextSequenceNumber:J

    new-instance v2, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v13, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v14, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v14}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const-wide/16 v11, 0x3c

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v2, v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v2, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;-><init>(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)V

    iput-object v2, v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    iput-object v1, v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->directory:Ljava/io/File;

    move/from16 v2, p2

    iput v2, v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->appVersion:I

    new-instance v2, Ljava/io/File;

    const-string v3, "journal"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalFile:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v3, "journal.tmp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalFileTmp:Ljava/io/File;

    new-instance v2, Ljava/io/File;

    const-string v3, "journal.bkp"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalFileBackup:Ljava/io/File;

    move/from16 v1, p3

    iput v1, v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    move-wide/from16 v1, p4

    iput-wide v1, v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->maxSize:J

    move/from16 v1, p6

    iput v1, v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->maxFileCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)Ljava/io/Writer;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1700(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;Ljava/lang/String;J)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 1

    invoke-static {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1900(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)I
    .registers 1

    iget p0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    return p0
.end method

.method static synthetic access$200(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->trimToFileCount()V

    return-void
.end method

.method static synthetic access$2000(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)Ljava/io/File;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->directory:Ljava/io/File;

    return-object p0
.end method

.method static synthetic access$2100()Ljava/io/OutputStream;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->completeEdit(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)Z
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalRebuildRequired()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$502(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;I)I
    .registers 2

    iput p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method private checkNotClosed()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized completeEdit(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;Z)V
    .registers 13

    monitor-enter p0

    :try_start_1
    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->entry:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->access$1500(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    move-result-object v0

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->currentEditor:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$800(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p1, :cond_11e

    const/4 v1, 0x0

    if-eqz p2, :cond_4f

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->readable:Z
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$700(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_4f

    move v2, v1

    :goto_15
    iget v3, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_4f

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->written:[Z
    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->access$1600(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    if-eqz v3, :cond_33

    invoke-virtual {v0, v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_30

    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->abort()V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_124

    monitor-exit p0

    return-void

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_33
    :try_start_33
    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->abort()V

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
    iget p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    const/4 v2, 0x1

    if-ge v1, p1, :cond_89

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object p1

    if-eqz p2, :cond_83

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1100(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)[J

    move-result-object p1

    aget-wide v4, p1, v1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1100(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)[J

    move-result-object p1

    aput-wide v6, p1, v1

    iget-wide v8, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->size:J

    sub-long/2addr v8, v4

    add-long/2addr v8, v6

    iput-wide v8, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->size:J

    iget p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->fileCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->fileCount:I

    goto :goto_86

    :cond_83
    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    :cond_86
    :goto_86
    add-int/lit8 v1, v1, 0x1

    goto :goto_4f

    :cond_89
    iget p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->redundantOpCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->redundantOpCount:I

    const/4 p1, 0x0

    # setter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->currentEditor:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    invoke-static {v0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$802(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->readable:Z
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$700(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Z

    move-result p1

    or-int/2addr p1, p2

    const/16 v1, 0xa

    if-eqz p1, :cond_d3

    # setter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->readable:Z
    invoke-static {v0, v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$702(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;Z)Z

    iget-object p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLEAN "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1200(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_fc

    iget-wide p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p1

    iput-wide v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->nextSequenceNumber:J

    # setter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v0, p1, p2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1302(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;J)J

    goto :goto_fc

    :cond_d3
    iget-object p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1200(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REMOVE "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1200(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :cond_fc
    :goto_fc
    iget-object p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    iget-wide p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->size:J

    iget-wide v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->maxSize:J

    cmp-long p1, p1, v0

    if-gtz p1, :cond_115

    iget p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->fileCount:I

    iget p2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->maxFileCount:I

    if-gt p1, p2, :cond_115

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_11c

    :cond_115
    iget-object p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_11c
    .catchall {:try_start_33 .. :try_end_11c} :catchall_124

    :cond_11c
    monitor-exit p0

    return-void

    :cond_11e
    :try_start_11e
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_124
    .catchall {:try_start_11e .. :try_end_124} :catchall_124

    :catchall_124
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static deleteIfExists(Ljava/io/File;)V
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

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    .registers 9

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->checkNotClosed()V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->validateKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    const/4 v2, 0x0

    if-eqz v1, :cond_22

    if-eqz v0, :cond_20

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1300(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)J

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
    new-instance v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    invoke-direct {v0, p0, p1, v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;-><init>(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;)V

    iget-object p2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    :cond_2f
    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->currentEditor:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$800(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object p2
    :try_end_33
    .catchall {:try_start_24 .. :try_end_33} :catchall_64

    if-eqz p2, :cond_37

    monitor-exit p0

    return-object v2

    :cond_37
    :goto_37
    :try_start_37
    new-instance p2, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    invoke-direct {p2, p0, v0, v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;-><init>(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;)V

    # setter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->currentEditor:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    invoke-static {v0, p2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$802(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    iget-object p3, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

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

    iget-object p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

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

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/Util;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private journalRebuildRequired()Z
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->redundantOpCount:I

    const/16 v1, 0x7d0

    if-lt v0, v1, :cond_10

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

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

.method public static open(Ljava/io/File;IIJI)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;
    .registers 16

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_ae

    if-lez p5, :cond_a6

    if-lez p2, :cond_9e

    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2c

    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_28

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_2c

    :cond_28
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    :cond_2c
    :goto_2c
    new-instance v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    move v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;-><init>(Ljava/io/File;IIJI)V

    iget-object v1, v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8c

    :try_start_3f
    invoke-direct {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->readJournal()V

    invoke-direct {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->processJournal()V

    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v4, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_5b
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_5b} :catch_5c

    return-object v0

    :catch_5c
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

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->delete()V

    :cond_8c
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    move-object v3, v0

    move-object v4, p0

    move v5, p1

    move v6, p2

    move-wide v7, p3

    move v9, p5

    invoke-direct/range {v3 .. v9}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;-><init>(Ljava/io/File;IIJI)V

    invoke-direct {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->rebuildJournal()V

    return-object v0

    :cond_9e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "valueCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxFileCount <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_ae
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "maxSize <= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private processJournal()V
    .registers 9

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->currentEditor:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$800(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_3a

    :goto_22
    iget v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    if-ge v3, v2, :cond_f

    iget-wide v4, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->size:J

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->lengths:[J
    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1100(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)[J

    move-result-object v2

    aget-wide v6, v2, v3

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->size:J

    iget v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->fileCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->fileCount:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_3a
    const/4 v2, 0x0

    # setter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->currentEditor:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    invoke-static {v1, v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$802(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    :goto_3e
    iget v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    if-ge v3, v2, :cond_53

    invoke-virtual {v1, v3}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    invoke-virtual {v1, v3}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3e

    :cond_53
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_f

    :cond_57
    return-void
.end method

.method private readJournal()V
    .registers 10

    const-string v0, ", "

    new-instance v1, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;

    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    :try_start_10
    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v6

    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6d

    const-string v7, "1"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6d

    iget v7, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->appVersion:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    iget v4, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6d

    const-string v4, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_52
    .catchall {:try_start_10 .. :try_end_52} :catchall_a4

    if-eqz v4, :cond_6d

    const/4 v0, 0x0

    :goto_55
    :try_start_55
    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_5c
    .catch Ljava/io/EOFException; {:try_start_55 .. :try_end_5c} :catch_5f
    .catchall {:try_start_55 .. :try_end_5c} :catchall_a4

    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    :catch_5f
    move-exception v2

    :try_start_60
    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->redundantOpCount:I
    :try_end_69
    .catchall {:try_start_60 .. :try_end_69} :catchall_a4

    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_6d
    :try_start_6d
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
    :try_end_a4
    .catchall {:try_start_6d .. :try_end_a4} :catchall_a4

    :catchall_a4
    move-exception v0

    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method private readJournalLine(Ljava/lang/String;)V
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

    iget-object p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_2b
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_2f
    iget-object v5, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    const/4 v6, 0x0

    if-nez v5, :cond_44

    new-instance v5, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    invoke-direct {v5, p0, v4, v6}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;-><init>(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;)V

    iget-object v7, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

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

    # setter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->readable:Z
    invoke-static {v5, v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$702(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;Z)Z

    # setter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->currentEditor:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    invoke-static {v5, v6}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$802(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    # invokes: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V
    invoke-static {v5, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$900(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;[Ljava/lang/String;)V

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

    new-instance p1, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    invoke-direct {p1, p0, v5, v6}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;-><init>(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;)V

    # setter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->currentEditor:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    invoke-static {v5, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$802(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

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

.method private declared-synchronized rebuildJournal()V
    .registers 7

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    :cond_8
    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/Util;->US_ASCII:Ljava/nio/charset/Charset;

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

    iget v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->appVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

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

    check-cast v2, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->currentEditor:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    invoke-static {v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$800(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object v3

    const/16 v4, 0xa

    if-eqz v3, :cond_8d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DIRTY "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1200(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Ljava/lang/String;

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

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1200(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c4

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalFile:Ljava/io/File;

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    :cond_c4
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v3, v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v1, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;
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

.method private static renameTo(Ljava/io/File;Ljava/io/File;Z)V
    .registers 3

    if-eqz p2, :cond_5

    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

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

.method private trimToFileCount()V
    .registers 3

    :goto_0
    iget v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->fileCount:I

    iget v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->maxFileCount:I

    if-le v0, v1, :cond_20

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

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

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    :cond_20
    return-void
.end method

.method private trimToSize()V
    .registers 5

    :goto_0
    iget-wide v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->size:J

    iget-wide v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->maxSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_22

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

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

    invoke-virtual {p0, v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->remove(Ljava/lang/String;)Z

    goto :goto_0

    :cond_22
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

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

    const-string v2, "keys must match regex [a-z0-9_-]{1,64}: \""

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


# virtual methods
.method public declared-synchronized close()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_40

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    :cond_7
    :try_start_7
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

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

    check-cast v1, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->currentEditor:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$800(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_16

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->currentEditor:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$800(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->abort()V

    goto :goto_16

    :cond_30
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->trimToSize()V

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->trimToFileCount()V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_40

    monitor-exit p0

    return-void

    :catchall_40
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public delete()V
    .registers 2

    invoke-virtual {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->close()V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->directory:Ljava/io/File;

    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/Util;->deleteContents(Ljava/io/File;)V

    return-void
.end method

.method public edit(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    .registers 4

    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized fileCount()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->fileCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_6

    int-to-long v0, v0

    monitor-exit p0

    return-wide v0

    :catchall_6
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .registers 2

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->checkNotClosed()V

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->trimToSize()V

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->trimToFileCount()V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-void

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;
    .registers 14

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->checkNotClosed()V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->validateKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_8f

    const/4 v1, 0x0

    if-nez v0, :cond_14

    monitor-exit p0

    return-object v1

    :cond_14
    :try_start_14
    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->readable:Z
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$700(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Z

    move-result v2
    :try_end_18
    .catchall {:try_start_14 .. :try_end_18} :catchall_8f

    if-nez v2, :cond_1c

    monitor-exit p0

    return-object v1

    :cond_1c
    :try_start_1c
    iget v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    new-array v8, v2, [Ljava/io/File;

    new-array v9, v2, [Ljava/io/InputStream;
    :try_end_22
    .catchall {:try_start_1c .. :try_end_22} :catchall_8f

    const/4 v2, 0x0

    move v3, v2

    :goto_24
    :try_start_24
    iget v4, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    if-ge v3, v4, :cond_38

    invoke-virtual {v0, v3}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v4

    aput-object v4, v8, v3

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v5, v9, v3
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_35} :catch_7c
    .catchall {:try_start_24 .. :try_end_35} :catchall_8f

    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    :cond_38
    :try_start_38
    iget v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->redundantOpCount:I

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "READ "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/Writer;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_69

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_69
    new-instance v1, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1300(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)J

    move-result-wide v6

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1100(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)[J

    move-result-object v10

    const/4 v11, 0x0

    move-object v3, v1

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v3 .. v11}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;-><init>(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[JLcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;)V
    :try_end_7a
    .catchall {:try_start_38 .. :try_end_7a} :catchall_8f

    monitor-exit p0

    return-object v1

    :catch_7c
    move-exception p1

    :goto_7d
    :try_start_7d
    iget p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    if-ge v2, p1, :cond_8d

    aget-object p1, v9, v2

    if-eqz p1, :cond_8d

    aget-object p1, v9, v2

    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/Util;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_8a
    .catchall {:try_start_7d .. :try_end_8a} :catchall_8f

    add-int/lit8 v2, v2, 0x1

    goto :goto_7d

    :cond_8d
    monitor-exit p0

    return-object v1

    :catchall_8f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDirectory()Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized getMaxFileCount()I
    .registers 2

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->maxFileCount:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxSize()J
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->maxSize:J
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
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;
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

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .registers 10

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->checkNotClosed()V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->validateKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    const/4 v1, 0x0

    if-eqz v0, :cond_9b

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->currentEditor:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$800(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_1a

    goto/16 :goto_9b

    :cond_1a
    :goto_1a
    iget v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    const/4 v3, 0x1

    if-ge v1, v2, :cond_64

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_49

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v4

    if-eqz v4, :cond_30

    goto :goto_49

    :cond_30
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

    :cond_49
    :goto_49
    iget-wide v4, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->size:J

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1100(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)[J

    move-result-object v2

    aget-wide v6, v2, v1

    sub-long/2addr v4, v6

    iput-wide v4, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->size:J

    iget v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->fileCount:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->fileCount:I

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1100(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)[J

    move-result-object v2

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_64
    iget v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->redundantOpCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->redundantOpCount:I

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

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

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalRebuildRequired()Z

    move-result p1

    if-eqz p1, :cond_99

    iget-object p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_99
    .catchall {:try_start_1 .. :try_end_99} :catchall_9d

    :cond_99
    monitor-exit p0

    return v3

    :cond_9b
    :goto_9b
    monitor-exit p0

    return v1

    :catchall_9d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMaxSize(J)V
    .registers 3

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->maxSize:J

    iget-object p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object p2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

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
    iget-wide v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->size:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method
