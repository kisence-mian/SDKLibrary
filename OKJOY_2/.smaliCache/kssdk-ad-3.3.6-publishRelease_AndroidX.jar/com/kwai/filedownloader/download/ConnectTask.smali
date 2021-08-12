.class public Lcom/kwai/filedownloader/download/ConnectTask;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwai/filedownloader/download/ConnectTask$a;,
        Lcom/kwai/filedownloader/download/ConnectTask$Reconnect;
    }
.end annotation


# instance fields
.field final a:I

.field final b:Ljava/lang/String;

.field final c:Lcom/kwai/filedownloader/d/b;

.field private d:Lcom/kwai/filedownloader/download/a;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/kwai/filedownloader/download/a;ILjava/lang/String;Ljava/lang/String;Lcom/kwai/filedownloader/d/b;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/kwai/filedownloader/download/ConnectTask;->a:I

    iput-object p3, p0, Lcom/kwai/filedownloader/download/ConnectTask;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/kwai/filedownloader/download/ConnectTask;->e:Ljava/lang/String;

    iput-object p5, p0, Lcom/kwai/filedownloader/download/ConnectTask;->c:Lcom/kwai/filedownloader/d/b;

    iput-object p1, p0, Lcom/kwai/filedownloader/download/ConnectTask;->d:Lcom/kwai/filedownloader/download/a;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwai/filedownloader/download/a;ILjava/lang/String;Ljava/lang/String;Lcom/kwai/filedownloader/d/b;Lcom/kwai/filedownloader/download/ConnectTask$1;)V
    .registers 7

    invoke-direct/range {p0 .. p5}, Lcom/kwai/filedownloader/download/ConnectTask;-><init>(Lcom/kwai/filedownloader/download/a;ILjava/lang/String;Ljava/lang/String;Lcom/kwai/filedownloader/d/b;)V

    return-void
.end method

.method private a(Lcom/kwai/filedownloader/a/b;)V
    .registers 6

    iget-object v0, p0, Lcom/kwai/filedownloader/download/ConnectTask;->c:Lcom/kwai/filedownloader/d/b;

    if-eqz v0, :cond_58

    invoke-virtual {v0}, Lcom/kwai/filedownloader/d/b;->a()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_58

    sget-boolean v1, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v1, :cond_22

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/kwai/filedownloader/download/ConnectTask;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v2, "%d add outside header: %s"

    invoke-static {p0, v2, v1}, Lcom/kwai/filedownloader/f/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_22
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_2a

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_48
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {p1, v2, v3}, Lcom/kwai/filedownloader/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    :cond_58
    return-void
.end method

.method private b(Lcom/kwai/filedownloader/a/b;)V
    .registers 7

    iget-object v0, p0, Lcom/kwai/filedownloader/download/ConnectTask;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/ConnectTask;->d:Lcom/kwai/filedownloader/download/a;

    iget-wide v1, v1, Lcom/kwai/filedownloader/download/a;->a:J

    invoke-interface {p1, v0, v1, v2}, Lcom/kwai/filedownloader/a/b;->a(Ljava/lang/String;J)Z

    move-result v0

    if-eqz v0, :cond_d

    return-void

    :cond_d
    iget-object v0, p0, Lcom/kwai/filedownloader/download/ConnectTask;->e:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/kwai/filedownloader/download/ConnectTask;->e:Ljava/lang/String;

    const-string v1, "If-Match"

    invoke-interface {p1, v1, v0}, Lcom/kwai/filedownloader/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    iget-object v0, p0, Lcom/kwai/filedownloader/download/ConnectTask;->d:Lcom/kwai/filedownloader/download/a;

    iget-wide v0, v0, Lcom/kwai/filedownloader/download/a;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_3b

    new-array v0, v1, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/kwai/filedownloader/download/ConnectTask;->d:Lcom/kwai/filedownloader/download/a;

    iget-wide v3, v1, Lcom/kwai/filedownloader/download/a;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v2

    const-string v1, "bytes=%d-"

    invoke-static {v1, v0}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_58

    :cond_3b
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/kwai/filedownloader/download/ConnectTask;->d:Lcom/kwai/filedownloader/download/a;

    iget-wide v3, v3, Lcom/kwai/filedownloader/download/a;->b:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v0, v2

    iget-object v2, p0, Lcom/kwai/filedownloader/download/ConnectTask;->d:Lcom/kwai/filedownloader/download/a;

    iget-wide v2, v2, Lcom/kwai/filedownloader/download/a;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "bytes=%d-%d"

    invoke-static {v1, v0}, Lcom/kwai/filedownloader/f/f;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_58
    const-string v1, "Range"

    invoke-interface {p1, v1, v0}, Lcom/kwai/filedownloader/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/kwai/filedownloader/a/b;)V
    .registers 4

    iget-object v0, p0, Lcom/kwai/filedownloader/download/ConnectTask;->c:Lcom/kwai/filedownloader/d/b;

    const-string v1, "User-Agent"

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/kwai/filedownloader/d/b;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_17

    :cond_10
    invoke-static {}, Lcom/kwai/filedownloader/f/f;->e()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/kwai/filedownloader/a/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    return-void
.end method


# virtual methods
.method a()Lcom/kwai/filedownloader/a/b;
    .registers 5

    invoke-static {}, Lcom/kwai/filedownloader/download/b;->a()Lcom/kwai/filedownloader/download/b;

    move-result-object v0

    iget-object v1, p0, Lcom/kwai/filedownloader/download/ConnectTask;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/download/b;->a(Ljava/lang/String;)Lcom/kwai/filedownloader/a/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kwai/filedownloader/download/ConnectTask;->a(Lcom/kwai/filedownloader/a/b;)V

    invoke-direct {p0, v0}, Lcom/kwai/filedownloader/download/ConnectTask;->b(Lcom/kwai/filedownloader/a/b;)V

    invoke-direct {p0, v0}, Lcom/kwai/filedownloader/download/ConnectTask;->c(Lcom/kwai/filedownloader/a/b;)V

    invoke-interface {v0}, Lcom/kwai/filedownloader/a/b;->b()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lcom/kwai/filedownloader/download/ConnectTask;->f:Ljava/util/Map;

    sget-boolean v1, Lcom/kwai/filedownloader/f/d;->a:Z

    if-eqz v1, :cond_33

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/kwai/filedownloader/download/ConnectTask;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/kwai/filedownloader/download/ConnectTask;->f:Ljava/util/Map;

    aput-object v3, v1, v2

    const-string v2, "%s request header %s"

    invoke-static {p0, v2, v1}, Lcom/kwai/filedownloader/f/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_33
    invoke-interface {v0}, Lcom/kwai/filedownloader/a/b;->d()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/kwai/filedownloader/download/ConnectTask;->g:Ljava/util/List;

    iget-object v2, p0, Lcom/kwai/filedownloader/download/ConnectTask;->f:Ljava/util/Map;

    invoke-static {v2, v0, v1}, Lcom/kwai/filedownloader/a/d;->a(Ljava/util/Map;Lcom/kwai/filedownloader/a/b;Ljava/util/List;)Lcom/kwai/filedownloader/a/b;

    move-result-object v0

    return-object v0
.end method

.method b()Z
    .registers 5

    iget-object v0, p0, Lcom/kwai/filedownloader/download/ConnectTask;->d:Lcom/kwai/filedownloader/download/a;

    iget-wide v0, v0, Lcom/kwai/filedownloader/download/a;->b:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method c()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/kwai/filedownloader/download/ConnectTask;->g:Ljava/util/List;

    if-eqz v0, :cond_19

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/kwai/filedownloader/download/ConnectTask;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method public d()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/kwai/filedownloader/download/ConnectTask;->f:Ljava/util/Map;

    return-object v0
.end method

.method public e()Lcom/kwai/filedownloader/download/a;
    .registers 2

    iget-object v0, p0, Lcom/kwai/filedownloader/download/ConnectTask;->d:Lcom/kwai/filedownloader/download/a;

    return-object v0
.end method
