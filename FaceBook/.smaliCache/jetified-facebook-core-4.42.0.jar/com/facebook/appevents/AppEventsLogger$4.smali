.class final Lcom/facebook/appevents/AppEventsLogger$4;
.super Ljava/lang/Object;
.source "AppEventsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/appevents/AppEventsLogger;->updateUserProperties(Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$applicationID:Ljava/lang/String;

.field final synthetic val$callback:Lcom/facebook/GraphRequest$Callback;

.field final synthetic val$parameters:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/GraphRequest$Callback;)V
    .registers 4

    .line 1134
    iput-object p1, p0, Lcom/facebook/appevents/AppEventsLogger$4;->val$parameters:Landroid/os/Bundle;

    iput-object p2, p0, Lcom/facebook/appevents/AppEventsLogger$4;->val$applicationID:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/appevents/AppEventsLogger$4;->val$callback:Lcom/facebook/GraphRequest$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .line 1137
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->getUserID()Ljava/lang/String;

    move-result-object v0

    .line 1138
    .local v0, "userID":Ljava/lang/String;
    if-eqz v0, :cond_82

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_82

    .line 1146
    :cond_d
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1147
    .local v1, "userPropertiesParams":Landroid/os/Bundle;
    const-string v2, "user_unique_id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    iget-object v2, p0, Lcom/facebook/appevents/AppEventsLogger$4;->val$parameters:Landroid/os/Bundle;

    const-string v3, "custom_data"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1152
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 1151
    invoke-static {v2}, Lcom/facebook/internal/AttributionIdentifiers;->getAttributionIdentifiers(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;

    move-result-object v2

    .line 1153
    .local v2, "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    if-eqz v2, :cond_38

    invoke-virtual {v2}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_38

    .line 1154
    nop

    .line 1156
    invoke-virtual {v2}, Lcom/facebook/internal/AttributionIdentifiers;->getAndroidAdvertiserId()Ljava/lang/String;

    move-result-object v3

    .line 1154
    const-string v4, "advertiser_id"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    :cond_38
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 1161
    .local v3, "data":Landroid/os/Bundle;
    :try_start_3d
    invoke-static {v1}, Lcom/facebook/internal/BundleJSONConverter;->convertToJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1162
    .local v4, "userData":Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 1163
    .local v5, "dataArray":Lorg/json/JSONArray;
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1165
    const-string v6, "data"

    .line 1166
    invoke-virtual {v5}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1165
    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_52
    .catch Lorg/json/JSONException; {:try_start_3d .. :try_end_52} :catch_79

    .line 1169
    .end local v4    # "userData":Lorg/json/JSONObject;
    .end local v5    # "dataArray":Lorg/json/JSONArray;
    nop

    .line 1171
    new-instance v10, Lcom/facebook/GraphRequest;

    .line 1172
    invoke-static {}, Lcom/facebook/AccessToken;->getCurrentAccessToken()Lcom/facebook/AccessToken;

    move-result-object v5

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v11, 0x1

    new-array v6, v11, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/facebook/appevents/AppEventsLogger$4;->val$applicationID:Ljava/lang/String;

    aput-object v8, v6, v7

    .line 1173
    const-string v7, "%s/user_properties"

    invoke-static {v4, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    sget-object v8, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    iget-object v9, p0, Lcom/facebook/appevents/AppEventsLogger$4;->val$callback:Lcom/facebook/GraphRequest$Callback;

    move-object v4, v10

    move-object v7, v3

    invoke-direct/range {v4 .. v9}, Lcom/facebook/GraphRequest;-><init>(Lcom/facebook/AccessToken;Ljava/lang/String;Landroid/os/Bundle;Lcom/facebook/HttpMethod;Lcom/facebook/GraphRequest$Callback;)V

    .line 1177
    .local v4, "request":Lcom/facebook/GraphRequest;
    invoke-virtual {v4, v11}, Lcom/facebook/GraphRequest;->setSkipClientToken(Z)V

    .line 1178
    invoke-virtual {v4}, Lcom/facebook/GraphRequest;->executeAsync()Lcom/facebook/GraphRequestAsyncTask;

    .line 1179
    return-void

    .line 1167
    .end local v4    # "request":Lcom/facebook/GraphRequest;
    :catch_79
    move-exception v4

    .line 1168
    .local v4, "ex":Lorg/json/JSONException;
    new-instance v5, Lcom/facebook/FacebookException;

    const-string v6, "Failed to construct request"

    invoke-direct {v5, v6, v4}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1139
    .end local v1    # "userPropertiesParams":Landroid/os/Bundle;
    .end local v2    # "identifiers":Lcom/facebook/internal/AttributionIdentifiers;
    .end local v3    # "data":Landroid/os/Bundle;
    .end local v4    # "ex":Lorg/json/JSONException;
    :cond_82
    :goto_82
    sget-object v1, Lcom/facebook/LoggingBehavior;->APP_EVENTS:Lcom/facebook/LoggingBehavior;

    .line 1141
    # getter for: Lcom/facebook/appevents/AppEventsLogger;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/facebook/appevents/AppEventsLogger;->access$200()Ljava/lang/String;

    move-result-object v2

    .line 1139
    const-string v3, "AppEventsLogger userID cannot be null or empty"

    invoke-static {v1, v2, v3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V

    .line 1143
    return-void
.end method
