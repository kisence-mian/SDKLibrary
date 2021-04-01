.class final Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;
.super Ljava/lang/Object;
.source ""

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
            "Ljava/util/concurrent/Callable",
            "<",
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
            "Ljava/util/LinkedHashMap",
            "<",
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
    .registers 15

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v4, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->size:J

    iput v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->fileCount:I

    new-instance v0, Ljava/util/LinkedHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {v0, v2, v1, v3}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    iput-wide v4, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->nextSequenceNumber:J

    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-wide/16 v4, 0x3c

    invoke-direct/range {v1 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;

    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;-><init>(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->directory:Ljava/io/File;

    iput p2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->appVersion:I

    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalFile:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalFileTmp:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalFileBackup:Ljava/io/File;

    iput p3, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    iput-wide p4, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->maxSize:J

    iput p6, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->maxFileCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)Ljava/io/Writer;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

    return-object v0
.end method

.method static synthetic access$100(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$1700(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;Ljava/lang/String;J)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    .registers 6

    invoke-direct {p0, p1, p2, p3}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)I
    .registers 2

    iget v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$200(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)V
    .registers 1

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->trimToFileCount()V

    return-void
.end method

.method static synthetic access$2000(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)Ljava/io/File;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
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
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
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

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_2
    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->entry:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->access$1500(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    move-result-object v2

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->currentEditor:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    invoke-static {v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$800(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p1, :cond_126

    if-eqz p2, :cond_52

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$700(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_52

    move v1, v0

    :goto_15
    iget v3, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    if-ge v1, v3, :cond_52

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->written:[Z
    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->access$1600(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;)[Z

    move-result-object v3

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_33

    invoke-virtual {v2, v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_30

    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->abort()V
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
    invoke-virtual {p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->abort()V

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
    iget v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    if-ge v0, v1, :cond_8d

    invoke-virtual {v2, v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v1

    if-eqz p2, :cond_89

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_86

    invoke-virtual {v2, v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1100(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)[J

    move-result-object v1

    aget-wide v4, v1, v0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->lengths:[J
    invoke-static {v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1100(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)[J

    move-result-object v1

    aput-wide v6, v1, v0

    iget-wide v8, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->size:J

    sub-long v4, v8, v4

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->size:J

    iget v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->fileCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->fileCount:I

    :cond_86
    :goto_86
    add-int/lit8 v0, v0, 0x1

    goto :goto_52

    :cond_89
    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    goto :goto_86

    :cond_8d
    iget v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->redundantOpCount:I

    const/4 v0, 0x0

    # setter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->currentEditor:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    invoke-static {v2, v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$802(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$700(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Z

    move-result v0

    or-int/2addr v0, p2

    if-eqz v0, :cond_fa

    const/4 v0, 0x1

    # setter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->readable:Z
    invoke-static {v2, v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$702(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;Z)Z

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CLEAN "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1200(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v3, 0xa

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    if-eqz p2, :cond_d8

    iget-wide v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->nextSequenceNumber:J

    # setter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v2, v0, v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1302(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;J)J

    :cond_d8
    :goto_d8
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    iget-wide v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->size:J

    iget-wide v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->maxSize:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_f1

    iget v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->fileCount:I

    iget v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->maxFileCount:I

    if-gt v0, v1, :cond_f1

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_f1
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    goto/16 :goto_2e

    :cond_fa
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1200(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REMOVE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1200(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_d8

    :cond_126
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_12c
    .catchall {:try_start_52 .. :try_end_12c} :catchall_4f
.end method

.method private static deleteIfExists(Ljava/io/File;)V
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

.method private declared-synchronized edit(Ljava/lang/String;J)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    .registers 8

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->checkNotClosed()V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->validateKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    const-wide/16 v2, -0x1

    cmp-long v2, p2, v2

    if-eqz v2, :cond_23

    if-eqz v0, :cond_20

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1300(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)J
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
    new-instance v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;-><init>(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    :goto_31
    new-instance v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;-><init>(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;)V

    # setter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->currentEditor:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$802(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

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

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

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
    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->currentEditor:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$800(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
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

.method private static inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/io/InputStreamReader;

    sget-object v1, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/Util;->readFully(Ljava/io/Reader;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f
.end method

.method public static open(Ljava/io/File;IIJI)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;
    .registers 13

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-lez v0, :cond_ac

    if-lez p5, :cond_a4

    if-lez p2, :cond_9c

    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_27

    new-instance v1, Ljava/io/File;

    const-string v2, "journal"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_56

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_27
    :goto_27
    new-instance v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;-><init>(Ljava/io/File;IIJI)V

    iget-object v1, v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8b

    :try_start_39
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
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_39 .. :try_end_55} :catch_5b

    :goto_55
    return-object v0

    :cond_56
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    goto :goto_27

    :catch_5b
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

    :cond_8b
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;-><init>(Ljava/io/File;IIJI)V

    invoke-direct {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->rebuildJournal()V

    goto :goto_55

    :cond_9c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxFileCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_ac
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private processJournal()V
    .registers 9

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_10
    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->currentEditor:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$800(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object v1

    if-nez v1, :cond_3b

    move v1, v2

    :goto_23
    iget v4, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    if-ge v1, v4, :cond_10

    iget-wide v4, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->size:J

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1100(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)[J

    move-result-object v6

    aget-wide v6, v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->size:J

    iget v4, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->fileCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->fileCount:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_23

    :cond_3b
    const/4 v1, 0x0

    # setter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->currentEditor:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$802(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move v1, v2

    :goto_40
    iget v4, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    if-ge v1, v4, :cond_55

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;

    move-result-object v4

    invoke-static {v4}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_40

    :cond_55
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_10

    :cond_59
    return-void
.end method

.method private readJournal()V
    .registers 9

    new-instance v1, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;

    new-instance v0, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    sget-object v2, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    :try_start_e
    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v5

    const-string v6, "libcore.io.DiskLruCache"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6b

    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6b

    iget v6, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->appVersion:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    iget v3, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    const-string v3, ""

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4f
    .catchall {:try_start_e .. :try_end_4f} :catchall_a8

    move-result v3

    if-eqz v3, :cond_6b

    const/4 v0, 0x0

    :goto_53
    :try_start_53
    invoke-virtual {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/StrictLineReader;->readLine()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/io/EOFException; {:try_start_53 .. :try_end_5a} :catch_5d
    .catchall {:try_start_53 .. :try_end_5a} :catchall_a8

    add-int/lit8 v0, v0, 0x1

    goto :goto_53

    :catch_5d
    move-exception v2

    :try_start_5e
    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->redundantOpCount:I
    :try_end_67
    .catchall {:try_start_5e .. :try_end_67} :catchall_a8

    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/Util;->closeQuietly(Ljava/io/Closeable;)V

    return-void

    :cond_6b
    :try_start_6b
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
    :try_end_a8
    .catchall {:try_start_6b .. :try_end_a8} :catchall_a8

    :catchall_a8
    move-exception v0

    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/Util;->closeQuietly(Ljava/io/Closeable;)V

    throw v0
.end method

.method private readJournalLine(Ljava/lang/String;)V
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

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, v0}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_27
    :goto_27
    return-void

    :cond_28
    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_2d
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    if-nez v0, :cond_41

    new-instance v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    invoke-direct {v0, p0, v1, v6}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;-><init>(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;)V

    iget-object v4, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

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

    # setter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->readable:Z
    invoke-static {v0, v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$702(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;Z)Z

    # setter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->currentEditor:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    invoke-static {v0, v6}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$802(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    # invokes: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$900(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;[Ljava/lang/String;)V

    goto :goto_27

    :cond_64
    if-ne v3, v5, :cond_79

    if-ne v2, v7, :cond_79

    const-string v1, "DIRTY"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_79

    new-instance v1, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    invoke-direct {v1, p0, v0, v6}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;-><init>(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;)V

    # setter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->currentEditor:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    invoke-static {v0, v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$802(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

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

.method private declared-synchronized rebuildJournal()V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    :cond_8
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v3, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/Util;->US_ASCII:Ljava/nio/charset/Charset;

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

    iget v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->appVersion:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

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

    check-cast v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->currentEditor:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$800(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object v1

    if-eqz v1, :cond_96

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DIRTY "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1200(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Ljava/lang/String;

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

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1200(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getLengths()Ljava/lang/String;

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

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalFile:Ljava/io/File;

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalFileBackup:Ljava/io/File;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    :cond_d0
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->renameTo(Ljava/io/File;Ljava/io/File;Z)V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    new-instance v0, Ljava/io/BufferedWriter;

    new-instance v1, Ljava/io/OutputStreamWriter;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalFile:Ljava/io/File;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sget-object v3, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/Util;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v1, v2, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_f3
    .catchall {:try_start_bd .. :try_end_f3} :catchall_93

    monitor-exit p0

    return-void
.end method

.method private static renameTo(Ljava/io/File;Ljava/io/File;Z)V
    .registers 4

    if-eqz p2, :cond_5

    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->deleteIfExists(Ljava/io/File;)V

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

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_30

    if-nez v0, :cond_7

    :goto_5
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

    move-result-object v1

    :cond_16
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->currentEditor:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$800(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object v2

    if-eqz v2, :cond_16

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->currentEditor:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$800(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;->abort()V
    :try_end_2f
    .catchall {:try_start_7 .. :try_end_2f} :catchall_30

    goto :goto_16

    :catchall_30
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_33
    :try_start_33
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->trimToSize()V

    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->trimToFileCount()V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->journalWriter:Ljava/io/Writer;
    :try_end_41
    .catchall {:try_start_33 .. :try_end_41} :catchall_30

    goto :goto_5
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

    move-result-object v0

    return-object v0
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
    .registers 12

    const/4 v2, 0x0

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_3
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->checkNotClosed()V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->validateKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_78

    if-nez v0, :cond_15

    :cond_13
    :goto_13
    monitor-exit p0

    return-object v1

    :cond_15
    :try_start_15
    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->readable:Z
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$700(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Z

    move-result v3

    if-eqz v3, :cond_13

    iget v3, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    new-array v6, v3, [Ljava/io/File;

    new-array v7, v3, [Ljava/io/InputStream;
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_78

    move v3, v2

    :goto_22
    :try_start_22
    iget v4, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    if-ge v3, v4, :cond_36

    invoke-virtual {v0, v3}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v4

    aput-object v4, v6, v3

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    aput-object v5, v7, v3
    :try_end_33
    .catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_33} :catch_7b
    .catchall {:try_start_22 .. :try_end_33} :catchall_78

    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    :cond_36
    :try_start_36
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

    if-eqz v1, :cond_67

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    :cond_67
    new-instance v1, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1300(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)J

    move-result-wide v4

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1100(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)[J

    move-result-object v8

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v9}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Snapshot;-><init>(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[Ljava/io/InputStream;[JLcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;)V
    :try_end_77
    .catchall {:try_start_36 .. :try_end_77} :catchall_78

    goto :goto_13

    :catchall_78
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_7b
    move-exception v0

    move v0, v2

    :goto_7d
    :try_start_7d
    iget v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    if-ge v0, v2, :cond_13

    aget-object v2, v7, v0

    if-eqz v2, :cond_13

    aget-object v2, v7, v0

    invoke-static {v2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/Util;->closeQuietly(Ljava/io/Closeable;)V
    :try_end_8a
    .catchall {:try_start_7d .. :try_end_8a} :catchall_78

    add-int/lit8 v0, v0, 0x1

    goto :goto_7d
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

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_6
    monitor-exit p0

    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_6

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .registers 8

    const/4 v1, 0x0

    monitor-enter p0

    :try_start_2
    invoke-direct {p0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->checkNotClosed()V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->validateKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;

    if-eqz v0, :cond_18

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->currentEditor:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$800(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    :try_end_15
    .catchall {:try_start_2 .. :try_end_15} :catchall_64

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
    iget v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_67

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_2f

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v3

    if-eqz v3, :cond_4b

    :cond_2f
    iget-wide v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->size:J

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1100(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)[J

    move-result-object v4

    aget-wide v4, v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->size:J

    iget v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->fileCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->fileCount:I

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->access$1100(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)[J

    move-result-object v2

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_4b
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
    :try_end_64
    .catchall {:try_start_1b .. :try_end_64} :catchall_64

    :catchall_64
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_67
    :try_start_67
    iget v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v0, v0, 0x1

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

    move-result v0

    if-eqz v0, :cond_9d

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_9d
    .catchall {:try_start_67 .. :try_end_9d} :catchall_64

    :cond_9d
    const/4 v0, 0x1

    goto/16 :goto_19
.end method

.method public declared-synchronized setMaxSize(J)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iput-wide p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->maxSize:J

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->executorService:Ljava/util/concurrent/ThreadPoolExecutor;

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->cleanupCallable:Ljava/util/concurrent/Callable;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-void

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
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
