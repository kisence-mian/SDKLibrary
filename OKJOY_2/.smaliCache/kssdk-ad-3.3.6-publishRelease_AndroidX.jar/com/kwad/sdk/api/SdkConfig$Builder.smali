.class public Lcom/kwad/sdk/api/SdkConfig$Builder;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/api/SdkConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private appId:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private appName:Ljava/lang/String;

.field private appWebKey:Ljava/lang/String;

.field private canReadICCID:Z

.field private canReadMacAddress:Z

.field private canReadNearbyWifiList:Z

.field private enableDebug:Z

.field private showNotification:Z


# direct methods
.method public constructor <init>()V
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->showNotification:Z

    iput-boolean v0, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->canReadMacAddress:Z

    iput-boolean v0, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->canReadNearbyWifiList:Z

    iput-boolean v0, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->canReadICCID:Z

    return-void
.end method

.method static synthetic access$000(Lcom/kwad/sdk/api/SdkConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->enableDebug:Z

    return p0
.end method

.method static synthetic access$002(Lcom/kwad/sdk/api/SdkConfig$Builder;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->enableDebug:Z

    return p1
.end method

.method static synthetic access$100(Lcom/kwad/sdk/api/SdkConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->appId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$102(Lcom/kwad/sdk/api/SdkConfig$Builder;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->appId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/kwad/sdk/api/SdkConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->appName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lcom/kwad/sdk/api/SdkConfig$Builder;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->appName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$300(Lcom/kwad/sdk/api/SdkConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->appKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lcom/kwad/sdk/api/SdkConfig$Builder;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->appKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/kwad/sdk/api/SdkConfig$Builder;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->appWebKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$402(Lcom/kwad/sdk/api/SdkConfig$Builder;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->appWebKey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$500(Lcom/kwad/sdk/api/SdkConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->showNotification:Z

    return p0
.end method

.method static synthetic access$502(Lcom/kwad/sdk/api/SdkConfig$Builder;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->showNotification:Z

    return p1
.end method

.method static synthetic access$600(Lcom/kwad/sdk/api/SdkConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->canReadMacAddress:Z

    return p0
.end method

.method static synthetic access$602(Lcom/kwad/sdk/api/SdkConfig$Builder;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->canReadMacAddress:Z

    return p1
.end method

.method static synthetic access$700(Lcom/kwad/sdk/api/SdkConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->canReadNearbyWifiList:Z

    return p0
.end method

.method static synthetic access$702(Lcom/kwad/sdk/api/SdkConfig$Builder;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->canReadNearbyWifiList:Z

    return p1
.end method

.method static synthetic access$800(Lcom/kwad/sdk/api/SdkConfig$Builder;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->canReadICCID:Z

    return p0
.end method

.method static synthetic access$802(Lcom/kwad/sdk/api/SdkConfig$Builder;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->canReadICCID:Z

    return p1
.end method


# virtual methods
.method public appId(Ljava/lang/String;)Lcom/kwad/sdk/api/SdkConfig$Builder;
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iput-object p1, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public appKey(Ljava/lang/String;)Lcom/kwad/sdk/api/SdkConfig$Builder;
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iput-object p1, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->appKey:Ljava/lang/String;

    return-object p0
.end method

.method public appName(Ljava/lang/String;)Lcom/kwad/sdk/api/SdkConfig$Builder;
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iput-object p1, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->appName:Ljava/lang/String;

    return-object p0
.end method

.method public appWebKey(Ljava/lang/String;)Lcom/kwad/sdk/api/SdkConfig$Builder;
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iput-object p1, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->appWebKey:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/kwad/sdk/api/SdkConfig;
    .registers 3
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    new-instance v0, Lcom/kwad/sdk/api/SdkConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/kwad/sdk/api/SdkConfig;-><init>(Lcom/kwad/sdk/api/SdkConfig$Builder;Lcom/kwad/sdk/api/SdkConfig$1;)V

    return-object v0
.end method

.method public canReadICCID(Z)Lcom/kwad/sdk/api/SdkConfig$Builder;
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iput-boolean p1, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->canReadICCID:Z

    return-object p0
.end method

.method public canReadMacAddress(Z)Lcom/kwad/sdk/api/SdkConfig$Builder;
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iput-boolean p1, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->canReadMacAddress:Z

    return-object p0
.end method

.method public canReadNearbyWifiList(Z)Lcom/kwad/sdk/api/SdkConfig$Builder;
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iput-boolean p1, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->canReadNearbyWifiList:Z

    return-object p0
.end method

.method public debug(Z)Lcom/kwad/sdk/api/SdkConfig$Builder;
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iput-boolean p1, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->enableDebug:Z

    return-object p0
.end method

.method public showNotification(Z)Lcom/kwad/sdk/api/SdkConfig$Builder;
    .registers 2
    .annotation runtime Lcom/kwad/sdk/api/core/KsAdSdkApi;
    .end annotation

    iput-boolean p1, p0, Lcom/kwad/sdk/api/SdkConfig$Builder;->showNotification:Z

    return-object p0
.end method
