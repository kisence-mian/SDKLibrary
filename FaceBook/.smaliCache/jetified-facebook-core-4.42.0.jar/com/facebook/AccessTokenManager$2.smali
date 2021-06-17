.class Lcom/facebook/AccessTokenManager$2;
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

.field final synthetic val$declinedPermissions:Ljava/util/Set;

.field final synthetic val$permissions:Ljava/util/Set;

.field final synthetic val$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method constructor <init>(Lcom/facebook/AccessTokenManager;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/Set;Ljava/util/Set;)V
    .registers 5
    .param p1, "this$0"    # Lcom/facebook/AccessTokenManager;

    .line 270
    iput-object p1, p0, Lcom/facebook/AccessTokenManager$2;->this$0:Lcom/facebook/AccessTokenManager;

    iput-object p2, p0, Lcom/facebook/AccessTokenManager$2;->val$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Lcom/facebook/AccessTokenManager$2;->val$permissions:Ljava/util/Set;

    iput-object p4, p0, Lcom/facebook/AccessTokenManager$2;->val$declinedPermissions:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/GraphResponse;)V
    .registers 10
    .param p1, "response"    # Lcom/facebook/GraphResponse;

    .line 273
    invoke-virtual {p1}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    .line 274
    .local v0, "result":Lorg/json/JSONObject;
    if-nez v0, :cond_7

    .line 275
    return-void

    .line 277
    :cond_7
    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 278
    .local v1, "permissionsArray":Lorg/json/JSONArray;
    if-nez v1, :cond_10

    .line 279
    return-void

    .line 281
    :cond_10
    iget-object v2, p0, Lcom/facebook/AccessTokenManager$2;->val$permissionsCallSucceeded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 282
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_17
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_79

    .line 283
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 284
    .local v3, "permissionEntry":Lorg/json/JSONObject;
    if-nez v3, :cond_24

    .line 285
    goto :goto_76

    .line 287
    :cond_24
    const-string v4, "permission"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 288
    .local v4, "permission":Ljava/lang/String;
    const-string v5, "status"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 289
    .local v5, "status":Ljava/lang/String;
    invoke-static {v4}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_76

    .line 290
    invoke-static {v5}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_76

    .line 291
    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 292
    const-string v6, "granted"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_50

    .line 293
    iget-object v6, p0, Lcom/facebook/AccessTokenManager$2;->val$permissions:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_76

    .line 294
    :cond_50
    const-string v6, "declined"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 295
    iget-object v6, p0, Lcom/facebook/AccessTokenManager$2;->val$declinedPermissions:Ljava/util/Set;

    invoke-interface {v6, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_76

    .line 297
    :cond_5e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AccessTokenManager"

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    .end local v3    # "permissionEntry":Lorg/json/JSONObject;
    .end local v4    # "permission":Ljava/lang/String;
    .end local v5    # "status":Ljava/lang/String;
    :cond_76
    :goto_76
    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 301
    .end local v2    # "i":I
    :cond_79
    return-void
.end method
