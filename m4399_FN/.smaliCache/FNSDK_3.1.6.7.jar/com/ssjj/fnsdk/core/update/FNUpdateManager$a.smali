.class Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ssjj/fnsdk/core/update/FNUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
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
.field a:Landroid/content/Context;

.field b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

.field c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

.field d:Z

.field e:Ljava/lang/String;

.field f:Ljava/lang/String;

.field final synthetic g:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;


# direct methods
.method private constructor <init>(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 5

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->g:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->d:Z

    sget-object p1, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_UPDATE:Ljava/lang/String;

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->e:Ljava/lang/String;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->f:Ljava/lang/String;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    new-instance p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p3, "client_id"

    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    invoke-virtual {p1, p3, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p3, "fnpid"

    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    invoke-virtual {p1, p3, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p3, "pkg_name"

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getAppVersion()Ljava/lang/String;

    move-result-object p2

    const-string p3, "app_version"

    invoke-virtual {p1, p3, p2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getChannel()Ljava/lang/String;

    move-result-object p2

    const-string p3, "channel"

    invoke-virtual {p1, p3, p2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getSyChannel()Ljava/lang/String;

    move-result-object p2

    const-string p3, "channelSy"

    invoke-virtual {p1, p3, p2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object p2

    const-string p3, "did"

    invoke-virtual {p1, p3, p2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getCustomUpdateKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getCustomUpdateValue()Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_96

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_96

    if-eqz p2, :cond_96

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    if-lez p3, :cond_96

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-virtual {p3, p1, p2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_96
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-virtual {p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fillParam(Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p2, "cid"

    sget-object p3, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->cid:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p2, "oid"

    sget-object p3, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->oid:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p2, "aid"

    sget-object p3, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->aid:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p2, "ssrc"

    sget-object p3, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->ssrc:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p2, "skwid"

    sget-object p3, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->skwid:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p2, "projectId"

    sget-object p3, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->projectId:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    const-string p2, "loginType"

    sget-object p3, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->loginType:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNListener;Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;-><init>(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->getInstance()Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->fillSmartUpdateParams(Landroid/content/Context;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->e:Ljava/lang/String;

    const-string v1, "GET"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-static {p1, v0, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)Ljava/lang/String;

    move-result-object p1
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_32

    :catch_18
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "exception:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->f:Ljava/lang/String;

    const/4 p1, 0x0

    :goto_32
    return-object p1
.end method

.method protected a(Ljava/lang/String;)V
    .registers 10

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->d:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->f:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_17

    sget p1, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->CODE_CHECK_UPDATE_FAILED:I

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->f:Ljava/lang/String;

    invoke-interface {v0, p1, v2, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_17
    return-void

    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-static {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->toUrl(Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)Ljava/lang/String;

    move-result-object v0
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1e} :catch_d7

    const-string v2, "check_update_error#"

    const-string v3, "error"

    const-string v4, "fn_update"

    const-string v5, "#\uff1a"

    if-eqz p1, :cond_97

    :try_start_28
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_33

    goto :goto_97

    :cond_33
    if-eqz p1, :cond_db

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "<!DOCTYPE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4d

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v7, "{"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_db

    :cond_4d
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u66f4\u65b0\u63a5\u53e3\u9519\u8bef\uff0c\u8fd4\u56dehtml\u9875\u9762#"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->getNM(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "\n\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->getInstance()Lcom/ssjj/fnsdk/core/StatManager;

    move-result-object v5

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->a:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v4, v3, v2}, Lcom/ssjj/fnsdk/core/StatManager;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v2, :cond_96

    sget v3, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->CODE_CHECK_UPDATE_EXCEPTION:I

    invoke-interface {v2, v3, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_96
    return-void

    :cond_97
    :goto_97
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "\u66f4\u65b0\u63a5\u53e3\u9519\u8bef\uff0c\u8fd4\u56de\u7a7a#"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->a:Landroid/content/Context;

    invoke-static {v7}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->getNM(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->getInstance()Lcom/ssjj/fnsdk/core/StatManager;

    move-result-object v5

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->a:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v4, v3, v2}, Lcom/ssjj/fnsdk/core/StatManager;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v2, :cond_d6

    sget v3, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->CODE_CHECK_UPDATE_EXCEPTION:I

    invoke-interface {v2, v3, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_d6} :catch_d7

    :cond_d6
    return-void

    :catch_d7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_db
    sget v0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->CODE_CHECK_NO_UPDATE:I

    new-instance v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->a:Landroid/content/Context;

    invoke-direct {v1, v2, p1}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance p1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->k()Z

    move-result v2

    if-eqz v2, :cond_fa

    sget v0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->CODE_CHECK_HAS_UPDATE:I

    const-string v2, "savePath"

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_fa
    const-string v2, "item"

    invoke-virtual {p1, v2, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->putObj(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v1, :cond_108

    const-string v2, ""

    invoke-interface {v1, v0, v2, p1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_108
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->a(Ljava/lang/String;)V

    return-void
.end method
