.class final Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field private currentEditor:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private readable:Z

.field private sequenceNumber:J

.field final synthetic this$0:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->this$0:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->key:Ljava/lang/String;

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->access$1900(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->lengths:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;Ljava/lang/String;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;-><init>(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)[J
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->lengths:[J

    return-object v0
.end method

.method static synthetic access$1200(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->sequenceNumber:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;J)J
    .registers 4

    iput-wide p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->sequenceNumber:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->readable:Z

    return v0
.end method

.method static synthetic access$702(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->readable:Z

    return p1
.end method

.method static synthetic access$800(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->currentEditor:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    return-object v0
.end method

.method static synthetic access$802(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;)Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->currentEditor:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Editor;

    return-object p1
.end method

.method static synthetic access$900(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;[Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

    return-void
.end method

.method private invalidLengths([Ljava/lang/String;)Ljava/io/IOException;
    .registers 5

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

    array-length v0, p1

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->this$0:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->valueCount:I
    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->access$1900(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)I

    move-result v1

    if-ne v0, v1, :cond_20

    const/4 v0, 0x0

    :goto_a
    :try_start_a
    array-length v1, p1

    if-ge v0, v1, :cond_25

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->lengths:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_17} :catch_1a

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :catch_1a
    move-exception v0

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_20
    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_25
    return-void
.end method


# virtual methods
.method public getCleanFile(I)Ljava/io/File;
    .registers 6

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->this$0:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->access$2000(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getDirtyFile(I)Ljava/io/File;
    .registers 6

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->this$0:Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;

    # getter for: Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {v1}, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;->access$2000(Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->key:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLengths()Ljava/lang/String;
    .registers 8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kwad/sdk/core/imageloader/cache/disc/impl/ext/DiskLruCache$Entry;->lengths:[J

    array-length v3, v2

    const/4 v0, 0x0

    :goto_9
    if-ge v0, v3, :cond_19

    aget-wide v4, v2, v0

    const/16 v6, 0x20

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
