.class public final Lokhttp3/internal/cache/DiskLruCache;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Ljava/io/Flushable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/cache/DiskLruCache$Entry;,
        Lokhttp3/internal/cache/DiskLruCache$Editor;,
        Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final ANY_SEQUENCE_NUMBER:J = -0x1L

.field private static final CLEAN:Ljava/lang/String; = "CLEAN"

.field private static final DIRTY:Ljava/lang/String; = "DIRTY"

.field static final JOURNAL_FILE:Ljava/lang/String; = "journal"

.field static final JOURNAL_FILE_BACKUP:Ljava/lang/String; = "journal.bkp"

.field static final JOURNAL_FILE_TEMP:Ljava/lang/String; = "journal.tmp"

.field static final LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

.field static final MAGIC:Ljava/lang/String; = "libcore.io.DiskLruCache"

.field private static final NULL_SINK:Lokio/Sink;

.field private static final READ:Ljava/lang/String; = "READ"

.field private static final REMOVE:Ljava/lang/String; = "REMOVE"

.field static final VERSION_1:Ljava/lang/String; = "1"


# instance fields
.field private final appVersion:I

.field private final cleanupRunnable:Ljava/lang/Runnable;

.field private closed:Z

.field private final directory:Ljava/io/File;

.field private final executor:Ljava/util/concurrent/Executor;

.field private final fileSystem:Lokhttp3/internal/io/FileSystem;

.field private hasJournalErrors:Z

.field private initialized:Z

.field private final journalFile:Ljava/io/File;

.field private final journalFileBackup:Ljava/io/File;

.field private final journalFileTmp:Ljava/io/File;

.field private journalWriter:Lokio/BufferedSink;

.field private final lruEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lokhttp3/internal/cache/DiskLruCache$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private maxSize:J

.field private mostRecentRebuildFailed:Z

.field private mostRecentTrimFailed:Z

.field private nextSequenceNumber:J

.field private redundantOpCount:I

.field private size:J

.field private final valueCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 88
    nop

    .line 95
    const-string v0, "[a-z0-9_-]{1,120}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    .line 825
    new-instance v0, Lokhttp3/internal/cache/DiskLruCache$4;

    invoke-direct {v0}, Lokhttp3/internal/cache/DiskLruCache$4;-><init>()V

    sput-object v0, Lokhttp3/internal/cache/DiskLruCache;->NULL_SINK:Lokio/Sink;

    return-void
.end method

.method constructor <init>(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V
    .registers 14
    .param p1, "fileSystem"    # Lokhttp3/internal/io/FileSystem;
    .param p2, "directory"    # Ljava/io/File;
    .param p3, "appVersion"    # I
    .param p4, "valueCount"    # I
    .param p5, "maxSize"    # J
    .param p7, "executor"    # Ljava/util/concurrent/Executor;

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J

    .line 151
    new-instance v2, Ljava/util/LinkedHashMap;

    const/4 v3, 0x0

    const/high16 v4, 0x3f400000    # 0.75f

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 166
    iput-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache;->nextSequenceNumber:J

    .line 170
    new-instance v0, Lokhttp3/internal/cache/DiskLruCache$1;

    invoke-direct {v0, p0}, Lokhttp3/internal/cache/DiskLruCache$1;-><init>(Lokhttp3/internal/cache/DiskLruCache;)V

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    .line 198
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    .line 199
    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    .line 200
    iput p3, p0, Lokhttp3/internal/cache/DiskLruCache;->appVersion:I

    .line 201
    new-instance v0, Ljava/io/File;

    const-string v1, "journal"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    .line 202
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.tmp"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    .line 203
    new-instance v0, Ljava/io/File;

    const-string v1, "journal.bkp"

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    .line 204
    iput p4, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    .line 205
    iput-wide p5, p0, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J

    .line 206
    iput-object p7, p0, Lokhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    .line 207
    return-void
.end method

.method static synthetic access$000(Lokhttp3/internal/cache/DiskLruCache;)Z
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache;

    .line 88
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z

    return v0
.end method

.method static synthetic access$100(Lokhttp3/internal/cache/DiskLruCache;)Z
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache;

    .line 88
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->closed:Z

    return v0
.end method

.method static synthetic access$1002(Lokhttp3/internal/cache/DiskLruCache;Z)Z
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache;
    .param p1, "x1"    # Z

    .line 88
    iput-boolean p1, p0, Lokhttp3/internal/cache/DiskLruCache;->hasJournalErrors:Z

    return p1
.end method

.method static synthetic access$200(Lokhttp3/internal/cache/DiskLruCache;)V
    .registers 1
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->trimToSize()V

    return-void
.end method

.method static synthetic access$2300(Lokhttp3/internal/cache/DiskLruCache;)Ljava/util/LinkedHashMap;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache;

    .line 88
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic access$2500(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;J)Lokhttp3/internal/cache/DiskLruCache$Editor;
    .registers 5
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2, p3}, Lokhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;J)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lokhttp3/internal/cache/DiskLruCache;)I
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache;

    .line 88
    iget v0, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    return v0
.end method

.method static synthetic access$2700(Lokhttp3/internal/cache/DiskLruCache;)Lokhttp3/internal/io/FileSystem;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache;

    .line 88
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    return-object v0
.end method

.method static synthetic access$2800(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V
    .registers 3
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache;
    .param p1, "x1"    # Lokhttp3/internal/cache/DiskLruCache$Editor;
    .param p2, "x2"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/cache/DiskLruCache;->completeEdit(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V

    return-void
.end method

.method static synthetic access$2900(Lokhttp3/internal/cache/DiskLruCache;)Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache;

    .line 88
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$302(Lokhttp3/internal/cache/DiskLruCache;Z)Z
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache;
    .param p1, "x1"    # Z

    .line 88
    iput-boolean p1, p0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z

    return p1
.end method

.method static synthetic access$3100(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)Z
    .registers 3
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache;
    .param p1, "x1"    # Lokhttp3/internal/cache/DiskLruCache$Entry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1}, Lokhttp3/internal/cache/DiskLruCache;->removeEntry(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lokhttp3/internal/cache/DiskLruCache;)Z
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache;

    .line 88
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lokhttp3/internal/cache/DiskLruCache;)V
    .registers 1
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 88
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->rebuildJournal()V

    return-void
.end method

.method static synthetic access$602(Lokhttp3/internal/cache/DiskLruCache;I)I
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache;
    .param p1, "x1"    # I

    .line 88
    iput p1, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    return p1
.end method

.method static synthetic access$702(Lokhttp3/internal/cache/DiskLruCache;Z)Z
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache;
    .param p1, "x1"    # Z

    .line 88
    iput-boolean p1, p0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z

    return p1
.end method

.method static synthetic access$802(Lokhttp3/internal/cache/DiskLruCache;Lokio/BufferedSink;)Lokio/BufferedSink;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache;
    .param p1, "x1"    # Lokio/BufferedSink;

    .line 88
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    return-object p1
.end method

.method static synthetic access$900()Lokio/Sink;
    .registers 1

    .line 88
    sget-object v0, Lokhttp3/internal/cache/DiskLruCache;->NULL_SINK:Lokio/Sink;

    return-object v0
.end method

.method private declared-synchronized checkNotClosed()V
    .registers 3

    monitor-enter p0

    .line 645
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->isClosed()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_11

    if-nez v0, :cond_9

    .line 648
    monitor-exit p0

    return-void

    .line 646
    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cache is closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_11
    .catchall {:try_start_9 .. :try_end_11} :catchall_11

    .line 644
    .end local p0    # "this":Lokhttp3/internal/cache/DiskLruCache;
    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized completeEdit(Lokhttp3/internal/cache/DiskLruCache$Editor;Z)V
    .registers 13
    .param p1, "editor"    # Lokhttp3/internal/cache/DiskLruCache$Editor;
    .param p2, "success"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 530
    :try_start_1
    # getter for: Lokhttp3/internal/cache/DiskLruCache$Editor;->entry:Lokhttp3/internal/cache/DiskLruCache$Entry;
    invoke-static {p1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->access$2100(Lokhttp3/internal/cache/DiskLruCache$Editor;)Lokhttp3/internal/cache/DiskLruCache$Entry;

    move-result-object v0

    .line 531
    .local v0, "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/cache/DiskLruCache$Entry;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v1

    if-ne v1, p1, :cond_115

    .line 536
    if-eqz p2, :cond_52

    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1200(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

    move-result v1

    if-nez v1, :cond_52

    .line 537
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    iget v2, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_52

    .line 538
    # getter for: Lokhttp3/internal/cache/DiskLruCache$Editor;->written:[Z
    invoke-static {p1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->access$2200(Lokhttp3/internal/cache/DiskLruCache$Editor;)[Z

    move-result-object v2

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_36

    .line 542
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1800(Lokhttp3/internal/cache/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lokhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_33

    .line 543
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_11b

    .line 544
    monitor-exit p0

    return-void

    .line 537
    .end local p0    # "this":Lokhttp3/internal/cache/DiskLruCache;
    :cond_33
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 539
    :cond_36
    :try_start_36
    invoke-virtual {p1}, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V

    .line 540
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

    .line 549
    .end local v1    # "i":I
    :cond_52
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_53
    iget v2, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v1, v2, :cond_94

    .line 550
    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1800(Lokhttp3/internal/cache/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v1

    .line 551
    .local v2, "dirty":Ljava/io/File;
    if-eqz p2, :cond_8c

    .line 552
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    invoke-interface {v3, v2}, Lokhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 553
    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1700(Lokhttp3/internal/cache/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v3

    aget-object v3, v3, v1

    .line 554
    .local v3, "clean":Ljava/io/File;
    iget-object v4, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    invoke-interface {v4, v2, v3}, Lokhttp3/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 555
    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1600(Lokhttp3/internal/cache/DiskLruCache$Entry;)[J

    move-result-object v4

    aget-wide v5, v4, v1

    move-wide v4, v5

    .line 556
    .local v4, "oldLength":J
    iget-object v6, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    invoke-interface {v6, v3}, Lokhttp3/internal/io/FileSystem;->size(Ljava/io/File;)J

    move-result-wide v6

    .line 557
    .local v6, "newLength":J
    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1600(Lokhttp3/internal/cache/DiskLruCache$Entry;)[J

    move-result-object v8

    aput-wide v6, v8, v1

    .line 558
    iget-wide v8, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J

    sub-long/2addr v8, v4

    add-long/2addr v8, v6

    iput-wide v8, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J

    .line 559
    .end local v3    # "clean":Ljava/io/File;
    .end local v4    # "oldLength":J
    .end local v6    # "newLength":J
    goto :goto_91

    .line 561
    :cond_8c
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    invoke-interface {v3, v2}, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 549
    .end local v2    # "dirty":Ljava/io/File;
    :cond_91
    :goto_91
    add-int/lit8 v1, v1, 0x1

    goto :goto_53

    .line 565
    .end local v1    # "i":I
    :cond_94
    iget v1, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    .line 566
    const/4 v1, 0x0

    # setter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    invoke-static {v0, v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1302(Lokhttp3/internal/cache/DiskLruCache$Entry;Lokhttp3/internal/cache/DiskLruCache$Editor;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 567
    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1200(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

    move-result v1

    or-int/2addr v1, p2

    const/16 v3, 0xa

    const/16 v4, 0x20

    if-eqz v1, :cond_d7

    .line 568
    # setter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z
    invoke-static {v0, v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1202(Lokhttp3/internal/cache/DiskLruCache$Entry;Z)Z

    .line 569
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    const-string v2, "CLEAN"

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v4}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 570
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1900(Lokhttp3/internal/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 571
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    invoke-virtual {v0, v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->writeLengths(Lokio/BufferedSink;)V

    .line 572
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    invoke-interface {v1, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 573
    if-eqz p2, :cond_f9

    .line 574
    iget-wide v1, p0, Lokhttp3/internal/cache/DiskLruCache;->nextSequenceNumber:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lokhttp3/internal/cache/DiskLruCache;->nextSequenceNumber:J

    # setter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v0, v1, v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$2002(Lokhttp3/internal/cache/DiskLruCache$Entry;J)J

    goto :goto_f9

    .line 577
    :cond_d7
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1900(Lokhttp3/internal/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    const-string v2, "REMOVE"

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v4}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 579
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1900(Lokhttp3/internal/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 580
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    invoke-interface {v1, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 582
    :cond_f9
    :goto_f9
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->flush()V

    .line 584
    iget-wide v1, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J

    iget-wide v3, p0, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J

    cmp-long v5, v1, v3

    if-gtz v5, :cond_10c

    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_113

    .line 585
    :cond_10c
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_113
    .catchall {:try_start_36 .. :try_end_113} :catchall_11b

    .line 587
    :cond_113
    monitor-exit p0

    return-void

    .line 532
    :cond_115
    :try_start_115
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_11b
    .catchall {:try_start_115 .. :try_end_11b} :catchall_11b

    .line 529
    .end local v0    # "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    .end local p1    # "editor":Lokhttp3/internal/cache/DiskLruCache$Editor;
    .end local p2    # "success":Z
    :catchall_11b
    move-exception p1

    monitor-exit p0

    goto :goto_11f

    :goto_11e
    throw p1

    :goto_11f
    goto :goto_11e
.end method

.method public static create(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJ)Lokhttp3/internal/cache/DiskLruCache;
    .registers 16
    .param p0, "fileSystem"    # Lokhttp3/internal/io/FileSystem;
    .param p1, "directory"    # Ljava/io/File;
    .param p2, "appVersion"    # I
    .param p3, "valueCount"    # I
    .param p4, "maxSize"    # J

    .line 256
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-lez v2, :cond_34

    .line 259
    if-lez p3, :cond_2c

    .line 264
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x3c

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v0, 0x1

    .line 265
    const-string v7, "OkHttp DiskLruCache"

    invoke-static {v7, v0}, Lokhttp3/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v7

    move-object v0, v9

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    .line 267
    .local v9, "executor":Ljava/util/concurrent/Executor;
    new-instance v0, Lokhttp3/internal/cache/DiskLruCache;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move v5, p2

    move v6, p3

    move-wide v7, p4

    invoke-direct/range {v2 .. v9}, Lokhttp3/internal/cache/DiskLruCache;-><init>(Lokhttp3/internal/io/FileSystem;Ljava/io/File;IIJLjava/util/concurrent/Executor;)V

    return-object v0

    .line 260
    .end local v9    # "executor":Ljava/util/concurrent/Executor;
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "valueCount <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "maxSize <= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized edit(Ljava/lang/String;J)Lokhttp3/internal/cache/DiskLruCache$Editor;
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "expectedSequenceNumber"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 458
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 460
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 461
    invoke-direct {p0, p1}, Lokhttp3/internal/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 463
    .local v0, "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    cmp-long v4, p2, v1

    if-eqz v4, :cond_25

    if-eqz v0, :cond_23

    .line 464
    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->sequenceNumber:J
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$2000(Lokhttp3/internal/cache/DiskLruCache$Entry;)J

    move-result-wide v1
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_7a

    cmp-long v4, v1, p2

    if-eqz v4, :cond_25

    .line 465
    .end local p0    # "this":Lokhttp3/internal/cache/DiskLruCache;
    :cond_23
    monitor-exit p0

    return-object v3

    .line 467
    :cond_25
    if-eqz v0, :cond_2f

    :try_start_27
    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/cache/DiskLruCache$Entry;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v1
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_7a

    if-eqz v1, :cond_2f

    .line 468
    monitor-exit p0

    return-object v3

    .line 470
    :cond_2f
    :try_start_2f
    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z

    if-nez v1, :cond_71

    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z

    if-eqz v1, :cond_38

    goto :goto_71

    .line 481
    :cond_38
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    const-string v2, "DIRTY"

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v1

    const/16 v2, 0x20

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, p1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 482
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    invoke-interface {v1}, Lokio/BufferedSink;->flush()V

    .line 484
    iget-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->hasJournalErrors:Z
    :try_end_56
    .catchall {:try_start_2f .. :try_end_56} :catchall_7a

    if-eqz v1, :cond_5a

    .line 485
    monitor-exit p0

    return-object v3

    .line 488
    :cond_5a
    if-nez v0, :cond_67

    .line 489
    :try_start_5c
    new-instance v1, Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-direct {v1, p0, p1, v3}, Lokhttp3/internal/cache/DiskLruCache$Entry;-><init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;Lokhttp3/internal/cache/DiskLruCache$1;)V

    move-object v0, v1

    .line 490
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    :cond_67
    new-instance v1, Lokhttp3/internal/cache/DiskLruCache$Editor;

    invoke-direct {v1, p0, v0, v3}, Lokhttp3/internal/cache/DiskLruCache$Editor;-><init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;Lokhttp3/internal/cache/DiskLruCache$1;)V

    .line 493
    .local v1, "editor":Lokhttp3/internal/cache/DiskLruCache$Editor;
    # setter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    invoke-static {v0, v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1302(Lokhttp3/internal/cache/DiskLruCache$Entry;Lokhttp3/internal/cache/DiskLruCache$Editor;)Lokhttp3/internal/cache/DiskLruCache$Editor;
    :try_end_6f
    .catchall {:try_start_5c .. :try_end_6f} :catchall_7a

    .line 494
    monitor-exit p0

    return-object v1

    .line 476
    .end local v1    # "editor":Lokhttp3/internal/cache/DiskLruCache$Editor;
    :cond_71
    :goto_71
    :try_start_71
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_78
    .catchall {:try_start_71 .. :try_end_78} :catchall_7a

    .line 477
    monitor-exit p0

    return-object v3

    .line 457
    .end local v0    # "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "expectedSequenceNumber":J
    :catchall_7a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private journalRebuildRequired()Z
    .registers 4

    .line 594
    const/16 v0, 0x7d0

    .line 595
    .local v0, "redundantOpCompactThreshold":I
    iget v1, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    const/16 v2, 0x7d0

    if-lt v1, v2, :cond_12

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    .line 596
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    if-lt v1, v2, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    .line 595
    :goto_13
    return v1
.end method

.method private newJournalWriter()Lokio/BufferedSink;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 310
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->appendingSink(Ljava/io/File;)Lokio/Sink;

    move-result-object v0

    .line 311
    .local v0, "fileSink":Lokio/Sink;
    new-instance v1, Lokhttp3/internal/cache/DiskLruCache$2;

    invoke-direct {v1, p0, v0}, Lokhttp3/internal/cache/DiskLruCache$2;-><init>(Lokhttp3/internal/cache/DiskLruCache;Lokio/Sink;)V

    .line 317
    .local v1, "faultHidingSink":Lokio/Sink;
    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v2

    return-object v2
.end method

.method private processJournal()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 365
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lokhttp3/internal/cache/DiskLruCache$Entry;>;"
    :goto_11
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5d

    .line 366
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 367
    .local v1, "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    invoke-static {v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/cache/DiskLruCache$Entry;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v2

    if-nez v2, :cond_37

    .line 368
    const/4 v2, 0x0

    .local v2, "t":I
    :goto_24
    iget v3, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_36

    .line 369
    iget-wide v3, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J

    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J
    invoke-static {v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1600(Lokhttp3/internal/cache/DiskLruCache$Entry;)[J

    move-result-object v5

    aget-wide v6, v5, v2

    add-long/2addr v3, v6

    iput-wide v3, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J

    .line 368
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .end local v2    # "t":I
    :cond_36
    goto :goto_5c

    .line 372
    :cond_37
    const/4 v2, 0x0

    # setter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    invoke-static {v1, v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1302(Lokhttp3/internal/cache/DiskLruCache$Entry;Lokhttp3/internal/cache/DiskLruCache$Editor;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 373
    const/4 v2, 0x0

    .restart local v2    # "t":I
    :goto_3c
    iget v3, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v2, v3, :cond_59

    .line 374
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;
    invoke-static {v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1700(Lokhttp3/internal/cache/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 375
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;
    invoke-static {v1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1800(Lokhttp3/internal/cache/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v4

    aget-object v4, v4, v2

    invoke-interface {v3, v4}, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 373
    add-int/lit8 v2, v2, 0x1

    goto :goto_3c

    .line 377
    .end local v2    # "t":I
    :cond_59
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 379
    .end local v1    # "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    :goto_5c
    goto :goto_11

    .line 380
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lokhttp3/internal/cache/DiskLruCache$Entry;>;"
    :cond_5d
    return-void
.end method

.method private readJournal()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    const-string v0, ", "

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v1, v2}, Lokhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v1

    .line 273
    .local v1, "source":Lokio/BufferedSource;
    :try_start_e
    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v2

    .line 274
    .local v2, "magic":Ljava/lang/String;
    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v3

    .line 275
    .local v3, "version":Ljava/lang/String;
    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v4

    .line 276
    .local v4, "appVersionString":Ljava/lang/String;
    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v5

    .line 277
    .local v5, "valueCountString":Ljava/lang/String;
    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v6

    .line 278
    .local v6, "blank":Ljava/lang/String;
    const-string v7, "libcore.io.DiskLruCache"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7e

    const-string v7, "1"

    .line 279
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7e

    iget v7, p0, Lokhttp3/internal/cache/DiskLruCache;->appVersion:I

    .line 280
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7e

    iget v7, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    .line 281
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7e

    const-string v7, ""

    .line 282
    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_50
    .catchall {:try_start_e .. :try_end_50} :catchall_b5

    if-eqz v7, :cond_7e

    .line 287
    const/4 v0, 0x0

    .line 290
    .local v0, "lineCount":I
    :goto_53
    :try_start_53
    invoke-interface {v1}, Lokio/BufferedSource;->readUtf8LineStrict()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lokhttp3/internal/cache/DiskLruCache;->readJournalLine(Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/io/EOFException; {:try_start_53 .. :try_end_5a} :catch_5d
    .catchall {:try_start_53 .. :try_end_5a} :catchall_b5

    .line 291
    add-int/lit8 v0, v0, 0x1

    .line 294
    goto :goto_53

    .line 292
    :catch_5d
    move-exception v7

    .line 293
    .local v7, "endOfJournal":Ljava/io/EOFException;
    nop

    .line 296
    .end local v7    # "endOfJournal":Ljava/io/EOFException;
    :try_start_5f
    iget-object v7, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v7}, Ljava/util/LinkedHashMap;->size()I

    move-result v7

    sub-int v7, v0, v7

    iput v7, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    .line 299
    invoke-interface {v1}, Lokio/BufferedSource;->exhausted()Z

    move-result v7

    if-nez v7, :cond_73

    .line 300
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->rebuildJournal()V

    goto :goto_79

    .line 302
    :cond_73
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->newJournalWriter()Lokio/BufferedSink;

    move-result-object v7

    iput-object v7, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;
    :try_end_79
    .catchall {:try_start_5f .. :try_end_79} :catchall_b5

    .line 305
    .end local v0    # "lineCount":I
    .end local v2    # "magic":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    .end local v4    # "appVersionString":Ljava/lang/String;
    .end local v5    # "valueCountString":Ljava/lang/String;
    .end local v6    # "blank":Ljava/lang/String;
    :goto_79
    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 306
    nop

    .line 307
    return-void

    .line 283
    .restart local v2    # "magic":Ljava/lang/String;
    .restart local v3    # "version":Ljava/lang/String;
    .restart local v4    # "appVersionString":Ljava/lang/String;
    .restart local v5    # "valueCountString":Ljava/lang/String;
    .restart local v6    # "blank":Ljava/lang/String;
    :cond_7e
    :try_start_7e
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

    .end local v1    # "source":Lokio/BufferedSource;
    throw v7
    :try_end_b5
    .catchall {:try_start_7e .. :try_end_b5} :catchall_b5

    .line 305
    .end local v2    # "magic":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    .end local v4    # "appVersionString":Ljava/lang/String;
    .end local v5    # "valueCountString":Ljava/lang/String;
    .end local v6    # "blank":Ljava/lang/String;
    .restart local v1    # "source":Lokio/BufferedSource;
    :catchall_b5
    move-exception v0

    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_bb

    :goto_ba
    throw v0

    :goto_bb
    goto :goto_ba
.end method

.method private readJournalLine(Ljava/lang/String;)V
    .registers 12
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 322
    .local v1, "firstSpace":I
    const-string v2, "unexpected journal line: "

    const/4 v3, -0x1

    if-eq v1, v3, :cond_ad

    .line 326
    add-int/lit8 v4, v1, 0x1

    .line 327
    .local v4, "keyBegin":I
    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 329
    .local v0, "secondSpace":I
    if-ne v0, v3, :cond_2b

    .line 330
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 331
    .local v5, "key":Ljava/lang/String;
    const-string v6, "REMOVE"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v1, v7, :cond_2f

    invoke-virtual {p1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2f

    .line 332
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    return-void

    .line 336
    .end local v5    # "key":Ljava/lang/String;
    :cond_2b
    invoke-virtual {p1, v4, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 339
    .restart local v5    # "key":Ljava/lang/String;
    :cond_2f
    iget-object v6, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v6, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 340
    .local v6, "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    const/4 v7, 0x0

    if-nez v6, :cond_45

    .line 341
    new-instance v8, Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-direct {v8, p0, v5, v7}, Lokhttp3/internal/cache/DiskLruCache$Entry;-><init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;Lokhttp3/internal/cache/DiskLruCache$1;)V

    move-object v6, v8

    .line 342
    iget-object v8, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v5, v6}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    :cond_45
    if-eq v0, v3, :cond_6c

    const-string v8, "CLEAN"

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v1, v9, :cond_6c

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6c

    .line 346
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 347
    .local v2, "parts":[Ljava/lang/String;
    const/4 v3, 0x1

    # setter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z
    invoke-static {v6, v3}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1202(Lokhttp3/internal/cache/DiskLruCache$Entry;Z)Z

    .line 348
    # setter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    invoke-static {v6, v7}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1302(Lokhttp3/internal/cache/DiskLruCache$Entry;Lokhttp3/internal/cache/DiskLruCache$Editor;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 349
    # invokes: Lokhttp3/internal/cache/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V
    invoke-static {v6, v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1400(Lokhttp3/internal/cache/DiskLruCache$Entry;[Ljava/lang/String;)V

    .line 350
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

    .line 351
    new-instance v2, Lokhttp3/internal/cache/DiskLruCache$Editor;

    invoke-direct {v2, p0, v6, v7}, Lokhttp3/internal/cache/DiskLruCache$Editor;-><init>(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;Lokhttp3/internal/cache/DiskLruCache$1;)V

    # setter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    invoke-static {v6, v2}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1302(Lokhttp3/internal/cache/DiskLruCache$Entry;Lokhttp3/internal/cache/DiskLruCache$Editor;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    goto :goto_95

    .line 352
    :cond_85
    if-ne v0, v3, :cond_96

    const-string v3, "READ"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v1, v7, :cond_96

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_96

    .line 357
    :goto_95
    return-void

    .line 355
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

    .line 323
    .end local v0    # "secondSpace":I
    .end local v4    # "keyBegin":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v6    # "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
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

    .line 387
    :try_start_1
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    if-eqz v0, :cond_8

    .line 388
    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    .line 391
    .end local p0    # "this":Lokhttp3/internal/cache/DiskLruCache;
    :cond_8
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_c1

    .line 393
    .local v0, "writer":Lokio/BufferedSink;
    :try_start_14
    const-string v1, "libcore.io.DiskLruCache"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v1

    const/16 v2, 0xa

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 394
    const-string v1, "1"

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 395
    iget v1, p0, Lokhttp3/internal/cache/DiskLruCache;->appVersion:I

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 396
    iget v1, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    int-to-long v3, v1

    invoke-interface {v0, v3, v4}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 397
    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 399
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_49
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_88

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 400
    .local v3, "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    invoke-static {v3}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/cache/DiskLruCache$Entry;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v4

    const/16 v5, 0x20

    if-eqz v4, :cond_71

    .line 401
    const-string v4, "DIRTY"

    invoke-interface {v0, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v4

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 402
    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v3}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1900(Lokhttp3/internal/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 403
    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    goto :goto_87

    .line 405
    :cond_71
    const-string v4, "CLEAN"

    invoke-interface {v0, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v4

    invoke-interface {v4, v5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 406
    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v3}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1900(Lokhttp3/internal/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 407
    invoke-virtual {v3, v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->writeLengths(Lokio/BufferedSink;)V

    .line 408
    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;
    :try_end_87
    .catchall {:try_start_14 .. :try_end_87} :catchall_bc

    .line 410
    .end local v3    # "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    :goto_87
    goto :goto_49

    .line 412
    :cond_88
    :try_start_88
    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    .line 413
    nop

    .line 415
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v1, v2}, Lokhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 416
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v1, v2, v3}, Lokhttp3/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 418
    :cond_9f
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileTmp:Ljava/io/File;

    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v1, v2, v3}, Lokhttp3/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 419
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v1, v2}, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 421
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->newJournalWriter()Lokio/BufferedSink;

    move-result-object v1

    iput-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    .line 422
    const/4 v1, 0x0

    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->hasJournalErrors:Z

    .line 423
    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentRebuildFailed:Z
    :try_end_ba
    .catchall {:try_start_88 .. :try_end_ba} :catchall_c1

    .line 424
    monitor-exit p0

    return-void

    .line 412
    :catchall_bc
    move-exception v1

    :try_start_bd
    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    throw v1
    :try_end_c1
    .catchall {:try_start_bd .. :try_end_c1} :catchall_c1

    .line 386
    .end local v0    # "writer":Lokio/BufferedSink;
    :catchall_c1
    move-exception v0

    monitor-exit p0

    goto :goto_c5

    :goto_c4
    throw v0

    :goto_c5
    goto :goto_c4
.end method

.method private removeEntry(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z
    .registers 8
    .param p1, "entry"    # Lokhttp3/internal/cache/DiskLruCache$Entry;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 618
    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    invoke-static {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/cache/DiskLruCache$Entry;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 619
    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    invoke-static {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/cache/DiskLruCache$Entry;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Editor;->detach()V

    .line 622
    :cond_d
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_e
    iget v1, p0, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v0, v1, :cond_33

    .line 623
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;
    invoke-static {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1700(Lokhttp3/internal/cache/DiskLruCache$Entry;)[Ljava/io/File;

    move-result-object v2

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    .line 624
    iget-wide v1, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J

    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J
    invoke-static {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1600(Lokhttp3/internal/cache/DiskLruCache$Entry;)[J

    move-result-object v3

    aget-wide v4, v3, v0

    sub-long/2addr v1, v4

    iput-wide v1, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J

    .line 625
    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J
    invoke-static {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1600(Lokhttp3/internal/cache/DiskLruCache$Entry;)[J

    move-result-object v1

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 622
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 628
    .end local v0    # "i":I
    :cond_33
    iget v0, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    .line 629
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    const-string v2, "REMOVE"

    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v2, 0x20

    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v0

    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1900(Lokhttp3/internal/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v0

    const/16 v2, 0xa

    invoke-interface {v0, v2}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 630
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1900(Lokhttp3/internal/cache/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v0

    if-eqz v0, :cond_6a

    .line 633
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 636
    :cond_6a
    return v1
.end method

.method private trimToSize()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 678
    :goto_0
    iget-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J

    iget-wide v2, p0, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_1c

    .line 679
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 680
    .local v0, "toEvict":Lokhttp3/internal/cache/DiskLruCache$Entry;
    invoke-direct {p0, v0}, Lokhttp3/internal/cache/DiskLruCache;->removeEntry(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

    .line 681
    .end local v0    # "toEvict":Lokhttp3/internal/cache/DiskLruCache$Entry;
    goto :goto_0

    .line 682
    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z

    .line 683
    return-void
.end method

.method private validateKey(Ljava/lang/String;)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .line 708
    sget-object v0, Lokhttp3/internal/cache/DiskLruCache;->LEGAL_KEY_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 709
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 713
    return-void

    .line 710
    :cond_d
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "keys must match regex [a-z0-9_-]{1,120}: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 661
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_44

    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->closed:Z

    if-eqz v0, :cond_b

    goto :goto_44

    .line 666
    :cond_b
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->size()I

    move-result v2

    new-array v2, v2, [Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-interface {v0, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/cache/DiskLruCache$Entry;

    array-length v2, v0

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v2, :cond_35

    aget-object v4, v0, v3

    .line 667
    .local v4, "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    invoke-static {v4}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/cache/DiskLruCache$Entry;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v5

    if-eqz v5, :cond_32

    .line 668
    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;
    invoke-static {v4}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1300(Lokhttp3/internal/cache/DiskLruCache$Entry;)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v5

    invoke-virtual {v5}, Lokhttp3/internal/cache/DiskLruCache$Editor;->abort()V

    .line 666
    .end local v4    # "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    .end local p0    # "this":Lokhttp3/internal/cache/DiskLruCache;
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 671
    :cond_35
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->trimToSize()V

    .line 672
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    .line 673
    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    .line 674
    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->closed:Z
    :try_end_42
    .catchall {:try_start_1 .. :try_end_42} :catchall_48

    .line 675
    monitor-exit p0

    return-void

    .line 662
    :cond_44
    :goto_44
    :try_start_44
    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->closed:Z
    :try_end_46
    .catchall {:try_start_44 .. :try_end_46} :catchall_48

    .line 663
    monitor-exit p0

    return-void

    .line 660
    :catchall_48
    move-exception v0

    monitor-exit p0

    goto :goto_4c

    :goto_4b
    throw v0

    :goto_4c
    goto :goto_4b
.end method

.method public delete()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 690
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->close()V

    .line 691
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->deleteContents(Ljava/io/File;)V

    .line 692
    return-void
.end method

.method public edit(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Editor;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 454
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lokhttp3/internal/cache/DiskLruCache;->edit(Ljava/lang/String;J)Lokhttp3/internal/cache/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized evictAll()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 699
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 701
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->size()I

    move-result v1

    new-array v1, v1, [Lokhttp3/internal/cache/DiskLruCache$Entry;

    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lokhttp3/internal/cache/DiskLruCache$Entry;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v1, :cond_26

    aget-object v4, v0, v3

    .line 702
    .local v4, "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    invoke-direct {p0, v4}, Lokhttp3/internal/cache/DiskLruCache;->removeEntry(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

    .line 701
    nop

    .end local v4    # "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    .line 704
    .end local p0    # "this":Lokhttp3/internal/cache/DiskLruCache;
    :cond_26
    iput-boolean v2, p0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_2a

    .line 705
    monitor-exit p0

    return-void

    .line 698
    :catchall_2a
    move-exception v0

    monitor-exit p0

    goto :goto_2e

    :goto_2d
    throw v0

    :goto_2e
    goto :goto_2d
.end method

.method public declared-synchronized flush()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 652
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_14

    if-nez v0, :cond_7

    monitor-exit p0

    return-void

    .line 654
    :cond_7
    :try_start_7
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 655
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->trimToSize()V

    .line 656
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    invoke-interface {v0}, Lokio/BufferedSink;->flush()V
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_14

    .line 657
    monitor-exit p0

    return-void

    .line 651
    .end local p0    # "this":Lokhttp3/internal/cache/DiskLruCache;
    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 431
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 433
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 434
    invoke-direct {p0, p1}, Lokhttp3/internal/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 436
    .local v0, "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    const/4 v1, 0x0

    if-eqz v0, :cond_50

    # getter for: Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->access$1200(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_1c

    goto :goto_50

    .line 438
    :cond_1c
    invoke-virtual {v0}, Lokhttp3/internal/cache/DiskLruCache$Entry;->snapshot()Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    move-result-object v2
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_52

    .line 439
    .local v2, "snapshot":Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    if-nez v2, :cond_24

    monitor-exit p0

    return-object v1

    .line 441
    :cond_24
    :try_start_24
    iget v1, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lokhttp3/internal/cache/DiskLruCache;->redundantOpCount:I

    .line 442
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalWriter:Lokio/BufferedSink;

    const-string v3, "READ"

    invoke-interface {v1, v3}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v1

    const/16 v3, 0x20

    invoke-interface {v1, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v1

    invoke-interface {v1, p1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v1

    const/16 v3, 0xa

    invoke-interface {v1, v3}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    .line 443
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->journalRebuildRequired()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 444
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_4e
    .catchall {:try_start_24 .. :try_end_4e} :catchall_52

    .line 447
    .end local p0    # "this":Lokhttp3/internal/cache/DiskLruCache;
    :cond_4e
    monitor-exit p0

    return-object v2

    .line 436
    .end local v2    # "snapshot":Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    :cond_50
    :goto_50
    monitor-exit p0

    return-object v1

    .line 430
    .end local v0    # "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    .end local p1    # "key":Ljava/lang/String;
    :catchall_52
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getDirectory()Ljava/io/File;
    .registers 2

    .line 499
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    return-object v0
.end method

.method public declared-synchronized getMaxSize()J
    .registers 3

    monitor-enter p0

    .line 506
    :try_start_1
    iget-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-wide v0

    .line 506
    .end local p0    # "this":Lokhttp3/internal/cache/DiskLruCache;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initialize()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 210
    nop

    .line 212
    :try_start_2
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_81

    if-eqz v0, :cond_8

    .line 213
    monitor-exit p0

    return-void

    .line 217
    :cond_8
    :try_start_8
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 219
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 220
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->delete(Ljava/io/File;)V

    goto :goto_2d

    .line 222
    .end local p0    # "this":Lokhttp3/internal/cache/DiskLruCache;
    :cond_24
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFileBackup:Ljava/io/File;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1, v2}, Lokhttp3/internal/io/FileSystem;->rename(Ljava/io/File;Ljava/io/File;)V

    .line 227
    :cond_2d
    :goto_2d
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->journalFile:Ljava/io/File;

    invoke-interface {v0, v1}, Lokhttp3/internal/io/FileSystem;->exists(Ljava/io/File;)Z

    move-result v0
    :try_end_35
    .catchall {:try_start_8 .. :try_end_35} :catchall_81

    const/4 v1, 0x1

    if-eqz v0, :cond_7a

    .line 229
    :try_start_38
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->readJournal()V

    .line 230
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->processJournal()V

    .line 231
    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_40} :catch_42
    .catchall {:try_start_38 .. :try_end_40} :catchall_81

    .line 232
    monitor-exit p0

    return-void

    .line 233
    :catch_42
    move-exception v0

    .line 234
    .local v0, "journalIsCorrupt":Ljava/io/IOException;
    :try_start_43
    invoke-static {}, Lokhttp3/internal/platform/Platform;->get()Lokhttp3/internal/platform/Platform;

    move-result-object v2

    const/4 v3, 0x5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DiskLruCache "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is corrupt: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 235
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", removing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 234
    invoke-virtual {v2, v3, v4, v0}, Lokhttp3/internal/platform/Platform;->log(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 236
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->delete()V

    .line 237
    const/4 v2, 0x0

    iput-boolean v2, p0, Lokhttp3/internal/cache/DiskLruCache;->closed:Z

    .line 241
    .end local v0    # "journalIsCorrupt":Ljava/io/IOException;
    :cond_7a
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->rebuildJournal()V

    .line 243
    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z
    :try_end_7f
    .catchall {:try_start_43 .. :try_end_7f} :catchall_81

    .line 244
    monitor-exit p0

    return-void

    .line 209
    :catchall_81
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isClosed()Z
    .registers 2

    monitor-enter p0

    .line 641
    :try_start_1
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->closed:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    .line 641
    .end local p0    # "this":Lokhttp3/internal/cache/DiskLruCache;
    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)Z
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 606
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 608
    invoke-direct {p0}, Lokhttp3/internal/cache/DiskLruCache;->checkNotClosed()V

    .line 609
    invoke-direct {p0, p1}, Lokhttp3/internal/cache/DiskLruCache;->validateKey(Ljava/lang/String;)V

    .line 610
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->lruEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/internal/cache/DiskLruCache$Entry;
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_29

    .line 611
    .local v0, "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    const/4 v1, 0x0

    if-nez v0, :cond_17

    monitor-exit p0

    return v1

    .line 612
    :cond_17
    :try_start_17
    invoke-direct {p0, v0}, Lokhttp3/internal/cache/DiskLruCache;->removeEntry(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z

    move-result v2

    .line 613
    .local v2, "removed":Z
    if-eqz v2, :cond_27

    iget-wide v3, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J

    iget-wide v5, p0, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J

    cmp-long v7, v3, v5

    if-gtz v7, :cond_27

    iput-boolean v1, p0, Lokhttp3/internal/cache/DiskLruCache;->mostRecentTrimFailed:Z
    :try_end_27
    .catchall {:try_start_17 .. :try_end_27} :catchall_29

    .line 614
    .end local p0    # "this":Lokhttp3/internal/cache/DiskLruCache;
    :cond_27
    monitor-exit p0

    return v2

    .line 605
    .end local v0    # "entry":Lokhttp3/internal/cache/DiskLruCache$Entry;
    .end local v2    # "removed":Z
    .end local p1    # "key":Ljava/lang/String;
    :catchall_29
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMaxSize(J)V
    .registers 5
    .param p1, "maxSize"    # J

    monitor-enter p0

    .line 514
    :try_start_1
    iput-wide p1, p0, Lokhttp3/internal/cache/DiskLruCache;->maxSize:J

    .line 515
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache;->initialized:Z

    if-eqz v0, :cond_e

    .line 516
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache;->executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache;->cleanupRunnable:Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 518
    .end local p0    # "this":Lokhttp3/internal/cache/DiskLruCache;
    :cond_e
    monitor-exit p0

    return-void

    .line 513
    .end local p1    # "maxSize":J
    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized size()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 525
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 526
    iget-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache;->size:J
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-wide v0

    .line 524
    .end local p0    # "this":Lokhttp3/internal/cache/DiskLruCache;
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized snapshots()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lokhttp3/internal/cache/DiskLruCache$Snapshot;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 731
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/internal/cache/DiskLruCache;->initialize()V

    .line 732
    new-instance v0, Lokhttp3/internal/cache/DiskLruCache$3;

    invoke-direct {v0, p0}, Lokhttp3/internal/cache/DiskLruCache$3;-><init>(Lokhttp3/internal/cache/DiskLruCache;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    .line 730
    .end local p0    # "this":Lokhttp3/internal/cache/DiskLruCache;
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method
