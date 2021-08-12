.class final Lcom/qq/e/comm/managers/setting/a;
.super Lcom/qq/e/comm/managers/setting/e;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/qq/e/comm/managers/setting/e;-><init>()V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/qq/e/comm/managers/setting/e;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/qq/e/comm/managers/setting/a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5

    iget-object v0, p0, Lcom/qq/e/comm/managers/setting/a;->a:Lorg/json/JSONObject;

    const-string v1, "ps"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    goto :goto_11

    :cond_10
    move-object p2, v1

    :goto_11
    if-eqz p2, :cond_18

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_18
    return-object v1
.end method

.method final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/comm/managers/setting/a;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_5
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_5} :catch_6

    return-void

    :catch_6
    move-exception p1

    const-string p2, "Exception while update setting"

    invoke-static {p2, p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method final a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .registers 7

    const-string v0, "ps"

    :try_start_2
    iget-object v1, p0, Lcom/qq/e/comm/managers/setting/a;->a:Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_14

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lcom/qq/e/comm/managers/setting/a;->a:Lorg/json/JSONObject;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_14
    invoke-virtual {v1, p3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_22

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, p3, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_22
    if-nez p2, :cond_28

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_32

    :cond_28
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2b
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2b} :catch_2c

    return-void

    :catch_2c
    move-exception p1

    const-string p2, "Exception while update setting"

    invoke-static {p2, p1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_32
    return-void
.end method
