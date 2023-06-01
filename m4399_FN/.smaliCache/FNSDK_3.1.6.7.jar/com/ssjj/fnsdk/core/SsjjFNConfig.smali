.class public final Lcom/ssjj/fnsdk/core/SsjjFNConfig;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;,
        Lcom/ssjj/fnsdk/core/SsjjFNConfig$a;
    }
.end annotation


# static fields
.field public static final CODE_LOAD_FAIL:I = 0x0

.field public static final CODE_LOAD_SUCC:I = 0x1

.field public static final TYPE_EXIT_DIALOG:I = 0x3

.field private static h:Lcom/ssjj/fnsdk/core/SsjjFNConfig;


# instance fields
.field protected a:Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;

.field protected b:Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;

.field protected c:Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;

.field protected d:Lcom/ssjj/fnsdk/core/SsjjFNConfig$a;

.field protected e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;",
            ">;"
        }
    .end annotation
.end field

.field protected f:J

.field protected g:J

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ssjj/fnsdk/core/SsjjFNListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->h:Lcom/ssjj/fnsdk/core/SsjjFNConfig;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->a:Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->b:Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->c:Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->d:Lcom/ssjj/fnsdk/core/SsjjFNConfig$a;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->e:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->f:J

    iput-wide v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->g:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->i:Ljava/util/List;

    return-void
.end method

.method private a(Lorg/json/JSONObject;)Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;
    .registers 9

    const-string v0, "servers"

    const-string v1, "startTime"

    const-string v2, "msg"

    const-string v3, "enable"

    :try_start_8
    new-instance v4, Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;

    invoke-direct {v4, p0}, Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNConfig;)V

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;->enable:Ljava/lang/String;

    :cond_19
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;->msg:Ljava/lang/String;

    :cond_25
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v1

    const-wide/16 v5, 0x3e8

    mul-long v1, v1, v5

    iput-wide v1, v4, Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;->startTime:J

    :cond_35
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v4, Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;->servers:Ljava/lang/String;
    :try_end_41
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_41} :catch_42

    goto :goto_47

    :catch_42
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v4, 0x0

    :cond_47
    :goto_47
    return-object v4
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;
    .registers 5

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->a(Lorg/json/JSONObject;)Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;

    move-result-object v0
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_14
    :goto_14
    return-object v0
.end method

.method private a(I)V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_20

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v1, :cond_6

    const-string v2, ""

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1c

    goto :goto_6

    :catch_1c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_20
    return-void
.end method

.method private b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/SsjjFNConfig$a;
    .registers 7

    const-string v0, "bindDelay"

    const-string v1, "enable"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_35

    :try_start_b
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    new-instance p2, Lcom/ssjj/fnsdk/core/SsjjFNConfig$a;

    invoke-direct {p2, p0}, Lcom/ssjj/fnsdk/core/SsjjFNConfig$a;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNConfig;)V
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_14} :catch_31

    :try_start_14
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p2, Lcom/ssjj/fnsdk/core/SsjjFNConfig$a;->a:Ljava/lang/String;

    :cond_20
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p2, Lcom/ssjj/fnsdk/core/SsjjFNConfig$a;->b:I
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_2c} :catch_2e

    :cond_2c
    move-object v3, p2

    goto :goto_35

    :catch_2e
    move-exception p1

    move-object v3, p2

    goto :goto_32

    :catch_31
    move-exception p1

    :goto_32
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_35
    :goto_35
    return-object v3
.end method

.method private c(Lorg/json/JSONObject;Ljava/lang/String;)J
    .registers 3

    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_8

    :catch_5
    move-exception p1

    const-wide/16 p1, 0x0

    :goto_8
    return-wide p1
.end method

.method public static getInstance()Lcom/ssjj/fnsdk/core/SsjjFNConfig;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->h:Lcom/ssjj/fnsdk/core/SsjjFNConfig;

    if-nez v0, :cond_b

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNConfig;-><init>()V

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->h:Lcom/ssjj/fnsdk/core/SsjjFNConfig;

    :cond_b
    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->h:Lcom/ssjj/fnsdk/core/SsjjFNConfig;

    return-object v0
.end method


# virtual methods
.method protected a()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 11

    const-string v0, "id"

    const-string v1, "plugins"

    const-string v2, "serverTime"

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->a:Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;

    iput-object v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->b:Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;

    iput-object v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->c:Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->f:J

    iput-wide v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->g:J

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->e:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    const/4 v3, 0x0

    if-eqz p1, :cond_c0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_c0

    const-string v4, "[]"

    const-string v5, "{}"

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :try_start_2d
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "exitDlg"

    invoke-direct {p0, v4, p1}, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->a:Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;

    const-string p1, "pay"

    invoke-direct {p0, v4, p1}, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->b:Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;

    const-string p1, "login"

    invoke-direct {p0, v4, p1}, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->a(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->c:Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;

    const-string p1, "tempUser"

    invoke-direct {p0, v4, p1}, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->b(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/ssjj/fnsdk/core/SsjjFNConfig$a;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->d:Lcom/ssjj/fnsdk/core/SsjjFNConfig$a;

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_68

    invoke-direct {p0, v4, v2}, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->c(Lorg/json/JSONObject;Ljava/lang/String;)J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    iput-wide v5, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->f:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->g:J
    :try_end_68
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_68} :catch_bc

    :cond_68
    const/4 p1, 0x1

    :try_start_69
    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b6

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    :goto_73
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v3, v2, :cond_7a

    goto :goto_b6

    :cond_7a
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v2}, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->a(Lorg/json/JSONObject;)Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;

    move-result-object v2

    if-eqz v2, :cond_b3

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->e:Ljava/util/Map;

    invoke-interface {v5, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b3

    :cond_a1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "err: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V
    :try_end_b3
    .catch Lorg/json/JSONException; {:try_start_69 .. :try_end_b3} :catch_b8

    :cond_b3
    :goto_b3
    add-int/lit8 v3, v3, 0x1

    goto :goto_73

    :cond_b6
    :goto_b6
    const/4 v3, 0x1

    goto :goto_c0

    :catch_b8
    move-exception v0

    move-object p1, v0

    const/4 v3, 0x1

    goto :goto_bd

    :catch_bc
    move-exception p1

    :goto_bd
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_c0
    :goto_c0
    invoke-direct {p0, v3}, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->a(I)V

    return-void
.end method

.method public addConfigResultListener(Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getPluginItems()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->e:Ljava/util/Map;

    return-object v0
.end method

.method public isDisabled(I)Z
    .registers 13

    packed-switch p1, :pswitch_data_46

    const/4 v0, 0x0

    goto :goto_d

    :pswitch_5
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->a:Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;

    goto :goto_d

    :pswitch_8
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->b:Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;

    goto :goto_d

    :pswitch_b
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->c:Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;

    :goto_d
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_21

    iget-object v3, v0, Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;->enable:Ljava/lang/String;

    if-eqz v3, :cond_21

    iget-object v3, v0, Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;->enable:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v3, 0x1

    goto :goto_22

    :cond_21
    const/4 v3, 0x0

    :goto_22
    if-nez v3, :cond_25

    return v2

    :cond_25
    const/4 v3, 0x3

    if-ne p1, v3, :cond_29

    return v1

    :cond_29
    iget-wide v3, v0, Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;->startTime:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_43

    iget-wide v3, v0, Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;->startTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v3, v7

    iget-wide v7, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->f:J

    iget-wide v9, p0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->g:J

    sub-long/2addr v7, v9

    sub-long/2addr v3, v7

    cmp-long p1, v3, v5

    if-gez p1, :cond_43

    goto :goto_44

    :cond_43
    const/4 v1, 0x0

    :goto_44
    return v1

    nop

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method
