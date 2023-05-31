.class public Lcom/kwad/sdk/core/download/g/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/kwad/sdk/core/download/e;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/kwad/sdk/core/response/model/AdTemplate;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private c:Lcom/kwad/sdk/core/response/model/AdInfo;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private d:Lorg/json/JSONObject;

.field private e:Lcom/kwad/sdk/nativead/KsAppDownloadListener;


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lcom/kwad/sdk/nativead/KsAppDownloadListener;)V
    .registers 4
    .param p1    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/kwad/sdk/nativead/KsAppDownloadListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/kwad/sdk/core/download/g/b;-><init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/nativead/KsAppDownloadListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;Lcom/kwad/sdk/nativead/KsAppDownloadListener;)V
    .registers 6
    .param p1    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kwad/sdk/nativead/KsAppDownloadListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->a:Landroid/os/Handler;

    iput-object p1, p0, Lcom/kwad/sdk/core/download/g/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {p1}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iput-object p2, p0, Lcom/kwad/sdk/core/download/g/b;->d:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/kwad/sdk/core/download/g/b;->e:Lcom/kwad/sdk/nativead/KsAppDownloadListener;

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/g/b;->d()V

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/g/b;->i()V

    invoke-static {p0}, Lcom/kwad/sdk/core/download/d;->a(Lcom/kwad/sdk/core/download/e;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/core/download/d;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    return-void
.end method

.method static synthetic a(Lcom/kwad/sdk/core/download/g/b;)Lcom/kwad/sdk/nativead/KsAppDownloadListener;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->e:Lcom/kwad/sdk/nativead/KsAppDownloadListener;

    return-object v0
.end method

.method static synthetic a(Lcom/kwad/sdk/core/download/g/b;Lcom/kwad/sdk/nativead/KsAppDownloadListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/core/download/g/b;->a(Lcom/kwad/sdk/nativead/KsAppDownloadListener;)V

    return-void
.end method

.method private a(Lcom/kwad/sdk/nativead/KsAppDownloadListener;)V
    .registers 5
    .param p1    # Lcom/kwad/sdk/nativead/KsAppDownloadListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->progress:I

    sget-object v2, Lcom/kwad/sdk/core/download/g/b$b;->a:[I

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_22

    :goto_11
    return-void

    :pswitch_12
    invoke-interface {p1}, Lcom/kwad/sdk/nativead/KsAppDownloadListener;->onInstalled()V

    goto :goto_11

    :pswitch_16
    invoke-interface {p1}, Lcom/kwad/sdk/nativead/KsAppDownloadListener;->onDownloadFinished()V

    goto :goto_11

    :pswitch_1a
    invoke-interface {p1, v1}, Lcom/kwad/sdk/nativead/KsAppDownloadListener;->onProgressUpdate(I)V

    goto :goto_11

    :pswitch_1e
    invoke-interface {p1}, Lcom/kwad/sdk/nativead/KsAppDownloadListener;->onIdle()V

    goto :goto_11

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_1e
        :pswitch_1a
        :pswitch_1a
        :pswitch_16
        :pswitch_16
        :pswitch_12
    .end packed-switch
.end method

.method private d()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appPackageName:Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    invoke-static {v1, v0}, Lcom/kwad/sdk/e/k;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->INSTALL_FINSHED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    goto :goto_d

    :cond_1b
    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object v2, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->INSTALL_FINSHED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-ne v1, v2, :cond_29

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->UNKNOWN:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput v3, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->progress:I

    :cond_29
    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object v2, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->FINISHED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-ne v1, v2, :cond_4c

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_44

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_4c

    :cond_44
    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->UNKNOWN:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput v3, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->progress:I

    :cond_4c
    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->UNKNOWN:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-ne v0, v1, :cond_d

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getProxyForDownload()Lcom/kwad/sdk/export/proxy/AdDownloadProxy;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v1}, Lcom/kwad/sdk/core/download/DownloadParams;->transfrom(Lcom/kwad/sdk/core/response/model/AdInfo;)Lcom/kwad/sdk/core/download/DownloadParams;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/kwad/sdk/export/proxy/AdDownloadProxy;->getDownloadFilePath(Lcom/kwad/sdk/core/download/DownloadParams;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_d

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iput-object v0, v1, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadFilePath:Ljava/lang/String;

    sget-object v0, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->FINISHED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object v0, v1, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    goto :goto_d
.end method

.method private e()V
    .registers 3

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    :goto_6
    return-void

    :cond_7
    invoke-static {v0}, Lcom/ksad/download/k/b;->b(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_15

    const-string v0, "ApkDownloadHelper"

    const-string v1, "no network while download app"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    :cond_15
    iget-object v1, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/download/f;->a(Landroid/content/Context;Lcom/kwad/sdk/core/response/model/AdInfo;)V

    goto :goto_6
.end method

.method private f()V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adConversionInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;

    iget-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdConversionInfo;->marketUrl:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Market URL Schema="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ApkDownloadHelper"

    invoke-static {v2, v0}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_33

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v2, v2, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v2, v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appPackageName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/kwad/sdk/e/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :cond_33
    if-eqz v0, :cond_3b

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/f/b;->j(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    :goto_3a
    return-void

    :cond_3b
    invoke-direct {p0}, Lcom/kwad/sdk/core/download/g/b;->e()V

    goto :goto_3a
.end method

.method private g()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadFilePath:Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_10

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_33

    :cond_10
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

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_32
    return-void

    :cond_33
    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getProxyForAdInstall()Lcom/kwad/sdk/export/proxy/AdInstallProxy;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/kwad/sdk/export/proxy/AdInstallProxy;->installApp(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_32
.end method

.method private h()V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appPackageName:Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_12

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_35

    :cond_12
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

    invoke-static {v1, v0}, Lcom/kwad/sdk/c/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_34
    return-void

    :cond_35
    invoke-static {v1, v0}, Lcom/kwad/sdk/e/k;->c(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_34
.end method

.method private i()V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->e:Lcom/kwad/sdk/nativead/KsAppDownloadListener;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->e:Lcom/kwad/sdk/nativead/KsAppDownloadListener;

    invoke-direct {p0, v0}, Lcom/kwad/sdk/core/download/g/b;->a(Lcom/kwad/sdk/nativead/KsAppDownloadListener;)V

    goto :goto_4

    :cond_19
    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->a:Landroid/os/Handler;

    new-instance v1, Lcom/kwad/sdk/core/download/g/b$a;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/download/g/b$a;-><init>(Lcom/kwad/sdk/core/download/g/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_4
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->appPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->INSTALL_FAILED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/g/b;->i()V

    goto :goto_a
.end method

.method public a(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->PROGRESS:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput p2, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->progress:I

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/g/b;->i()V

    goto :goto_a
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->FINISHED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-eq v0, v1, :cond_23

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-boolean v1, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mDownloadFinishReported:Z

    if-nez v1, :cond_23

    iget-object v1, p0, Lcom/kwad/sdk/core/download/g/b;->d:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/f/b;->c(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/kwad/sdk/core/response/model/AdTemplate;->mDownloadFinishReported:Z

    :cond_23
    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->FINISHED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object p2, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadFilePath:Ljava/lang/String;

    const/16 v1, 0x64

    iput v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->progress:I

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/g/b;->i()V

    invoke-static {}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->b()Lcom/kwad/sdk/core/diskcache/ApkCacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/core/diskcache/ApkCacheManager;->a()V

    goto :goto_a
.end method

.method public b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadId:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->PAUSED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/core/download/g/b;->d:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/f/b;->e(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    :cond_1a
    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->PAUSED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/g/b;->i()V

    goto :goto_a
.end method

.method public b(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->INSTALL_FINSHED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/g/b;->i()V

    return-void
.end method

.method public c()V
    .registers 3

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/g/b;->d()V

    sget-object v0, Lcom/kwad/sdk/core/download/g/b$b;->a:[I

    iget-object v1, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v1, v1, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_20

    :goto_12
    :pswitch_12
    return-void

    :pswitch_13
    invoke-direct {p0}, Lcom/kwad/sdk/core/download/g/b;->h()V

    goto :goto_12

    :pswitch_17
    invoke-direct {p0}, Lcom/kwad/sdk/core/download/g/b;->g()V

    goto :goto_12

    :pswitch_1b
    invoke-direct {p0}, Lcom/kwad/sdk/core/download/g/b;->f()V

    goto :goto_12

    nop

    :pswitch_data_20
    .packed-switch 0x1
        :pswitch_1b
        :pswitch_12
        :pswitch_12
        :pswitch_17
        :pswitch_17
        :pswitch_13
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_1b
        :pswitch_17
    .end packed-switch
.end method

.method public c(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->START:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-eq v0, v1, :cond_18

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/f/b;->f(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    :cond_18
    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->START:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/g/b;->i()V

    goto :goto_a
.end method

.method public c(Ljava/lang/String;I)V
    .registers 5

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->FAILED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/g/b;->i()V

    goto :goto_a
.end method

.method public d(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->INSTALLING:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/g/b;->i()V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->CANCELLED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/core/download/g/b;->d:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/f/b;->d(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    :cond_1a
    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->CANCELLED:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/g/b;->i()V

    goto :goto_a
.end method

.method public f(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->DOWNLOADING:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->b:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iget-object v1, p0, Lcom/kwad/sdk/core/download/g/b;->d:Lorg/json/JSONObject;

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/f/b;->f(Lcom/kwad/sdk/core/response/model/AdTemplate;Lorg/json/JSONObject;)V

    :cond_1a
    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->DOWNLOADING:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/g/b;->i()V

    goto :goto_a
.end method

.method public g(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->downloadId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/kwad/sdk/core/download/g/b;->c:Lcom/kwad/sdk/core/response/model/AdInfo;

    sget-object v1, Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;->INSTALL:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    iput-object v1, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->status:Lcom/kwad/sdk/core/download/DOWNLOADSTAUS;

    invoke-direct {p0}, Lcom/kwad/sdk/core/download/g/b;->i()V

    goto :goto_a
.end method
