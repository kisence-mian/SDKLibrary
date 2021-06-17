.class Lcom/facebook/appevents/codeless/ViewIndexer$3;
.super Ljava/lang/Object;
.source "ViewIndexer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/codeless/ViewIndexer;->sendToServer(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

.field final synthetic val$tree:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/lang/String;)V
    .registers 3
    .param p1, "this$0"    # Lcom/facebook/appevents/codeless/ViewIndexer;

    .line 188
    iput-object p1, p0, Lcom/facebook/appevents/codeless/ViewIndexer$3;->this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

    iput-object p2, p0, Lcom/facebook/appevents/codeless/ViewIndexer$3;->val$tree:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .line 191
    const-string v0, "is_app_indexing_enabled"

    iget-object v1, p0, Lcom/facebook/appevents/codeless/ViewIndexer$3;->val$tree:Ljava/lang/String;

    invoke-static {v1}, Lcom/facebook/internal/Utility;->md5hash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 192
    .local v1, "currentDigest":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v2

    .line 193
    .local v2, "accessToken":Lcom/facebook/AccessToken;
    if-eqz v1, :cond_1b

    iget-object v3, p0, Lcom/facebook/appevents/codeless/ViewIndexer$3;->this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

    # getter for: Lcom/facebook/appevents/codeless/ViewIndexer;->previousDigest:Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$400(Lcom/facebook/appevents/codeless/ViewIndexer;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 194
    return-void

    .line 196
    :cond_1b
    iget-object v3, p0, Lcom/facebook/appevents/codeless/ViewIndexer$3;->val$tree:Ljava/lang/String;

    .line 197
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v4

    .line 196
    const-string v5, "app_indexing"

    invoke-static {v3, v2, v4, v5}, Lcom/facebook/appevents/codeless/ViewIndexer;->buildAppIndexingRequest(Ljava/lang/String;Lcom/facebook/AccessToken;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/GraphRequest;

    move-result-object v3

    .line 198
    .local v3, "request":Lcom/facebook/GraphRequest;
    if-eqz v3, :cond_8d

    .line 199
    invoke-virtual {v3}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v4

    .line 201
    .local v4, "res":Lcom/facebook/GraphResponse;
    :try_start_2d
    invoke-virtual {v4}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    .line 202
    .local v5, "jsonRes":Lorg/json/JSONObject;
    if-eqz v5, :cond_64

    .line 203
    const-string v6, "true"

    const-string v7, "success"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_51

    .line 204
    sget-object v6, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    # getter for: Lcom/facebook/appevents/codeless/ViewIndexer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Successfully send UI component tree to server"

    invoke-static {v6, v7, v8}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v6, p0, Lcom/facebook/appevents/codeless/ViewIndexer$3;->this$0:Lcom/facebook/appevents/codeless/ViewIndexer;

    # setter for: Lcom/facebook/appevents/codeless/ViewIndexer;->previousDigest:Ljava/lang/String;
    invoke-static {v6, v1}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$402(Lcom/facebook/appevents/codeless/ViewIndexer;Ljava/lang/String;)Ljava/lang/String;

    .line 209
    :cond_51
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_82

    .line 210
    nop

    .line 211
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 212
    .local v0, "appIndexingEnabled":Ljava/lang/Boolean;
    invoke-static {v0}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->updateAppIndexing(Ljava/lang/Boolean;)V

    .line 213
    .end local v0    # "appIndexingEnabled":Ljava/lang/Boolean;
    goto :goto_82

    .line 215
    :cond_64
    # getter for: Lcom/facebook/appevents/codeless/ViewIndexer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error sending UI component tree to Facebook: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 216
    invoke-virtual {v4}, Lcom/facebook/GraphResponse;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 215
    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_82
    .catch Lorg/json/JSONException; {:try_start_2d .. :try_end_82} :catch_83

    .line 220
    .end local v5    # "jsonRes":Lorg/json/JSONObject;
    :cond_82
    :goto_82
    goto :goto_8d

    .line 218
    :catch_83
    move-exception v0

    .line 219
    .local v0, "e":Lorg/json/JSONException;
    # getter for: Lcom/facebook/appevents/codeless/ViewIndexer;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/codeless/ViewIndexer;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Error decoding server response."

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 222
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v4    # "res":Lcom/facebook/GraphResponse;
    :cond_8d
    :goto_8d
    return-void
.end method
