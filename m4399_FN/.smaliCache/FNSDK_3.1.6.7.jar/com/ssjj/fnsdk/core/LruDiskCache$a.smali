.class final Lcom/ssjj/fnsdk/core/LruDiskCache$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/LruDiskCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/LruDiskCache;

.field private final b:Ljava/lang/String;

.field private c:J

.field private final d:[J

.field private e:Z

.field private f:Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;

.field private g:J


# direct methods
.method private constructor <init>(Lcom/ssjj/fnsdk/core/LruDiskCache;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a:Lcom/ssjj/fnsdk/core/LruDiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->c:J

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LruDiskCache;->e(Lcom/ssjj/fnsdk/core/LruDiskCache;)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->d:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/ssjj/fnsdk/core/LruDiskCache;Ljava/lang/String;Lcom/ssjj/fnsdk/core/LruDiskCache$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;-><init>(Lcom/ssjj/fnsdk/core/LruDiskCache;Ljava/lang/String;)V

    return-void
.end method

.method private a([Ljava/lang/String;)Ljava/io/IOException;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected journal line: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/LruDiskCache$a;J)V
    .registers 3

    iput-wide p1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->c:J

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/LruDiskCache$a;Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->f:Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/LruDiskCache$a;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/LruDiskCache$a;[Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a([Ljava/lang/String;I)V

    return-void
.end method

.method private a([Ljava/lang/String;I)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p1

    sub-int/2addr v0, p2

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a:Lcom/ssjj/fnsdk/core/LruDiskCache;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LruDiskCache;->e(Lcom/ssjj/fnsdk/core/LruDiskCache;)I

    move-result v1

    if-ne v0, v1, :cond_29

    const/4 v0, 0x0

    :goto_b
    :try_start_b
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a:Lcom/ssjj/fnsdk/core/LruDiskCache;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LruDiskCache;->e(Lcom/ssjj/fnsdk/core/LruDiskCache;)I

    move-result v1

    if-lt v0, v1, :cond_14

    return-void

    :cond_14
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->d:[J

    add-int v2, v0, p2

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_20} :catch_23

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :catch_23
    move-exception p2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_29
    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->e:Z

    return p0
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->f:Lcom/ssjj/fnsdk/core/LruDiskCache$Editor;

    return-object p0
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/LruDiskCache$a;J)V
    .registers 3

    iput-wide p1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->g:J

    return-void
.end method

.method static synthetic c(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)[J
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->d:[J

    return-object p0
.end method

.method static synthetic e(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->c:J

    return-wide v0
.end method

.method static synthetic f(Lcom/ssjj/fnsdk/core/LruDiskCache$a;)J
    .registers 3

    iget-wide v0, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->g:J

    return-wide v0
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .registers 6

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a:Lcom/ssjj/fnsdk/core/LruDiskCache;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LruDiskCache;->f(Lcom/ssjj/fnsdk/core/LruDiskCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->d:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-lt v3, v2, :cond_10

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_10
    aget-wide v4, v1, v3

    const-string v6, " "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9
.end method

.method public b(I)Ljava/io/File;
    .registers 6

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->a:Lcom/ssjj/fnsdk/core/LruDiskCache;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LruDiskCache;->f(Lcom/ssjj/fnsdk/core/LruDiskCache;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/LruDiskCache$a;->b:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ".tmp"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
