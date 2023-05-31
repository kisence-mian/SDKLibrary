.class public Lcom/kwad/sdk/KsAdSDK;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static mAdInstallProxy:Lcom/kwad/sdk/export/proxy/AdInstallProxy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static mAdJumpProxy:Lcom/kwad/sdk/export/proxy/AdJumpProxy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static mAdRequestExtentParamsProxy:Lcom/kwad/sdk/export/proxy/AdRequestExtentParamsProxy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static mAdRequestManager:Lcom/kwad/sdk/export/i/IAdRequestManager;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static mAppContext:Landroid/content/Context;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static mAppId:Ljava/lang/String;

.field private static mAppName:Ljava/lang/String;

.field private static mDownloadProxy:Lcom/kwad/sdk/export/proxy/AdDownloadProxy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static mEnableDebug:Z

.field private static mHttpProxy:Lcom/kwad/sdk/export/proxy/AdHttpProxy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private static volatile mIsSdkInit:Z

.field private static mLocationProxy:Lcom/kwad/sdk/export/proxy/AdLocationProxy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deleteCache()V
    .registers 1

    invoke-static {}, Lcom/kwad/sdk/core/diskcache/b/a;->c()Lcom/kwad/sdk/core/diskcache/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/core/diskcache/b/a;->a()V

    return-void
.end method

.method public static getAdManager()Lcom/kwad/sdk/export/i/IAdRequestManager;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-boolean v0, Lcom/kwad/sdk/KsAdSDK;->mIsSdkInit:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "sdk must be init first"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/j;->a(Ljava/lang/Boolean;Ljava/lang/String;)V

    sget-object v0, Lcom/kwad/sdk/KsAdSDK;->mAdRequestManager:Lcom/kwad/sdk/export/i/IAdRequestManager;

    if-nez v0, :cond_18

    new-instance v0, Lcom/kwad/sdk/core/request/b;

    invoke-direct {v0}, Lcom/kwad/sdk/core/request/b;-><init>()V

    sput-object v0, Lcom/kwad/sdk/KsAdSDK;->mAdRequestManager:Lcom/kwad/sdk/export/i/IAdRequestManager;

    :cond_18
    sget-object v0, Lcom/kwad/sdk/KsAdSDK;->mAdRequestManager:Lcom/kwad/sdk/export/i/IAdRequestManager;

    return-object v0
.end method

.method public static getAppId()Ljava/lang/String;
    .registers 3

    sget-object v0, Lcom/kwad/sdk/KsAdSDK;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "KSAdSDK_2.6.4.1"

    aput-object v2, v0, v1

    const-string v1, "[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sdk is not init mAppId is empty:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/kwad/sdk/KsAdSDK;->mIsSdkInit:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    :goto_30
    return-object v0

    :cond_31
    sget-object v0, Lcom/kwad/sdk/KsAdSDK;->mAppId:Ljava/lang/String;

    goto :goto_30
.end method

.method public static getAppName()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/KsAdSDK;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public static getContext()Landroid/content/Context;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget-boolean v0, Lcom/kwad/sdk/KsAdSDK;->mIsSdkInit:Z

    if-nez v0, :cond_20

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "KSAdSDK_2.6.4.1"

    aput-object v2, v0, v1

    const-string v1, "[%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    invoke-virtual {v1}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v1

    const-string v2, "getContext sdk is not init"

    invoke-static {v0, v2, v1}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_20
    sget-object v0, Lcom/kwad/sdk/KsAdSDK;->mAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getProxyForAdInstall()Lcom/kwad/sdk/export/proxy/AdInstallProxy;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/kwad/sdk/KsAdSDK;->mAdInstallProxy:Lcom/kwad/sdk/export/proxy/AdInstallProxy;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/kwad/sdk/a;->a()Lcom/kwad/sdk/export/proxy/AdInstallProxy;

    move-result-object v0

    goto :goto_4
.end method

.method public static getProxyForAdLocation()Lcom/kwad/sdk/export/proxy/AdLocationProxy;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/kwad/sdk/KsAdSDK;->mLocationProxy:Lcom/kwad/sdk/export/proxy/AdLocationProxy;

    return-object v0
.end method

.method public static getProxyForDownload()Lcom/kwad/sdk/export/proxy/AdDownloadProxy;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/kwad/sdk/KsAdSDK;->mDownloadProxy:Lcom/kwad/sdk/export/proxy/AdDownloadProxy;

    return-object v0
.end method

.method public static getProxyForHttp()Lcom/kwad/sdk/export/proxy/AdHttpProxy;
    .registers 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/kwad/sdk/KsAdSDK;->mHttpProxy:Lcom/kwad/sdk/export/proxy/AdHttpProxy;

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/kwad/sdk/a;->b()Lcom/kwad/sdk/export/proxy/AdHttpProxy;

    move-result-object v0

    goto :goto_4
.end method

.method public static getRequestExtentParamsProxy()Lcom/kwad/sdk/export/proxy/AdRequestExtentParamsProxy;
    .registers 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    sget-object v0, Lcom/kwad/sdk/KsAdSDK;->mAdRequestExtentParamsProxy:Lcom/kwad/sdk/export/proxy/AdRequestExtentParamsProxy;

    return-object v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .registers 1

    const-string v0, "2.6.4.1"

    return-object v0
.end method

.method public static init(Landroid/content/Context;Lcom/kwad/sdk/SdkConfig;)V
    .registers 4

    const-string v0, "context must not be null"

    invoke-static {p0, v0}, Lcom/kwad/sdk/e/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config must not be null"

    invoke-static {p1, v0}, Lcom/kwad/sdk/e/j;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/kwad/sdk/SdkConfig;->appId:Ljava/lang/String;

    const-string v1, "appId must not be null"

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/kwad/sdk/KsAdSDK;->mAppContext:Landroid/content/Context;

    iget-boolean v0, p1, Lcom/kwad/sdk/SdkConfig;->enableDebug:Z

    sput-boolean v0, Lcom/kwad/sdk/KsAdSDK;->mEnableDebug:Z

    iget-object v0, p1, Lcom/kwad/sdk/SdkConfig;->appId:Ljava/lang/String;

    sput-object v0, Lcom/kwad/sdk/KsAdSDK;->mAppId:Ljava/lang/String;

    iget-object v0, p1, Lcom/kwad/sdk/SdkConfig;->appName:Ljava/lang/String;

    sput-object v0, Lcom/kwad/sdk/KsAdSDK;->mAppName:Ljava/lang/String;

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->initSdkLog()V

    invoke-static {p1}, Lcom/kwad/sdk/KsAdSDK;->initHttpProxy(Lcom/kwad/sdk/SdkConfig;)V

    invoke-static {p1}, Lcom/kwad/sdk/KsAdSDK;->initInstallProxy(Lcom/kwad/sdk/SdkConfig;)V

    sget-object v0, Lcom/kwad/sdk/KsAdSDK;->mAppContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/kwad/sdk/KsAdSDK;->initDownloadProxy(Landroid/content/Context;Lcom/kwad/sdk/SdkConfig;)V

    invoke-static {p1}, Lcom/kwad/sdk/KsAdSDK;->initJumpProxy(Lcom/kwad/sdk/SdkConfig;)V

    invoke-static {p1}, Lcom/kwad/sdk/KsAdSDK;->initLocationProxy(Lcom/kwad/sdk/SdkConfig;)V

    invoke-static {p1}, Lcom/kwad/sdk/KsAdSDK;->initRequestExtentParamsProxy(Lcom/kwad/sdk/SdkConfig;)V

    sget-object v0, Lcom/kwad/sdk/KsAdSDK;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kwad/sdk/KsAdSDK;->initDiskCache(Landroid/content/Context;)V

    sget-object v0, Lcom/kwad/sdk/KsAdSDK;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kwad/sdk/KsAdSDK;->initImageLoader(Landroid/content/Context;)V

    sget-object v0, Lcom/kwad/sdk/KsAdSDK;->mAppContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/e/a;->a(Landroid/content/Context;Lcom/kwad/sdk/c/e/a$b;)V

    sget-object v0, Lcom/kwad/sdk/KsAdSDK;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kwad/sdk/c/f/f;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/kwad/sdk/c/f/c;->a()V

    const-string v0, "init"

    const-string v1, "env=0"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "init"

    const-string v1, "HOST=https://open.e.kuaishou.com"

    invoke-static {v0, v1}, Lcom/kwad/sdk/c/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/kwad/sdk/KsAdSDK;->mIsSdkInit:Z

    sget-object v0, Lcom/kwad/sdk/KsAdSDK;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/kwad/sdk/core/request/e;->a(Landroid/content/Context;)V

    return-void
.end method

.method private static initDiskCache(Landroid/content/Context;)V
    .registers 5

    invoke-static {}, Lcom/kwad/sdk/core/diskcache/b/a;->c()Lcom/kwad/sdk/core/diskcache/b/a;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/core/diskcache/b/b$b;

    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/diskcache/b/b$b;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/core/diskcache/b/b$b;->a(I)Lcom/kwad/sdk/core/diskcache/b/b$b;

    move-result-object v1

    invoke-static {p0}, Lcom/kwad/sdk/a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/kwad/sdk/core/diskcache/b/b$b;->a(Ljava/io/File;)Lcom/kwad/sdk/core/diskcache/b/b$b;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Lcom/kwad/sdk/core/diskcache/b/b$b;->a(J)Lcom/kwad/sdk/core/diskcache/b/b$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/kwad/sdk/core/diskcache/b/b$b;->a()Lcom/kwad/sdk/core/diskcache/b/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/kwad/sdk/core/diskcache/b/a;->a(Lcom/kwad/sdk/core/diskcache/b/b;)V

    return-void
.end method

.method private static initDownloadProxy(Landroid/content/Context;Lcom/kwad/sdk/SdkConfig;)V
    .registers 4

    iget-object v0, p1, Lcom/kwad/sdk/SdkConfig;->downloadProxy:Lcom/kwad/sdk/export/proxy/AdDownloadProxy;

    if-eqz v0, :cond_7

    :goto_4
    sput-object v0, Lcom/kwad/sdk/KsAdSDK;->mDownloadProxy:Lcom/kwad/sdk/export/proxy/AdDownloadProxy;

    return-void

    :cond_7
    sget-object v0, Lcom/kwad/sdk/KsAdSDK;->mAdInstallProxy:Lcom/kwad/sdk/export/proxy/AdInstallProxy;

    iget-boolean v1, p1, Lcom/kwad/sdk/SdkConfig;->showNotification:Z

    invoke-static {p0, v0, v1}, Lcom/kwad/sdk/a;->a(Landroid/content/Context;Lcom/kwad/sdk/export/proxy/AdInstallProxy;Z)Lcom/kwad/sdk/export/proxy/AdDownloadProxy;

    move-result-object v0

    goto :goto_4
.end method

.method private static initHttpProxy(Lcom/kwad/sdk/SdkConfig;)V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/SdkConfig;->httpProxy:Lcom/kwad/sdk/export/proxy/AdHttpProxy;

    if-eqz v0, :cond_7

    :goto_4
    sput-object v0, Lcom/kwad/sdk/KsAdSDK;->mHttpProxy:Lcom/kwad/sdk/export/proxy/AdHttpProxy;

    return-void

    :cond_7
    invoke-static {}, Lcom/kwad/sdk/a;->b()Lcom/kwad/sdk/export/proxy/AdHttpProxy;

    move-result-object v0

    goto :goto_4
.end method

.method private static initImageLoader(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/kwad/sdk/core/imageloader/KSImageLoader;->init(Landroid/content/Context;)V

    return-void
.end method

.method private static initInstallProxy(Lcom/kwad/sdk/SdkConfig;)V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/SdkConfig;->installProxy:Lcom/kwad/sdk/export/proxy/AdInstallProxy;

    if-eqz v0, :cond_7

    :goto_4
    sput-object v0, Lcom/kwad/sdk/KsAdSDK;->mAdInstallProxy:Lcom/kwad/sdk/export/proxy/AdInstallProxy;

    return-void

    :cond_7
    invoke-static {}, Lcom/kwad/sdk/a;->a()Lcom/kwad/sdk/export/proxy/AdInstallProxy;

    move-result-object v0

    goto :goto_4
.end method

.method private static initJumpProxy(Lcom/kwad/sdk/SdkConfig;)V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/SdkConfig;->jumpProxy:Lcom/kwad/sdk/export/proxy/AdJumpProxy;

    sput-object v0, Lcom/kwad/sdk/KsAdSDK;->mAdJumpProxy:Lcom/kwad/sdk/export/proxy/AdJumpProxy;

    return-void
.end method

.method private static initLocationProxy(Lcom/kwad/sdk/SdkConfig;)V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/SdkConfig;->locationProxy:Lcom/kwad/sdk/export/proxy/AdLocationProxy;

    sput-object v0, Lcom/kwad/sdk/KsAdSDK;->mLocationProxy:Lcom/kwad/sdk/export/proxy/AdLocationProxy;

    return-void
.end method

.method private static initRequestExtentParamsProxy(Lcom/kwad/sdk/SdkConfig;)V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/SdkConfig;->adRequestExtentParamsProxy:Lcom/kwad/sdk/export/proxy/AdRequestExtentParamsProxy;

    sput-object v0, Lcom/kwad/sdk/KsAdSDK;->mAdRequestExtentParamsProxy:Lcom/kwad/sdk/export/proxy/AdRequestExtentParamsProxy;

    return-void
.end method

.method private static initSdkLog()V
    .registers 5

    sget-object v0, Lcom/kwad/sdk/KsAdSDK;->mAppContext:Landroid/content/Context;

    sget-boolean v1, Lcom/kwad/sdk/KsAdSDK;->mEnableDebug:Z

    invoke-static {v0}, Lcom/kwad/sdk/a;->c(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const-string v3, "KSAdSDK_2.6.4.1"

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Lcom/kwad/sdk/c/c/b;->a(Landroid/content/Context;Ljava/lang/String;ZZLjava/io/File;)V

    return-void
.end method

.method public static isDebugLogEnable()Z
    .registers 1

    sget-boolean v0, Lcom/kwad/sdk/KsAdSDK;->mEnableDebug:Z

    return v0
.end method

.method public static unInit()V
    .registers 1

    invoke-static {}, Lcom/kwad/sdk/KsAdSDK;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/kwad/sdk/core/download/d;->a(Landroid/content/Context;)V

    return-void
.end method
