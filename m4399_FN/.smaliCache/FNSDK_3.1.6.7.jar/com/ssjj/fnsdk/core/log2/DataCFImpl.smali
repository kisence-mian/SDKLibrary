.class public Lcom/ssjj/fnsdk/core/log2/DataCFImpl;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "aHR0cHM6Ly95LjQzOTlkYXRhLmNvbS9kYXRhY2YvYXBpL3B1c2g="

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;->a:Ljava/lang/String;

    const-string v0, "ZDk4MjEwNzc2Yjg3MDljYzNmOWYxMGJhYzM2MWRmOWY="

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;->c:Landroid/content/Context;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;->b:Ljava/lang/String;

    return-object v0
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    .registers 6

    invoke-static {}, Lcom/ssjj/fnsdk/core/http/FNHttp;->create()Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    move-result-object v0

    sget-object v1, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->url(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->method(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    move-result-object v0

    new-instance v1, Lcom/ssjj/fnsdk/core/log2/a;

    invoke-direct {v1, p0, p3, p2}, Lcom/ssjj/fnsdk/core/log2/a;-><init>(Lcom/ssjj/fnsdk/core/log2/DataCFImpl;Lorg/json/JSONObject;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->beforeRequestAsync(Lcom/ssjj/fnsdk/core/http/FNHttpBeforeRequestListener;)Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    move-result-object p2

    new-instance p3, Lcom/ssjj/fnsdk/core/log2/b;

    invoke-direct {p3, p0}, Lcom/ssjj/fnsdk/core/log2/b;-><init>(Lcom/ssjj/fnsdk/core/log2/DataCFImpl;)V

    invoke-virtual {p2, p3}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->afterRequestAsync(Lcom/ssjj/fnsdk/core/http/FNHttpAfterRequestListener;)Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->exec(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public logAppOpen()V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;->c:Landroid/content/Context;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "MuTBIhzZOrQLO0O0OBO0O0Om"

    invoke-direct {p0, v0, v2, v1}, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method

.method public logBeforeLogin()V
    .registers 1

    return-void
.end method

.method public logCreateRole(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getRoleId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, ""

    :cond_c
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "0"

    if-eqz v2, :cond_1d

    move-object v1, v3

    :cond_1d
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    :try_start_22
    const-string v4, "uid"

    invoke-virtual {v2, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "username"

    invoke-virtual {v2, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "logintype"

    sget-object v1, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->loginType:Ljava/lang/String;

    invoke-virtual {v2, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "utype"

    invoke-virtual {v2, p2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "server"

    invoke-virtual {v2, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "roleid"

    invoke-virtual {v2, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "rolename"

    invoke-virtual {v2, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;->c:Landroid/content/Context;

    const-string p2, "MuTBIh0ZMrgLO0O0OBO0O0Om"

    invoke-direct {p0, p1, p2, v2}, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_4e
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_4e} :catch_4f

    goto :goto_50

    :catch_4f
    move-exception p1

    :goto_50
    return-void
.end method

.method public logCustomEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getRoleId()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-nez v0, :cond_d

    move-object v0, v1

    :cond_d
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getRoleName()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_18

    move-object v2, v1

    :cond_18
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getServerId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_23

    goto :goto_24

    :cond_23
    move-object v1, v3

    :goto_24
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "0"

    if-eqz v4, :cond_35

    move-object v3, v5

    :cond_35
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_3a
    const-string v6, "uid"

    iget-object v7, p0, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;->d:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "username"

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "logintype"

    sget-object v6, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->loginType:Ljava/lang/String;

    invoke-virtual {v4, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "utype"

    invoke-virtual {v4, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "server"

    invoke-virtual {v4, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "roleid"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "rolename"

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "Event"

    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "eventname"

    invoke-virtual {v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "eventvalue"

    invoke-virtual {v4, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;->c:Landroid/content/Context;

    const-string p2, "MuTBIh0ZNrgLO0O0OBO0O0Om"

    invoke-direct {p0, p1, p2, v4}, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_77
    .catch Lorg/json/JSONException; {:try_start_3a .. :try_end_77} :catch_78

    goto :goto_79

    :catch_78
    move-exception p1

    :goto_79
    return-void
.end method

.method public logEnterGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    return-void
.end method

.method public logLoginFinish(Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;->d:Ljava/lang/String;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "0"

    if-eqz v1, :cond_13

    move-object v0, v2

    :cond_13
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_18
    const-string v3, "uid"

    invoke-virtual {v1, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "username"

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "logintype"

    sget-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->loginType:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "utype"

    invoke-virtual {v1, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;->c:Landroid/content/Context;

    const-string v0, "MuTBIh0ZMrALO0O0OBO0O0Om"

    invoke-direct {p0, p1, v0, v1}, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_35
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_35} :catch_36

    goto :goto_37

    :catch_36
    move-exception p1

    :goto_37
    return-void
.end method

.method public logRegister(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "uid"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "username"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "logintype"

    sget-object p2, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->loginType:Ljava/lang/String;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "utype"

    const-string p2, "0"

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;->c:Landroid/content/Context;

    const-string p2, "MuTBIhzZOrALO0O0OBO0O0Om"

    invoke-direct {p0, p1, p2, v0}, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_24} :catch_25

    goto :goto_26

    :catch_25
    move-exception p1

    :goto_26
    return-void
.end method

.method public logRoleLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    return-void
.end method

.method public logSelectServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    :try_start_0
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_c} :catch_43

    const-string v2, "0"

    if-eqz v1, :cond_11

    move-object v0, v2

    :cond_11
    :try_start_11
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "uid"

    invoke-virtual {v1, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "username"

    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "logintype"

    sget-object v0, Lcom/ssjj/fnsdk/core/log2/ChannelEnv;->loginType:Ljava/lang/String;

    invoke-virtual {v1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "utype"

    invoke-virtual {v1, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "server"

    invoke-virtual {v1, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "rolelevel"

    invoke-virtual {v1, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "f3"

    invoke-virtual {v1, p1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;->c:Landroid/content/Context;

    const-string p2, "MuTBIh0ZMrQLO0O0OBO0O0Om"

    invoke-direct {p0, p1, p2, v1}, Lcom/ssjj/fnsdk/core/log2/DataCFImpl;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_42} :catch_43

    goto :goto_44

    :catch_43
    move-exception p1

    :goto_44
    return-void
.end method

.method public logUserOnline(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    return-void
.end method
