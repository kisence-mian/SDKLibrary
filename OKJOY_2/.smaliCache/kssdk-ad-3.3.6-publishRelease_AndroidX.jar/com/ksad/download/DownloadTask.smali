.class public Lcom/ksad/download/DownloadTask;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksad/download/DownloadTask$DownloadRequest;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x626e39a66abd7944L


# instance fields
.field private mAllowedNetworkTypes:I

.field protected transient mBaseDownloadTask:Lcom/kwai/filedownloader/a;

.field private mDestinationDir:Ljava/lang/String;

.field private mDestinationFileName:Ljava/lang/String;

.field private transient mDownloadListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ksad/download/c;",
            ">;"
        }
    .end annotation
.end field

.field private mIsCanceled:Z

.field private mNotificationVisibility:I

.field private mRequestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTag:Ljava/io/Serializable;

.field private mUrl:Ljava/lang/String;

.field private mUserPause:Z

.field private mWakeInstallApk:Z


# direct methods
.method public constructor <init>(Lcom/ksad/download/DownloadTask$DownloadRequest;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ksad/download/DownloadTask;->mDownloadListeners:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ksad/download/DownloadTask;->mIsCanceled:Z

    invoke-direct {p0, p1}, Lcom/ksad/download/DownloadTask;->initDownloadRequestParams(Lcom/ksad/download/DownloadTask$DownloadRequest;)V

    invoke-virtual {p0}, Lcom/ksad/download/DownloadTask;->instantiateDownloadTask()V

    invoke-direct {p0}, Lcom/ksad/download/DownloadTask;->initDownloadTaskParams()V

    return-void
.end method

.method static synthetic access$1000(Lcom/ksad/download/DownloadTask;Lcom/kwai/filedownloader/a;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/ksad/download/DownloadTask;->onPending(Lcom/kwai/filedownloader/a;II)V

    return-void
.end method

.method static synthetic access$1100(Lcom/ksad/download/DownloadTask;Lcom/kwai/filedownloader/a;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/ksad/download/DownloadTask;->onDownloading(Lcom/kwai/filedownloader/a;II)V

    return-void
.end method

.method static synthetic access$1200(Lcom/ksad/download/DownloadTask;Lcom/kwai/filedownloader/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ksad/download/DownloadTask;->onBlockCompleted(Lcom/kwai/filedownloader/a;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/ksad/download/DownloadTask;Lcom/kwai/filedownloader/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ksad/download/DownloadTask;->onCompleted(Lcom/kwai/filedownloader/a;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/ksad/download/DownloadTask;Lcom/kwai/filedownloader/a;II)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/ksad/download/DownloadTask;->onPause(Lcom/kwai/filedownloader/a;II)V

    return-void
.end method

.method static synthetic access$1500(Lcom/ksad/download/DownloadTask;Lcom/kwai/filedownloader/a;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ksad/download/DownloadTask;->onError(Lcom/kwai/filedownloader/a;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/ksad/download/DownloadTask;Lcom/kwai/filedownloader/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ksad/download/DownloadTask;->onWarn(Lcom/kwai/filedownloader/a;)V

    return-void
.end method

.method static synthetic access$800(Lcom/ksad/download/DownloadTask;Lcom/kwai/filedownloader/a;Ljava/lang/String;ZII)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/ksad/download/DownloadTask;->onConnected(Lcom/kwai/filedownloader/a;Ljava/lang/String;ZII)V

    return-void
.end method

.method static synthetic access$900(Lcom/ksad/download/DownloadTask;Lcom/kwai/filedownloader/a;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ksad/download/DownloadTask;->onStarted(Lcom/kwai/filedownloader/a;)V

    return-void
.end method

.method private initDownloadRequestParams(Lcom/ksad/download/DownloadTask$DownloadRequest;)V
    .registers 3

    # getter for: Lcom/ksad/download/DownloadTask$DownloadRequest;->mInstallAfterDownload:Z
    invoke-static {p1}, Lcom/ksad/download/DownloadTask$DownloadRequest;->access$000(Lcom/ksad/download/DownloadTask$DownloadRequest;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ksad/download/DownloadTask;->mWakeInstallApk:Z

    # getter for: Lcom/ksad/download/DownloadTask$DownloadRequest;->mDownloadUrl:Ljava/lang/String;
    invoke-static {p1}, Lcom/ksad/download/DownloadTask$DownloadRequest;->access$100(Lcom/ksad/download/DownloadTask$DownloadRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/download/DownloadTask;->mUrl:Ljava/lang/String;

    # getter for: Lcom/ksad/download/DownloadTask$DownloadRequest;->mAllowedNetworkTypes:I
    invoke-static {p1}, Lcom/ksad/download/DownloadTask$DownloadRequest;->access$200(Lcom/ksad/download/DownloadTask$DownloadRequest;)I

    move-result v0

    iput v0, p0, Lcom/ksad/download/DownloadTask;->mAllowedNetworkTypes:I

    # getter for: Lcom/ksad/download/DownloadTask$DownloadRequest;->mNotificationVisibility:I
    invoke-static {p1}, Lcom/ksad/download/DownloadTask$DownloadRequest;->access$300(Lcom/ksad/download/DownloadTask$DownloadRequest;)I

    move-result v0

    iput v0, p0, Lcom/ksad/download/DownloadTask;->mNotificationVisibility:I

    # getter for: Lcom/ksad/download/DownloadTask$DownloadRequest;->mDestinationDir:Ljava/lang/String;
    invoke-static {p1}, Lcom/ksad/download/DownloadTask$DownloadRequest;->access$400(Lcom/ksad/download/DownloadTask$DownloadRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/download/DownloadTask;->mDestinationDir:Ljava/lang/String;

    # getter for: Lcom/ksad/download/DownloadTask$DownloadRequest;->mDestinationFileName:Ljava/lang/String;
    invoke-static {p1}, Lcom/ksad/download/DownloadTask$DownloadRequest;->access$500(Lcom/ksad/download/DownloadTask$DownloadRequest;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/download/DownloadTask;->mDestinationFileName:Ljava/lang/String;

    # getter for: Lcom/ksad/download/DownloadTask$DownloadRequest;->mRequestHeaders:Ljava/util/Map;
    invoke-static {p1}, Lcom/ksad/download/DownloadTask$DownloadRequest;->access$600(Lcom/ksad/download/DownloadTask$DownloadRequest;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/download/DownloadTask;->mRequestHeaders:Ljava/util/Map;

    # getter for: Lcom/ksad/download/DownloadTask$DownloadRequest;->mTag:Ljava/io/Serializable;
    invoke-static {p1}, Lcom/ksad/download/DownloadTask$DownloadRequest;->access$700(Lcom/ksad/download/DownloadTask$DownloadRequest;)Ljava/io/Serializable;

    move-result-object p1

    iput-object p1, p0, Lcom/ksad/download/DownloadTask;->mTag:Ljava/io/Serializable;

    return-void
.end method

.method private initDownloadTaskParams()V
    .registers 5

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    iget-object v1, p0, Lcom/ksad/download/DownloadTask;->mTag:Ljava/io/Serializable;

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/a;->a(Ljava/lang/Object;)Lcom/kwai/filedownloader/a;

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    iget v1, p0, Lcom/ksad/download/DownloadTask;->mAllowedNetworkTypes:I

    xor-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_11

    const/4 v1, 0x1

    goto :goto_12

    :cond_11
    const/4 v1, 0x0

    :goto_12
    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/a;->b(Z)Lcom/kwai/filedownloader/a;

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mRequestHeaders:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget-object v2, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/kwai/filedownloader/a;->b(Ljava/lang/String;)Lcom/kwai/filedownloader/a;

    iget-object v2, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Lcom/kwai/filedownloader/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/kwai/filedownloader/a;

    goto :goto_1f

    :cond_48
    return-void
.end method

.method private notifyDownloadCompleted(Lcom/kwai/filedownloader/a;)V
    .registers 2

    iget p1, p0, Lcom/ksad/download/DownloadTask;->mNotificationVisibility:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_d

    invoke-static {}, Lcom/ksad/download/e;->a()Lcom/ksad/download/e;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ksad/download/e;->b(Lcom/ksad/download/DownloadTask;)V

    :cond_d
    return-void
.end method

.method private notifyDownloadPending(Lcom/kwai/filedownloader/a;)V
    .registers 2

    iget p1, p0, Lcom/ksad/download/DownloadTask;->mNotificationVisibility:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_d

    invoke-static {}, Lcom/ksad/download/e;->a()Lcom/ksad/download/e;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/ksad/download/e;->a(Lcom/ksad/download/DownloadTask;)V

    :cond_d
    return-void
.end method

.method private notifyDownloadProgress(Lcom/kwai/filedownloader/a;Z)V
    .registers 4

    invoke-interface {p1}, Lcom/kwai/filedownloader/a;->s()I

    move-result v0

    if-nez v0, :cond_d

    invoke-interface {p1}, Lcom/kwai/filedownloader/a;->q()I

    move-result v0

    if-nez v0, :cond_d

    return-void

    :cond_d
    invoke-interface {p1}, Lcom/kwai/filedownloader/a;->n()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_18

    return-void

    :cond_18
    iget p1, p0, Lcom/ksad/download/DownloadTask;->mNotificationVisibility:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_25

    invoke-static {}, Lcom/ksad/download/e;->a()Lcom/ksad/download/e;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/ksad/download/e;->a(Lcom/ksad/download/DownloadTask;Z)V

    :cond_25
    return-void
.end method

.method private onBlockCompleted(Lcom/kwai/filedownloader/a;)V
    .registers 3

    :try_start_0
    iget-object p1, p0, Lcom/ksad/download/DownloadTask;->mDownloadListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/download/c;

    invoke-virtual {v0, p0}, Lcom/ksad/download/c;->a(Lcom/ksad/download/DownloadTask;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_6

    :catch_16
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1a
    return-void
.end method

.method private onCanceled(Lcom/kwai/filedownloader/a;)V
    .registers 4

    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/ksad/download/DownloadTask;->mIsCanceled:Z

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksad/download/c;

    invoke-virtual {v1, p0}, Lcom/ksad/download/c;->e(Lcom/ksad/download/DownloadTask;)V

    goto :goto_9

    :cond_19
    invoke-interface {p1}, Lcom/kwai/filedownloader/a;->g()Z

    invoke-static {}, Lcom/ksad/download/e;->a()Lcom/ksad/download/e;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/ksad/download/e;->a(I)V

    invoke-static {}, Lcom/kwai/filedownloader/q;->a()Lcom/kwai/filedownloader/q;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ksad/download/DownloadTask;->getId()I

    move-result v0

    iget-object v1, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {v1}, Lcom/kwai/filedownloader/a;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/kwai/filedownloader/q;->a(ILjava/lang/String;)Z

    invoke-direct {p0}, Lcom/ksad/download/DownloadTask;->releaseDownloadTask()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3b} :catch_3c

    goto :goto_40

    :catch_3c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_40
    return-void
.end method

.method private onCompleted(Lcom/kwai/filedownloader/a;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksad/download/c;

    invoke-virtual {v1, p0}, Lcom/ksad/download/c;->b(Lcom/ksad/download/DownloadTask;)V

    goto :goto_6

    :cond_16
    invoke-direct {p0, p1}, Lcom/ksad/download/DownloadTask;->notifyDownloadCompleted(Lcom/kwai/filedownloader/a;)V

    iget-boolean p1, p0, Lcom/ksad/download/DownloadTask;->mWakeInstallApk:Z

    if-eqz p1, :cond_25

    invoke-direct {p0}, Lcom/ksad/download/DownloadTask;->wakeInstallApk()V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    goto :goto_25

    :catch_21
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_25
    :goto_25
    return-void
.end method

.method private onConnected(Lcom/kwai/filedownloader/a;Ljava/lang/String;ZII)V
    .registers 14

    int-to-long v0, p5

    :try_start_1
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/ksad/download/DownloadTask;->mDestinationDir:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/ksad/download/DownloadTask;->mDestinationDir:Ljava/lang/String;

    :goto_10
    invoke-static {v2}, Lcom/ksad/download/d/a;->a(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_23

    :cond_15
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_1e

    goto :goto_10

    :catch_1e
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-wide v2, v0

    :goto_23
    cmp-long v0, v2, v0

    if-gez v0, :cond_42

    new-instance p2, Landroid/content/Intent;

    sget-object p3, Lcom/kwad/sdk/core/download/a;->n:Ljava/lang/String;

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/kwai/filedownloader/a;->h()I

    move-result p3

    const-string p4, "download.intent.action.EXTRA_TASK_ID"

    invoke-virtual {p2, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {}, Lcom/ksad/download/b;->a()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-direct {p0, p1}, Lcom/ksad/download/DownloadTask;->onLowStorage(Lcom/kwai/filedownloader/a;)V

    return-void

    :cond_42
    :try_start_42
    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/ksad/download/c;

    move-object v3, p0

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/ksad/download/c;->a(Lcom/ksad/download/DownloadTask;Ljava/lang/String;ZII)V

    goto :goto_48

    :cond_5e
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/ksad/download/DownloadTask;->notifyDownloadProgress(Lcom/kwai/filedownloader/a;Z)V
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_62} :catch_63

    goto :goto_67

    :catch_63
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_67
    return-void
.end method

.method private onDownloading(Lcom/kwai/filedownloader/a;II)V
    .registers 5

    :try_start_0
    iget-object p1, p0, Lcom/ksad/download/DownloadTask;->mDownloadListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/download/c;

    invoke-virtual {v0, p0, p2, p3}, Lcom/ksad/download/c;->b(Lcom/ksad/download/DownloadTask;II)V

    goto :goto_6

    :cond_16
    iget-object p1, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/ksad/download/DownloadTask;->notifyDownloadProgress(Lcom/kwai/filedownloader/a;Z)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    goto :goto_21

    :catch_1d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_21
    return-void
.end method

.method private onError(Lcom/kwai/filedownloader/a;Ljava/lang/Throwable;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksad/download/c;

    invoke-virtual {v1, p0, p2}, Lcom/ksad/download/c;->a(Lcom/ksad/download/DownloadTask;Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_16
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/ksad/download/DownloadTask;->notifyDownloadProgress(Lcom/kwai/filedownloader/a;Z)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1f
    return-void
.end method

.method private onLowStorage(Lcom/kwai/filedownloader/a;)V
    .registers 3

    :try_start_0
    iget-object p1, p0, Lcom/ksad/download/DownloadTask;->mDownloadListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/download/c;

    invoke-virtual {v0, p0}, Lcom/ksad/download/c;->f(Lcom/ksad/download/DownloadTask;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_6

    :catch_16
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1a
    return-void
.end method

.method private onPause(Lcom/kwai/filedownloader/a;II)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksad/download/c;

    invoke-virtual {v1, p0, p2, p3}, Lcom/ksad/download/c;->c(Lcom/ksad/download/DownloadTask;II)V

    goto :goto_6

    :cond_16
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/ksad/download/DownloadTask;->notifyDownloadProgress(Lcom/kwai/filedownloader/a;Z)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1f
    return-void
.end method

.method private onPending(Lcom/kwai/filedownloader/a;II)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksad/download/c;

    invoke-virtual {v1, p0, p2, p3}, Lcom/ksad/download/c;->a(Lcom/ksad/download/DownloadTask;II)V

    goto :goto_6

    :cond_16
    invoke-direct {p0, p1}, Lcom/ksad/download/DownloadTask;->notifyDownloadPending(Lcom/kwai/filedownloader/a;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    goto :goto_1e

    :catch_1a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1e
    return-void
.end method

.method private onResume(Lcom/kwai/filedownloader/a;II)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ksad/download/c;

    invoke-virtual {v1, p0, p2, p3}, Lcom/ksad/download/c;->d(Lcom/ksad/download/DownloadTask;II)V

    goto :goto_6

    :cond_16
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/ksad/download/DownloadTask;->notifyDownloadProgress(Lcom/kwai/filedownloader/a;Z)V
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    goto :goto_1f

    :catch_1b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1f
    return-void
.end method

.method private onStarted(Lcom/kwai/filedownloader/a;)V
    .registers 3

    :try_start_0
    iget-object p1, p0, Lcom/ksad/download/DownloadTask;->mDownloadListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/download/c;

    invoke-virtual {v0, p0}, Lcom/ksad/download/c;->c(Lcom/ksad/download/DownloadTask;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_6

    :catch_16
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1a
    return-void
.end method

.method private onWarn(Lcom/kwai/filedownloader/a;)V
    .registers 3

    :try_start_0
    iget-object p1, p0, Lcom/ksad/download/DownloadTask;->mDownloadListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksad/download/c;

    invoke-virtual {v0, p0}, Lcom/ksad/download/c;->d(Lcom/ksad/download/DownloadTask;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_6

    :catch_16
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1a
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .registers 2

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/ksad/download/DownloadTask;->mDownloadListeners:Ljava/util/List;

    return-void
.end method

.method private releaseDownloadTask()V
    .registers 3

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/a;->a(Lcom/kwai/filedownloader/i;)Lcom/kwai/filedownloader/a;

    invoke-virtual {p0}, Lcom/ksad/download/DownloadTask;->clearListener()V

    return-void
.end method

.method private wakeInstallApk()V
    .registers 2

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ksad/download/b;->a(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/ksad/download/c;)V
    .registers 3

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_f
    return-void
.end method

.method cancel()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-direct {p0, v0}, Lcom/ksad/download/DownloadTask;->onCanceled(Lcom/kwai/filedownloader/a;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_a
    return-void
.end method

.method public clearListener()V
    .registers 2

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method downLoadProgress()I
    .registers 6

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->s()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    const/high16 v2, 0x42c80000    # 100.0f

    iget-object v4, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {v4}, Lcom/kwai/filedownloader/a;->q()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v2

    long-to-float v0, v0

    div-float/2addr v4, v0

    float-to-int v0, v4

    goto :goto_1d

    :cond_1c
    move v0, v3

    :goto_1d
    const/16 v1, 0x64

    if-ne v0, v1, :cond_33

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {v2}, Lcom/kwai/filedownloader/a;->o()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/ksad/download/d/a;->a(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_33

    goto :goto_34

    :cond_33
    move v3, v0

    :goto_34
    return v3
.end method

.method public getAllowedNetworkTypes()I
    .registers 2

    iget v0, p0, Lcom/ksad/download/DownloadTask;->mAllowedNetworkTypes:I

    return v0
.end method

.method public getDestinationDir()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mDestinationDir:Ljava/lang/String;

    return-object v0
.end method

.method public getFilename()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->n()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()I
    .registers 2

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->h()I

    move-result v0

    return v0
.end method

.method public getNotificationVisibility()I
    .registers 2

    iget v0, p0, Lcom/ksad/download/DownloadTask;->mNotificationVisibility:I

    return v0
.end method

.method public getPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->l()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmallFileSoFarBytes()I
    .registers 2

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->q()I

    move-result v0

    return v0
.end method

.method public getSmallFileTotalBytes()I
    .registers 2

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->s()I

    move-result v0

    return v0
.end method

.method public getSpeed()I
    .registers 2

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->u()I

    move-result v0

    return v0
.end method

.method public getStatus()I
    .registers 2

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->v()B

    move-result v0

    return v0
.end method

.method public getStatusUpdateTime()J
    .registers 3

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->w()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTag()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->z()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTargetFilePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method installApk()V
    .registers 2

    :try_start_0
    invoke-direct {p0}, Lcom/ksad/download/DownloadTask;->wakeInstallApk()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_8
    return-void
.end method

.method instantiateDownloadTask()V
    .registers 5

    invoke-static {}, Lcom/kwai/filedownloader/q;->a()Lcom/kwai/filedownloader/q;

    move-result-object v0

    iget-object v1, p0, Lcom/ksad/download/DownloadTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/kwai/filedownloader/q;->a(Ljava/lang/String;)Lcom/kwai/filedownloader/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/a;->a(Z)Lcom/kwai/filedownloader/a;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/a;->a(I)Lcom/kwai/filedownloader/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ksad/download/DownloadTask;->mDestinationFileName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/ksad/download/DownloadTask;->mDestinationDir:Ljava/lang/String;

    goto :goto_2c

    :cond_1f
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ksad/download/DownloadTask;->mDestinationDir:Ljava/lang/String;

    iget-object v3, p0, Lcom/ksad/download/DownloadTask;->mDestinationFileName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    :goto_2c
    iget-object v2, p0, Lcom/ksad/download/DownloadTask;->mDestinationFileName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/kwai/filedownloader/a;->a(Ljava/lang/String;Z)Lcom/kwai/filedownloader/a;

    move-result-object v0

    new-instance v1, Lcom/ksad/download/DownloadTask$1;

    invoke-direct {v1, p0}, Lcom/ksad/download/DownloadTask$1;-><init>(Lcom/ksad/download/DownloadTask;)V

    invoke-interface {v0, v1}, Lcom/kwai/filedownloader/a;->a(Lcom/kwai/filedownloader/i;)Lcom/kwai/filedownloader/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    return-void
.end method

.method public isCanceled()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ksad/download/DownloadTask;->mIsCanceled:Z

    return v0
.end method

.method public isCompleted()Z
    .registers 3

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->v()B

    move-result v0

    const/4 v1, -0x3

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isError()Z
    .registers 3

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->v()B

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isErrorBecauseWifiRequired()Z
    .registers 2

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->E()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lcom/ksad/download/DownloadTask;->isError()Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->y()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/kwai/filedownloader/exception/FileDownloadNetworkPolicyException;

    if-eqz v0, :cond_1a

    const/4 v0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x0

    :goto_1b
    return v0
.end method

.method public isInvalid()Z
    .registers 2

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->v()B

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public isPaused()Z
    .registers 3

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->v()B

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method public isRunning()Z
    .registers 2

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->c()Z

    move-result v0

    return v0
.end method

.method isUserPause()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ksad/download/DownloadTask;->mUserPause:Z

    return v0
.end method

.method pause()V
    .registers 3

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->f()Z

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/ksad/download/DownloadTask;->notifyDownloadProgress(Lcom/kwai/filedownloader/a;Z)V

    return-void
.end method

.method public removeListener(Lcom/ksad/download/c;)V
    .registers 3

    if-eqz p1, :cond_7

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mDownloadListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method resume(Lcom/ksad/download/DownloadTask$DownloadRequest;)V
    .registers 4

    invoke-static {}, Lcom/ksad/download/b;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ksad/download/d/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    if-eqz p1, :cond_13

    invoke-direct {p0, p1}, Lcom/ksad/download/DownloadTask;->initDownloadRequestParams(Lcom/ksad/download/DownloadTask$DownloadRequest;)V

    invoke-direct {p0}, Lcom/ksad/download/DownloadTask;->initDownloadTaskParams()V

    :cond_13
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ksad/download/DownloadTask;->mUserPause:Z

    iget-object p1, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {p1}, Lcom/kwai/filedownloader/a;->c()Z

    move-result p1

    if-nez p1, :cond_46

    :try_start_1e
    iget-object p1, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {p1}, Lcom/kwai/filedownloader/a;->v()B

    move-result p1

    invoke-static {p1}, Lcom/kwai/filedownloader/d/d;->a(I)Z

    move-result p1

    if-eqz p1, :cond_2f

    iget-object p1, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {p1}, Lcom/kwai/filedownloader/a;->b()Z

    :cond_2f
    invoke-virtual {p0}, Lcom/ksad/download/DownloadTask;->submit()V

    iget-object p1, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {p1}, Lcom/kwai/filedownloader/a;->q()I

    move-result v0

    iget-object v1, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {v1}, Lcom/kwai/filedownloader/a;->s()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/ksad/download/DownloadTask;->onResume(Lcom/kwai/filedownloader/a;II)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_46
    :goto_46
    return-void
.end method

.method public setAllowedNetworkTypes(I)V
    .registers 3

    iput p1, p0, Lcom/ksad/download/DownloadTask;->mAllowedNetworkTypes:I

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    xor-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    invoke-interface {v0, p1}, Lcom/kwai/filedownloader/a;->b(Z)Lcom/kwai/filedownloader/a;

    return-void
.end method

.method public submit()V
    .registers 2

    :try_start_0
    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->c()Z

    move-result v0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    invoke-interface {v0}, Lcom/kwai/filedownloader/a;->e()I
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    goto :goto_12

    :catchall_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_12
    :goto_12
    return-void
.end method

.method unwrap()Lcom/kwai/filedownloader/a;
    .registers 2

    iget-object v0, p0, Lcom/ksad/download/DownloadTask;->mBaseDownloadTask:Lcom/kwai/filedownloader/a;

    return-object v0
.end method

.method userPause()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ksad/download/DownloadTask;->mUserPause:Z

    invoke-virtual {p0}, Lcom/ksad/download/DownloadTask;->pause()V

    return-void
.end method
