.class final Lokhttp3/internal/cache/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/cache/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field private final cleanFiles:[Ljava/io/File;

.field private currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

.field private final dirtyFiles:[Ljava/io/File;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private readable:Z

.field private sequenceNumber:J

.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method private constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V
    .registers 10
    .param p2, "key"    # Ljava/lang/String;

    .line 985
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 986
    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 988
    # getter for: Lokhttp3/internal/cache/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lokhttp3/internal/cache/DiskLruCache;->access$2600(Lokhttp3/internal/cache/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    .line 989
    # getter for: Lokhttp3/internal/cache/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lokhttp3/internal/cache/DiskLruCache;->access$2600(Lokhttp3/internal/cache/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    .line 990
    # getter for: Lokhttp3/internal/cache/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lokhttp3/internal/cache/DiskLruCache;->access$2600(Lokhttp3/internal/cache/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    .line 993
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 994
    .local v0, "fileBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 995
    .local v1, "truncateTo":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    # getter for: Lokhttp3/internal/cache/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lokhttp3/internal/cache/DiskLruCache;->access$2600(Lokhttp3/internal/cache/DiskLruCache;)I

    move-result v3

    if-ge v2, v3, :cond_65

    .line 996
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 997
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    # getter for: Lokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {p1}, Lokhttp3/internal/cache/DiskLruCache;->access$2900(Lokhttp3/internal/cache/DiskLruCache;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v2

    .line 998
    const-string v3, ".tmp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 999
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    # getter for: Lokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {p1}, Lokhttp3/internal/cache/DiskLruCache;->access$2900(Lokhttp3/internal/cache/DiskLruCache;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v2

    .line 1000
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 995
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 1002
    .end local v2    # "i":I
    :cond_65
    return-void
.end method

.method synthetic constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;Lokhttp3/internal/cache/DiskLruCache$1;)V
    .registers 4
    .param p1, "x0"    # Lokhttp3/internal/cache/DiskLruCache;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lokhttp3/internal/cache/DiskLruCache$1;

    .line 968
    invoke-direct {p0, p1, p2}, Lokhttp3/internal/cache/DiskLruCache$Entry;-><init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 968
    iget-boolean v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    return v0
.end method

.method static synthetic access$1202(Lokhttp3/internal/cache/DiskLruCache$Entry;Z)Z
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache$Entry;
    .param p1, "x1"    # Z

    .line 968
    iput-boolean p1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->readable:Z

    return p1
.end method

.method static synthetic access$1300(Lokhttp3/internal/cache/DiskLruCache$Entry;)Lokhttp3/internal/cache/DiskLruCache$Editor;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 968
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    return-object v0
.end method

.method static synthetic access$1302(Lokhttp3/internal/cache/DiskLruCache$Entry;Lokhttp3/internal/cache/DiskLruCache$Editor;)Lokhttp3/internal/cache/DiskLruCache$Editor;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache$Entry;
    .param p1, "x1"    # Lokhttp3/internal/cache/DiskLruCache$Editor;

    .line 968
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

    return-object p1
.end method

.method static synthetic access$1400(Lokhttp3/internal/cache/DiskLruCache$Entry;[Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache$Entry;
    .param p1, "x1"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 968
    invoke-direct {p0, p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lokhttp3/internal/cache/DiskLruCache$Entry;)[J
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 968
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    return-object v0
.end method

.method static synthetic access$1700(Lokhttp3/internal/cache/DiskLruCache$Entry;)[Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 968
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1800(Lokhttp3/internal/cache/DiskLruCache$Entry;)[Ljava/io/File;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 968
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1900(Lokhttp3/internal/cache/DiskLruCache$Entry;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 968
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lokhttp3/internal/cache/DiskLruCache$Entry;)J
    .registers 3
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache$Entry;

    .line 968
    iget-wide v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->sequenceNumber:J

    return-wide v0
.end method

.method static synthetic access$2002(Lokhttp3/internal/cache/DiskLruCache$Entry;J)J
    .registers 3
    .param p0, "x0"    # Lokhttp3/internal/cache/DiskLruCache$Entry;
    .param p1, "x1"    # J

    .line 968
    iput-wide p1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->sequenceNumber:J

    return-wide p1
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .registers 5
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1027
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setLengths([Ljava/lang/String;)V
    .registers 6
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1006
    array-length v0, p1

    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    # getter for: Lokhttp3/internal/cache/DiskLruCache;->valueCount:I
    invoke-static {v1}, Lokhttp3/internal/cache/DiskLruCache;->access$2600(Lokhttp3/internal/cache/DiskLruCache;)I

    move-result v1

    if-ne v0, v1, :cond_22

    .line 1011
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    :try_start_a
    array-length v1, p1

    if-ge v0, v1, :cond_1a

    .line 1012
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_17} :catch_1c

    .line 1011
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 1016
    .end local v0    # "i":I
    :cond_1a
    nop

    .line 1017
    return-void

    .line 1014
    :catch_1c
    move-exception v0

    .line 1015
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 1007
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_22
    invoke-direct {p0, p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    goto :goto_28

    :goto_27
    throw v0

    :goto_28
    goto :goto_27
.end method


# virtual methods
.method snapshot()Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    .registers 12

    .line 1036
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1038
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    # getter for: Lokhttp3/internal/cache/DiskLruCache;->valueCount:I
    invoke-static {v0}, Lokhttp3/internal/cache/DiskLruCache;->access$2600(Lokhttp3/internal/cache/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Lokio/Source;

    .line 1039
    .local v0, "sources":[Lokio/Source;
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, [J

    .line 1041
    .local v9, "lengths":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1a
    :try_start_1a
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    # getter for: Lokhttp3/internal/cache/DiskLruCache;->valueCount:I
    invoke-static {v2}, Lokhttp3/internal/cache/DiskLruCache;->access$2600(Lokhttp3/internal/cache/DiskLruCache;)I

    move-result v2

    if-ge v1, v2, :cond_35

    .line 1042
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    # getter for: Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;
    invoke-static {v2}, Lokhttp3/internal/cache/DiskLruCache;->access$2700(Lokhttp3/internal/cache/DiskLruCache;)Lokhttp3/internal/io/FileSystem;

    move-result-object v2

    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Lokhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v2

    aput-object v2, v0, v1

    .line 1041
    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    .line 1044
    .end local v1    # "i":I
    :cond_35
    new-instance v10, Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    iget-wide v4, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->sequenceNumber:J

    const/4 v8, 0x0

    move-object v1, v10

    move-object v6, v0

    move-object v7, v9

    invoke-direct/range {v1 .. v8}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;-><init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;J[Lokio/Source;[JLokhttp3/internal/cache/DiskLruCache$1;)V
    :try_end_44
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_44} :catch_45

    return-object v10

    .line 1045
    :catch_45
    move-exception v1

    .line 1047
    .local v1, "e":Ljava/io/FileNotFoundException;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_47
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    # getter for: Lokhttp3/internal/cache/DiskLruCache;->valueCount:I
    invoke-static {v3}, Lokhttp3/internal/cache/DiskLruCache;->access$2600(Lokhttp3/internal/cache/DiskLruCache;)I

    move-result v3

    if-ge v2, v3, :cond_5b

    .line 1048
    aget-object v3, v0, v2

    if-eqz v3, :cond_5b

    .line 1049
    aget-object v3, v0, v2

    invoke-static {v3}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 1047
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 1057
    .end local v2    # "i":I
    :cond_5b
    :try_start_5b
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    # invokes: Lokhttp3/internal/cache/DiskLruCache;->removeEntry(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z
    invoke-static {v2, p0}, Lokhttp3/internal/cache/DiskLruCache;->access$3100(Lokhttp3/internal/cache/DiskLruCache;Lokhttp3/internal/cache/DiskLruCache$Entry;)Z
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_60} :catch_61

    .line 1059
    goto :goto_62

    .line 1058
    :catch_61
    move-exception v2

    .line 1060
    :goto_62
    const/4 v2, 0x0

    return-object v2

    .line 1036
    .end local v0    # "sources":[Lokio/Source;
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v9    # "lengths":[J
    :cond_64
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    goto :goto_6b

    :goto_6a
    throw v0

    :goto_6b
    goto :goto_6a
.end method

.method writeLengths(Lokio/BufferedSink;)V
    .registers 8
    .param p1, "writer"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1021
    iget-object v0, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v1, :cond_14

    aget-wide v3, v0, v2

    .line 1022
    .local v3, "length":J
    const/16 v5, 0x20

    invoke-interface {p1, v5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v5

    invoke-interface {v5, v3, v4}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    .line 1021
    .end local v3    # "length":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1024
    :cond_14
    return-void
.end method
