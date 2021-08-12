.class public Lcom/kwai/filedownloader/services/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/services/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/kwai/filedownloader/services/c$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/kwai/filedownloader/services/c;->a:Lcom/kwai/filedownloader/services/c$a;

    return-void
.end method

.method public constructor <init>(Lcom/kwai/filedownloader/services/c$a;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/kwai/filedownloader/services/c;->a:Lcom/kwai/filedownloader/services/c$a;

    return-void
.end method

.method private g()Lcom/kwai/filedownloader/f/c$d;
    .registers 2

    new-instance v0, Lcom/kwai/filedownloader/services/b;

    invoke-direct {v0}, Lcom/kwai/filedownloader/services/b;-><init>()V

    return-object v0
.end method

.method private h()I
    .registers 2

    invoke-static {}, Lcom/kwai/filedownloader/f/e;->a()Lcom/kwai/filedownloader/f/e;

    move-result-object v0

    iget v0, v0, Lcom/kwai/filedownloader/f/e;->e:I

    return v0
.end method

.method private i()Lcom/kwai/filedownloader/b/a;
    .registers 2

    new-instance v0, Lcom/kwai/filedownloader/b/c;

    invoke-direct {v0}, Lcom/kwai/filedownloader/b/c;-><init>()V

    return-object v0
.end method

.method private j()Lcom/kwai/filedownloader/f/c$e;
    .registers 2

    new-instance v0, Lcom/kwai/filedownloader/e/b$a;

    invoke-direct {v0}, Lcom/kwai/filedownloader/e/b$a;-><init>()V

    return-object v0
.end method

.method private k()Lcom/kwai/filedownloader/f/c$b;
    .registers 2

    new-instance v0, Lcom/kwai/filedownloader/a/c$b;

    invoke-direct {v0}, Lcom/kwai/filedownloader/a/c$b;-><init>()V

    return-object v0
.end method

.method private l()Lcom/kwai/filedownloader/f/c$a;
    .registers 2

    new-instance v0, Lcom/kwai/filedownloader/a/a;

    invoke-direct {v0}, Lcom/kwai/filedownloader/a/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a()I
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/services/c;->a:Lcom/kwai/filedownloader/services/c$a;

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/kwai/filedownloader/services/c;->h()I

    move-result v0

    return v0

    :cond_9
    iget-object v0, v0, Lcom/kwai/filedownloader/services/c$a;->b:Ljava/lang/Integer;

    if-eqz v0, :cond_25

    sget-boolean v1, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "initial FileDownloader manager with the customize maxNetworkThreadCount: %d"

    invoke-static {p0, v2, v1}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/kwai/filedownloader/f/e;->a(I)I

    move-result v0

    return v0

    :cond_25
    invoke-direct {p0}, Lcom/kwai/filedownloader/services/c;->h()I

    move-result v0

    return v0
.end method

.method public b()Lcom/kwai/filedownloader/b/a;
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/services/c;->a:Lcom/kwai/filedownloader/services/c$a;

    if-eqz v0, :cond_28

    iget-object v0, v0, Lcom/kwai/filedownloader/services/c$a;->a:Lcom/kwai/filedownloader/f/c$c;

    if-nez v0, :cond_9

    goto :goto_28

    :cond_9
    iget-object v0, p0, Lcom/kwai/filedownloader/services/c;->a:Lcom/kwai/filedownloader/services/c$a;

    iget-object v0, v0, Lcom/kwai/filedownloader/services/c$a;->a:Lcom/kwai/filedownloader/f/c$c;

    invoke-interface {v0}, Lcom/kwai/filedownloader/f/c$c;->a()Lcom/kwai/filedownloader/b/a;

    move-result-object v0

    if-eqz v0, :cond_23

    sget-boolean v1, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v1, :cond_22

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "initial FileDownloader manager with the customize database: %s"

    invoke-static {p0, v2, v1}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    return-object v0

    :cond_23
    invoke-direct {p0}, Lcom/kwai/filedownloader/services/c;->i()Lcom/kwai/filedownloader/b/a;

    move-result-object v0

    return-object v0

    :cond_28
    :goto_28
    invoke-direct {p0}, Lcom/kwai/filedownloader/services/c;->i()Lcom/kwai/filedownloader/b/a;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/kwai/filedownloader/f/c$e;
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/services/c;->a:Lcom/kwai/filedownloader/services/c$a;

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/kwai/filedownloader/services/c;->j()Lcom/kwai/filedownloader/f/c$e;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, v0, Lcom/kwai/filedownloader/services/c$a;->c:Lcom/kwai/filedownloader/f/c$e;

    if-eqz v0, :cond_1d

    sget-boolean v1, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "initial FileDownloader manager with the customize output stream: %s"

    invoke-static {p0, v2, v1}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    return-object v0

    :cond_1d
    invoke-direct {p0}, Lcom/kwai/filedownloader/services/c;->j()Lcom/kwai/filedownloader/f/c$e;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/kwai/filedownloader/f/c$b;
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/services/c;->a:Lcom/kwai/filedownloader/services/c$a;

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/kwai/filedownloader/services/c;->k()Lcom/kwai/filedownloader/f/c$b;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, v0, Lcom/kwai/filedownloader/services/c$a;->d:Lcom/kwai/filedownloader/f/c$b;

    if-eqz v0, :cond_1d

    sget-boolean v1, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "initial FileDownloader manager with the customize connection creator: %s"

    invoke-static {p0, v2, v1}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    return-object v0

    :cond_1d
    invoke-direct {p0}, Lcom/kwai/filedownloader/services/c;->k()Lcom/kwai/filedownloader/f/c$b;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcom/kwai/filedownloader/f/c$a;
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/services/c;->a:Lcom/kwai/filedownloader/services/c$a;

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/kwai/filedownloader/services/c;->l()Lcom/kwai/filedownloader/f/c$a;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, v0, Lcom/kwai/filedownloader/services/c$a;->e:Lcom/kwai/filedownloader/f/c$a;

    if-eqz v0, :cond_1d

    sget-boolean v1, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "initial FileDownloader manager with the customize connection count adapter: %s"

    invoke-static {p0, v2, v1}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    return-object v0

    :cond_1d
    invoke-direct {p0}, Lcom/kwai/filedownloader/services/c;->l()Lcom/kwai/filedownloader/f/c$a;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcom/kwai/filedownloader/f/c$d;
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/services/c;->a:Lcom/kwai/filedownloader/services/c$a;

    if-nez v0, :cond_9

    invoke-direct {p0}, Lcom/kwai/filedownloader/services/c;->g()Lcom/kwai/filedownloader/f/c$d;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, v0, Lcom/kwai/filedownloader/services/c$a;->f:Lcom/kwai/filedownloader/f/c$d;

    if-eqz v0, :cond_1d

    sget-boolean v1, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const-string v2, "initial FileDownloader manager with the customize id generator: %s"

    invoke-static {p0, v2, v1}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1c
    return-object v0

    :cond_1d
    invoke-direct {p0}, Lcom/kwai/filedownloader/services/c;->g()Lcom/kwai/filedownloader/f/c$d;

    move-result-object v0

    return-object v0
.end method
