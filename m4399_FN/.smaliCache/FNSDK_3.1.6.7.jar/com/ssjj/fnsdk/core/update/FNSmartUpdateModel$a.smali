.class Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;

.field private final b:I

.field private c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

.field private e:Landroid/content/Context;

.field private f:J


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;Landroid/content/Context;Ljava/util/List;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/ssjj/fnsdk/core/update/PatchInfo;",
            ">;",
            "Lcom/ssjj/fnsdk/core/SsjjFNListener;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->e:Landroid/content/Context;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->b:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {p0, p3}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->a(Ljava/util/List;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->f:J

    return-void
.end method

.method private a(Ljava/util/List;)J
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ssjj/fnsdk/core/update/PatchInfo;",
            ">;)J"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_d

    return-wide v0

    :cond_d
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ssjj/fnsdk/core/update/PatchInfo;

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->getDownloadSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    goto :goto_6
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;)Lcom/ssjj/fnsdk/core/SsjjFNListener;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    return-object p0
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;)Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;

    return-object p0
.end method

.method private b()V
    .registers 5

    iget-wide v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->f:J

    long-to-float v0, v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->a(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;)J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    new-instance v1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;

    iget v3, v3, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "updatetype"

    invoke-virtual {v1, v3, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "progress"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->putObj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-wide v2, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "cursize"

    invoke-virtual {v1, v2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->putObj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->a(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v2, "totalsize"

    invoke-virtual {v1, v2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->putObj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const/4 v2, 0x4

    const-string v3, ""

    invoke-interface {v0, v2, v3, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void
.end method

.method private c()V
    .registers 6

    invoke-static {}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->getInstance()Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->e:Landroid/content/Context;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->b(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;

    iget-boolean v3, v3, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->b:Z

    new-instance v4, Lcom/ssjj/fnsdk/core/update/t;

    invoke-direct {v4, p0}, Lcom/ssjj/fnsdk/core/update/t;-><init>(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->a(Landroid/content/Context;Ljava/util/List;ZLcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr$PatchListener;)V

    return-void
.end method


# virtual methods
.method declared-synchronized a()V
    .registers 5

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const-string v1, "updatetype"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;

    iget v3, v3, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const-string v2, ""

    const/4 v3, 0x5

    invoke-interface {v1, v3, v2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    monitor-exit p0

    return-void

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized a(J)V
    .registers 5

    monitor-enter p0

    :try_start_1
    iget-wide v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->f:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->f:J

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->b()V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(Lcom/ssjj/fnsdk/core/update/PatchInfo;J)V
    .registers 6

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->b(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->b(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_16
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->c(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;)J

    move-result-wide v0

    add-long/2addr v0, p2

    invoke-static {p1, v0, v1}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->a(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;J)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    iget p2, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->b:I

    if-ne p1, p2, :cond_41

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->a(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->f:J

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->b()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->b(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->c()V
    :try_end_41
    .catchall {:try_start_1 .. :try_end_41} :catchall_43

    :cond_41
    monitor-exit p0

    return-void

    :catchall_43
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized a(Lcom/ssjj/fnsdk/core/update/PatchInfo;Ljava/lang/String;)V
    .registers 7

    monitor-enter p0

    :try_start_1
    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const-string v1, "updatetype"

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->a:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;

    iget v3, v3, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "downurl"

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x7

    invoke-interface {p1, v1, p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    :try_end_36
    .catchall {:try_start_1 .. :try_end_36} :catchall_38

    monitor-exit p0

    return-void

    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method
