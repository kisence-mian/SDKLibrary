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
.field final cleanFiles:[Ljava/io/File;

.field currentEditor:Lokhttp3/internal/cache/DiskLruCache$Editor;

.field final dirtyFiles:[Ljava/io/File;

.field final key:Ljava/lang/String;

.field final lengths:[J

.field readable:Z

.field sequenceNumber:J

.field final synthetic this$0:Lokhttp3/internal/cache/DiskLruCache;


# direct methods
.method constructor <init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;)V
    .registers 10
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 974
    iput-object p1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 975
    iput-object p2, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 977
    iget v3, p1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array v3, v3, [J

    iput-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    .line 978
    iget v3, p1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array v3, v3, [Ljava/io/File;

    iput-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    .line 979
    iget v3, p1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array v3, v3, [Ljava/io/File;

    iput-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    .line 982
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x2e

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 983
    .local v0, "fileBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 984
    .local v2, "truncateTo":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_29
    iget v3, p1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v1, v3, :cond_59

    .line 985
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 986
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    iget-object v5, p1, Lokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v1

    .line 987
    const-string v3, ".tmp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    iget-object v5, p1, Lokhttp3/internal/cache/DiskLruCache;->directory:Ljava/io/File;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v1

    .line 989
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 984
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .line 991
    :cond_59
    return-void
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .registers 5
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1016
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


# virtual methods
.method setLengths([Ljava/lang/String;)V
    .registers 8
    .param p1, "strings"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 995
    array-length v2, p1

    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget v3, v3, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-eq v2, v3, :cond_c

    .line 996
    invoke-direct {p0, p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 1000
    :cond_c
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_d
    :try_start_d
    array-length v2, p1

    if-ge v1, v2, :cond_23

    .line 1001
    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    aget-object v3, p1, v1

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v2, v1
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_1a} :catch_1d

    .line 1000
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1003
    :catch_1d
    move-exception v0

    .line 1004
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Lokhttp3/internal/cache/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    .line 1006
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_23
    return-void
.end method

.method snapshot()Lokhttp3/internal/cache/DiskLruCache$Snapshot;
    .registers 10

    .prologue
    .line 1025
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-static {v1}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 1027
    :cond_e
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget v1, v1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    new-array v6, v1, [Lokio/Source;

    .line 1028
    .local v6, "sources":[Lokio/Source;
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [J

    .line 1030
    .local v7, "lengths":[J
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1d
    :try_start_1d
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget v1, v1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v8, v1, :cond_34

    .line 1031
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v1, v1, Lokhttp3/internal/cache/DiskLruCache;->fileSystem:Lokhttp3/internal/io/FileSystem;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v2, v2, v8

    invoke-interface {v1, v2}, Lokhttp3/internal/io/FileSystem;->source(Ljava/io/File;)Lokio/Source;

    move-result-object v1

    aput-object v1, v6, v8

    .line 1030
    add-int/lit8 v8, v8, 0x1

    goto :goto_1d

    .line 1033
    :cond_34
    new-instance v1, Lokhttp3/internal/cache/DiskLruCache$Snapshot;

    iget-object v2, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->key:Ljava/lang/String;

    iget-wide v4, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->sequenceNumber:J

    invoke-direct/range {v1 .. v7}, Lokhttp3/internal/cache/DiskLruCache$Snapshot;-><init>(Lokhttp3/internal/cache/DiskLruCache;Ljava/lang/String;J[Lokio/Source;[J)V
    :try_end_3f
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_3f} :catch_40

    .line 1049
    :goto_3f
    return-object v1

    .line 1034
    :catch_40
    move-exception v0

    .line 1036
    .local v0, "e":Ljava/io/FileNotFoundException;
    const/4 v8, 0x0

    :goto_42
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    iget v1, v1, Lokhttp3/internal/cache/DiskLruCache;->valueCount:I

    if-ge v8, v1, :cond_54

    .line 1037
    aget-object v1, v6, v8

    if-eqz v1, :cond_54

    .line 1038
    aget-object v1, v6, v8

    invoke-static {v1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 1036
    add-int/lit8 v8, v8, 0x1

    goto :goto_42

    .line 1046
    :cond_54
    :try_start_54
    iget-object v1, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->this$0:Lokhttp3/internal/cache/DiskLruCache;

    invoke-virtual {v1, p0}, Lokhttp3/internal/cache/DiskLruCache;->removeEntry(Lokhttp3/internal/cache/DiskLruCache$Entry;)Z
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_59} :catch_5b

    .line 1049
    :goto_59
    const/4 v1, 0x0

    goto :goto_3f

    .line 1047
    :catch_5b
    move-exception v1

    goto :goto_59
.end method

.method writeLengths(Lokio/BufferedSink;)V
    .registers 8
    .param p1, "writer"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1010
    iget-object v3, p0, Lokhttp3/internal/cache/DiskLruCache$Entry;->lengths:[J

    array-length v4, v3

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v4, :cond_14

    aget-wide v0, v3, v2

    .line 1011
    .local v0, "length":J
    const/16 v5, 0x20

    invoke-interface {p1, v5}, Lokio/BufferedSink;->writeByte(I)Lokio/BufferedSink;

    move-result-object v5

    invoke-interface {v5, v0, v1}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    .line 1010
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1013
    .end local v0    # "length":J
    :cond_14
    return-void
.end method
