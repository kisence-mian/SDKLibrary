.class public Lcom/kwad/sdk/core/diskcache/b/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/core/diskcache/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:I

.field private c:J

.field private d:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/kwad/sdk/core/diskcache/b/b$a;->b:I

    const-wide/16 v0, 0x64

    iput-wide v0, p0, Lcom/kwad/sdk/core/diskcache/b/b$a;->c:J

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/core/diskcache/b/b$a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/kwad/sdk/core/diskcache/b/b$a;
    .registers 3

    if-lez p1, :cond_5

    iput p1, p0, Lcom/kwad/sdk/core/diskcache/b/b$a;->b:I

    return-object p0

    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "appVersion <= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(J)Lcom/kwad/sdk/core/diskcache/b/b$a;
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_9

    iput-wide p1, p0, Lcom/kwad/sdk/core/diskcache/b/b$a;->c:J

    return-object p0

    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxSize <= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/io/File;)Lcom/kwad/sdk/core/diskcache/b/b$a;
    .registers 3

    const-string v0, "directory is not allow null"

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/diskcache/b/d;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/kwad/sdk/core/diskcache/b/b$a;->d:Ljava/io/File;

    return-object p0
.end method

.method public a()Lcom/kwad/sdk/core/diskcache/b/b;
    .registers 4

    new-instance v0, Lcom/kwad/sdk/core/diskcache/b/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/kwad/sdk/core/diskcache/b/b;-><init>(Lcom/kwad/sdk/core/diskcache/b/b$1;)V

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/b/b$a;->a:Landroid/content/Context;

    iput-object v1, v0, Lcom/kwad/sdk/core/diskcache/b/b;->a:Landroid/content/Context;

    iget v1, p0, Lcom/kwad/sdk/core/diskcache/b/b$a;->b:I

    iput v1, v0, Lcom/kwad/sdk/core/diskcache/b/b;->b:I

    iget-wide v1, p0, Lcom/kwad/sdk/core/diskcache/b/b$a;->c:J

    iput-wide v1, v0, Lcom/kwad/sdk/core/diskcache/b/b;->c:J

    iget-object v1, p0, Lcom/kwad/sdk/core/diskcache/b/b$a;->d:Ljava/io/File;

    iput-object v1, v0, Lcom/kwad/sdk/core/diskcache/b/b;->d:Ljava/io/File;

    return-object v0
.end method
