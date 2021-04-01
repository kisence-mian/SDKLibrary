.class public Lcom/kwad/sdk/SdkConfig;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/SdkConfig$Builder;
    }
.end annotation


# instance fields
.field adRequestExtentParamsProxy:Lcom/kwad/sdk/export/proxy/AdRequestExtentParamsProxy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field appId:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field appName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field downloadProxy:Lcom/kwad/sdk/export/proxy/AdDownloadProxy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field enableDebug:Z

.field httpProxy:Lcom/kwad/sdk/export/proxy/AdHttpProxy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field installProxy:Lcom/kwad/sdk/export/proxy/AdInstallProxy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field jumpProxy:Lcom/kwad/sdk/export/proxy/AdJumpProxy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field locationProxy:Lcom/kwad/sdk/export/proxy/AdLocationProxy;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field showNotification:Z


# direct methods
.method private constructor <init>(Lcom/kwad/sdk/SdkConfig$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    # getter for: Lcom/kwad/sdk/SdkConfig$Builder;->enableDebug:Z
    invoke-static {p1}, Lcom/kwad/sdk/SdkConfig$Builder;->access$000(Lcom/kwad/sdk/SdkConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/sdk/SdkConfig;->enableDebug:Z

    # getter for: Lcom/kwad/sdk/SdkConfig$Builder;->appId:Ljava/lang/String;
    invoke-static {p1}, Lcom/kwad/sdk/SdkConfig$Builder;->access$100(Lcom/kwad/sdk/SdkConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/SdkConfig;->appId:Ljava/lang/String;

    # getter for: Lcom/kwad/sdk/SdkConfig$Builder;->appName:Ljava/lang/String;
    invoke-static {p1}, Lcom/kwad/sdk/SdkConfig$Builder;->access$200(Lcom/kwad/sdk/SdkConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/SdkConfig;->appName:Ljava/lang/String;

    # getter for: Lcom/kwad/sdk/SdkConfig$Builder;->httpProxy:Lcom/kwad/sdk/export/proxy/AdHttpProxy;
    invoke-static {p1}, Lcom/kwad/sdk/SdkConfig$Builder;->access$300(Lcom/kwad/sdk/SdkConfig$Builder;)Lcom/kwad/sdk/export/proxy/AdHttpProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/SdkConfig;->httpProxy:Lcom/kwad/sdk/export/proxy/AdHttpProxy;

    # getter for: Lcom/kwad/sdk/SdkConfig$Builder;->downloadProxy:Lcom/kwad/sdk/export/proxy/AdDownloadProxy;
    invoke-static {p1}, Lcom/kwad/sdk/SdkConfig$Builder;->access$400(Lcom/kwad/sdk/SdkConfig$Builder;)Lcom/kwad/sdk/export/proxy/AdDownloadProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/SdkConfig;->downloadProxy:Lcom/kwad/sdk/export/proxy/AdDownloadProxy;

    # getter for: Lcom/kwad/sdk/SdkConfig$Builder;->jumpProxy:Lcom/kwad/sdk/export/proxy/AdJumpProxy;
    invoke-static {p1}, Lcom/kwad/sdk/SdkConfig$Builder;->access$500(Lcom/kwad/sdk/SdkConfig$Builder;)Lcom/kwad/sdk/export/proxy/AdJumpProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/SdkConfig;->jumpProxy:Lcom/kwad/sdk/export/proxy/AdJumpProxy;

    # getter for: Lcom/kwad/sdk/SdkConfig$Builder;->locationProxy:Lcom/kwad/sdk/export/proxy/AdLocationProxy;
    invoke-static {p1}, Lcom/kwad/sdk/SdkConfig$Builder;->access$600(Lcom/kwad/sdk/SdkConfig$Builder;)Lcom/kwad/sdk/export/proxy/AdLocationProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/SdkConfig;->locationProxy:Lcom/kwad/sdk/export/proxy/AdLocationProxy;

    # getter for: Lcom/kwad/sdk/SdkConfig$Builder;->installProxy:Lcom/kwad/sdk/export/proxy/AdInstallProxy;
    invoke-static {p1}, Lcom/kwad/sdk/SdkConfig$Builder;->access$700(Lcom/kwad/sdk/SdkConfig$Builder;)Lcom/kwad/sdk/export/proxy/AdInstallProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/SdkConfig;->installProxy:Lcom/kwad/sdk/export/proxy/AdInstallProxy;

    # getter for: Lcom/kwad/sdk/SdkConfig$Builder;->adRequestExtentParamsProxy:Lcom/kwad/sdk/export/proxy/AdRequestExtentParamsProxy;
    invoke-static {p1}, Lcom/kwad/sdk/SdkConfig$Builder;->access$800(Lcom/kwad/sdk/SdkConfig$Builder;)Lcom/kwad/sdk/export/proxy/AdRequestExtentParamsProxy;

    move-result-object v0

    iput-object v0, p0, Lcom/kwad/sdk/SdkConfig;->adRequestExtentParamsProxy:Lcom/kwad/sdk/export/proxy/AdRequestExtentParamsProxy;

    # getter for: Lcom/kwad/sdk/SdkConfig$Builder;->showNotification:Z
    invoke-static {p1}, Lcom/kwad/sdk/SdkConfig$Builder;->access$900(Lcom/kwad/sdk/SdkConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/kwad/sdk/SdkConfig;->showNotification:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/SdkConfig$Builder;Lcom/kwad/sdk/SdkConfig$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/kwad/sdk/SdkConfig;-><init>(Lcom/kwad/sdk/SdkConfig$Builder;)V

    return-void
.end method
