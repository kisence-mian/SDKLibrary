.class public final Lcom/tds/common/widgets/image/DiskLruCache$Value;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tds/common/widgets/image/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Value"
.end annotation


# instance fields
.field private final files:[Ljava/io/File;

.field private final key:Ljava/lang/String;

.field private final lengths:[J

.field private final sequenceNumber:J

.field final synthetic this$0:Lcom/tds/common/widgets/image/DiskLruCache;


# direct methods
.method private constructor <init>(Lcom/tds/common/widgets/image/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[J)V
    .registers 7
    .param p1, "this$0"    # Lcom/tds/common/widgets/image/DiskLruCache;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "sequenceNumber"    # J
    .param p5, "files"    # [Ljava/io/File;
    .param p6, "lengths"    # [J

    .line 727
    iput-object p1, p0, Lcom/tds/common/widgets/image/DiskLruCache$Value;->this$0:Lcom/tds/common/widgets/image/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 728
    iput-object p2, p0, Lcom/tds/common/widgets/image/DiskLruCache$Value;->key:Ljava/lang/String;

    .line 729
    iput-wide p3, p0, Lcom/tds/common/widgets/image/DiskLruCache$Value;->sequenceNumber:J

    .line 730
    iput-object p5, p0, Lcom/tds/common/widgets/image/DiskLruCache$Value;->files:[Ljava/io/File;

    .line 731
    iput-object p6, p0, Lcom/tds/common/widgets/image/DiskLruCache$Value;->lengths:[J

    .line 732
    return-void
.end method

.method synthetic constructor <init>(Lcom/tds/common/widgets/image/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[JLcom/tds/common/widgets/image/DiskLruCache$1;)V
    .registers 8
    .param p1, "x0"    # Lcom/tds/common/widgets/image/DiskLruCache;
    .param p2, "x1"    # Ljava/lang/String;
    .param p3, "x2"    # J
    .param p5, "x3"    # [Ljava/io/File;
    .param p6, "x4"    # [J
    .param p7, "x5"    # Lcom/tds/common/widgets/image/DiskLruCache$1;

    .line 721
    invoke-direct/range {p0 .. p6}, Lcom/tds/common/widgets/image/DiskLruCache$Value;-><init>(Lcom/tds/common/widgets/image/DiskLruCache;Ljava/lang/String;J[Ljava/io/File;[J)V

    return-void
.end method


# virtual methods
.method public edit()Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 740
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache$Value;->this$0:Lcom/tds/common/widgets/image/DiskLruCache;

    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache$Value;->key:Ljava/lang/String;

    iget-wide v2, p0, Lcom/tds/common/widgets/image/DiskLruCache$Value;->sequenceNumber:J

    # invokes: Lcom/tds/common/widgets/image/DiskLruCache;->edit(Ljava/lang/String;J)Lcom/tds/common/widgets/image/DiskLruCache$Editor;
    invoke-static {v0, v1, v2, v3}, Lcom/tds/common/widgets/image/DiskLruCache;->access$1700(Lcom/tds/common/widgets/image/DiskLruCache;Ljava/lang/String;J)Lcom/tds/common/widgets/image/DiskLruCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getFile(I)Ljava/io/File;
    .registers 3
    .param p1, "index"    # I

    .line 744
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache$Value;->files:[Ljava/io/File;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getLength(I)J
    .registers 4
    .param p1, "index"    # I

    .line 755
    iget-object v0, p0, Lcom/tds/common/widgets/image/DiskLruCache$Value;->lengths:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getString(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 749
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v1, p0, Lcom/tds/common/widgets/image/DiskLruCache$Value;->files:[Ljava/io/File;

    aget-object v1, v1, p1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 750
    .local v0, "is":Ljava/io/InputStream;
    # invokes: Lcom/tds/common/widgets/image/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Lcom/tds/common/widgets/image/DiskLruCache;->access$1800(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
