.class public Lcom/kwad/sdk/SdkConfig$Builder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/SdkConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private adRequestExtentParamsProxy:Lcom/kwad/sdk/export/proxy/AdRequestExtentParamsProxy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private appId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private appName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private downloadProxy:Lcom/kwad/sdk/export/proxy/AdDownloadProxy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private enableDebug:Z

.field private httpProxy:Lcom/kwad/sdk/export/proxy/AdHttpProxy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private installProxy:Lcom/kwad/sdk/export/proxy/AdInstallProxy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private jumpProxy:Lcom/kwad/sdk/export/proxy/AdJumpProxy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private locationProxy:Lcom/kwad/sdk/export/proxy/AdLocationProxy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private showNotification:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/SdkConfig$Builder;->showNotification:Z

    return-void
.end method

.method static synthetic access$000(Lcom/kwad/sdk/SdkConfig$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/SdkConfig$Builder;->enableDebug:Z

    return v0
.end method

.method static synthetic access$100(Lcom/kwad/sdk/SdkConfig$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/SdkConfig$Builder;->appId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/kwad/sdk/SdkConfig$Builder;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/SdkConfig$Builder;->appName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/kwad/sdk/SdkConfig$Builder;)Lcom/kwad/sdk/export/proxy/AdHttpProxy;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/SdkConfig$Builder;->httpProxy:Lcom/kwad/sdk/export/proxy/AdHttpProxy;

    return-object v0
.end method

.method static synthetic access$400(Lcom/kwad/sdk/SdkConfig$Builder;)Lcom/kwad/sdk/export/proxy/AdDownloadProxy;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/SdkConfig$Builder;->downloadProxy:Lcom/kwad/sdk/export/proxy/AdDownloadProxy;

    return-object v0
.end method

.method static synthetic access$500(Lcom/kwad/sdk/SdkConfig$Builder;)Lcom/kwad/sdk/export/proxy/AdJumpProxy;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/SdkConfig$Builder;->jumpProxy:Lcom/kwad/sdk/export/proxy/AdJumpProxy;

    return-object v0
.end method

.method static synthetic access$600(Lcom/kwad/sdk/SdkConfig$Builder;)Lcom/kwad/sdk/export/proxy/AdLocationProxy;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/SdkConfig$Builder;->locationProxy:Lcom/kwad/sdk/export/proxy/AdLocationProxy;

    return-object v0
.end method

.method static synthetic access$700(Lcom/kwad/sdk/SdkConfig$Builder;)Lcom/kwad/sdk/export/proxy/AdInstallProxy;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/SdkConfig$Builder;->installProxy:Lcom/kwad/sdk/export/proxy/AdInstallProxy;

    return-object v0
.end method

.method static synthetic access$800(Lcom/kwad/sdk/SdkConfig$Builder;)Lcom/kwad/sdk/export/proxy/AdRequestExtentParamsProxy;
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/SdkConfig$Builder;->adRequestExtentParamsProxy:Lcom/kwad/sdk/export/proxy/AdRequestExtentParamsProxy;

    return-object v0
.end method

.method static synthetic access$900(Lcom/kwad/sdk/SdkConfig$Builder;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/kwad/sdk/SdkConfig$Builder;->showNotification:Z

    return v0
.end method


# virtual methods
.method public appId(Ljava/lang/String;)Lcom/kwad/sdk/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/SdkConfig$Builder;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public appName(Ljava/lang/String;)Lcom/kwad/sdk/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/SdkConfig$Builder;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/kwad/sdk/SdkConfig;
    .registers 3

    new-instance v0, Lcom/kwad/sdk/SdkConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kwad/sdk/SdkConfig;-><init>(Lcom/kwad/sdk/SdkConfig$Builder;Lcom/kwad/sdk/SdkConfig$1;)V

    return-object v0
.end method

.method public debug(Z)Lcom/kwad/sdk/SdkConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/SdkConfig$Builder;->enableDebug:Z

    return-object p0
.end method

.method public setAdRequestExtentParamsProxy(Lcom/kwad/sdk/export/proxy/AdRequestExtentParamsProxy;)Lcom/kwad/sdk/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/SdkConfig$Builder;->adRequestExtentParamsProxy:Lcom/kwad/sdk/export/proxy/AdRequestExtentParamsProxy;

    return-object p0
.end method

.method public setDownloadProxy(Lcom/kwad/sdk/export/proxy/AdDownloadProxy;)Lcom/kwad/sdk/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/SdkConfig$Builder;->downloadProxy:Lcom/kwad/sdk/export/proxy/AdDownloadProxy;

    return-object p0
.end method

.method public setHttpProxy(Lcom/kwad/sdk/export/proxy/AdHttpProxy;)Lcom/kwad/sdk/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/SdkConfig$Builder;->httpProxy:Lcom/kwad/sdk/export/proxy/AdHttpProxy;

    return-object p0
.end method

.method public setInstallProxy(Lcom/kwad/sdk/export/proxy/AdInstallProxy;)Lcom/kwad/sdk/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/SdkConfig$Builder;->installProxy:Lcom/kwad/sdk/export/proxy/AdInstallProxy;

    return-object p0
.end method

.method public setJumpProxy(Lcom/kwad/sdk/export/proxy/AdJumpProxy;)Lcom/kwad/sdk/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/SdkConfig$Builder;->jumpProxy:Lcom/kwad/sdk/export/proxy/AdJumpProxy;

    return-object p0
.end method

.method public setLocationProxy(Lcom/kwad/sdk/export/proxy/AdLocationProxy;)Lcom/kwad/sdk/SdkConfig$Builder;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/SdkConfig$Builder;->locationProxy:Lcom/kwad/sdk/export/proxy/AdLocationProxy;

    return-object p0
.end method

.method public showNotification(Z)Lcom/kwad/sdk/SdkConfig$Builder;
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/SdkConfig$Builder;->showNotification:Z

    return-object p0
.end method
