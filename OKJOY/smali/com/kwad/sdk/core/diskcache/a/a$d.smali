.class final Lcom/kwad/sdk/core/diskcache/a/a$d;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/diskcache/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[J

.field private c:Z

.field private d:Lcom/kwad/sdk/core/diskcache/a/a$c;

.field private e:J

.field final synthetic f:Lcom/kwad/sdk/core/diskcache/a/a;


# direct methods
.method private constructor <init>(Lcom/kwad/sdk/core/diskcache/a/a;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/kwad/sdk/core/diskcache/a/a$d;->f:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/kwad/sdk/core/diskcache/a/a$d;->a:Ljava/lang/String;

    invoke-static {p1}, Lcom/kwad/sdk/core/diskcache/a/a;->c(Lcom/kwad/sdk/core/diskcache/a/a;)I

    move-result v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$d;->b:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/core/diskcache/a/a;Ljava/lang/String;Lcom/kwad/sdk/core/diskcache/a/a$a;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/diskcache/a/a$d;-><init>(Lcom/kwad/sdk/core/diskcache/a/a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/diskcache/a/a$d;J)J
    .registers 4

    iput-wide p1, p0, Lcom/kwad/sdk/core/diskcache/a/a$d;->e:J

    return-wide p1
.end method

.method static synthetic a(Lcom/kwad/sdk/core/diskcache/a/a$d;Lcom/kwad/sdk/core/diskcache/a/a$c;)Lcom/kwad/sdk/core/diskcache/a/a$c;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/diskcache/a/a$d;->d:Lcom/kwad/sdk/core/diskcache/a/a$c;

    return-object p1
.end method

.method private a([Ljava/lang/String;)Ljava/io/IOException;
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

.method static synthetic a(Lcom/kwad/sdk/core/diskcache/a/a$d;[Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/diskcache/a/a$d;->b([Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/diskcache/a/a$d;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/core/diskcache/a/a$d;->c:Z

    return p1
.end method

.method static synthetic a(Lcom/kwad/sdk/core/diskcache/a/a$d;)[J
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$d;->b:[J

    return-object v0
.end method

.method static synthetic b(Lcom/kwad/sdk/core/diskcache/a/a$d;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$d;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b([Ljava/lang/String;)V
    .registers 7

    const/4 v4, 0x0

    array-length v0, p1

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a$d;->f:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/a/a;->c(Lcom/kwad/sdk/core/diskcache/a/a;)I

    move-result v1

    if-ne v0, v1, :cond_20

    const/4 v0, 0x0

    :goto_b
    :try_start_b
    array-length v1, p1

    if-ge v0, v1, :cond_24

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a$d;->b:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_18} :catch_1b

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :catch_1b
    move-exception v0

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/diskcache/a/a$d;->a([Ljava/lang/String;)Ljava/io/IOException;

    throw v4

    :cond_20
    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/diskcache/a/a$d;->a([Ljava/lang/String;)Ljava/io/IOException;

    throw v4

    :cond_24
    return-void
.end method

.method static synthetic c(Lcom/kwad/sdk/core/diskcache/a/a$d;)J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$d;->e:J

    return-wide v0
.end method

.method static synthetic d(Lcom/kwad/sdk/core/diskcache/a/a$d;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$d;->c:Z

    return v0
.end method

.method static synthetic e(Lcom/kwad/sdk/core/diskcache/a/a$d;)Lcom/kwad/sdk/core/diskcache/a/a$c;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$d;->d:Lcom/kwad/sdk/core/diskcache/a/a$c;

    return-object v0
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a$d;->f:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/a/a;->d(Lcom/kwad/sdk/core/diskcache/a/a;)Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/core/diskcache/a/a$d;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kwad/sdk/core/diskcache/a/a$d;->b:[J

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

.method public b(I)Ljava/io/File;
    .registers 6

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a$d;->f:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/a/a;->d(Lcom/kwad/sdk/core/diskcache/a/a;)Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/kwad/sdk/core/diskcache/a/a$d;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method
