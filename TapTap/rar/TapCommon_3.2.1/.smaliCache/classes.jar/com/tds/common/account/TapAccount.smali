.class public Lcom/tds/common/account/TapAccount;
.super Ljava/lang/Object;
.source "TapAccount.java"

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
.field private accessToken:Lorg/json/JSONObject;

.field public access_token:Ljava/lang/String;

.field public kid:Ljava/lang/String;

.field public mac_algorithm:Ljava/lang/String;

.field public mac_key:Ljava/lang/String;

.field private tokenString:Ljava/lang/String;

.field public token_type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .param p1, "tapToken"    # Ljava/lang/String;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    :try_start_3
    iput-object p1, p0, Lcom/tds/common/account/TapAccount;->tokenString:Ljava/lang/String;

    .line 19
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/tds/common/account/TapAccount;->accessToken:Lorg/json/JSONObject;

    .line 20
    const-string v1, "kid"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/account/TapAccount;->kid:Ljava/lang/String;

    .line 21
    iget-object v0, p0, Lcom/tds/common/account/TapAccount;->accessToken:Lorg/json/JSONObject;

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/account/TapAccount;->access_token:Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/tds/common/account/TapAccount;->accessToken:Lorg/json/JSONObject;

    const-string v1, "token_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/account/TapAccount;->token_type:Ljava/lang/String;

    .line 23
    iget-object v0, p0, Lcom/tds/common/account/TapAccount;->accessToken:Lorg/json/JSONObject;

    const-string v1, "mac_key"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/account/TapAccount;->mac_key:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcom/tds/common/account/TapAccount;->accessToken:Lorg/json/JSONObject;

    const-string v1, "mac_algorithm"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tds/common/account/TapAccount;->mac_algorithm:Ljava/lang/String;
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3c} :catch_3d

    .line 27
    goto :goto_41

    .line 25
    :catch_3d
    move-exception v0

    .line 26
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 28
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_41
    return-void
.end method


# virtual methods
.method public getAccountType()Lcom/tds/common/account/TdsAccount$AccountType;
    .registers 2

    .line 32
    sget-object v0, Lcom/tds/common/account/TdsAccount$AccountType;->TAP:Lcom/tds/common/account/TdsAccount$AccountType;

    return-object v0
.end method

.method public bridge synthetic getToken()Ljava/lang/Object;
    .registers 2

    .line 6
    invoke-virtual {p0}, Lcom/tds/common/account/TapAccount;->getToken()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getToken()Lorg/json/JSONObject;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/tds/common/account/TapAccount;->accessToken:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getTokenString()Ljava/lang/String;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/tds/common/account/TapAccount;->tokenString:Ljava/lang/String;

    return-object v0
.end method
