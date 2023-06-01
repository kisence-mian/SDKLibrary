.class public Lcom/ssjj/fnsdk/core/entity/FNOauthData;
.super Ljava/lang/Object;


# instance fields
.field public code:I

.field public fntoken:Ljava/lang/String;

.field public isTempUser:Z

.field public msg:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public rawName:Ljava/lang/String;

.field public rawUid:Ljava/lang/String;

.field public uid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->code:I

    const-string v1, "\u6570\u636e\u4e3a\u7a7a"

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->msg:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->uid:Ljava/lang/String;

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->rawUid:Ljava/lang/String;

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->rawName:Ljava/lang/String;

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->fntoken:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->isTempUser:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->code:I

    const-string v1, "\u6570\u636e\u4e3a\u7a7a"

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->msg:Ljava/lang/String;

    const-string v1, ""

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->uid:Ljava/lang/String;

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->rawUid:Ljava/lang/String;

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->rawName:Ljava/lang/String;

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->fntoken:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->isTempUser:Z

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->from(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public from(Ljava/lang/String;)V
    .registers 7

    const-string v0, "fntoken"

    const-string v1, "rawName"

    const-string v2, "rawUid"

    const-string v3, "ext"

    if-eqz p1, :cond_89

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_15

    goto :goto_89

    :cond_15
    :try_start_15
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->code:I

    const-string p1, "msg"

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->msg:Ljava/lang/String;

    const-string p1, "content"

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v4, "uid"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->uid:Ljava/lang/String;

    const-string v4, "name"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->name:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_89

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->isTempUser:Z

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->rawUid:Ljava/lang/String;

    :cond_59
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_65

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->rawName:Ljava/lang/String;

    :cond_65
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_89

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->fntoken:Ljava/lang/String;
    :try_end_71
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_71} :catch_72

    goto :goto_89

    :catch_72
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pause oauth data err: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    :cond_89
    :goto_89
    return-void
.end method

.method public hasBind()Z
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->rawUid:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method

.method public isTempUser()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->isTempUser:Z

    return v0
.end method

.method public isUidAvail()Z
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->uid:Ljava/lang/String;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const/4 v0, 0x0

    return v0
.end method
