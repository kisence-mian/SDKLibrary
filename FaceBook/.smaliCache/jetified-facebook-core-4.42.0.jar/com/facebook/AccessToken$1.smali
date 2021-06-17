.class final Lcom/facebook/AccessToken$1;
.super Ljava/lang/Object;
.source "AccessToken.java"

# interfaces
.implements Lcom/facebook/internal/Utility$GraphMeRequestWithCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/AccessToken;->createFromNativeLinkingIntent(Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/AccessToken$AccessTokenCreationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$accessTokenCallback:Lcom/facebook/AccessToken$AccessTokenCreationCallback;

.field final synthetic val$applicationId:Ljava/lang/String;

.field final synthetic val$extras:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;Lcom/facebook/AccessToken$AccessTokenCreationCallback;Ljava/lang/String;)V
    .registers 4

    .line 354
    iput-object p1, p0, Lcom/facebook/AccessToken$1;->val$extras:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/facebook/AccessToken$1;->val$accessTokenCallback:Lcom/facebook/AccessToken$AccessTokenCreationCallback;

    iput-object p3, p0, Lcom/facebook/AccessToken$1;->val$applicationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/facebook/FacebookException;)V
    .registers 3
    .param p1, "error"    # Lcom/facebook/FacebookException;

    .line 376
    iget-object v0, p0, Lcom/facebook/AccessToken$1;->val$accessTokenCallback:Lcom/facebook/AccessToken$AccessTokenCreationCallback;

    invoke-interface {v0, p1}, Lcom/facebook/AccessToken$AccessTokenCreationCallback;->onError(Lcom/facebook/FacebookException;)V

    .line 377
    return-void
.end method

.method public onSuccess(Lorg/json/JSONObject;)V
    .registers 9
    .param p1, "userInfo"    # Lorg/json/JSONObject;

    .line 358
    :try_start_0
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 359
    .local v0, "userId":Ljava/lang/String;
    iget-object v1, p0, Lcom/facebook/AccessToken$1;->val$extras:Landroid/os/Bundle;

    const-string v2, "user_id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/facebook/AccessToken$1;->val$accessTokenCallback:Lcom/facebook/AccessToken$AccessTokenCreationCallback;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/AccessToken$1;->val$extras:Landroid/os/Bundle;

    sget-object v4, Lcom/facebook/AccessTokenSource;->FACEBOOK_APPLICATION_WEB:Lcom/facebook/AccessTokenSource;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    iget-object v6, p0, Lcom/facebook/AccessToken$1;->val$applicationId:Ljava/lang/String;

    # invokes: Lcom/facebook/AccessToken;->createFromBundle(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/lang/String;)Lcom/facebook/AccessToken;
    invoke-static {v2, v3, v4, v5, v6}, Lcom/facebook/AccessToken;->access$000(Ljava/util/List;Landroid/os/Bundle;Lcom/facebook/AccessTokenSource;Ljava/util/Date;Ljava/lang/String;)Lcom/facebook/AccessToken;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/facebook/AccessToken$AccessTokenCreationCallback;->onSuccess(Lcom/facebook/AccessToken;)V
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_22} :catch_23

    .line 370
    .end local v0    # "userId":Ljava/lang/String;
    goto :goto_30

    .line 366
    :catch_23
    move-exception v0

    .line 367
    .local v0, "ex":Lorg/json/JSONException;
    iget-object v1, p0, Lcom/facebook/AccessToken$1;->val$accessTokenCallback:Lcom/facebook/AccessToken$AccessTokenCreationCallback;

    new-instance v2, Lcom/facebook/FacebookException;

    const-string v3, "Unable to generate access token due to missing user id"

    invoke-direct {v2, v3}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/facebook/AccessToken$AccessTokenCreationCallback;->onError(Lcom/facebook/FacebookException;)V

    .line 372
    .end local v0    # "ex":Lorg/json/JSONException;
    :goto_30
    return-void
.end method
