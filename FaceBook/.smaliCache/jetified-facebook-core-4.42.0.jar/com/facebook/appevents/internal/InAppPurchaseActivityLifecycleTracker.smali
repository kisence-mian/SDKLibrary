.class public Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;
.super Ljava/lang/Object;
.source "InAppPurchaseActivityLifecycleTracker.java"


# static fields
.field private static final BILLING_ACTIVITY_NAME:Ljava/lang/String; = "com.android.billingclient.api.ProxyBillingActivity"

.field private static final SERVICE_INTERFACE_NAME:Ljava/lang/String; = "com.android.vending.billing.IInAppBillingService$Stub"

.field private static final TAG:Ljava/lang/String;

.field private static callbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private static hasBiillingActivity:Ljava/lang/Boolean;

.field private static hasBillingService:Ljava/lang/Boolean;

.field private static inAppBillingObj:Ljava/lang/Object;

.field private static intent:Landroid/content/Intent;

.field private static final isTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static serviceConnection:Landroid/content/ServiceConnection;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    const-class v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;

    .line 47
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->TAG:Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->isTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->hasBillingService:Ljava/lang/Boolean;

    .line 57
    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->hasBiillingActivity:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .registers 1

    .line 44
    sget-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->inAppBillingObj:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1
    .param p0, "x0"    # Ljava/lang/Object;

    .line 44
    sput-object p0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->inAppBillingObj:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .line 44
    invoke-static {p0, p1}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->logPurchaseInapp(Landroid/content/Context;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/util/Map;)V
    .registers 2
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/util/Map;

    .line 44
    invoke-static {p0, p1}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->logPurchaseSubs(Landroid/content/Context;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/Boolean;
    .registers 1

    .line 44
    sget-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->hasBiillingActivity:Ljava/lang/Boolean;

    return-object v0
.end method

.method private static initializeIfNotInitialized()V
    .registers 3

    .line 74
    sget-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->hasBillingService:Ljava/lang/Boolean;

    if-eqz v0, :cond_5

    .line 75
    return-void

    .line 79
    :cond_5
    const/4 v0, 0x0

    :try_start_6
    const-string v1, "com.android.vending.billing.IInAppBillingService$Stub"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 80
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->hasBillingService:Ljava/lang/Boolean;
    :try_end_12
    .catch Ljava/lang/ClassNotFoundException; {:try_start_6 .. :try_end_12} :catch_47

    .line 84
    nop

    .line 87
    :try_start_13
    const-string v2, "com.android.billingclient.api.ProxyBillingActivity"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 88
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->hasBiillingActivity:Ljava/lang/Boolean;
    :try_end_1e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_1e} :catch_1f

    .line 91
    goto :goto_26

    .line 89
    :catch_1f
    move-exception v1

    .line 90
    .local v1, "ignored":Ljava/lang/ClassNotFoundException;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->hasBiillingActivity:Ljava/lang/Boolean;

    .line 93
    .end local v1    # "ignored":Ljava/lang/ClassNotFoundException;
    :goto_26
    invoke-static {}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->clearSkuDetailsCache()V

    .line 95
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.vending.billing.InAppBillingService.BIND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 96
    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->intent:Landroid/content/Intent;

    .line 98
    new-instance v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$1;

    invoke-direct {v0}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$1;-><init>()V

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->serviceConnection:Landroid/content/ServiceConnection;

    .line 112
    new-instance v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2;

    invoke-direct {v0}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker$2;-><init>()V

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->callbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 170
    return-void

    .line 81
    :catch_47
    move-exception v1

    .line 82
    .restart local v1    # "ignored":Ljava/lang/ClassNotFoundException;
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->hasBillingService:Ljava/lang/Boolean;

    .line 83
    return-void
.end method

.method private static logPurchaseInapp(Landroid/content/Context;Ljava/util/ArrayList;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 185
    .local p1, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 186
    return-void

    .line 189
    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 190
    .local v0, "purchaseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 191
    .local v1, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 193
    .local v3, "purchase":Ljava/lang/String;
    :try_start_21
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 194
    .local v4, "purchaseJson":Lorg/json/JSONObject;
    const-string v5, "productId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 195
    .local v5, "sku":Ljava/lang/String;
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_32} :catch_34

    .line 201
    nop

    .end local v4    # "purchaseJson":Lorg/json/JSONObject;
    .end local v5    # "sku":Ljava/lang/String;
    goto :goto_3c

    .line 199
    :catch_34
    move-exception v4

    .line 200
    .local v4, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->TAG:Ljava/lang/String;

    const-string v6, "Error parsing in-app purchase data."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    .end local v3    # "purchase":Ljava/lang/String;
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_3c
    goto :goto_15

    .line 204
    :cond_3d
    sget-object v2, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->inAppBillingObj:Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getSkuDetails(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/Map;

    move-result-object v2

    .line 207
    .local v2, "skuDetailsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 208
    .local v4, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    nop

    .line 209
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 208
    invoke-static {v5, v6}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->logPurchaseInapp(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    .end local v4    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_4c

    .line 211
    :cond_6d
    return-void
.end method

.method private static logPurchaseSubs(Landroid/content/Context;Ljava/util/Map;)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/appevents/internal/SubscriptionType;",
            ">;)V"
        }
    .end annotation

    .line 216
    .local p1, "purchasesSubsTypeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/appevents/internal/SubscriptionType;>;"
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 217
    return-void

    .line 220
    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 221
    .local v0, "skuPurchaseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 222
    .local v1, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_41

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 224
    .local v3, "purchase":Ljava/lang/String;
    :try_start_25
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 225
    .local v4, "purchaseJson":Lorg/json/JSONObject;
    const-string v5, "productId"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 226
    .local v5, "sku":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 227
    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_25 .. :try_end_36} :catch_38

    .line 230
    nop

    .end local v4    # "purchaseJson":Lorg/json/JSONObject;
    .end local v5    # "sku":Ljava/lang/String;
    goto :goto_40

    .line 228
    :catch_38
    move-exception v4

    .line 229
    .local v4, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->TAG:Ljava/lang/String;

    const-string v6, "Error parsing in-app purchase data."

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 231
    .end local v3    # "purchase":Ljava/lang/String;
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_40
    goto :goto_19

    .line 233
    :cond_41
    sget-object v2, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->inAppBillingObj:Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {p0, v1, v2, v3}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getSkuDetails(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/Map;

    move-result-object v2

    .line 236
    .local v2, "skuDetailsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_50
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_72

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 237
    .local v4, "sku":Ljava/lang/String;
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 238
    .local v5, "purchase":Ljava/lang/String;
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 239
    .local v6, "skuDetail":Ljava/lang/String;
    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/appevents/internal/SubscriptionType;

    .line 240
    .local v7, "subsType":Lcom/facebook/appevents/internal/SubscriptionType;
    invoke-static {v7, v5, v6}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->logPurchaseSubs(Lcom/facebook/appevents/internal/SubscriptionType;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .end local v4    # "sku":Ljava/lang/String;
    .end local v5    # "purchase":Ljava/lang/String;
    .end local v6    # "skuDetail":Ljava/lang/String;
    .end local v7    # "subsType":Lcom/facebook/appevents/internal/SubscriptionType;
    goto :goto_50

    .line 242
    :cond_72
    return-void
.end method

.method private static startTracking()V
    .registers 5

    .line 173
    sget-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->isTracking:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-nez v0, :cond_b

    .line 174
    return-void

    .line 176
    :cond_b
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 177
    .local v0, "context":Landroid/content/Context;
    instance-of v1, v0, Landroid/app/Application;

    if-eqz v1, :cond_22

    .line 178
    move-object v1, v0

    check-cast v1, Landroid/app/Application;

    .line 179
    .local v1, "application":Landroid/app/Application;
    sget-object v3, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->callbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {v1, v3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 180
    sget-object v3, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->intent:Landroid/content/Intent;

    sget-object v4, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->serviceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v3, v4, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 182
    .end local v1    # "application":Landroid/app/Application;
    :cond_22
    return-void
.end method

.method public static update()V
    .registers 1

    .line 64
    invoke-static {}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->initializeIfNotInitialized()V

    .line 65
    sget-object v0, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->hasBillingService:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_c

    .line 66
    return-void

    .line 68
    :cond_c
    invoke-static {}, Lcom/facebook/appevents/internal/AutomaticAnalyticsLogger;->isImplicitPurchaseLoggingEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 69
    invoke-static {}, Lcom/facebook/appevents/internal/InAppPurchaseActivityLifecycleTracker;->startTracking()V

    .line 71
    :cond_15
    return-void
.end method
