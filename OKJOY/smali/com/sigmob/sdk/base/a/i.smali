.class public Lcom/sigmob/sdk/base/a/i;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sigmob/sdk/base/a/i;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/base/a/i;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/base/a/i;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/sigmob/sdk/base/a/i;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/sigmob/sdk/base/a/i;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/a/i;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/i;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/i;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/i;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/sigmob/sdk/base/a/i;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/sigmob/sdk/base/common/utils/v;->a(Ljava/lang/Object;)Z

    const-string v0, "create trigger if not exists %s after %s on %s begin %s end;"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sigmob/sdk/base/a/i;->a:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/sigmob/sdk/base/a/i;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/sigmob/sdk/base/a/i;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/sigmob/sdk/base/a/i;->d:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/sigmob/sdk/base/a/i;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/a/i;->b:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/sigmob/sdk/base/a/i;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/a/i;->c:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/sigmob/sdk/base/a/i;
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/base/a/i;->d:Ljava/lang/String;

    return-object p0
.end method
