.class public Lcom/kwad/sdk/core/h/b;
.super Ljava/lang/Object;


# static fields
.field static volatile a:Z

.field static volatile b:Z

.field static volatile c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/kwad/sdk/core/h/c;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile d:Lcom/kwad/sdk/core/h/b;

.field private static volatile e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const v0, 0x32000

    sput v0, Lcom/kwad/sdk/core/h/b;->e:I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/kwad/sdk/core/h/b;->a:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/kwad/sdk/core/h/b;->b:Z

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/core/h/b;->c:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/kwad/sdk/core/h/b;
    .registers 2

    sget-object v0, Lcom/kwad/sdk/core/h/b;->d:Lcom/kwad/sdk/core/h/b;

    if-nez v0, :cond_17

    const-class v0, Lcom/kwad/sdk/core/h/b;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/kwad/sdk/core/h/b;->d:Lcom/kwad/sdk/core/h/b;

    if-nez v1, :cond_12

    new-instance v1, Lcom/kwad/sdk/core/h/b;

    invoke-direct {v1}, Lcom/kwad/sdk/core/h/b;-><init>()V

    sput-object v1, Lcom/kwad/sdk/core/h/b;->d:Lcom/kwad/sdk/core/h/b;

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
    sget-object v0, Lcom/kwad/sdk/core/h/b;->d:Lcom/kwad/sdk/core/h/b;

    return-object v0
.end method

.method public static declared-synchronized a(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 4

    const-class v0, Lcom/kwad/sdk/core/h/b;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/kwad/sdk/core/h/b;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    sget v2, Lcom/kwad/sdk/core/h/b;->e:I

    add-int/lit8 v1, v1, 0x1

    div-int/2addr v2, v1

    new-instance v1, Lcom/kwad/sdk/core/h/c;

    invoke-direct {v1, p0, v2}, Lcom/kwad/sdk/core/h/c;-><init>(Ljava/io/InputStream;I)V

    sget-object p0, Lcom/kwad/sdk/core/h/b;->c:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_1a

    monitor-exit v0

    return-object v1

    :catchall_1a
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Lcom/kwad/sdk/core/h/c;)V
    .registers 3

    const-class v0, Lcom/kwad/sdk/core/h/b;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/kwad/sdk/core/h/b;->c:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    sget-object v1, Lcom/kwad/sdk/core/h/b;->c:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit v0

    return-void

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a(ZI)V
    .registers 3

    if-lez p2, :cond_6

    mul-int/lit16 p2, p2, 0x400

    sput p2, Lcom/kwad/sdk/core/h/b;->e:I

    :cond_6
    sput-boolean p1, Lcom/kwad/sdk/core/h/b;->a:Z

    return-void
.end method

.method public b(Ljava/io/InputStream;)Ljava/io/InputStream;
    .registers 2

    invoke-static {p1}, Lcom/kwad/sdk/core/h/b;->a(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .registers 2

    sget-boolean v0, Lcom/kwad/sdk/core/h/b;->a:Z

    return v0
.end method

.method public c()I
    .registers 2

    sget v0, Lcom/kwad/sdk/core/h/b;->e:I

    div-int/lit16 v0, v0, 0x400

    return v0
.end method

.method public declared-synchronized d()I
    .registers 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    sget-object v1, Lcom/kwad/sdk/core/h/b;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/kwad/sdk/core/h/c;

    invoke-virtual {v2}, Lcom/kwad/sdk/core/h/c;->a()J

    move-result-wide v2
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_1d

    long-to-int v2, v2

    add-int/2addr v0, v2

    goto :goto_8

    :cond_1b
    monitor-exit p0

    return v0

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method
