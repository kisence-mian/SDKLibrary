.class final Lcom/kwad/sdk/core/diskcache/a/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/diskcache/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/kwad/sdk/core/diskcache/a/a;

.field private final b:Ljava/lang/String;

.field private final c:[J

.field private d:Z

.field private e:Lcom/kwad/sdk/core/diskcache/a/a$a;

.field private f:J


# direct methods
.method private constructor <init>(Lcom/kwad/sdk/core/diskcache/a/a;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/kwad/sdk/core/diskcache/a/a$b;->a:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/kwad/sdk/core/diskcache/a/a$b;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/kwad/sdk/core/diskcache/a/a;->e(Lcom/kwad/sdk/core/diskcache/a/a;)I

    move-result p1

    new-array p1, p1, [J

    iput-object p1, p0, Lcom/kwad/sdk/core/diskcache/a/a$b;->c:[J

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/core/diskcache/a/a;Ljava/lang/String;Lcom/kwad/sdk/core/diskcache/a/a$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/kwad/sdk/core/diskcache/a/a$b;-><init>(Lcom/kwad/sdk/core/diskcache/a/a;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/diskcache/a/a$b;J)J
    .registers 3

    iput-wide p1, p0, Lcom/kwad/sdk/core/diskcache/a/a$b;->f:J

    return-wide p1
.end method

.method static synthetic a(Lcom/kwad/sdk/core/diskcache/a/a$b;)Lcom/kwad/sdk/core/diskcache/a/a$a;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/diskcache/a/a$b;->e:Lcom/kwad/sdk/core/diskcache/a/a$a;

    return-object p0
.end method

.method static synthetic a(Lcom/kwad/sdk/core/diskcache/a/a$b;Lcom/kwad/sdk/core/diskcache/a/a$a;)Lcom/kwad/sdk/core/diskcache/a/a$a;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/core/diskcache/a/a$b;->e:Lcom/kwad/sdk/core/diskcache/a/a$a;

    return-object p1
.end method

.method static synthetic a(Lcom/kwad/sdk/core/diskcache/a/a$b;[Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/diskcache/a/a$b;->a([Ljava/lang/String;)V

    return-void
.end method

.method private a([Ljava/lang/String;)V
    .registers 6

    array-length v0, p1

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a$b;->a:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-static {v1}, Lcom/kwad/sdk/core/diskcache/a/a;->e(Lcom/kwad/sdk/core/diskcache/a/a;)I

    move-result v1

    if-ne v0, v1, :cond_21

    const/4 v0, 0x0

    :goto_a
    :try_start_a
    array-length v1, p1

    if-ge v0, v1, :cond_1a

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a$b;->c:[J

    aget-object v2, p1, v0

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    aput-wide v2, v1, v0
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_17} :catch_1b

    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    :cond_1a
    return-void

    :catch_1b
    move-exception v0

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/diskcache/a/a$b;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_21
    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/diskcache/a/a$b;->b([Ljava/lang/String;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method static synthetic a(Lcom/kwad/sdk/core/diskcache/a/a$b;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/core/diskcache/a/a$b;->d:Z

    return p1
.end method

.method private b([Ljava/lang/String;)Ljava/io/IOException;
    .registers 5

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected journal line: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic b(Lcom/kwad/sdk/core/diskcache/a/a$b;)[J
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/diskcache/a/a$b;->c:[J

    return-object p0
.end method

.method static synthetic c(Lcom/kwad/sdk/core/diskcache/a/a$b;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/diskcache/a/a$b;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/kwad/sdk/core/diskcache/a/a$b;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kwad/sdk/core/diskcache/a/a$b;->d:Z

    return p0
.end method

.method static synthetic e(Lcom/kwad/sdk/core/diskcache/a/a$b;)J
    .registers 3

    iget-wide v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$b;->f:J

    return-wide v0
.end method


# virtual methods
.method public a(I)Ljava/io/File;
    .registers 4

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$b;->a:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a;->f(Lcom/kwad/sdk/core/diskcache/a/a;)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a$b;->b:Ljava/lang/String;

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/a/a$b;->c:[J

    array-length v2, v1

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v2, :cond_19

    aget-wide v4, v1, v3

    const/16 v6, 0x20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(I)Ljava/io/File;
    .registers 5

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/kwad/sdk/core/diskcache/a/a$b;->a:Lcom/kwad/sdk/core/diskcache/a/a;

    invoke-static {v0}, Lcom/kwad/sdk/core/diskcache/a/a;->f(Lcom/kwad/sdk/core/diskcache/a/a;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/kwad/sdk/core/diskcache/a/a$b;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object p1
.end method
