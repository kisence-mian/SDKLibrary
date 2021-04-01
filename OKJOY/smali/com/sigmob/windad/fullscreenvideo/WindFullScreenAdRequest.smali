.class public Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;
.super Lcom/sigmob/windad/WindAdRequest;


# instance fields
.field private b:Z

.field private c:Z


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

    invoke-direct {p0, p1, p2, p3}, Lcom/sigmob/windad/WindAdRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x4

    iput v0, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;->a:I

    return-void
.end method


# virtual methods
.method public isEnableKeepOn()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;->c:Z

    return v0
.end method

.method public isEnableScreenLockDisPlayAd()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;->b:Z

    return v0
.end method

.method public setEnableKeepOn(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;->c:Z

    return-void
.end method

.method public setEnableScreenLockDisPlayAd(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/sigmob/windad/fullscreenvideo/WindFullScreenAdRequest;->b:Z

    return-void
.end method
