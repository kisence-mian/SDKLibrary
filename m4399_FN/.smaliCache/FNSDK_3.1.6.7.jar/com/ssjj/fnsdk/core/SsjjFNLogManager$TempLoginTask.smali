.class public Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/SsjjFNLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TempLoginTask"
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

.field d:Z

.field e:Ljava/lang/String;

.field final synthetic f:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;


# direct methods
.method public constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->f:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    sget-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_TEMPLOGIN:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->b:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->e:Ljava/lang/String;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->c:Landroid/content/Context;

    new-instance p2, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {p2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    :try_start_18
    const-string v0, "fngid"

    sget-object v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string v0, "fnpid"

    sget-object v1, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_platformId:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string v0, "fnpidraw"

    sget-object v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string v0, "fnatag"

    const-string v1, "cn"

    invoke-virtual {p2, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string v0, "did"

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string v0, "appver"

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string v0, "sdkver"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string v0, "osver"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_61
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_61} :catch_148

    const-string v2, ""

    if-nez v1, :cond_67

    move-object v1, v2

    goto :goto_69

    :cond_67
    :try_start_67
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_69
    invoke-virtual {p2, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string v0, "device"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v1, :cond_76

    move-object v1, v2

    goto :goto_78

    :cond_76
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_78
    invoke-virtual {p2, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string v0, "screen"

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string v0, "mno"

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getMno()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string v0, "nm"

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getNm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string v0, "channel"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->b(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string v0, "channelSy"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->c(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-virtual {p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fillParam(Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string v0, "pkg"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_c3

    move-object v1, v2

    goto :goto_cb

    :cond_c3
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_cb
    invoke-virtual {p2, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string v0, "pkgName"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_d9

    goto :goto_e1

    :cond_d9
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_e1
    invoke-virtual {p2, v0, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string v0, "os"

    const-string v1, "android"

    invoke-virtual {p2, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string v1, "time"

    invoke-virtual {v0, v1, p2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string v1, "tempuid"

    invoke-virtual {v0, v1, p3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_platformId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->b(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p3, "sign"

    invoke-virtual {p2, p3, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_147
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_147} :catch_148

    goto :goto_149

    :catch_148
    move-exception p1

    :goto_149
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->b:Ljava/lang/String;

    const-string v1, "GET"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->a:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-static {p1, v0, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)Ljava/lang/String;

    move-result-object p1
    :try_end_c
    .catch Lcom/ssjj/fnsdk/core/SsjjFNException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_18

    :catch_d
    move-exception p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNException;->printStackTrace()V

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNException;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->e:Ljava/lang/String;

    const/4 p1, 0x0

    :goto_18
    return-object p1
.end method

.method protected a(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->a(Ljava/lang/String;)V

    return-void
.end method
