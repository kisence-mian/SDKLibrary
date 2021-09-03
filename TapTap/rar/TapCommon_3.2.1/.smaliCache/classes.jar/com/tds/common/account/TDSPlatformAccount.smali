.class public Lcom/tds/common/account/TDSPlatformAccount;
.super Ljava/lang/Object;
.source "TDSPlatformAccount.java"

# interfaces
.implements Lcom/tds/common/account/TdsAccount;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/tds/common/account/TdsAccount<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field public access_token:Ljava/lang/String;

.field public expire_in:J

.field public kid:Ljava/lang/String;

.field public mac_algorithm:Ljava/lang/String;

.field public mac_key:Ljava/lang/String;

.field private token:Lorg/json/JSONObject;

.field private tokenString:Ljava/lang/String;

.field public token_type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "tdsToken"    # Ljava/lang/String;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    :try_start_3
    iput-object p1, p0, Lcom/tds/common/account/TDSPlatformAccount;->tokenString:Ljava/lang/String;

    .line 21
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tds/common/account/TDSPlatformAccount;->token:Lorg/json/JSONObject;

    .line 22
    const-string v1, "kid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/account/TDSPlatformAccount;->kid:Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/tds/common/account/TDSPlatformAccount;->token:Lorg/json/JSONObject;

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/account/TDSPlatformAccount;->access_token:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/tds/common/account/TDSPlatformAccount;->token:Lorg/json/JSONObject;

    const-string v1, "mac_algorithm"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/account/TDSPlatformAccount;->mac_algorithm:Ljava/lang/String;

    .line 25
    iget-object v0, p0, Lcom/tds/common/account/TDSPlatformAccount;->token:Lorg/json/JSONObject;

    const-string v1, "token_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/account/TDSPlatformAccount;->token_type:Ljava/lang/String;

    .line 26
    iget-object v0, p0, Lcom/tds/common/account/TDSPlatformAccount;->token:Lorg/json/JSONObject;

    const-string v1, "mac_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/account/TDSPlatformAccount;->mac_key:Ljava/lang/String;

    .line 27
    iget-object v0, p0, Lcom/tds/common/account/TDSPlatformAccount;->token:Lorg/json/JSONObject;

    const-string v1, "expire_in"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tds/common/account/TDSPlatformAccount;->expire_in:J
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_4a} :catch_4b

    .line 30
    goto :goto_4f

    .line 28
    :catch_4b
    move-exception v0

    .line 29
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 31
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_4f
    return-void
.end method


# virtual methods
.method public getAccountType()Lcom/tds/common/account/TdsAccount$AccountType;
    .registers 2

    .line 35
    sget-object v0, Lcom/tds/common/account/TdsAccount$AccountType;->TDS:Lcom/tds/common/account/TdsAccount$AccountType;

    return-object v0
.end method

.method public bridge synthetic getToken()Ljava/lang/Object;
    .registers 2

    .line 6
    invoke-virtual {p0}, Lcom/tds/common/account/TDSPlatformAccount;->getToken()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Lorg/json/JSONObject;
    .registers 2

    .line 40
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTokenString()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/tds/common/account/TDSPlatformAccount;->tokenString:Ljava/lang/String;

    return-object v0
.end method
