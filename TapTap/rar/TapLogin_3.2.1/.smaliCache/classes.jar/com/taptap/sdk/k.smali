.class Lcom/taptap/sdk/k;
.super Ljava/lang/Object;
.source "TokenValidChecker.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_96

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_e

    goto/16 :goto_96

    .line 5
    :cond_e
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 6
    const-string v1, "client_id"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    const-string p1, "grant_type"

    const-string v1, "refresh_token"

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    const-string p1, "token"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    const-string p0, "token_type_hint"

    const-string p1, "access_token"

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :try_start_2b
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0}, Lorg/json/JSONObject;-><init>()V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_30} :catch_60

    const-string p1, "device_id"

    .line 14
    :try_start_32
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_50
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_50} :catch_60

    const-string p1, "uuid"

    .line 15
    :try_start_52
    sget-object v1, Lcom/tds/common/utils/GUIDHelper;->INSTANCE:Lcom/tds/common/utils/GUIDHelper;

    invoke-virtual {v1}, Lcom/tds/common/utils/GUIDHelper;->getUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 16
    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_5f} :catch_60

    goto :goto_7b

    :catch_60
    move-exception p0

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TokenValidChecker check method:  "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "TokenValidChecker"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    .line 21
    :goto_7b
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_86

    .line 22
    const-string p1, "info"

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_86
    invoke-static {}, Lcom/taptap/sdk/h;->c()Lcom/taptap/sdk/RegionType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/taptap/sdk/RegionType;->tokenUrl()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/taptap/sdk/k$a;

    invoke-direct {p1}, Lcom/taptap/sdk/k$a;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/taptap/sdk/net/Api;->b(Ljava/lang/String;Ljava/util/HashMap;Lcom/taptap/sdk/net/Api$ApiCallback;)V

    :cond_96
    :goto_96
    return-void
.end method
