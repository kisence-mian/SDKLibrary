.class public Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;
.super Ljava/lang/Object;
.source "AutomaticAnalyticsLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final internalAppEventsLogger:Lcom/facebook/appevents/internal/InternalAppEventsLogger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 48
    const-class v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->TAG:Ljava/lang/String;

    .line 50
    new-instance v0, Lcom/facebook/appevents/internal/InternalAppEventsLogger;

    .line 51
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/appevents/internal/InternalAppEventsLogger;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->internalAppEventsLogger:Lcom/facebook/appevents/internal/InternalAppEventsLogger;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getPurchaseLoggingParameters(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;
    .registers 12
    .param p0, "purchase"    # Ljava/lang/String;
    .param p1, "skuDetails"    # Ljava/lang/String;

    .line 167
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 168
    .local v0, "purchaseJSON":Lorg/json/JSONObject;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 170
    .local v1, "skuDetailsJSON":Lorg/json/JSONObject;
    new-instance v2, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 172
    .local v2, "params":Landroid/os/Bundle;
    const-string v3, "fb_iap_product_id"

    const-string v4, "productId"

    .line 174
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 172
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 175
    const-string v3, "fb_iap_purchase_time"

    const-string v4, "purchaseTime"

    .line 177
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 175
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 178
    const-string v3, "fb_iap_purchase_token"

    const-string v4, "purchaseToken"

    .line 180
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 178
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 181
    const-string v3, "fb_iap_package_name"

    const-string v4, "packageName"

    .line 183
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 181
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 184
    const-string v3, "fb_iap_product_title"

    const-string v4, "title"

    .line 186
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 184
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 187
    const-string v3, "fb_iap_product_description"

    const-string v4, "description"

    .line 189
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 187
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 191
    const-string v3, "type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "type":Ljava/lang/String;
    const-string v4, "fb_iap_product_type"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 195
    const-string v4, "subs"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a7

    .line 196
    const-string v4, "fb_iap_subs_auto_renewing"

    const-string v5, "autoRenewing"

    const/4 v6, 0x0

    .line 198
    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    .line 196
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 200
    const-string v4, "fb_iap_subs_period"

    const-string v5, "subscriptionPeriod"

    .line 202
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 200
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 203
    const-string v4, "fb_free_trial_period"

    const-string v5, "freeTrialPeriod"

    .line 205
    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 203
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 207
    const-string v4, "introductoryPriceCycles"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 208
    .local v4, "introductoryPriceCycles":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a7

    .line 209
    const-string v5, "fb_intro_price_amount_micros"

    const-string v6, "introductoryPriceAmountMicros"

    .line 211
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 209
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 212
    const-string v5, "fb_intro_price_cycles"

    invoke-virtual {v2, v5, v4}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 218
    .end local v4    # "introductoryPriceCycles":Ljava/lang/String;
    :cond_a7
    new-instance v4, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;

    new-instance v5, Ljava/math/BigDecimal;

    const-string v6, "price_amount_micros"

    .line 219
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_b1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_b1} :catch_cc

    long-to-double v6, v6

    const-wide v8, 0x412e848000000000L    # 1000000.0

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr v6, v8

    :try_start_bb
    invoke-direct {v5, v6, v7}, Ljava/math/BigDecimal;-><init>(D)V

    const-string v6, "price_currency_code"

    .line 220
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v6

    invoke-direct {v4, v5, v6, v2}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;-><init>(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V
    :try_end_cb
    .catch Lorg/json/JSONException; {:try_start_bb .. :try_end_cb} :catch_cc

    .line 218
    return-object v4

    .line 222
    .end local v0    # "purchaseJSON":Lorg/json/JSONObject;
    .end local v1    # "skuDetailsJSON":Lorg/json/JSONObject;
    .end local v2    # "params":Landroid/os/Bundle;
    .end local v3    # "type":Ljava/lang/String;
    :catch_cc
    move-exception v0

    .line 223
    .local v0, "e":Lorg/json/JSONException;
    sget-object v1, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->TAG:Ljava/lang/String;

    const-string v2, "Error parsing in-app subscription data."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 224
    const/4 v1, 0x0

    return-object v1
.end method

.method public static isImplicitPurchaseLoggingEnabled()Z
    .registers 3

    .line 153
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "appId":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/FetchedAppSettingsManager;->getAppSettingsWithoutQuery(Ljava/lang/String;)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v1

    .line 157
    .local v1, "settings":Lcom/facebook/internal/FetchedAppSettings;
    if-eqz v1, :cond_18

    .line 158
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 159
    invoke-virtual {v1}, Lcom/facebook/internal/FetchedAppSettings;->getIAPAutomaticLoggingEnabled()Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v2, 0x1

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    .line 157
    :goto_19
    return v2
.end method

.method public static logActivateAppEvent()V
    .registers 5

    .line 54
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, "appId":Ljava/lang/String;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getAutoLogAppEventsEnabled()Z

    move-result v2

    .line 57
    .local v2, "autoLogAppEvents":Z
    const-string v3, "context"

    invoke-static {v0, v3}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    if-eqz v2, :cond_25

    .line 59
    instance-of v3, v0, Landroid/app/Application;

    if-eqz v3, :cond_1e

    .line 60
    move-object v3, v0

    check-cast v3, Landroid/app/Application;

    invoke-static {v3, v1}, Lcom/facebook/appevents/AppEventsLogger;->activateApp(Landroid/app/Application;Ljava/lang/String;)V

    goto :goto_25

    .line 62
    :cond_1e
    sget-object v3, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->TAG:Ljava/lang/String;

    const-string v4, "Automatic logging of basic events will not happen, because FacebookSdk.getApplicationContext() returns object that is not instance of android.app.Application. Make sure you call FacebookSdk.sdkInitialize() from Application class and pass application context."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_25
    :goto_25
    return-void
.end method

.method public static logActivityTimeSpentEvent(Ljava/lang/String;J)V
    .registers 11
    .param p0, "activityName"    # Ljava/lang/String;
    .param p1, "timeSpentInSeconds"    # J

    .line 74
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 75
    .local v0, "context":Landroid/content/Context;
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "appId":Ljava/lang/String;
    const-string v2, "context"

    invoke-static {v0, v2}, Lcom/facebook/internal/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/facebook/internal/FetchedAppSettingsManager;->queryAppSettings(Ljava/lang/String;Z)Lcom/facebook/internal/FetchedAppSettings;

    move-result-object v2

    .line 79
    .local v2, "settings":Lcom/facebook/internal/FetchedAppSettings;
    if-eqz v2, :cond_35

    .line 80
    invoke-virtual {v2}, Lcom/facebook/internal/FetchedAppSettings;->getAutomaticLoggingEnabled()Z

    move-result v3

    if-eqz v3, :cond_35

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-lez v5, :cond_35

    .line 82
    invoke-static {v0}, Lcom/facebook/appevents/AppEventsLogger;->newLogger(Landroid/content/Context;)Lcom/facebook/appevents/AppEventsLogger;

    move-result-object v3

    .line 83
    .local v3, "appEventsLogger":Lcom/facebook/appevents/AppEventsLogger;
    new-instance v4, Landroid/os/Bundle;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(I)V

    .line 84
    .local v4, "params":Landroid/os/Bundle;
    const-string v5, "fb_aa_time_spent_view_name"

    invoke-virtual {v4, v5, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 85
    long-to-double v5, p1

    const-string v7, "fb_aa_time_spent_on_view"

    invoke-virtual {v3, v7, v5, v6, v4}, Lcom/facebook/appevents/AppEventsLogger;->logEvent(Ljava/lang/String;DLandroid/os/Bundle;)V

    .line 88
    .end local v3    # "appEventsLogger":Lcom/facebook/appevents/AppEventsLogger;
    .end local v4    # "params":Landroid/os/Bundle;
    :cond_35
    return-void
.end method

.method public static logPurchaseInapp(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p0, "purchase"    # Ljava/lang/String;
    .param p1, "skuDetails"    # Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->isImplicitPurchaseLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 95
    return-void

    .line 97
    :cond_7
    nop

    .line 98
    invoke-static {p0, p1}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->getPurchaseLoggingParameters(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;

    move-result-object v0

    .line 100
    .local v0, "loggingParameters":Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;
    if-eqz v0, :cond_19

    .line 101
    sget-object v1, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->internalAppEventsLogger:Lcom/facebook/appevents/internal/InternalAppEventsLogger;

    iget-object v2, v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;->purchaseAmount:Ljava/math/BigDecimal;

    iget-object v3, v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;->currency:Ljava/util/Currency;

    iget-object v4, v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;->param:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v4}, Lcom/facebook/appevents/internal/InternalAppEventsLogger;->logPurchaseImplicitlyInternal(Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    .line 106
    :cond_19
    return-void
.end method

.method public static logPurchaseSubs(Lcom/facebook/appevents/internal/SubscriptionType;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p0, "subsType"    # Lcom/facebook/appevents/internal/SubscriptionType;
    .param p1, "purchase"    # Ljava/lang/String;
    .param p2, "skuDetails"    # Ljava/lang/String;

    .line 116
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->isImplicitPurchaseLoggingEnabled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 117
    return-void

    .line 121
    :cond_7
    sget-object v0, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$1;->$SwitchMap$com$facebook$appevents$internal$SubscriptionType:[I

    invoke-virtual {p0}, Lcom/facebook/appevents/internal/SubscriptionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_38

    goto :goto_36

    .line 135
    :pswitch_13
    invoke-static {p1, p2}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->logPurchaseInapp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_36

    .line 132
    :pswitch_17
    const-string v0, "SubscriptionExpire"

    .line 133
    .local v0, "eventName":Ljava/lang/String;
    goto :goto_23

    .line 129
    .end local v0    # "eventName":Ljava/lang/String;
    :pswitch_1a
    const-string v0, "SubscriptionHeartbeat"

    .line 130
    .restart local v0    # "eventName":Ljava/lang/String;
    goto :goto_23

    .line 126
    .end local v0    # "eventName":Ljava/lang/String;
    :pswitch_1d
    const-string v0, "SubscriptionCancel"

    .line 127
    .restart local v0    # "eventName":Ljava/lang/String;
    goto :goto_23

    .line 123
    .end local v0    # "eventName":Ljava/lang/String;
    :pswitch_20
    const-string v0, "SubscriptionRestore"

    .line 124
    .restart local v0    # "eventName":Ljava/lang/String;
    nop

    .line 140
    :goto_23
    nop

    .line 141
    invoke-static {p1, p2}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->getPurchaseLoggingParameters(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;

    move-result-object v1

    .line 143
    .local v1, "loggingParameters":Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;
    if-eqz v1, :cond_35

    .line 144
    sget-object v2, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->internalAppEventsLogger:Lcom/facebook/appevents/internal/InternalAppEventsLogger;

    iget-object v3, v1, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;->purchaseAmount:Ljava/math/BigDecimal;

    iget-object v4, v1, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;->currency:Ljava/util/Currency;

    iget-object v5, v1, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;->param:Landroid/os/Bundle;

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/facebook/appevents/internal/InternalAppEventsLogger;->logEventImplicitly(Ljava/lang/String;Ljava/math/BigDecimal;Ljava/util/Currency;Landroid/os/Bundle;)V

    .line 150
    :cond_35
    return-void

    .line 137
    .end local v0    # "eventName":Ljava/lang/String;
    .end local v1    # "loggingParameters":Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger$PurchaseLoggingParameters;
    :goto_36
    return-void

    nop

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_17
        :pswitch_13
    .end packed-switch
.end method
