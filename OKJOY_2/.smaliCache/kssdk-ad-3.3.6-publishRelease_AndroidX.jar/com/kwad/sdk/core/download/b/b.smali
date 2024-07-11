.class public Lcom/kwad/sdk/core/download/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/download/d;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field private c:Lcom/kwad/sdk/core/response/model/AdInfo;

.field private d:Lorg/json/JSONObject;

.field private e:J

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/kwad/sdk/api/KsAppDownloadListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/kwad/sdk/core/download/b/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/api/KsAppDownloadListener;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/kwad/sdk/core/download/b/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/kwad/sdk/core/download/b/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/api/KsAppDownloadListener;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->a:Landroid/os/Handler;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->i:Ljava/util/HashSet;

    iput-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iput-object p2, p0, Lcom/kwad/sdk/core/download/b/b;->d:Lorg/json/JSONObject;

    if-eqz p3, :cond_24

    invoke-virtual {p0, p3}, Lcom/kwad/sdk/core/download/b/b;->a(Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    :cond_24
    invoke-static {}, Lcom/kwad/sdk/core/download/DownloadStatusManager;->a()Lcom/kwad/sdk/core/download/DownloadStatusManager;

    move-result-object p1

    iget-object p2, p0, Lcom/kwad/sdk/core/download/b/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {p1, p0, p2}, Lcom/kwad/sdk/core/download/DownloadStatusManager;->a(Lcom/kwad/sdk/core/download/d;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-static {}, Lcom/kwad/sdk/core/download/DownloadStatusManager;->a()Lcom/kwad/sdk/core/download/DownloadStatusManager;

    move-result-object p1

    iget-object p2, p0, Lcom/kwad/sdk/core/download/b/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {p1, p2}, Lcom/kwad/sdk/core/download/DownloadStatusManager;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadSafeInfo:Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;

    iget-boolean p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$DownloadSafeInfo;->downloadPauseEnable:Z

    iput-boolean p1, p0, Lcom/kwad/sdk/core/download/b/b;->h:Z

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/download/b/b;)Lcom/kwad/sdk/core/response/model/AdTemplate;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/download/b/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    return-object p0
.end method

.method static synthetic a(Lcom/kwad/sdk/core/download/b/b;Lcom/kwad/sdk/api/KsAppDownloadListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/download/b/b;->d(Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    return-void
.end method

.method public static a(Lcom/kwad/sdk/core/download/b/b;Z)V
    .registers 2

    if-eqz p0, :cond_5

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/download/b/b;->a(Z)V

    :cond_5
    return-void
.end method

.method private a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/core/download/b/b;->g:Z

    return-void
.end method

.method static synthetic b(Lcom/kwad/sdk/core/download/b/b;)Ljava/util/HashSet;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/core/download/b/b;->i:Ljava/util/HashSet;

    return-object p0
.end method

.method private b(Landroid/content/Context;)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adConversionInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;->marketUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Market URL Schema="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApkDownloadHelper"

    invoke-static {v2, v1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v2, v2, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v2, v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appPackageName:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/kwad/sdk/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    :goto_38
    if-eqz v0, :cond_40

    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/report/b;->j(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    goto :goto_4a

    :cond_40
    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/download/b/b;->c(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_47

    return-void

    :cond_47
    invoke-direct {p0}, Lcom/kwad/sdk/core/download/b/b;->j()V

    :goto_4a
    return-void
.end method

.method private c(Landroid/content/Context;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    invoke-static {}, Lcom/kwad/sdk/core/download/a/b;->a()Z

    move-result v1

    if-nez v1, :cond_21

    iget-object v1, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object v2, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->PAUSED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-eq v1, v2, :cond_21

    iget-object v1, p0, Lcom/kwad/sdk/core/download/b/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1, v1}, Lcom/kwad/sdk/core/download/a/b;->b(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/download/a/b;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)Z

    move-result p1

    return p1

    :cond_21
    return v0
.end method

.method private d(Lcom/kwad/sdk/api/KsAppDownloadListener;)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->progress:I

    sget-object v1, Lcom/kwad/sdk/core/download/b/b$5;->a:[I

    iget-object v2, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v2, v2, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    invoke-virtual {v2}, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_4a

    goto :goto_48

    :pswitch_14
    invoke-interface {p1}, Lcom/kwad/sdk/api/KsAppDownloadListener;->onInstalled()V

    goto :goto_48

    :pswitch_18
    invoke-interface {p1}, Lcom/kwad/sdk/api/KsAppDownloadListener;->onDownloadFinished()V

    goto :goto_48

    :pswitch_1c
    invoke-interface {p1}, Lcom/kwad/sdk/api/KsAppDownloadListener;->onDownloadFailed()V

    goto :goto_48

    :pswitch_20
    instance-of v1, p1, Lcom/kwad/sdk/core/download/b/c;

    if-eqz v1, :cond_48

    check-cast p1, Lcom/kwad/sdk/core/download/b/c;

    invoke-virtual {p1, v0}, Lcom/kwad/sdk/core/download/b/c;->a(I)V

    goto :goto_48

    :pswitch_2a
    invoke-interface {p1, v0}, Lcom/kwad/sdk/api/KsAppDownloadListener;->onProgressUpdate(I)V

    goto :goto_48

    :pswitch_2e
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/kwad/sdk/api/KsAppDownloadListener;->onProgressUpdate(I)V

    instance-of v0, p1, Lcom/kwad/sdk/core/download/b/c;

    if-eqz v0, :cond_3c

    check-cast p1, Lcom/kwad/sdk/core/download/b/c;

    invoke-virtual {p1}, Lcom/kwad/sdk/core/download/b/c;->onDownloadStarted()V

    goto :goto_48

    :cond_3c
    :try_start_3c
    invoke-interface {p1}, Lcom/kwad/sdk/api/KsAppDownloadListener;->onDownloadStarted()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_48

    :catchall_40
    move-exception p1

    invoke-static {p1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/Throwable;)V

    goto :goto_48

    :pswitch_45
    invoke-interface {p1}, Lcom/kwad/sdk/api/KsAppDownloadListener;->onIdle()V

    :cond_48
    :goto_48
    return-void

    nop

    :pswitch_data_4a
    .packed-switch 0x1
        :pswitch_45
        :pswitch_2e
        :pswitch_2a
        :pswitch_2a
        :pswitch_20
        :pswitch_1c
        :pswitch_18
        :pswitch_18
        :pswitch_14
    .end packed-switch
.end method

.method private g()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/kwad/sdk/core/download/b/b$3;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/download/b/b$3;-><init>(Lcom/kwad/sdk/core/download/b/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private h()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appPackageName:Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_11

    return-void

    :cond_11
    invoke-static {v1, v0}, Lcom/kwad/sdk/utils/u;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->INSTALL_FINSHED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    return-void

    :cond_1e
    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->INSTALL_FINSHED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_31

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->UNKNOWN:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iput v2, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->progress:I

    :cond_31
    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->FINISHED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-ne v0, v1, :cond_58

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4e

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_58

    :cond_4e
    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->UNKNOWN:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iput v2, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->progress:I

    :cond_58
    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->UNKNOWN:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-ne v0, v1, :cond_8f

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getProxyForDownload()Lcom/kwad/sdk/export/proxy/AdDownloadProxy;

    move-result-object v0

    if-eqz v0, :cond_8f

    iget-object v1, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/download/DownloadParams;->transfrom(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/download/DownloadParams;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kwad/sdk/export/proxy/AdDownloadProxy;->getDownloadFilePath(Lcom/kwad/sdk/core/download/DownloadParams;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8f

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_8f

    iget-object v1, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iput-object v0, v1, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadFilePath:Ljava/lang/String;

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->FINISHED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    :cond_8f
    return-void
.end method

.method private i()Z
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adConversionInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;->marketUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMarKet URL Schema="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApkDownloadHelper"

    invoke-static {v2, v1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_37

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v2, v2, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v2, v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appPackageName:Ljava/lang/String;

    invoke-static {v1, v0, v2}, Lcom/kwad/sdk/utils/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    :goto_38
    if-eqz v0, :cond_3f

    iget-object v1, p0, Lcom/kwad/sdk/core/download/b/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v1}, Lcom/kwad/sdk/core/report/b;->j(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    :cond_3f
    return v0
.end method

.method private j()V
    .registers 3

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-static {v0}, Lcom/ksad/download/d/b;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v0, "ApkDownloadHelper"

    const-string v1, "no network while download app"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_19
    iget-object v1, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/download/e;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdInfo;)V

    return-void
.end method

.method private k()V
    .registers 3

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    iget-object v1, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/download/e;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadId:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput p1, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->downloadSource:I

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .registers 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/kwad/sdk/core/download/b/b;->f:Z

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/b/b;->h()V

    sget-object v1, Lcom/kwad/sdk/core/download/b/b$5;->a:[I

    iget-object v2, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v2, v2, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    invoke-virtual {v2}, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_30

    goto :goto_2d

    :pswitch_16
    invoke-virtual {p0}, Lcom/kwad/sdk/core/download/b/b;->d()V

    goto :goto_2d

    :pswitch_1a
    invoke-virtual {p0}, Lcom/kwad/sdk/core/download/b/b;->e()V

    goto :goto_2d

    :pswitch_1e
    iget-boolean p1, p0, Lcom/kwad/sdk/core/download/b/b;->g:Z

    if-eqz p1, :cond_2d

    iget-boolean p1, p0, Lcom/kwad/sdk/core/download/b/b;->h:Z

    if-eqz p1, :cond_2d

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/b/b;->k()V

    goto :goto_2d

    :pswitch_2a
    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/download/b/b;->b(Landroid/content/Context;)V

    :cond_2d
    :goto_2d
    iput-boolean v0, p0, Lcom/kwad/sdk/core/download/b/b;->g:Z

    return-void

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_2a
        :pswitch_1e
        :pswitch_1e
        :pswitch_2a
        :pswitch_2a
        :pswitch_1a
        :pswitch_1a
        :pswitch_16
        :pswitch_1a
        :pswitch_2a
        :pswitch_2a
    .end packed-switch
.end method

.method public a(Lcom/kwad/sdk/api/KsAppDownloadListener;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->i:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/b/b;->h()V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/download/b/b;->d(Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    sget-object v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->INSTALLING:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/b/b;->g()V

    return-void
.end method

.method public a(Ljava/lang/String;III)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    sget-object v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->PROGRESS:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iput p2, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->progress:I

    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    int-to-long p2, p3

    iput-wide p2, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->soFarBytes:J

    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    int-to-long p2, p4

    iput-wide p2, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->totalBytes:J

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/b/b;->g()V

    return-void
.end method

.method public a(Ljava/lang/String;ILcom/kwad/sdk/core/download/f;)V
    .registers 4

    invoke-virtual {p3}, Lcom/kwad/sdk/core/download/f;->b()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/report/b;->d(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-virtual {p3}, Lcom/kwad/sdk/core/download/f;->a()V

    :cond_e
    new-instance p1, Lcom/kwad/sdk/core/download/b/b$2;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/core/download/b/b$2;-><init>(Lcom/kwad/sdk/core/download/b/b;)V

    invoke-static {p1}, Lcom/kwad/sdk/utils/f;->a(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/c;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object p1

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadId:Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/core/a;->a()Lcom/kwad/sdk/core/a;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/kwad/sdk/core/a;->d(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    sget-object p2, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->INSTALL_FINSHED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object p2, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/b/b;->g()V

    return-void
.end method

.method public a(Ljava/lang/String;ILjava/lang/String;Lcom/kwad/sdk/core/download/f;)V
    .registers 6

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    sget-object v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->FAILED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/b/b;->g()V

    invoke-virtual {p4}, Lcom/kwad/sdk/core/download/f;->b()Z

    move-result p1

    if-eqz p1, :cond_3a

    new-instance p1, Lcom/kwad/sdk/core/report/b$a;

    invoke-direct {p1, p2, p3}, Lcom/kwad/sdk/core/report/b$a;-><init>(ILjava/lang/String;)V

    iget-object p2, p0, Lcom/kwad/sdk/core/download/b/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p2, p1}, Lcom/kwad/sdk/core/report/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/core/report/b$a;)V

    iget-object p2, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object p2, p2, Lcom/kwad/sdk/core/response/model/AdInfo;->adConversionInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    iget-object p2, p2, Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;->appDownloadUrl:Ljava/lang/String;

    iget-object p3, p0, Lcom/kwad/sdk/core/download/b/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-virtual {p1}, Lcom/kwad/sdk/core/report/b$a;->toJson()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p2, p1}, Lcom/kwad/sdk/core/report/e;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/kwad/sdk/core/download/f;->a()V

    :cond_3a
    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->adConversionInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    iget p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;->retryH5TimeStep:I

    if-lez p1, :cond_74

    iget-boolean p1, p0, Lcom/kwad/sdk/core/download/b/b;->f:Z

    if-nez p1, :cond_74

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide p3, p0, Lcom/kwad/sdk/core/download/b/b;->e:J

    sub-long/2addr p1, p3

    iget-object p3, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object p3, p3, Lcom/kwad/sdk/core/response/model/AdInfo;->adConversionInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    iget p3, p3, Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;->retryH5TimeStep:I

    int-to-long p3, p3

    cmp-long p1, p1, p3

    if-gez p1, :cond_74

    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {p1}, Lcom/kwad/sdk/core/response/b/a;->w(Lcom/kwad/sdk/core/response/model/AdInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_74

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/kwad/sdk/core/download/b/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/page/AdWebViewActivityProxy;->launch(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/kwad/sdk/core/download/b/b;->f:Z

    :cond_74
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/kwad/sdk/core/download/f;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->START:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-eq p1, v0, :cond_27

    invoke-virtual {p2}, Lcom/kwad/sdk/core/download/f;->b()Z

    move-result p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/report/b;->b(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-virtual {p2}, Lcom/kwad/sdk/core/download/f;->a()V

    :cond_21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/kwad/sdk/core/download/b/b;->e:J

    :cond_27
    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    sget-object p2, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->START:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object p2, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/b/b;->g()V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/kwad/sdk/core/download/f;)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iput-object p2, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadFilePath:Ljava/lang/String;

    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    const/16 p2, 0x64

    iput p2, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->progress:I

    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object p2, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->FINISHED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-eq p1, p2, :cond_40

    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-boolean p1, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mDownloadFinishReported:Z

    if-nez p1, :cond_40

    new-instance p1, Lcom/kwad/sdk/core/download/b/b$1;

    invoke-direct {p1, p0}, Lcom/kwad/sdk/core/download/b/b$1;-><init>(Lcom/kwad/sdk/core/download/b/b;)V

    invoke-static {p1}, Lcom/kwad/sdk/utils/f;->a(Ljava/lang/Runnable;)V

    invoke-virtual {p3}, Lcom/kwad/sdk/core/download/f;->b()Z

    move-result p1

    if-eqz p1, :cond_3b

    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object p2, p0, Lcom/kwad/sdk/core/download/b/b;->d:Lorg/json/JSONObject;

    invoke-static {p1, p2}, Lcom/kwad/sdk/core/report/b;->e(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    invoke-virtual {p3}, Lcom/kwad/sdk/core/download/f;->a()V

    :cond_3b
    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/4 p2, 0x1

    iput-boolean p2, p1, Lcom/kwad/sdk/core/response/model/AdTemplate;->mDownloadFinishReported:Z

    :cond_40
    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    sget-object p2, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->FINISHED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object p2, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/b/b;->g()V

    invoke-static {}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->a()Lcom/kwad/sdk/core/diskcache/ApkCacheManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->b()V

    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lcom/kwad/sdk/api/KsAppDownloadListener;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->i:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    sget-object v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->INSTALL_FAILED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object v0, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/b/b;->g()V

    return-void
.end method

.method public b(Ljava/lang/String;Lcom/kwad/sdk/core/download/f;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->PAUSED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-eq p1, v0, :cond_23

    invoke-virtual {p2}, Lcom/kwad/sdk/core/download/f;->b()Z

    move-result p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->d:Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/report/b;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    invoke-virtual {p2}, Lcom/kwad/sdk/core/download/f;->a()V

    :cond_23
    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    sget-object p2, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->PAUSED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object p2, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/b/b;->g()V

    return-void
.end method

.method public c(Lcom/kwad/sdk/api/KsAppDownloadListener;)V
    .registers 2

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/kwad/sdk/core/download/b/b;->h()V

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/download/b/b;->d(Lcom/kwad/sdk/api/KsAppDownloadListener;)V

    return-void
.end method

.method public c(Ljava/lang/String;Lcom/kwad/sdk/core/download/f;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->DOWNLOADING:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-eq p1, v0, :cond_23

    invoke-virtual {p2}, Lcom/kwad/sdk/core/download/f;->b()Z

    move-result p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->d:Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/report/b;->d(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    invoke-virtual {p2}, Lcom/kwad/sdk/core/download/f;->a()V

    :cond_23
    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    sget-object p2, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->DOWNLOADING:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object p2, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/b/b;->g()V

    return-void
.end method

.method public c()Z
    .registers 3

    sget-object v0, Lcom/kwad/sdk/core/download/b/b$5;->a:[I

    iget-object v1, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    invoke-virtual {v1}, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_20

    :pswitch_10
    const/4 v0, 0x0

    return v0

    :pswitch_12
    invoke-virtual {p0}, Lcom/kwad/sdk/core/download/b/b;->d()V

    return v1

    :pswitch_16
    invoke-virtual {p0}, Lcom/kwad/sdk/core/download/b/b;->e()V

    return v1

    :pswitch_1a
    invoke-direct {p0}, Lcom/kwad/sdk/core/download/b/b;->i()Z

    move-result v0

    return v0

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_1a
        :pswitch_10
        :pswitch_10
        :pswitch_1a
        :pswitch_1a
        :pswitch_16
        :pswitch_16
        :pswitch_12
        :pswitch_16
        :pswitch_1a
        :pswitch_1a
    .end packed-switch
.end method

.method public d()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appPackageName:Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_17

    goto :goto_28

    :cond_17
    new-instance v2, Lcom/kwad/sdk/core/download/b/b$4;

    invoke-direct {v2, p0}, Lcom/kwad/sdk/core/download/b/b$4;-><init>(Lcom/kwad/sdk/core/download/b/b;)V

    invoke-static {v2}, Lcom/kwad/sdk/utils/f;->a(Ljava/lang/Runnable;)V

    iget-object v2, p0, Lcom/kwad/sdk/core/download/b/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v2}, Lcom/kwad/sdk/core/report/b;->f(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-static {v1, v0}, Lcom/kwad/sdk/utils/u;->b(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_28
    :goto_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openApp fail appContext:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--appPkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApkDownloadHelper"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;Lcom/kwad/sdk/core/download/f;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object p1, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->CANCELLED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-eq p1, v0, :cond_23

    invoke-virtual {p2}, Lcom/kwad/sdk/core/download/f;->b()Z

    move-result p1

    if-eqz p1, :cond_23

    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->d:Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lcom/kwad/sdk/core/report/b;->f(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    invoke-virtual {p2}, Lcom/kwad/sdk/core/download/f;->a()V

    :cond_23
    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    sget-object p2, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->CANCELLED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object p2, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/b/b;->g()V

    return-void
.end method

.method public e()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadFilePath:Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/KsAdSDKImpl;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_26

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_15

    goto :goto_26

    :cond_15
    iget-object v2, p0, Lcom/kwad/sdk/core/download/b/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v2}, Lcom/kwad/sdk/core/report/b;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/kwad/sdk/KsAdSDKImpl;->getProxyForAdInstall()Lcom/kwad/sdk/export/proxy/AdInstallProxy;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/kwad/sdk/export/proxy/AdInstallProxy;->installApp(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_26
    :goto_26
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openApp fail appContext:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--filePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ApkDownloadHelper"

    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public e(Ljava/lang/String;Lcom/kwad/sdk/core/download/f;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    invoke-virtual {p2}, Lcom/kwad/sdk/core/download/f;->b()Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/report/b;->g(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    invoke-virtual {p2}, Lcom/kwad/sdk/core/download/f;->a()V

    :cond_19
    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    sget-object p2, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->INSTALL:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object p2, p1, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/b/b;->g()V

    return-void
.end method

.method public f()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/download/b/b;->i:Ljava/util/HashSet;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    :cond_7
    invoke-static {}, Lcom/kwad/sdk/core/download/DownloadStatusManager;->a()Lcom/kwad/sdk/core/download/DownloadStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/kwad/sdk/core/download/DownloadStatusManager;->a(Lcom/kwad/sdk/core/download/d;)V

    return-void
.end method

.method public f(Ljava/lang/String;Lcom/kwad/sdk/core/download/f;)V
    .registers 3

    iget-object p2, p0, Lcom/kwad/sdk/core/download/b/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object p2, p2, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadId:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    iget-object p1, p0, Lcom/kwad/sdk/core/download/b/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/core/report/b;->e(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    return-void
.end method
