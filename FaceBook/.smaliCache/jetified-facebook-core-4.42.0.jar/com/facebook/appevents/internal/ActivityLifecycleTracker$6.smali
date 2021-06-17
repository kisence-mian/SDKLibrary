.class final Lcom/facebook/appevents/internal/ActivityLifecycleTracker$6;
.super Ljava/lang/Object;
.source "ActivityLifecycleTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->checkCodelessSession(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 365
    iput-object p1, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$6;->val$applicationId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .line 368
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/facebook/appevents/internal/ActivityLifecycleTracker$6;->val$applicationId:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 370
    const-string v3, "%s/app_indexing_session"

    invoke-static {v0, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 368
    const/4 v2, 0x0

    invoke-static {v2, v0, v2, v2}, Lcom/facebook/GraphRequest;->newPostRequest(Lcom/facebook/AccessToken;Ljava/lang/String;Lorg/json/JSONObject;Lcom/facebook/GraphRequest$Callback;)Lcom/facebook/GraphRequest;

    move-result-object v0

    .line 374
    .local v0, "request":Lcom/facebook/GraphRequest;
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->getParameters()Landroid/os/Bundle;

    move-result-object v3

    .line 375
    .local v3, "requestParameters":Landroid/os/Bundle;
    if-nez v3, :cond_21

    .line 376
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v3, v5

    .line 379
    :cond_21
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    .line 380
    .local v5, "context":Landroid/content/Context;
    nop

    .line 381
    invoke-static {v5}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v6

    .line 383
    .local v6, "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    .line 384
    .local v7, "extInfoArray":Lorg/json/JSONArray;
    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v9, ""

    if-eqz v8, :cond_38

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    goto :goto_39

    :cond_38
    move-object v8, v9

    :goto_39
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 385
    if-eqz v6, :cond_4c

    invoke-virtual {v6}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4c

    .line 386
    invoke-virtual {v6}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4f

    .line 388
    :cond_4c
    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 390
    :goto_4f
    const-string v8, "0"

    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 391
    invoke-static {}, Lcom/facebook/appevents/internal/AppEventUtility;->isEmulator()Z

    move-result v9

    if-eqz v9, :cond_5c

    const-string v8, "1"

    :cond_5c
    invoke-virtual {v7, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 393
    invoke-static {}, Lcom/facebook/internal/Utility;->getCurrentLocale()Ljava/util/Locale;

    move-result-object v8

    .line 394
    .local v8, "locale":Ljava/util/Locale;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 395
    invoke-virtual {v7}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v9

    .line 396
    .local v9, "extInfo":Ljava/lang/String;
    nop

    .line 397
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->getCurrentDeviceSessionID()Ljava/lang/String;

    move-result-object v10

    .line 396
    const-string v11, "device_session_id"

    invoke-virtual {v3, v11, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    const-string v10, "extinfo"

    invoke-virtual {v3, v10, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    invoke-virtual {v0, v3}, Lcom/facebook/GraphRequest;->setParameters(Landroid/os/Bundle;)V

    .line 401
    if-eqz v0, :cond_cd

    .line 402
    invoke-virtual {v0}, Lcom/facebook/GraphRequest;->executeAndWait()Lcom/facebook/GraphResponse;

    move-result-object v10

    .line 403
    .local v10, "res":Lcom/facebook/GraphResponse;
    invoke-virtual {v10}, Lcom/facebook/GraphResponse;->getJSONObject()Lorg/json/JSONObject;

    move-result-object v11

    .line 404
    .local v11, "jsonRes":Lorg/json/JSONObject;
    if-eqz v11, :cond_b0

    .line 405
    const-string v12, "is_app_indexing_enabled"

    invoke-virtual {v11, v12, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v12

    if-eqz v12, :cond_b0

    goto :goto_b1

    :cond_b0
    const/4 v1, 0x0

    .line 404
    :goto_b1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->isAppIndexingEnabled:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$1102(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 406
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->isAppIndexingEnabled:Ljava/lang/Boolean;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$1100()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_c6

    .line 407
    # setter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->deviceSessionID:Ljava/lang/String;
    invoke-static {v2}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$1202(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_cd

    .line 409
    :cond_c6
    # getter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->viewIndexer:Lcom/facebook/appevents/codeless/ViewIndexer;
    invoke-static {}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$1300()Lcom/facebook/appevents/codeless/ViewIndexer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/appevents/codeless/ViewIndexer;->schedule()V

    .line 413
    .end local v10    # "res":Lcom/facebook/GraphResponse;
    .end local v11    # "jsonRes":Lorg/json/JSONObject;
    :cond_cd
    :goto_cd
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->isCheckingSession:Ljava/lang/Boolean;
    invoke-static {v1}, Lcom/facebook/appevents/internal/ActivityLifecycleTracker;->access$1402(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 414
    return-void
.end method
