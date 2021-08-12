.class Lcom/qq/e/comm/managers/setting/d;
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

    iget-object v0, p0, Lcom/qq/e/comm/managers/setting/d;->a:Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/comm/managers/setting/d;->a:Lorg/json/JSONObject;

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

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GDTSDKSetting["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/qq/e/comm/managers/setting/d;->a:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
