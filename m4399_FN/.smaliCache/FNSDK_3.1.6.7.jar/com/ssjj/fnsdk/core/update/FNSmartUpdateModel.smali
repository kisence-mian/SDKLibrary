.class public Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;
.super Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;,
        Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;
    }
.end annotation


# static fields
.field private static final c:Ljava/util/concurrent/Executor;


# instance fields
.field private d:J

.field private e:J

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ssjj/fnsdk/core/update/PatchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->c:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;-><init>(I)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->d:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->g:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;)J
    .registers 3

    iget-wide v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->e:J

    return-wide v0
.end method

.method private a(Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/ssjj/fnsdk/core/update/PatchInfo;",
            ">;)V"
        }
    .end annotation

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_9
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_41

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_16

    return-void

    :cond_16
    new-instance p2, Ljava/io/File;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p2

    new-instance v1, Lcom/ssjj/fnsdk/core/update/s;

    invoke-direct {v1, p0, p1}, Lcom/ssjj/fnsdk/core/update/s;-><init>(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;Ljava/util/List;)V

    invoke-virtual {p2, v1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_40

    array-length p2, p1

    if-lez p2, :cond_40

    array-length p2, p1

    :goto_35
    if-lt v0, p2, :cond_38

    goto :goto_40

    :cond_38
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :cond_40
    :goto_40
    return-void

    :cond_41
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ssjj/fnsdk/core/update/PatchInfo;

    iget-object v1, v0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchSavePath:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->apkSavePath:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;J)V
    .registers 3

    iput-wide p1, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->d:J

    return-void
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->f:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;)J
    .registers 3

    iget-wide v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->d:J

    return-wide v0
.end method


# virtual methods
.method public clearDownload()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_15

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->h:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->b:Z

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v1, v2}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->cancel(Z)Z

    goto :goto_6
.end method

.method public getSpendTime(Landroid/content/Context;)J
    .registers 4

    iget-wide v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->d:J

    return-wide v0
.end method

.method public isDownloading()Z
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x0

    return v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;

    if-eqz v1, :cond_6

    iget-boolean v1, v1, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->b:Z

    if-nez v1, :cond_6

    const/4 v0, 0x1

    return v0
.end method

.method public startDownload(Landroid/content/Context;Lcom/ssjj/fnsdk/core/update/FNDownloadItem;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 7

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->clearDownload()V

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->h()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->a(Landroid/content/Context;Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->getTotalSize()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->e:J

    new-instance p2, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;

    invoke-direct {p2, p0, p1, v0, p3}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;-><init>(Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;Landroid/content/Context;Ljava/util/List;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->h:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_22

    return-void

    :cond_22
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/ssjj/fnsdk/core/update/PatchInfo;

    new-instance v0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->h:Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;

    invoke-direct {v0, p1, p3, v1}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;-><init>(Landroid/content/Context;Lcom/ssjj/fnsdk/core/update/PatchInfo;Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$a;)V

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->g:Ljava/util/List;

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p3, 0x0

    :try_start_35
    sget-object v1, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->c:Ljava/util/concurrent/Executor;

    new-array v2, p3, [Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3c} :catch_3d

    goto :goto_1b

    :catch_3d
    move-exception v1

    new-array p3, p3, [Ljava/lang/String;

    invoke-virtual {v0, p3}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1b
.end method

.method public stopDownload()V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    return-void

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;

    if-eqz v1, :cond_6

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel$b;->b:Z

    goto :goto_6
.end method
