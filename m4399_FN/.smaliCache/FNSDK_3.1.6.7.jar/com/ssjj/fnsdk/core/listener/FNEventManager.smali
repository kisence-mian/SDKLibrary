.class public Lcom/ssjj/fnsdk/core/listener/FNEventManager;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/ssjj/fnsdk/core/listener/FNEventManager;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ssjj/fnsdk/core/listener/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->a:Ljava/util/List;

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/ssjj/fnsdk/core/listener/a;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_13

    return-object v0

    :cond_13
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ssjj/fnsdk/core/listener/a;

    invoke-virtual {v2, p1}, Lcom/ssjj/fnsdk/core/listener/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c
.end method

.method public static getInstance()Lcom/ssjj/fnsdk/core/listener/FNEventManager;
    .registers 2

    sget-object v0, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->b:Lcom/ssjj/fnsdk/core/listener/FNEventManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/ssjj/fnsdk/core/listener/FNEventManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->b:Lcom/ssjj/fnsdk/core/listener/FNEventManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/ssjj/fnsdk/core/listener/FNEventManager;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;-><init>()V

    sput-object v1, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->b:Lcom/ssjj/fnsdk/core/listener/FNEventManager;

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
    sget-object v0, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->b:Lcom/ssjj/fnsdk/core/listener/FNEventManager;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notifyAllInternal, eventName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->hasObserver()Z

    move-result v0

    if-nez v0, :cond_23

    return-void

    :cond_23
    if-nez p3, :cond_2a

    new-instance p3, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p3}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    :cond_2a
    const-string v0, "eventName"

    invoke-virtual {p3, v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "eventState"

    invoke-virtual {p3, v0, p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->notifyAll(Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void
.end method

.method public addObserver([Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    :cond_3
    if-eqz p1, :cond_1a

    array-length v0, p1

    if-nez v0, :cond_9

    goto :goto_1a

    :cond_9
    new-instance v0, Lcom/ssjj/fnsdk/core/listener/a;

    invoke-direct {v0, p2}, Lcom/ssjj/fnsdk/core/listener/a;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/listener/a;->a(Ljava/util/Collection;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a
    :goto_1a
    return-void
.end method

.method public hasObserver()Z
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->a:Ljava/util/List;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public init()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->a:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_7
    return-void
.end method

.method public notifyAll(Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->notifyAll(Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void
.end method

.method public notifyAll(Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 5

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->hasObserver()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-nez p2, :cond_e

    new-instance p2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    :cond_e
    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1d

    return-void

    :cond_1d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/listener/a;

    invoke-virtual {v1, p1, p2}, Lcom/ssjj/fnsdk/core/listener/a;->a(Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_16
.end method

.method public removeObserver(Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 p1, 0x0

    return p1

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/listener/a;

    if-eqz v1, :cond_6

    invoke-virtual {v1, p1}, Lcom/ssjj/fnsdk/core/listener/a;->a(Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->a:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
