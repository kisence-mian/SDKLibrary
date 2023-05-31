.class final Lcom/tds/common/widgets/image/DiskLruCache$Entry;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/widgets/image/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Entry"
.end annotation


# instance fields
.field cleanFiles:[Ljava/io/File;

.field private currentEditor:Lcom/tds/common/widgets/image/DiskLruCache$Editor;

.field dirtyFiles:[Ljava/io/File;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private readable:Z

.field private sequenceNumber:J

.field final synthetic this$0:Lcom/tds/common/widgets/image/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/tds/common/widgets/image/DiskLruCache;Ljava/lang/String;)V
    .registers 10
    .param p2, "key"    # Ljava/lang/String;

    .line 877
    iput-object p1, p0, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->this$0:Lcom/tds/common/widgets/image/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 878
    iput-object p2, p0, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->key:Ljava/lang/String;

    .line 879
    # getter for: Lcom/tds/common/widgets/image/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/tds/common/widgets/image/DiskLruCache;->access$1900(Lcom/tds/common/widgets/image/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->lengths:[J

    .line 880
    # getter for: Lcom/tds/common/widgets/image/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/tds/common/widgets/image/DiskLruCache;->access$1900(Lcom/tds/common/widgets/image/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    .line 881
    # getter for: Lcom/tds/common/widgets/image/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/tds/common/widgets/image/DiskLruCache;->access$1900(Lcom/tds/common/widgets/image/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    iput-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 885
    .local v0, "fileBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    .line 886
    .local v1, "truncateTo":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2f
    # getter for: Lcom/tds/common/widgets/image/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/tds/common/widgets/image/DiskLruCache;->access$1900(Lcom/tds/common/widgets/image/DiskLruCache;)I

    move-result v3

    if-ge v2, v3, :cond_65

    .line 887
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 888
    iget-object v3, p0, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    # getter for: Lcom/tds/common/widgets/image/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {p1}, Lcom/tds/common/widgets/image/DiskLruCache;->access$2000(Lcom/tds/common/widgets/image/DiskLruCache;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v2

    .line 889
    const-string v3, ".tmp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 890
    iget-object v3, p0, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    # getter for: Lcom/tds/common/widgets/image/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {p1}, Lcom/tds/common/widgets/image/DiskLruCache;->access$2000(Lcom/tds/common/widgets/image/DiskLruCache;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aput-object v4, v3, v2

    .line 891
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 886
    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 893
    .end local v2    # "i":I
    :cond_65
    return-void
.end method

.method synthetic constructor <init>(Lcom/tds/common/widgets/image/DiskLruCache;Ljava/lang/String;Lcom/tds/common/widgets/image/DiskLruCache$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/tds/common/widgets/image/DiskLruCache;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # Lcom/tds/common/widgets/image/DiskLruCache$1;

    .line 858
    invoke-direct {p0, p1, p2}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;-><init>(Lcom/tds/common/widgets/image/DiskLruCache;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)[J
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/widgets/image/DiskLruCache$Entry;

    .line 858
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->lengths:[J

    return-object v0
.end method

.method static synthetic access$1200(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/widgets/image/DiskLruCache$Entry;

    .line 858
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->key:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)J
    .registers 3
    .param p0, "x0"    # Lcom/tds/common/widgets/image/DiskLruCache$Entry;

    .line 858
    iget-wide v0, p0, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->sequenceNumber:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/tds/common/widgets/image/DiskLruCache$Entry;J)J
    .registers 3
    .param p0, "x0"    # Lcom/tds/common/widgets/image/DiskLruCache$Entry;
    .param p1, "x1"    # J

    .line 858
    iput-wide p1, p0, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->sequenceNumber:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)Z
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/widgets/image/DiskLruCache$Entry;

    .line 858
    iget-boolean v0, p0, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->readable:Z

    return v0
.end method

.method static synthetic access$702(Lcom/tds/common/widgets/image/DiskLruCache$Entry;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/widgets/image/DiskLruCache$Entry;
    .param p1, "x1"    # Z

    .line 858
    iput-boolean p1, p0, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->readable:Z

    return p1
.end method

.method static synthetic access$800(Lcom/tds/common/widgets/image/DiskLruCache$Entry;)Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/widgets/image/DiskLruCache$Entry;

    .line 858
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->currentEditor:Lcom/tds/common/widgets/image/DiskLruCache$Editor;

    return-object v0
.end method

.method static synthetic access$802(Lcom/tds/common/widgets/image/DiskLruCache$Entry;Lcom/tds/common/widgets/image/DiskLruCache$Editor;)Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/widgets/image/DiskLruCache$Entry;
    .param p1, "x1"    # Lcom/tds/common/widgets/image/DiskLruCache$Editor;

    .line 858
    iput-object p1, p0, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->currentEditor:Lcom/tds/common/widgets/image/DiskLruCache$Editor;

    return-object p1
.end method

.method static synthetic access$900(Lcom/tds/common/widgets/image/DiskLruCache$Entry;[Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/tds/common/widgets/image/DiskLruCache$Entry;
    .param p1, "x1"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 858
    invoke-direct {p0, p1}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->setLengths([Ljava/lang/String;)V

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

    .line 919
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

    .line 905
    array-length v0, p1

    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->this$0:Lcom/tds/common/widgets/image/DiskLruCache;

    # getter for: Lcom/tds/common/widgets/image/DiskLruCache;->valueCount:I
    invoke-static {v1}, Lcom/tds/common/widgets/image/DiskLruCache;->access$1900(Lcom/tds/common/widgets/image/DiskLruCache;)I

    move-result v1

    if-ne v0, v1, :cond_22

    .line 910
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_a
    :try_start_a
    array-length v1, p1

    if-ge v0, v1, :cond_1a

    .line 911
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->lengths:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_17} :catch_1c

    .line 910
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 915
    .end local v0    # "i":I
    :cond_1a
    nop

    .line 916
    return-void

    .line 913
    :catch_1c
    move-exception v0

    .line 914
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-direct {p0, p1}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v1

    throw v1

    .line 906
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_22
    invoke-direct {p0, p1}, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->invalidLengths([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public getCleanFile(I)Ljava/io/File;
    .registers 3
    .param p1, "i"    # I

    .line 923
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->cleanFiles:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getDirtyFile(I)Ljava/io/File;
    .registers 3
    .param p1, "i"    # I

    .line 927
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->dirtyFiles:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLengths()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 897
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache$Entry;->lengths:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_19

    aget-wide v4, v1, v3

    .line 898
    .local v4, "size":J
    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 897
    .end local v4    # "size":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 900
    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
