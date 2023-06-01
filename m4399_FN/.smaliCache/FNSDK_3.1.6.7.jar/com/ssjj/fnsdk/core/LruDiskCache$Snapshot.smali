.class public final Lcom/ssjj/fnsdk/core/LruDiskCache$Snapshot;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Snapshot"
.end annotation


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/LruDiskCache;

.field private final b:Ljava/lang/String;

.field private final c:J

.field private final d:[Ljava/io/FileInputStream;

.field private final e:[J


# direct methods
.method private constructor <init>(Lcom/ssjj/fnsdk/core/LruDiskCache;Ljava/lang/String;J[Ljava/io/FileInputStream;[J)V
    .registers 7

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Snapshot;->a:Lcom/ssjj/fnsdk/core/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Snapshot;->b:Ljava/lang/String;

    iput-wide p3, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Snapshot;->c:J

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Snapshot;->d:[Ljava/io/FileInputStream;

    iput-object p6, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Snapshot;->e:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/ssjj/fnsdk/core/LruDiskCache;Ljava/lang/String;J[Ljava/io/FileInputStream;[JLcom/ssjj/fnsdk/core/LruDiskCache$Snapshot;)V
    .registers 8

    invoke-direct/range {p0 .. p6}, Lcom/ssjj/fnsdk/core/LruDiskCache$Snapshot;-><init>(Lcom/ssjj/fnsdk/core/LruDiskCache;Ljava/lang/String;J[Ljava/io/FileInputStream;[J)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Snapshot;->d:[Ljava/io/FileInputStream;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_4
    if-lt v2, v1, :cond_7

    return-void

    :cond_7
    aget-object v3, v0, v2

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method public edit()Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Snapshot;->a:Lcom/ssjj/fnsdk/core/LruDiskCache;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Snapshot;->b:Ljava/lang/String;

    iget-wide v2, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Snapshot;->c:J

    invoke-static {v0, v1, v2, v3}, Lcom/ssjj/fnsdk/core/LruDiskCache;->a(Lcom/ssjj/fnsdk/core/LruDiskCache;Ljava/lang/String;J)Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;

    move-result-object v0

    return-object v0
.end method

.method public getInputStream(I)Ljava/io/FileInputStream;
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Snapshot;->d:[Ljava/io/FileInputStream;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getLength(I)J
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$Snapshot;->e:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method public getString(I)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/LruDiskCache$Snapshot;->getInputStream(I)Ljava/io/FileInputStream;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LruDiskCache;->a(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
