.class public Lcom/kwad/sdk/crash/b/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/crash/b/b;->a:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/crash/b/b;->b:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public declared-synchronized a([Ljava/lang/String;[Ljava/lang/String;)V
    .registers 8

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_1d

    :try_start_4
    array-length v1, p1

    if-lez v1, :cond_1d

    array-length v1, p1

    move v2, v0

    :goto_9
    if-ge v2, v1, :cond_1d

    aget-object v3, p1, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_18

    iget-object v4, p0, Lcom/kwad/sdk/crash/b/b;->a:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :catchall_1b
    move-exception p1

    goto :goto_35

    :cond_1d
    if-eqz p2, :cond_37

    array-length p1, p2

    if-lez p1, :cond_37

    array-length p1, p2

    :goto_23
    if-ge v0, p1, :cond_37

    aget-object v1, p2, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_32

    iget-object v2, p0, Lcom/kwad/sdk/crash/b/b;->b:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catchall {:try_start_4 .. :try_end_32} :catchall_1b

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_23

    :goto_35
    monitor-exit p0

    throw p1

    :cond_37
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized a()[Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kwad/sdk/crash/b/b;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()[Ljava/lang/String;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/kwad/sdk/crash/b/b;->b:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object v0

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0
.end method
