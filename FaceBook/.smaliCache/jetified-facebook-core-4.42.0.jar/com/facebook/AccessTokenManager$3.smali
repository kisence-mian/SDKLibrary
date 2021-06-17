.class Lcom/facebook/AccessTokenManager$3;
.super Ljava/lang/Object;
.source "AccessTokenManager.java"

# interfaces
.implements Lcom/facebook/GraphRequest$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AccessTokenManager;->refreshCurrentAccessTokenImpl(Lcom/facebook/AccessToken$AccessTokenRefreshCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/AccessTokenManager;

.field final synthetic val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;


# direct methods
.method constructor <init>(Lcom/facebook/AccessTokenManager;Lcom/facebook/AccessTokenManager$RefreshResult;)V
    .registers 3
    .param p1, "this$0"    # Lcom/facebook/AccessTokenManager;

    .line 303
    iput-object p1, p0, Lcom/facebook/AccessTokenManager$3;->this$0:Lcom/facebook/AccessTokenManager;

    iput-object p2, p0, Lcom/facebook/AccessTokenManager$3;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 6
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .line 306
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 307
    .local v0, "data":Lorg/json/JSONObject;
    if-nez v0, :cond_7

    .line 308
    return-void

    .line 310
    :cond_7
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$3;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    const-string v2, "access_token"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/AccessTokenManager$RefreshResult;->accessToken:Ljava/lang/String;

    .line 311
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$3;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    const-string v2, "expires_at"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/facebook/AccessTokenManager$RefreshResult;->expiresAt:I

    .line 312
    iget-object v1, p0, Lcom/facebook/AccessTokenManager$3;->val$refreshResult:Lcom/facebook/AccessTokenManager$RefreshResult;

    .line 313
    const-string v2, "data_access_expiration_time"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/AccessTokenManager$RefreshResult;->dataAccessExpirationTime:Ljava/lang/Long;

    .line 314
    return-void
.end method
