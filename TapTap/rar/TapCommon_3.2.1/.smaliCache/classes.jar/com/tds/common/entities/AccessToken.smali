.class public Lcom/tds/common/entities/AccessToken;
.super Ljava/lang/Object;
.source "AccessToken.java"


# static fields
.field public static final ROOT_ELEMENT_NAME:Ljava/lang/String; = "data"


# instance fields
.field public final accessToken:Ljava/lang/String;

.field public final expireIn:Ljava/lang/String;

.field public final kid:Ljava/lang/String;

.field public final macAlgorithm:Ljava/lang/String;

.field public final macKey:Ljava/lang/String;

.field public final originalJson:Ljava/lang/String;

.field public final tokenType:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/tds/common/entities/AccessToken;->accessToken:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/tds/common/entities/AccessToken;->kid:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lcom/tds/common/entities/AccessToken;->tokenType:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lcom/tds/common/entities/AccessToken;->macKey:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/tds/common/entities/AccessToken;->macAlgorithm:Ljava/lang/String;

    .line 51
    const-string v1, "0"

    iput-object v1, p0, Lcom/tds/common/entities/AccessToken;->expireIn:Ljava/lang/String;

    .line 52
    iput-object v0, p0, Lcom/tds/common/entities/AccessToken;->originalJson:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "sessionToken"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/tds/common/entities/AccessToken;->accessToken:Ljava/lang/String;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/tds/common/entities/AccessToken;->kid:Ljava/lang/String;

    .line 58
    iput-object v0, p0, Lcom/tds/common/entities/AccessToken;->tokenType:Ljava/lang/String;

    .line 59
    iput-object v0, p0, Lcom/tds/common/entities/AccessToken;->macKey:Ljava/lang/String;

    .line 60
    iput-object v0, p0, Lcom/tds/common/entities/AccessToken;->macAlgorithm:Ljava/lang/String;

    .line 61
    const-string v1, "0"

    iput-object v1, p0, Lcom/tds/common/entities/AccessToken;->expireIn:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lcom/tds/common/entities/AccessToken;->originalJson:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .registers 5
    .param p1, "accessTokenJsonObject"    # Lorg/json/JSONObject;

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 26
    .local v0, "data":Lorg/json/JSONObject;
    if-eqz v0, :cond_44

    .line 27
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/common/entities/AccessToken;->originalJson:Ljava/lang/String;

    .line 28
    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/common/entities/AccessToken;->accessToken:Ljava/lang/String;

    .line 29
    const-string v1, "kid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/common/entities/AccessToken;->kid:Ljava/lang/String;

    .line 30
    const-string v1, "token_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/common/entities/AccessToken;->tokenType:Ljava/lang/String;

    .line 31
    const-string v1, "mac_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/common/entities/AccessToken;->macKey:Ljava/lang/String;

    .line 32
    const-string v1, "mac_algorithm"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/common/entities/AccessToken;->macAlgorithm:Ljava/lang/String;

    .line 33
    const-string v1, "expire_in"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/tds/common/entities/AccessToken;->expireIn:Ljava/lang/String;

    goto :goto_54

    .line 35
    :cond_44
    const-string v1, ""

    iput-object v1, p0, Lcom/tds/common/entities/AccessToken;->originalJson:Ljava/lang/String;

    .line 36
    iput-object v1, p0, Lcom/tds/common/entities/AccessToken;->accessToken:Ljava/lang/String;

    .line 37
    iput-object v1, p0, Lcom/tds/common/entities/AccessToken;->kid:Ljava/lang/String;

    .line 38
    iput-object v1, p0, Lcom/tds/common/entities/AccessToken;->tokenType:Ljava/lang/String;

    .line 39
    iput-object v1, p0, Lcom/tds/common/entities/AccessToken;->macKey:Ljava/lang/String;

    .line 40
    iput-object v1, p0, Lcom/tds/common/entities/AccessToken;->macAlgorithm:Ljava/lang/String;

    .line 41
    iput-object v1, p0, Lcom/tds/common/entities/AccessToken;->expireIn:Ljava/lang/String;

    .line 43
    :goto_54
    return-void
.end method


# virtual methods
.method public toJSON()Ljava/lang/String;
    .registers 4

    .line 66
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 68
    .local v0, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v1, "access_token"

    iget-object v2, p0, Lcom/tds/common/entities/AccessToken;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 69
    const-string v1, "kid"

    iget-object v2, p0, Lcom/tds/common/entities/AccessToken;->kid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 70
    const-string v1, "token_type"

    iget-object v2, p0, Lcom/tds/common/entities/AccessToken;->tokenType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    const-string v1, "mac_key"

    iget-object v2, p0, Lcom/tds/common/entities/AccessToken;->macKey:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v1, "mac_algorithm"

    iget-object v2, p0, Lcom/tds/common/entities/AccessToken;->macAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v1, "expire_in"

    iget-object v2, p0, Lcom/tds/common/entities/AccessToken;->expireIn:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2f
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_2f} :catch_30

    .line 76
    goto :goto_34

    .line 74
    :catch_30
    move-exception v1

    .line 75
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 77
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_34
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AccessToken{accessToken=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tds/common/entities/AccessToken;->accessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", kid=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tds/common/entities/AccessToken;->kid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", tokenType=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tds/common/entities/AccessToken;->tokenType:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", macKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tds/common/entities/AccessToken;->macKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", macAlgorithm=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tds/common/entities/AccessToken;->macAlgorithm:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", expireIn=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tds/common/entities/AccessToken;->expireIn:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", originalJson=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tds/common/entities/AccessToken;->originalJson:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
