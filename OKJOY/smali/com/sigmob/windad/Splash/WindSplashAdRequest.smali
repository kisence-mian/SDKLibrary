.class public Lcom/sigmob/windad/Splash/WindSplashAdRequest;
.super Lcom/sigmob/windad/WindAdRequest;


# instance fields
.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sigmob/windad/WindAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->e:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ILjava/lang/String;Ljava/lang/String;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sigmob/windad/WindAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;I)V

    const/4 v0, 0x5

    iput v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->b:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->e:Z

    iput p4, p0, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->b:I

    iput-object p5, p0, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->c:Ljava/lang/String;

    iput-object p6, p0, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->d:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->e:Z

    return-void
.end method


# virtual methods
.method public getAppDesc()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getAppTitle()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getFetchDelay()I
    .registers 2

    iget v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->b:I

    return v0
.end method

.method public isDisableAutoHideAd()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->e:Z

    return v0
.end method

.method public setAppDesc(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public setAppTitle(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->c:Ljava/lang/String;

    return-void
.end method

.method public setDisableAutoHideAd(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->e:Z

    return-void
.end method

.method public setFetchDelay(I)V
    .registers 2

    iput p1, p0, Lcom/sigmob/windad/Splash/WindSplashAdRequest;->b:I

    return-void
.end method
