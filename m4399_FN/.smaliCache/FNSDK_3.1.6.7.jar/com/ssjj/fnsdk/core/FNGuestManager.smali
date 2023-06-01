.class public Lcom/ssjj/fnsdk/core/FNGuestManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/ssjj/fnsdk/core/FNGuestManager;


# instance fields
.field public LOGINTYPE_TEMP:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ssjj/fnsdk/core/FNGuestManager;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/FNGuestManager;-><init>()V

    sput-object v0, Lcom/ssjj/fnsdk/core/FNGuestManager;->a:Lcom/ssjj/fnsdk/core/FNGuestManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/ssjj/fnsdk/core/FNGuestManager;->LOGINTYPE_TEMP:I

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/FNGuestManager;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/FNGuestManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;)Z

    move-result p0

    return p0
.end method

.method private a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;)Z
    .registers 12

    const-string v0, "temp_uid"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "temp_name"

    invoke-virtual {p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_11
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getChannel()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "loginType"

    iget v6, p0, Lcom/ssjj/fnsdk/core/FNGuestManager;->LOGINTYPE_TEMP:I

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v5, "fnUidType"

    const-string v6, "temp"

    invoke-virtual {v1, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "tempUid"

    invoke-virtual {v1, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "did"

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "channel"

    invoke-virtual {v1, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "time"

    invoke-virtual {v1, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v5, "sign"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "fnpid"

    sget-object v3, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_platformId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "fngid"

    sget-object v3, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_gameId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v2, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_platformId:Ljava/lang/String;

    sget-object v3, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a4

    const-string v2, "fnpidraw"

    sget-object v3, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "fntagraw"

    sget-object v3, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatTag:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_9f
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_9f} :catch_a0

    goto :goto_a4

    :catch_a0
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_a4
    :goto_a4
    new-instance v2, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;

    invoke-direct {v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;-><init>()V

    iput-object v0, v2, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->uid:Ljava/lang/String;

    iput-object p1, v2, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->name:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;->ext:Ljava/lang/String;

    if-eqz p2, :cond_b8

    invoke-interface {p2, v2}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;->onLoginSucceed(Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;)V

    :cond_b8
    const/4 p1, 0x1

    return p1
.end method

.method public static getInstance()Lcom/ssjj/fnsdk/core/FNGuestManager;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/core/FNGuestManager;->a:Lcom/ssjj/fnsdk/core/FNGuestManager;

    return-object v0
.end method


# virtual methods
.method public canGuestLoginDirectly(Landroid/app/Activity;)Z
    .registers 3

    const-string v0, "canGuestLoginDirectly"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->checkAuto(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method public canShowBindButton()Z
    .registers 2

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->checkCanPay()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public canShowGuestLoginButton(Landroid/app/Activity;)Z
    .registers 3

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->needShowTempLoginButton(Landroid/app/Activity;)Z

    move-result p1

    return p1
.end method

.method public clearGuestLocal(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "clearGuestLocal"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->clearFlag(Landroid/content/Context;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->clearTemp(Landroid/content/Context;)V

    return-void
.end method

.method public guestLogin(Landroid/app/Activity;)V
    .registers 5

    const-string v0, "guestLogin"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    move-result-object v0

    new-instance v1, Lcom/ssjj/fnsdk/core/e;

    invoke-direct {v1, p0, p1}, Lcom/ssjj/fnsdk/core/e;-><init>(Lcom/ssjj/fnsdk/core/FNGuestManager;Landroid/app/Activity;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->tempLogin(Landroid/app/Activity;ZLcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method public setCheckBindListener(Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListener;)V
    .registers 3

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->setCheckBindListener(Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListener;)V

    return-void
.end method

.method public setCheckBindResult(ZLjava/lang/String;)V
    .registers 4

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->onSetCheckBindResult(ZLjava/lang/String;)V

    return-void
.end method

.method public startBind(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "startBind -> guest bind"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    move-result-object v0

    const-string v1, "temp_bind_login_start_by_game"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b(Landroid/app/Activity;)V

    return-void
.end method
