.class Lcom/ssjj/fnsdk/core/bi;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/http/FNHttpBeforeRequestListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/bi;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/bi;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeRequest(Lcom/ssjj/fnsdk/core/http/FNHttpRequest;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "b68f05cd86e6633e9e012663ef4727e3"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/bi;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ip"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/bi;->b:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object p1

    const-string v1, "sign"

    invoke-virtual {p1, v1, v0}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bi;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v0

    const-string v1, "did"

    invoke-virtual {p1, v1, v0}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bi;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    const-string v1, "appVersion"

    invoke-virtual {p1, v1, v0}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bi;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sdkVersion"

    invoke-virtual {p1, v1, v0}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object p1

    const-string v0, "nickname"

    const-string v1, "0"

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object p1

    const-string v0, "platformId"

    sget-object v2, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object p1

    const-string v0, "gameId"

    sget-object v2, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object p1

    const-string v0, "areaId"

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object p1

    const-string v0, "os"

    const-string v1, "android"

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object p1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const-string v2, ""

    if-nez v0, :cond_79

    move-object v0, v2

    goto :goto_7b

    :cond_79
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_7b
    const-string v3, "osVersion"

    invoke-virtual {p1, v3, v0}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object p1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v0, :cond_87

    move-object v0, v2

    goto :goto_89

    :cond_87
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_89
    const-string v3, "device"

    invoke-virtual {p1, v3, v0}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object p1

    const-string v0, "deviceType"

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bi;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getScreen()Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen"

    invoke-virtual {p1, v1, v0}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bi;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getMno()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mno"

    invoke-virtual {p1, v1, v0}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bi;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getNm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nm"

    invoke-virtual {p1, v1, v0}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bi;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->f(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eventTime"

    invoke-virtual {p1, v1, v0}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bi;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->b(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "channel"

    invoke-virtual {p1, v1, v0}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bi;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "channelOld"

    invoke-virtual {p1, v1, v0}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bi;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->c(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "channelSy"

    invoke-virtual {p1, v1, v0}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bi;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_f6

    goto :goto_100

    :cond_f6
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bi;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_100
    const-string v0, "pkgName"

    invoke-virtual {p1, v0, v2}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bi;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->emulatorStr()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sim"

    invoke-virtual {p1, v1, v0}, Lcom/ssjj/fnsdk/core/http/FNHttpRequest;->addParam(Ljava/lang/String;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpRequest;

    return-void
.end method
