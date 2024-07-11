.class public Lcom/kwad/sdk/core/video/a/a/b;
.super Lcom/kwad/sdk/core/network/b;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/sdk/core/video/a/a/c;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/kwad/sdk/core/network/b;-><init>()V

    const-string v0, "actionList"

    invoke-virtual {p0, v0, p1}, Lcom/kwad/sdk/core/video/a/a/b;->a(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/kwad/sdk/d;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected e()V
    .registers 1

    return-void
.end method

.method protected f()V
    .registers 3

    const-string v0, "protocolVersion"

    const-string v1, "2.0"

    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/core/video/a/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SDKVersion"

    const-string v1, "3.3.6"

    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/core/video/a/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "SDKVersionCode"

    const v1, 0x2e3e48

    invoke-virtual {p0, v0, v1}, Lcom/kwad/sdk/core/video/a/a/b;->a(Ljava/lang/String;I)V

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getApiVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdkApiVersion"

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/video/a/a/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/kwad/sdk/KsAdSDKImpl;->get()Lcom/kwad/sdk/KsAdSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/kwad/sdk/KsAdSDKImpl;->getApiVersionCode()I

    move-result v0

    const-string v1, "sdkApiVersionCode"

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/video/a/a/b;->a(Ljava/lang/String;I)V

    sget v0, Lcom/kwad/sdk/d;->a:I

    const-string v1, "sdkType"

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/video/a/a/b;->a(Ljava/lang/String;I)V

    invoke-static {}, Lcom/kwad/sdk/core/g/a/b;->a()Lcom/kwad/sdk/core/g/a/b;

    move-result-object v0

    const-string v1, "appInfo"

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/video/a/a/b;->a(Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/kwad/sdk/core/g/a/c;->a(Z)Lcom/kwad/sdk/core/g/a/c;

    move-result-object v0

    const-string v1, "deviceInfo"

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/video/a/a/b;->a(Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    invoke-static {}, Lcom/kwad/sdk/core/g/a/h;->a()Lcom/kwad/sdk/core/g/a/h;

    move-result-object v0

    const-string v1, "networkInfo"

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/video/a/a/b;->a(Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    invoke-static {}, Lcom/kwad/sdk/core/g/a/d;->a()Lcom/kwad/sdk/core/g/a/d;

    move-result-object v0

    const-string v1, "geoInfo"

    invoke-virtual {p0, v1, v0}, Lcom/kwad/sdk/core/video/a/a/b;->a(Ljava/lang/String;Lcom/kwad/sdk/core/b;)V

    return-void
.end method
