.class Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/SsjjFNLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

.field b:Ljava/lang/String;

.field c:Landroid/content/Context;

.field d:Ljava/lang/String;

.field e:Z

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:[B

.field j:Lcom/ssjj/fnsdk/core/SsjjFNListener;

.field final synthetic k:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;


# direct methods
.method public constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 13

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->k:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    sget-object p8, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_UP:Ljava/lang/String;

    iput-object p8, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->b:Ljava/lang/String;

    const/4 p8, 0x0

    iput-object p8, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->e:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->h:Ljava/lang/String;

    iput-object p8, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->i:[B

    iput-object p8, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->j:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->c:Landroid/content/Context;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->f:Ljava/lang/String;

    iput-object p6, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->g:Ljava/lang/String;

    iput-object p11, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->j:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iput-object p7, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->i:[B

    new-instance p2, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {p2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    :try_start_2c
    const-string p5, "fngid"

    sget-object p6, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    invoke-virtual {p2, p5, p6}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p5, "fnpid"

    sget-object p6, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_platformId:Ljava/lang/String;

    invoke-virtual {p2, p5, p6}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p5, "fnpidraw"

    sget-object p6, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    invoke-virtual {p2, p5, p6}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p5, "fnatag"

    const-string p6, "cn"

    invoke-virtual {p2, p5, p6}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p9}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_56

    sget-object p9, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->UP_IMAGE_TYPE_ICON:Ljava/lang/String;

    :cond_56
    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p5, "imgType"

    invoke-virtual {p2, p5, p9}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1, p10}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_6a

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p5, "imgSize"

    invoke-virtual {p2, p5, p10}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6a
    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p5, "did"

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p2, p5, p6}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p5, "uid"

    invoke-virtual {p2, p5, p3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p5, "fntoken"

    invoke-virtual {p2, p5, p4}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p5, "appver"

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getAppVersion()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p2, p5, p6}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p5, "sdkver"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p2, p5, p6}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p5, "osver"

    sget-object p6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez p6, :cond_a3

    move-object p6, v0

    goto :goto_a5

    :cond_a3
    sget-object p6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_a5
    invoke-virtual {p2, p5, p6}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p5, "device"

    sget-object p6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez p6, :cond_b2

    move-object p6, v0

    goto :goto_b4

    :cond_b2
    sget-object p6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_b4
    invoke-virtual {p2, p5, p6}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p5, "screen"

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getScreen()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p2, p5, p6}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p5, "mno"

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getMno()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p2, p5, p6}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p5, "nm"

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getNm()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p2, p5, p6}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p5, "channel"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->b(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p2, p5, p6}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p5, "channelSy"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->c(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p2, p5, p6}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-virtual {p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fillParam(Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p5, "pkg"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/Context;

    move-result-object p6

    if-nez p6, :cond_ff

    move-object p6, v0

    goto :goto_107

    :cond_ff
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/Context;

    move-result-object p6

    invoke-virtual {p6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p6

    :goto_107
    invoke-virtual {p2, p5, p6}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p5, "pkgName"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/Context;

    move-result-object p6

    if-nez p6, :cond_115

    goto :goto_11d

    :cond_115
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/Context;

    move-result-object p6

    invoke-virtual {p6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_11d
    invoke-virtual {p2, p5, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p5, "os"

    const-string p6, "android"

    invoke-virtual {p2, p5, p6}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    const-wide/16 p7, 0x3e8

    div-long/2addr p5, p7

    invoke-virtual {p2, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object p5, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p6, "time"

    invoke-virtual {p5, p6, p2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p5, Ljava/lang/StringBuilder;

    sget-object p6, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    invoke-static {p6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p6

    invoke-direct {p5, p6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object p6, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_platformId:Ljava/lang/String;

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->b(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object p6

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p3, "sign"

    invoke-virtual {p2, p3, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_180} :catch_181

    goto :goto_185

    :catch_181
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_185
    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "filedata len = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string v1, "filedata1"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_21
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->c:Landroid/content/Context;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->b:Ljava/lang/String;

    const-string v2, "POST"

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-static {v0, v1, v2, v3}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)Ljava/lang/String;

    move-result-object v0
    :try_end_2d
    .catch Lcom/ssjj/fnsdk/core/SsjjFNException; {:try_start_21 .. :try_end_2d} :catch_2e

    goto :goto_4a

    :catch_2e
    move-exception v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "upload err: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_4a
    return-object v0
.end method

.method private b()Ljava/lang/String;
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :try_start_14
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->b:Ljava/lang/String;

    const-string v3, "POST"

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string v5, "filedata2"

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->g:Ljava/lang/String;

    invoke-static/range {v1 .. v6}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_24
    .catch Lcom/ssjj/fnsdk/core/SsjjFNException; {:try_start_14 .. :try_end_24} :catch_25

    goto :goto_41

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "upload err: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_41
    return-object v0
.end method

.method private c()Ljava/lang/String;
    .registers 9

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fileBuf len = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->i:[B

    if-nez v1, :cond_e

    const-string v1, "null"

    goto :goto_13

    :cond_e
    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :try_start_1e
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->c:Landroid/content/Context;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->b:Ljava/lang/String;

    const-string v3, "POST"

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string v5, "filedata2"

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->i:[B

    iget-object v7, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->h:Ljava/lang/String;

    invoke-static/range {v1 .. v7}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Ljava/lang/String;[BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_30
    .catch Lcom/ssjj/fnsdk/core/SsjjFNException; {:try_start_1e .. :try_end_30} :catch_31

    goto :goto_4d

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->d:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "upload err: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_4d
    return-object v0
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->k:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->f:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_f

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_1c

    :cond_f
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->i:[B

    if-eqz p1, :cond_18

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->c()Ljava/lang/String;

    move-result-object p1

    goto :goto_1c

    :cond_18
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->b()Ljava/lang/String;

    move-result-object p1

    :goto_1c
    return-object p1
.end method

.method protected a(Ljava/lang/String;)V
    .registers 8

    const-string v0, "url"

    iget-boolean v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->e:Z

    if-eqz v1, :cond_7

    return-void

    :cond_7
    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->k:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->j:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v1, :cond_c1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/entity/NetData;->parse(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/entity/NetData;

    move-result-object v1

    new-instance v2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const-string v3, ", "

    const-string v4, ""

    const/4 v5, 0x1

    if-eqz v1, :cond_91

    iget p1, v1, Lcom/ssjj/fnsdk/core/entity/NetData;->code:I

    if-ne p1, v5, :cond_57

    :try_start_25
    new-instance p1, Lorg/json/JSONObject;

    iget-object v3, v1, Lcom/ssjj/fnsdk/core/entity/NetData;->data:Ljava/lang/String;

    invoke-direct {p1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_36} :catch_37

    goto :goto_3b

    :catch_37
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3b
    :goto_3b
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->k:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {p1, v4}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->b(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4f

    invoke-virtual {v2, v0, v4}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->j:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const/4 v0, 0x0

    const-string v1, "\u4e0a\u4f20\u6210\u529f"

    invoke-interface {p1, v0, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_c1

    :cond_4f
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u8fd4\u56de\u503curl\u4e3a\u7a7a\uff1a"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_8a

    :cond_57
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->d:Ljava/lang/String;

    if-nez v0, :cond_61

    goto :goto_74

    :cond_61
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->d:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_74
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, v1, Lcom/ssjj/fnsdk/core/entity/NetData;->code:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ") "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    :goto_8a
    iget-object v0, v1, Lcom/ssjj/fnsdk/core/entity/NetData;->msg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    goto :goto_b8

    :cond_91
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u4e0a\u4f20\u5931\u8d25\uff1a\u8fd4\u56de\u503c\u6709\u8bef  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->d:Ljava/lang/String;

    if-nez v1, :cond_9d

    goto :goto_b0

    :cond_9d
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->d:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_b0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    :goto_b8
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->j:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-interface {v0, v5, p1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_c1
    :goto_c1
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->a(Ljava/lang/String;)V

    return-void
.end method
