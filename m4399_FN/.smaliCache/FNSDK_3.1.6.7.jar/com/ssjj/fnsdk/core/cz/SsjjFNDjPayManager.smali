.class public Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager$a;
    }
.end annotation


# static fields
.field private static e:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;


# instance fields
.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private f:Landroid/app/Activity;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;-><init>()V

    sput-object v0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->e:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Lorg/json/JSONObject;I)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Lorg/json/JSONObject;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    :try_start_0
    const-string v0, "utf-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/cz/RSAUtils;->encryptByPublicKey([BLjava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/cz/Base64Utils;->encode([B)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\\s*"

    const-string v0, ""

    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    return-object p1

    :catch_17
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lorg/json/JSONArray;)Ljava/lang/String;
    .registers 12

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    new-array v5, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1a
    if-lt v7, v4, :cond_34

    :try_start_1c
    invoke-static {v5}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    :goto_1f
    if-lt v6, v4, :cond_22

    goto :goto_47

    :cond_22
    aget-object p1, v5, v6

    invoke-virtual {v3, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1f

    :cond_34
    invoke-virtual {p1, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "order_id"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9, v8}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    aput-object v9, v5, v7
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_43} :catch_46

    add-int/lit8 v7, v7, 0x1

    goto :goto_1a

    :catch_46
    move-exception p1

    :goto_47
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v3, "sorting "

    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " orders used time : "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->b(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 6

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "msg"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Lorg/json/JSONArray;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_2e} :catch_2f

    return-object p1

    :catch_2f
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lorg/json/JSONObject;I)Ljava/lang/String;
    .registers 8

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "msg"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    const/4 v4, 0x1

    if-ne p2, v4, :cond_20

    const-string p2, "data"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    :cond_20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_33
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_33} :catch_34

    return-object p1

    :catch_34
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private a(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method private a(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 13

    if-nez p4, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->f:Landroid/app/Activity;

    if-eqz v0, :cond_16

    new-instance v7, Lcom/ssjj/fnsdk/core/cz/j;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/ssjj/fnsdk/core/cz/j;-><init>(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Lcom/ssjj/fnsdk/core/SsjjFNListener;ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    invoke-virtual {v0, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_19

    :cond_16
    invoke-interface {p4, p1, p2, p3}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :goto_19
    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method private a()Z
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, "\u8bf7\u5148\u8c03\u7528 djPayConfig \u63a5\u53e3\u914d\u7f6e\u53c2\u6570"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_f
    const/4 v0, 0x1

    return v0
.end method

.method private a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z
    .registers 5

    const/4 v0, 0x1

    if-nez p1, :cond_14

    const-string p1, "Params\u4e0d\u80fd\u4e3a\u7a7a!"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_12

    new-instance v1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    invoke-interface {p2, v0, p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_12
    const/4 p1, 0x0

    return p1

    :cond_14
    return v0
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_c

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    const/4 p1, 0x0

    return p1

    :cond_c
    const/4 p1, 0x1

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return v0

    :cond_4
    :try_start_4
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/cz/Base64Utils;->decode(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/cz/RSAUtils;->decryptByPublicKey([BLjava/lang/String;)[B

    move-result-object p1

    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p3, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_15} :catch_16

    return p1

    :catch_16
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->d:Ljava/lang/String;

    return-object p0
.end method

.method private b(Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 14

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "amount"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "callback_info"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "failed_desc"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fnpid"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "fnpidraw"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "game_id"

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "order_id"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "order_status"

    invoke-virtual {p1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "pay_way"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "server_id"

    invoke-virtual {p1, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "uid"

    invoke-virtual {p1, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_76
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_76} :catch_77

    return-object p1

    :catch_77
    move-exception p1

    const-string p1, ""

    return-object p1
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->b(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "djpay --> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->f:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic c(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->c(Ljava/lang/String;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "djpay --> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static getInstance()Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->e:Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    return-object v0
.end method


# virtual methods
.method public djCheckOrder(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 12

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    new-instance v7, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v7}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const-string v0, "uid"

    invoke-virtual {p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_28

    if-eqz p3, :cond_27

    const-string p1, "uid\u4e0d\u80fd\u4e3a\u7a7a!"

    invoke-interface {p3, v1, p1, v7}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_27
    return-void

    :cond_28
    const-string v0, "orderId"

    invoke-virtual {p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    if-eqz p3, :cond_3b

    const-string p1, "orderId\u4e0d\u80fd\u4e3a\u7a7a!"

    invoke-interface {p3, v1, p1, v7}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_3b
    return-void

    :cond_3c
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "type"

    const-string v1, "check_order"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->keys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_67

    new-instance p2, Lcom/ssjj/fnsdk/core/cz/e;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/ssjj/fnsdk/core/cz/e;-><init>(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Landroid/content/Context;Ljava/util/Map;Lcom/ssjj/fnsdk/core/SsjjFNListener;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p2, p1}, Lcom/ssjj/fnsdk/core/cz/e;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50
.end method

.method public djCheckOrderLoop(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 14

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->f:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a()Z

    move-result v0

    if-nez v0, :cond_c

    return-void

    :cond_c
    invoke-direct {p0, p2, p3}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result v0

    if-nez v0, :cond_13

    return-void

    :cond_13
    new-instance v9, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v9}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const-string v0, "uid"

    invoke-virtual {p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_31

    const-string p1, "uid\u4e0d\u80fd\u4e3a\u7a7a!"

    if-eqz p3, :cond_2d

    invoke-interface {p3, v1, p1, v9}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_30

    :cond_2d
    invoke-direct {p0, v1, p1, v9}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :goto_30
    return-void

    :cond_31
    const-string v0, "orderId"

    invoke-virtual {p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    const-string p1, "orderId\u4e0d\u80fd\u4e3a\u7a7a!"

    if-eqz p3, :cond_45

    invoke-interface {p3, v1, p1, v9}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_48

    :cond_45
    invoke-direct {p0, v1, p1, v9}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :goto_48
    return-void

    :cond_49
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a:Ljava/util/HashMap;

    invoke-virtual {v0, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_57

    const-string p1, "the orderId is looping now, cancel access angin"

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->b(Ljava/lang/String;)V

    return-void

    :cond_57
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a:Ljava/util/HashMap;

    const v1, 0x50010

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_63
    const-string v0, "timeOut"

    invoke-virtual {p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_6d} :catch_6f

    int-to-long v0, v0

    goto :goto_72

    :catch_6f
    move-exception v0

    const-wide/16 v0, 0x0

    :goto_72
    const-wide/16 v2, 0x3

    cmp-long v4, v0, v2

    if-ltz v4, :cond_88

    const-wide/16 v2, 0xa

    cmp-long v4, v0, v2

    if-lez v4, :cond_7f

    goto :goto_88

    :cond_7f
    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    const-wide/16 v2, 0x3e8

    mul-long v0, v0, v2

    goto :goto_8b

    :cond_88
    :goto_88
    const-wide/32 v0, 0x2bf20

    :goto_8b
    move-wide v5, v0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "check order loop time out is: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->b(Ljava/lang/String;)V

    new-instance v0, Lcom/ssjj/fnsdk/core/cz/c;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v8, p3

    invoke-direct/range {v1 .. v9}, Lcom/ssjj/fnsdk/core/cz/c;-><init>(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;JLjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/cz/c;->start()V

    return-void
.end method

.method public djConfirmOrder(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 12

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    new-instance v7, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v7}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const-string v0, "uid"

    invoke-virtual {p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_28

    if-eqz p3, :cond_27

    const-string p1, "uid\u4e0d\u80fd\u4e3a\u7a7a!"

    invoke-interface {p3, v1, p1, v7}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_27
    return-void

    :cond_28
    const-string v0, "orderId"

    invoke-virtual {p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    if-eqz p3, :cond_3b

    const-string p1, "orderId\u4e0d\u80fd\u4e3a\u7a7a!"

    invoke-interface {p3, v1, p1, v7}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_3b
    return-void

    :cond_3c
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "type"

    const-string v1, "confirm_order"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->keys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_50
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_67

    new-instance p2, Lcom/ssjj/fnsdk/core/cz/f;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/ssjj/fnsdk/core/cz/f;-><init>(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Landroid/content/Context;Ljava/util/Map;Lcom/ssjj/fnsdk/core/SsjjFNListener;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p2, p1}, Lcom/ssjj/fnsdk/core/cz/f;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_67
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_50
.end method

.method public djGetHistoryOrders(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 12

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0, p2, p3}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    new-instance v7, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v7}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const-string v0, "uid"

    invoke-virtual {p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_28

    if-eqz p3, :cond_27

    const-string p1, "uid\u4e0d\u80fd\u4e3a\u7a7a!"

    invoke-interface {p3, v1, p1, v7}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_27
    return-void

    :cond_28
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->d:Ljava/lang/String;

    if-eqz v0, :cond_6e

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    goto :goto_6e

    :cond_35
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "type"

    const-string v1, "get_order"

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->keys()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_49
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_60

    new-instance p2, Lcom/ssjj/fnsdk/core/cz/g;

    move-object v1, p2

    move-object v2, p0

    move-object v3, p0

    move-object v4, p1

    move-object v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/ssjj/fnsdk/core/cz/g;-><init>(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Landroid/content/Context;Ljava/util/Map;Lcom/ssjj/fnsdk/core/SsjjFNListener;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p2, p1}, Lcom/ssjj/fnsdk/core/cz/g;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    :cond_60
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v5, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_49

    :cond_6e
    :goto_6e
    const-string p1, "\u8bf7\u5148\u8c03\u7528 setOauthData \u63a5\u53e3\u8bbe\u7f6e\u9a8c\u8bc1data!"

    if-eqz p3, :cond_75

    invoke-interface {p3, v1, p1, v7}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_75
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    return-void
.end method

.method public djPay(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 6

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->f:Landroid/app/Activity;

    new-instance v1, Lcom/ssjj/fnsdk/core/cz/a;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/cz/a;-><init>(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public djPay0(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 7

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->f:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a()Z

    move-result v0

    if-nez v0, :cond_b

    return-void

    :cond_b
    invoke-direct {p0, p2, p3}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result v0

    if-nez v0, :cond_12

    return-void

    :cond_12
    const-string v0, "productInfo"

    invoke-virtual {p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->getObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;

    const/4 v0, 0x1

    if-nez p2, :cond_2a

    if-eqz p3, :cond_29

    new-instance p1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const-string p2, "\u5546\u54c1\u4fe1\u606f\u4e3a\u7a7a!"

    invoke-interface {p3, v0, p2, p1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_29
    return-void

    :cond_2a
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v1

    new-instance v2, Lcom/ssjj/fnsdk/core/cz/b;

    invoke-direct {v2, p0}, Lcom/ssjj/fnsdk/core/cz/b;-><init>(Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;)V

    invoke-virtual {v1, p1, p2, v2}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->pay(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V

    if-eqz p3, :cond_5c

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getLastOrderIdAndClearForDJCZ()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_51

    const-string p1, "\u8ba2\u5355\u53f7\u4e3a\u7a7a!"

    invoke-interface {p3, v0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_5c

    :cond_51
    const-string v0, "orderId"

    invoke-virtual {p2, v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string v0, "\u521b\u5efa\u8ba2\u5355\u53f7\u6210\u529f"

    invoke-interface {p3, p1, v0, p2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_5c
    :goto_5c
    return-void
.end method

.method public djPayConfig(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 5

    check-cast p1, Landroid/app/Activity;

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->f:Landroid/app/Activity;

    invoke-direct {p0, p2, p3}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    :cond_b
    const-string p1, "secretKey"

    invoke-virtual {p2, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->c:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->a(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_24

    if-eqz p3, :cond_31

    new-instance p1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/4 p2, 0x1

    const-string v0, "secretKey\u4e0d\u80fd\u4e3a\u7a7a!"

    goto :goto_2e

    :cond_24
    if-eqz p3, :cond_31

    new-instance p1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/4 p2, 0x0

    const-string v0, "\u914d\u7f6e\u6210\u529f"

    :goto_2e
    invoke-interface {p3, p2, v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_31
    return-void
.end method

.method public djSetPayResultListener(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 4

    if-nez p3, :cond_8

    const-string p1, "listener is null!"

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->c(Ljava/lang/String;)V

    goto :goto_a

    :cond_8
    iput-object p3, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->b:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    :goto_a
    return-void
.end method

.method public onSetOauthData(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6

    const-string v0, "ext"

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->f:Landroid/app/Activity;

    :try_start_4
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "code"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3c

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3c

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "stoken"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->d:Ljava/lang/String;
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_24} :catch_25

    goto :goto_3c

    :catch_25
    move-exception p1

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "get mToken fail, data: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    const-string p1, ""

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->d:Ljava/lang/String;

    :cond_3c
    :goto_3c
    return-void
.end method
