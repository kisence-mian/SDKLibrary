.class public Lcom/kwad/sdk/utils/b;
.super Ljava/lang/Object;


# static fields
.field private static volatile e:Lcom/kwad/sdk/utils/b;


# instance fields
.field private a:Lcom/kwad/sdk/utils/g;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/kwad/sdk/utils/g$a;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Z


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/utils/b;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/utils/b;->c:Z

    iput-boolean v0, p0, Lcom/kwad/sdk/utils/b;->d:Z

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/kwad/sdk/utils/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method public static a()Lcom/kwad/sdk/utils/b;
    .registers 2

    sget-object v0, Lcom/kwad/sdk/utils/b;->e:Lcom/kwad/sdk/utils/b;

    if-nez v0, :cond_17

    const-class v0, Lcom/kwad/sdk/utils/b;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/kwad/sdk/utils/b;->e:Lcom/kwad/sdk/utils/b;

    if-nez v1, :cond_12

    new-instance v1, Lcom/kwad/sdk/utils/b;

    invoke-direct {v1}, Lcom/kwad/sdk/utils/b;-><init>()V

    sput-object v1, Lcom/kwad/sdk/utils/b;->e:Lcom/kwad/sdk/utils/b;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/kwad/sdk/utils/b;->e:Lcom/kwad/sdk/utils/b;

    return-object v0
.end method

.method static synthetic a(Lcom/kwad/sdk/utils/b;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/utils/b;->b:Ljava/util/List;

    return-object p0
.end method

.method private a(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/utils/b;->c:Z

    new-instance v0, Lcom/kwad/sdk/utils/g;

    invoke-direct {v0, p1}, Lcom/kwad/sdk/utils/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/kwad/sdk/utils/b;->a:Lcom/kwad/sdk/utils/g;

    new-instance p1, Lcom/kwad/sdk/utils/b$1;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/utils/b$1;-><init>(Lcom/kwad/sdk/utils/b;)V

    invoke-virtual {v0, p1}, Lcom/kwad/sdk/utils/g;->a(Lcom/kwad/sdk/utils/g$a;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/utils/b;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/utils/b;->d:Z

    return p1
.end method


# virtual methods
.method public a(Lcom/kwad/sdk/utils/g$a;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/utils/b;->b:Ljava/util/List;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Z)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/utils/b;->a:Lcom/kwad/sdk/utils/g;

    if-nez v0, :cond_5

    return-void

    :cond_5
    if-nez p1, :cond_c

    iget-boolean p1, p0, Lcom/kwad/sdk/utils/b;->c:Z

    if-eqz p1, :cond_c

    return-void

    :cond_c
    invoke-virtual {v0}, Lcom/kwad/sdk/utils/g;->a()Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kwad/sdk/utils/b;->c:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/kwad/sdk/utils/b;->d:Z

    return-void
.end method

.method public b(Lcom/kwad/sdk/utils/g$a;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/utils/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_6

    :cond_1a
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_6

    :cond_1e
    return-void
.end method

.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/utils/b;->d:Z

    return v0
.end method
