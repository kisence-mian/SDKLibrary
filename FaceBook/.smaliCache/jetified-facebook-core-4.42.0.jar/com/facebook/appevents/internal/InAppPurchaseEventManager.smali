.class Lcom/facebook/appevents/internal/InAppPurchaseEventManager;
.super Ljava/lang/Object;
.source "InAppPurchaseEventManager.java"


# static fields
.field private static final AS_INTERFACE:Ljava/lang/String; = "asInterface"

.field private static final CACHE_CLEAR_TIME_LIMIT_SEC:I = 0x93a80

.field private static final DETAILS_LIST:Ljava/lang/String; = "DETAILS_LIST"

.field private static final GET_PURCHASES:Ljava/lang/String; = "getPurchases"

.field private static final GET_PURCHASE_HISTORY:Ljava/lang/String; = "getPurchaseHistory"

.field private static final GET_SKU_DETAILS:Ljava/lang/String; = "getSkuDetails"

.field private static final INAPP:Ljava/lang/String; = "inapp"

.field private static final INAPP_CONTINUATION_TOKEN:Ljava/lang/String; = "INAPP_CONTINUATION_TOKEN"

.field private static final INAPP_PURCHASE_DATA_LIST:Ljava/lang/String; = "INAPP_PURCHASE_DATA_LIST"

.field private static final IN_APP_BILLING_SERVICE:Ljava/lang/String; = "com.android.vending.billing.IInAppBillingService"

.field private static final IN_APP_BILLING_SERVICE_STUB:Ljava/lang/String; = "com.android.vending.billing.IInAppBillingService$Stub"

.field private static final IS_BILLING_SUPPORTED:Ljava/lang/String; = "isBillingSupported"

.field private static final ITEM_ID_LIST:Ljava/lang/String; = "ITEM_ID_LIST"

.field private static final LAST_CLEARED_TIME:Ljava/lang/String; = "LAST_CLEARED_TIME"

.field private static final LAST_LOGGED_TIME_SEC:Ljava/lang/String; = "LAST_LOGGED_TIME_SEC"

.field private static final MAX_QUERY_PURCHASE_NUM:I = 0x1e

.field private static final PACKAGE_NAME:Ljava/lang/String;

.field private static final PURCHASE_EXPIRE_TIME_SEC:I = 0xa8c0

.field private static final PURCHASE_INAPP_STORE:Ljava/lang/String; = "com.facebook.internal.PURCHASE"

.field private static final PURCHASE_STOP_QUERY_TIME_SEC:I = 0x4b0

.field private static final PURCHASE_SUBS_STORE:Ljava/lang/String; = "com.facebook.internal.PURCHASE_SUBS"

.field private static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field private static final SKU_DETAILS_STORE:Ljava/lang/String; = "com.facebook.internal.SKU_DETAILS"

.field private static final SKU_DETAIL_EXPIRE_TIME_SEC:I = 0xa8c0

.field private static final SUBSCRIPTION:Ljava/lang/String; = "subs"

.field private static final SUBSCRIPTION_HARTBEAT_INTERVAL:J = 0x15180L

.field private static final TAG:Ljava/lang/String;

.field private static final classMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field

.field private static final methodMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final purchaseInappSharedPrefs:Landroid/content/SharedPreferences;

.field private static final purchaseSubsSharedPrefs:Landroid/content/SharedPreferences;

.field private static final skuDetailSharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 44
    const-class v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->methodMap:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->classMap:Ljava/util/HashMap;

    .line 87
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->PACKAGE_NAME:Ljava/lang/String;

    .line 100
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.internal.SKU_DETAILS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->skuDetailSharedPrefs:Landroid/content/SharedPreferences;

    .line 104
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.internal.PURCHASE"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->purchaseInappSharedPrefs:Landroid/content/SharedPreferences;

    .line 108
    invoke-static {}, Lcom/facebook/FacebookSdk;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.facebook.internal.PURCHASE_SUBS"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    sput-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->purchaseSubsSharedPrefs:Landroid/content/SharedPreferences;

    .line 107
    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asInterface(Landroid/content/Context;Landroid/os/IBinder;)Ljava/lang/Object;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "service"    # Landroid/os/IBinder;

    .line 114
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 115
    .local v0, "args":[Ljava/lang/Object;
    const-string v1, "com.android.vending.billing.IInAppBillingService$Stub"

    const-string v2, "asInterface"

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3, v0}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->invokeMethod(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static clearSkuDetailsCache()V
    .registers 11

    .line 604
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 607
    .local v0, "nowSec":J
    sget-object v2, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->skuDetailSharedPrefs:Landroid/content/SharedPreferences;

    const-string v3, "LAST_CLEARED_TIME"

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 608
    .local v6, "lastClearedTimeSec":J
    cmp-long v8, v6, v4

    if-nez v8, :cond_21

    .line 609
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 610
    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 611
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_39

    .line 612
    :cond_21
    sub-long v4, v0, v6

    const-wide/32 v8, 0x93a80

    cmp-long v10, v4, v8

    if-lez v10, :cond_39

    .line 613
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 614
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 615
    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 616
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 618
    :cond_39
    :goto_39
    return-void
.end method

.method private static filterPurchasesInapp(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 477
    .local p0, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 478
    .local v1, "filteredPurchase":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->purchaseInappSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 479
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 480
    .local v3, "nowSec":J
    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_17
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_67

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Ljava/lang/String;

    .line 482
    .local v8, "purchase":Ljava/lang/String;
    :try_start_24
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 483
    .local v0, "purchaseJson":Lorg/json/JSONObject;
    const-string v9, "productId"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 484
    .local v9, "sku":Ljava/lang/String;
    const-string v10, "purchaseTime"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 485
    .local v10, "purchaseTimeMillis":J
    const-string v12, "purchaseToken"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 486
    .local v12, "purchaseToken":Ljava/lang/String;
    div-long v13, v10, v5

    sub-long v13, v3, v13

    const-wide/32 v15, 0xa8c0

    cmp-long v17, v13, v15

    if-lez v17, :cond_47

    .line 487
    goto :goto_17

    .line 490
    :cond_47
    sget-object v13, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->purchaseInappSharedPrefs:Landroid/content/SharedPreferences;

    const-string v14, ""

    invoke-interface {v13, v9, v14}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 492
    .local v13, "historyPurchaseToken":Ljava/lang/String;
    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_56

    .line 493
    goto :goto_17

    .line 496
    :cond_56
    invoke-interface {v2, v9, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 497
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_5c
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_5c} :catch_5e

    .line 500
    nop

    .end local v0    # "purchaseJson":Lorg/json/JSONObject;
    .end local v9    # "sku":Ljava/lang/String;
    .end local v10    # "purchaseTimeMillis":J
    .end local v12    # "purchaseToken":Ljava/lang/String;
    .end local v13    # "historyPurchaseToken":Ljava/lang/String;
    goto :goto_66

    .line 498
    :catch_5e
    move-exception v0

    .line 499
    .local v0, "e":Lorg/json/JSONException;
    sget-object v9, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    const-string v10, "parsing purchase failure: "

    invoke-static {v9, v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 501
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v8    # "purchase":Ljava/lang/String;
    :goto_66
    goto :goto_17

    .line 503
    :cond_67
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 505
    return-object v1
.end method

.method private static getClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 550
    sget-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->classMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 551
    .local v1, "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_b

    .line 552
    return-object v1

    .line 556
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    move-object v1, v2

    .line 557
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_17
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_17} :catch_18

    .line 564
    goto :goto_3b

    .line 558
    :catch_18
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-object v2, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not available, please add "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to the project."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 566
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :goto_3b
    return-object v1
.end method

.method private static getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 12
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 510
    .local p0, "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->methodMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Method;

    .line 511
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_b

    .line 512
    return-object v1

    .line 516
    :cond_b
    const/4 v2, 0x0

    .line 517
    .local v2, "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, -0x1

    :try_start_d
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x1

    sparse-switch v4, :sswitch_data_da

    :cond_19
    goto :goto_4b

    :sswitch_1a
    const-string v4, "getSkuDetails"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v3, 0x1

    goto :goto_4b

    :sswitch_24
    const-string v4, "getPurchaseHistory"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v3, 0x4

    goto :goto_4b

    :sswitch_2e
    const-string v4, "asInterface"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v3, 0x0

    goto :goto_4b

    :sswitch_38
    const-string v4, "isBillingSupported"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v3, 0x2

    goto :goto_4b

    :sswitch_42
    const-string v4, "getPurchases"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v3, 0x3

    :goto_4b
    packed-switch v3, :pswitch_data_f0

    goto :goto_a8

    .line 534
    :pswitch_4f
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v9

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v3, v5

    move-object v2, v3

    goto :goto_a8

    .line 530
    :pswitch_68
    new-array v3, v5, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v9

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v7

    move-object v2, v3

    .line 532
    goto :goto_a8

    .line 526
    :pswitch_7c
    new-array v3, v7, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v9

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    move-object v2, v3

    .line 528
    goto :goto_a8

    .line 522
    :pswitch_8c
    new-array v3, v5, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v8

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v9

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v3, v7

    move-object v2, v3

    .line 524
    goto :goto_a8

    .line 519
    :pswitch_a0
    new-array v3, v9, [Ljava/lang/Class;

    const-class v4, Landroid/os/IBinder;

    aput-object v4, v3, v8

    move-object v2, v3

    .line 520
    nop

    .line 539
    :goto_a8
    invoke-virtual {p0, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v1, v3

    .line 540
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_d .. :try_end_b0} :catch_b2

    .line 543
    nop

    .end local v2    # "paramTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    goto :goto_d9

    .line 541
    :catch_b2
    move-exception v0

    .line 542
    .local v0, "e":Ljava/lang/NoSuchMethodException;
    sget-object v2, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " method not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 545
    .end local v0    # "e":Ljava/lang/NoSuchMethodException;
    :goto_d9
    return-object v1

    :sswitch_data_da
    .sparse-switch
        -0x6b5af324 -> :sswitch_42
        -0x5677d643 -> :sswitch_38
        -0x42f2e6d9 -> :sswitch_2e
        -0x236d29e3 -> :sswitch_24
        -0x222c05a5 -> :sswitch_1a
    .end sparse-switch

    :pswitch_data_f0
    .packed-switch 0x0
        :pswitch_a0
        :pswitch_8c
        :pswitch_7c
        :pswitch_68
        :pswitch_4f
    .end packed-switch
.end method

.method private static getPurchaseHistory(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 28
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inAppBillingObj"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 425
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 427
    .local v1, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static/range {p0 .. p2}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->isBillingSupported(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_b9

    .line 428
    const/4 v0, 0x0

    .line 429
    .local v0, "continuationToken":Ljava/lang/String;
    const/4 v2, 0x0

    .line 430
    .local v2, "queriedPurchaseNum":I
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 433
    .local v4, "reachTimeLimit":Ljava/lang/Boolean;
    :goto_17
    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x6

    .line 434
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    sget-object v6, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v6, 0x2

    aput-object p2, v5, v6

    const/4 v6, 0x3

    aput-object v0, v5, v6

    const/4 v6, 0x4

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    aput-object v8, v5, v6

    .line 435
    .local v5, "args":[Ljava/lang/Object;
    const/4 v6, 0x0

    .line 437
    .end local v0    # "continuationToken":Ljava/lang/String;
    .local v6, "continuationToken":Ljava/lang/String;
    const-string v0, "com.android.vending.billing.IInAppBillingService"

    const-string v8, "getPurchaseHistory"

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    invoke-static {v9, v0, v8, v10, v5}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->invokeMethod(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 439
    .local v8, "result":Ljava/lang/Object;
    if-eqz v8, :cond_a8

    .line 440
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    div-long/2addr v11, v13

    .line 441
    .local v11, "nowSec":J
    move-object v15, v8

    check-cast v15, Landroid/os/Bundle;

    .line 442
    .local v15, "purchaseDetails":Landroid/os/Bundle;
    const-string v0, "RESPONSE_CODE"

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    .line 443
    .local v16, "response":I
    if-nez v16, :cond_a8

    .line 444
    nop

    .line 445
    const-string v0, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v17

    .line 447
    .local v17, "details":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v18

    :goto_60
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    .line 449
    .local v3, "detail":Ljava/lang/String;
    :try_start_6d
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_72
    .catch Lorg/json/JSONException; {:try_start_6d .. :try_end_72} :catch_94

    .line 450
    .local v0, "detailJSON":Lorg/json/JSONObject;
    :try_start_72
    const-string v7, "purchaseTime"

    .line 451
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v19

    div-long v19, v19, v13
    :try_end_7a
    .catch Lorg/json/JSONException; {:try_start_72 .. :try_end_7a} :catch_91

    .line 453
    .local v19, "purchaseTimeSec":J
    sub-long v21, v11, v19

    const-wide/16 v23, 0x4b0

    cmp-long v7, v21, v23

    if-lez v7, :cond_89

    .line 454
    const/4 v7, 0x1

    :try_start_83
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    move-object v4, v7

    .line 455
    goto :goto_a1

    .line 457
    :cond_89
    const/4 v7, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8d
    .catch Lorg/json/JSONException; {:try_start_83 .. :try_end_8d} :catch_94

    .line 458
    nop

    .end local v0    # "detailJSON":Lorg/json/JSONObject;
    .end local v19    # "purchaseTimeSec":J
    add-int/lit8 v2, v2, 0x1

    .line 462
    goto :goto_9c

    .line 460
    :catch_91
    move-exception v0

    const/4 v7, 0x1

    goto :goto_95

    :catch_94
    move-exception v0

    .line 461
    .local v0, "e":Lorg/json/JSONException;
    :goto_95
    sget-object v7, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    const-string v13, "parsing purchase failure: "

    invoke-static {v7, v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 463
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v3    # "detail":Ljava/lang/String;
    :goto_9c
    const/4 v3, 0x0

    const/4 v7, 0x1

    const-wide/16 v13, 0x3e8

    goto :goto_60

    .line 465
    :cond_a1
    :goto_a1
    const-string v0, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v15, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .end local v6    # "continuationToken":Ljava/lang/String;
    .local v0, "continuationToken":Ljava/lang/String;
    goto :goto_a9

    .line 468
    .end local v0    # "continuationToken":Ljava/lang/String;
    .end local v5    # "args":[Ljava/lang/Object;
    .end local v8    # "result":Ljava/lang/Object;
    .end local v11    # "nowSec":J
    .end local v15    # "purchaseDetails":Landroid/os/Bundle;
    .end local v16    # "response":I
    .end local v17    # "details":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "continuationToken":Ljava/lang/String;
    :cond_a8
    move-object v0, v6

    .end local v6    # "continuationToken":Ljava/lang/String;
    .restart local v0    # "continuationToken":Ljava/lang/String;
    :goto_a9
    const/16 v3, 0x1e

    if-ge v2, v3, :cond_bd

    if-eqz v0, :cond_bd

    .line 470
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_b6

    goto :goto_bd

    :cond_b6
    const/4 v3, 0x0

    goto/16 :goto_17

    .line 427
    .end local v0    # "continuationToken":Ljava/lang/String;
    .end local v2    # "queriedPurchaseNum":I
    .end local v4    # "reachTimeLimit":Ljava/lang/Boolean;
    :cond_b9
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    .line 473
    :cond_bd
    :goto_bd
    return-object v1
.end method

.method public static getPurchaseHistoryInapp(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inAppBillingObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 402
    .local v0, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_8

    .line 403
    return-object v0

    .line 406
    :cond_8
    const-string v1, "com.android.vending.billing.IInAppBillingService"

    invoke-static {p0, v1}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 407
    .local v1, "iapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v1, :cond_11

    .line 408
    return-object v0

    .line 411
    :cond_11
    const-string v2, "getPurchaseHistory"

    invoke-static {v1, v2}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 412
    .local v2, "method":Ljava/lang/reflect/Method;
    if-nez v2, :cond_1a

    .line 413
    return-object v0

    .line 416
    :cond_1a
    const-string v3, "inapp"

    invoke-static {p0, p1, v3}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getPurchaseHistory(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 418
    invoke-static {v0}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->filterPurchasesInapp(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v3

    return-object v3
.end method

.method private static getPurchases(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 12
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inAppBillingObj"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 358
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 360
    .local v0, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_8

    .line 361
    return-object v0

    .line 364
    :cond_8
    invoke-static {p0, p1, p2}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->isBillingSupported(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 366
    const/4 v1, 0x0

    .line 367
    .local v1, "continuationToken":Ljava/lang/String;
    const/4 v2, 0x0

    .line 370
    .local v2, "queriedPurchaseNum":I
    :cond_14
    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    const/4 v4, 0x1

    sget-object v6, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->PACKAGE_NAME:Ljava/lang/String;

    aput-object v6, v3, v4

    const/4 v4, 0x2

    aput-object p2, v3, v4

    aput-object v1, v3, v5

    .line 371
    .local v3, "args":[Ljava/lang/Object;
    const-string v4, "com.android.vending.billing.IInAppBillingService"

    const-string v5, "getPurchases"

    invoke-static {p0, v4, v5, p1, v3}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->invokeMethod(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 374
    .local v4, "result":Ljava/lang/Object;
    const/4 v1, 0x0

    .line 376
    if-eqz v4, :cond_56

    .line 377
    move-object v5, v4

    check-cast v5, Landroid/os/Bundle;

    .line 378
    .local v5, "purchaseDetails":Landroid/os/Bundle;
    const-string v6, "RESPONSE_CODE"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 379
    .local v6, "response":I
    if-nez v6, :cond_56

    .line 380
    nop

    .line 381
    const-string v7, "INAPP_PURCHASE_DATA_LIST"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 382
    .local v7, "details":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v7, :cond_5c

    .line 383
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/2addr v2, v8

    .line 384
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 385
    const-string v8, "INAPP_CONTINUATION_TOKEN"

    invoke-virtual {v5, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 391
    .end local v3    # "args":[Ljava/lang/Object;
    .end local v4    # "result":Ljava/lang/Object;
    .end local v5    # "purchaseDetails":Landroid/os/Bundle;
    .end local v6    # "response":I
    .end local v7    # "details":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_56
    const/16 v3, 0x1e

    if-ge v2, v3, :cond_5c

    if-nez v1, :cond_14

    .line 395
    .end local v1    # "continuationToken":Ljava/lang/String;
    .end local v2    # "queriedPurchaseNum":I
    :cond_5c
    return-object v0
.end method

.method public static getPurchasesInapp(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inAppBillingObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 221
    const-string v0, "inapp"

    invoke-static {p0, p1, v0}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getPurchases(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->filterPurchasesInapp(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static getPurchasesSubs(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/Map;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inAppBillingObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/facebook/appevents/internal/SubscriptionType;",
            ">;"
        }
    .end annotation

    .line 271
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 273
    .local v0, "purchaseMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/facebook/appevents/internal/SubscriptionType;>;"
    nop

    .line 274
    const-string v1, "subs"

    invoke-static {p0, p1, v1}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getPurchases(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 276
    .local v1, "purchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_10
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 277
    .local v3, "purchase":Ljava/lang/String;
    invoke-static {v3}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getSubsType(Ljava/lang/String;)Lcom/facebook/appevents/internal/SubscriptionType;

    move-result-object v4

    .line 278
    .local v4, "subsType":Lcom/facebook/appevents/internal/SubscriptionType;
    sget-object v5, Lcom/facebook/appevents/internal/SubscriptionType;->DUPLICATED:Lcom/facebook/appevents/internal/SubscriptionType;

    if-eq v4, v5, :cond_2b

    sget-object v5, Lcom/facebook/appevents/internal/SubscriptionType;->UNKNOWN:Lcom/facebook/appevents/internal/SubscriptionType;

    if-eq v4, v5, :cond_2b

    .line 279
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .end local v3    # "purchase":Ljava/lang/String;
    .end local v4    # "subsType":Lcom/facebook/appevents/internal/SubscriptionType;
    :cond_2b
    goto :goto_10

    .line 283
    :cond_2c
    return-object v0
.end method

.method public static getPurchasesSubsExpire(Landroid/content/Context;Ljava/lang/Object;)Ljava/util/ArrayList;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inAppBillingObj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    .local v0, "expirePurchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v1, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->purchaseSubsSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    .line 229
    .local v1, "keys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 230
    return-object v0

    .line 233
    :cond_12
    nop

    .line 234
    const-string v2, "subs"

    invoke-static {p0, p1, v2}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getPurchases(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 235
    .local v2, "currPurchases":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 236
    .local v3, "currSkuSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_22
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 238
    .local v5, "purchase":Ljava/lang/String;
    :try_start_2e
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 239
    .local v6, "purchaseJson":Lorg/json/JSONObject;
    const-string v7, "productId"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_3c} :catch_3e

    .line 242
    nop

    .end local v6    # "purchaseJson":Lorg/json/JSONObject;
    goto :goto_46

    .line 240
    :catch_3e
    move-exception v6

    .line 241
    .local v6, "e":Lorg/json/JSONException;
    sget-object v7, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    const-string v8, "Error parsing purchase json"

    invoke-static {v7, v8, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 243
    .end local v5    # "purchase":Ljava/lang/String;
    .end local v6    # "e":Lorg/json/JSONException;
    :goto_46
    goto :goto_22

    .line 245
    :cond_47
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 246
    .local v4, "expireSkuSet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_54
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_70

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 247
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 248
    .local v7, "sku":Ljava/lang/String;
    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6f

    .line 249
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 251
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v7    # "sku":Ljava/lang/String;
    :cond_6f
    goto :goto_54

    .line 253
    :cond_70
    sget-object v5, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->purchaseSubsSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 254
    .local v5, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_7a
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 255
    .local v7, "expireSku":Ljava/lang/String;
    sget-object v8, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->purchaseSubsSharedPrefs:Landroid/content/SharedPreferences;

    const-string v9, ""

    invoke-interface {v8, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 256
    .local v10, "expirePurchase":Ljava/lang/String;
    invoke-interface {v5, v7}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 257
    invoke-virtual {v10}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_9e

    .line 258
    invoke-interface {v8, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    .end local v7    # "expireSku":Ljava/lang/String;
    .end local v10    # "expirePurchase":Ljava/lang/String;
    :cond_9e
    goto :goto_7a

    .line 261
    :cond_9f
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 263
    return-object v0
.end method

.method public static getSkuDetails(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/Map;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "inAppBillingObj"    # Ljava/lang/Object;
    .param p3, "isSubscription"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 123
    .local p1, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->readSkuDetailsFromCache(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v0

    .line 125
    .local v0, "skuDetailsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 126
    .local v1, "unresolvedSkuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 127
    .local v3, "sku":Ljava/lang/String;
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_22

    .line 128
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    .end local v3    # "sku":Ljava/lang/String;
    :cond_22
    goto :goto_d

    .line 132
    :cond_23
    invoke-static {p0, v1, p2, p3}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getSkuDetailsFromGoogle(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 135
    return-object v0
.end method

.method private static getSkuDetailsFromGoogle(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/Object;Z)Ljava/util/Map;
    .registers 14
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "inAppBillingObj"    # Ljava/lang/Object;
    .param p3, "isSubscription"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 142
    .local p1, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 144
    .local v0, "skuDetailsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_74

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_74

    .line 148
    :cond_e
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 149
    .local v1, "querySkus":Landroid/os/Bundle;
    const-string v2, "ITEM_ID_LIST"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 150
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 151
    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    sget-object v3, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    if-eqz p3, :cond_2e

    const-string v5, "subs"

    goto :goto_30

    :cond_2e
    const-string v5, "inapp"

    :goto_30
    aput-object v5, v2, v3

    aput-object v1, v2, v4

    .line 153
    .local v2, "args":[Ljava/lang/Object;
    const-string v3, "com.android.vending.billing.IInAppBillingService"

    const-string v4, "getSkuDetails"

    invoke-static {p0, v3, v4, p2, v2}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->invokeMethod(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 156
    .local v3, "result":Ljava/lang/Object;
    if-eqz v3, :cond_73

    .line 157
    move-object v4, v3

    check-cast v4, Landroid/os/Bundle;

    .line 158
    .local v4, "bundle":Landroid/os/Bundle;
    const-string v5, "RESPONSE_CODE"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 159
    .local v5, "response":I
    if-nez v5, :cond_73

    .line 160
    const-string v6, "DETAILS_LIST"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v6

    .line 161
    .local v6, "skuDetailsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v6, :cond_70

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ne v7, v8, :cond_70

    .line 162
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_5c
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_70

    .line 163
    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    add-int/lit8 v7, v7, 0x1

    goto :goto_5c

    .line 167
    .end local v7    # "i":I
    :cond_70
    invoke-static {v0}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->writeSkuDetailsToCache(Ljava/util/Map;)V

    .line 171
    .end local v4    # "bundle":Landroid/os/Bundle;
    .end local v5    # "response":I
    .end local v6    # "skuDetailsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_73
    return-object v0

    .line 145
    .end local v1    # "querySkus":Landroid/os/Bundle;
    .end local v2    # "args":[Ljava/lang/Object;
    .end local v3    # "result":Ljava/lang/Object;
    :cond_74
    :goto_74
    return-object v0
.end method

.method private static getSubsType(Ljava/lang/String;)Lcom/facebook/appevents/internal/SubscriptionType;
    .registers 18
    .param p0, "purchase"    # Ljava/lang/String;

    .line 298
    const-string v0, "autoRenewing"

    const-string v1, "purchaseToken"

    const/4 v2, 0x0

    .line 299
    .local v2, "subsType":Lcom/facebook/appevents/internal/SubscriptionType;
    :try_start_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    .line 301
    .local v3, "nowSec":J
    new-instance v7, Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_e} :catch_ad

    move-object/from16 v8, p0

    :try_start_10
    invoke-direct {v7, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 302
    .local v7, "purchaseJson":Lorg/json/JSONObject;
    const-string v9, "productId"

    invoke-virtual {v7, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 304
    .local v9, "sku":Ljava/lang/String;
    sget-object v10, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->purchaseSubsSharedPrefs:Landroid/content/SharedPreferences;

    const-string v11, ""

    invoke-interface {v10, v9, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 305
    .local v11, "oldPurchase":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_2d

    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12}, Lorg/json/JSONObject;-><init>()V

    goto :goto_32

    :cond_2d
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 309
    .local v12, "oldPurchaseJson":Lorg/json/JSONObject;
    :goto_32
    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 310
    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v13, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_57

    .line 311
    const-string v1, "purchaseTime"

    invoke-virtual {v7, v1}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v13

    .line 312
    .local v13, "purchaseTimeMillis":J
    div-long v5, v13, v5

    sub-long v5, v3, v5

    const-wide/32 v15, 0xa8c0

    cmp-long v1, v5, v15

    if-gez v1, :cond_54

    sget-object v1, Lcom/facebook/appevents/internal/SubscriptionType;->NEW:Lcom/facebook/appevents/internal/SubscriptionType;

    goto :goto_56

    :cond_54
    sget-object v1, Lcom/facebook/appevents/internal/SubscriptionType;->HEARTBEAT:Lcom/facebook/appevents/internal/SubscriptionType;

    :goto_56
    move-object v2, v1

    .line 317
    .end local v13    # "purchaseTimeMillis":J
    :cond_57
    if-nez v2, :cond_76

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_76

    .line 318
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 319
    .local v1, "oldAutoRenewing":Z
    invoke-virtual {v7, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 321
    .local v0, "newAutoRenewing":Z
    if-nez v0, :cond_6f

    if-eqz v1, :cond_6f

    .line 322
    sget-object v5, Lcom/facebook/appevents/internal/SubscriptionType;->CANCEL:Lcom/facebook/appevents/internal/SubscriptionType;

    move-object v2, v5

    goto :goto_76

    .line 323
    :cond_6f
    if-nez v1, :cond_76

    if-eqz v0, :cond_76

    .line 324
    sget-object v5, Lcom/facebook/appevents/internal/SubscriptionType;->RESTORE:Lcom/facebook/appevents/internal/SubscriptionType;
    :try_end_75
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_75} :catch_ab

    move-object v2, v5

    .line 329
    .end local v0    # "newAutoRenewing":Z
    .end local v1    # "oldAutoRenewing":Z
    :cond_76
    :goto_76
    const-string v0, "LAST_LOGGED_TIME_SEC"

    if-nez v2, :cond_94

    :try_start_7a
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_94

    .line 330
    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 332
    .local v5, "lastLoggedTimeSec":J
    sub-long v13, v3, v5

    const-wide/32 v15, 0x15180

    cmp-long v1, v13, v15

    if-lez v1, :cond_91

    .line 333
    sget-object v1, Lcom/facebook/appevents/internal/SubscriptionType;->HEARTBEAT:Lcom/facebook/appevents/internal/SubscriptionType;

    move-object v2, v1

    goto :goto_94

    .line 335
    :cond_91
    sget-object v1, Lcom/facebook/appevents/internal/SubscriptionType;->DUPLICATED:Lcom/facebook/appevents/internal/SubscriptionType;

    move-object v2, v1

    .line 339
    .end local v5    # "lastLoggedTimeSec":J
    :cond_94
    :goto_94
    sget-object v1, Lcom/facebook/appevents/internal/SubscriptionType;->DUPLICATED:Lcom/facebook/appevents/internal/SubscriptionType;

    if-eq v2, v1, :cond_aa

    .line 340
    invoke-virtual {v7, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 341
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 342
    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v9, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 343
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_aa
    .catch Lorg/json/JSONException; {:try_start_7a .. :try_end_aa} :catch_ab

    .line 346
    :cond_aa
    return-object v2

    .line 347
    .end local v2    # "subsType":Lcom/facebook/appevents/internal/SubscriptionType;
    .end local v3    # "nowSec":J
    .end local v7    # "purchaseJson":Lorg/json/JSONObject;
    .end local v9    # "sku":Ljava/lang/String;
    .end local v11    # "oldPurchase":Ljava/lang/String;
    .end local v12    # "oldPurchaseJson":Lorg/json/JSONObject;
    :catch_ab
    move-exception v0

    goto :goto_b0

    :catch_ad
    move-exception v0

    move-object/from16 v8, p0

    .line 348
    .local v0, "e":Lorg/json/JSONException;
    :goto_b0
    sget-object v1, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    const-string v2, "parsing purchase failure: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 350
    sget-object v1, Lcom/facebook/appevents/internal/SubscriptionType;->UNKNOWN:Lcom/facebook/appevents/internal/SubscriptionType;

    return-object v1
.end method

.method private static invokeMethod(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 13
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "methodName"    # Ljava/lang/String;
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "args"    # [Ljava/lang/Object;

    .line 572
    const-string v0, "."

    invoke-static {p0, p1}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getClass(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 573
    .local v1, "classObj":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    if-nez v1, :cond_a

    .line 574
    return-object v2

    .line 577
    :cond_a
    invoke-static {v1, p2}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 578
    .local v3, "methodObj":Ljava/lang/reflect/Method;
    if-nez v3, :cond_11

    .line 579
    return-object v2

    .line 582
    :cond_11
    if-eqz p3, :cond_17

    .line 583
    invoke-virtual {v1, p3}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 587
    :cond_17
    :try_start_17
    invoke-virtual {v3, p3, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_17 .. :try_end_1b} :catch_46
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_17 .. :try_end_1b} :catch_1c

    return-object v0

    .line 593
    :catch_1c
    move-exception v4

    .line 594
    .local v4, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v5, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invocation target exception in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 596
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 594
    invoke-static {v5, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_70

    .line 588
    .end local v4    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_46
    move-exception v4

    .line 589
    .local v4, "e":Ljava/lang/IllegalAccessException;
    sget-object v5, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Illegal access to method "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 591
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 589
    invoke-static {v5, v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 598
    .end local v4    # "e":Ljava/lang/IllegalAccessException;
    nop

    .line 600
    :goto_70
    return-object v2
.end method

.method private static isBillingSupported(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "inAppBillingObj"    # Ljava/lang/Object;
    .param p2, "type"    # Ljava/lang/String;

    .line 208
    const/4 v0, 0x0

    if-nez p1, :cond_8

    .line 209
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 212
    :cond_8
    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v0

    sget-object v1, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->PACKAGE_NAME:Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v1, v2, v3

    const/4 v1, 0x2

    aput-object p2, v2, v1

    move-object v1, v2

    .line 213
    .local v1, "args":[Ljava/lang/Object;
    const-string v2, "com.android.vending.billing.IInAppBillingService"

    const-string v4, "isBillingSupported"

    invoke-static {p0, v2, v4, p1, v1}, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->invokeMethod(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 216
    .local v2, "result":Ljava/lang/Object;
    if-eqz v2, :cond_2e

    move-object v4, v2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-nez v4, :cond_2e

    const/4 v0, 0x1

    :cond_2e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private static readSkuDetailsFromCache(Ljava/util/ArrayList;)Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 177
    .local p0, "skuList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 178
    .local v0, "skuDetailsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 180
    .local v1, "nowSec":J
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_43

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 181
    .local v4, "sku":Ljava/lang/String;
    sget-object v5, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->skuDetailSharedPrefs:Landroid/content/SharedPreferences;

    const/4 v6, 0x0

    invoke-interface {v5, v4, v6}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 182
    .local v5, "rawString":Ljava/lang/String;
    if-eqz v5, :cond_42

    .line 183
    const/4 v6, 0x2

    const-string v7, ";"

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    .line 184
    .local v6, "splitted":[Ljava/lang/String;
    const/4 v7, 0x0

    aget-object v7, v6, v7

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 185
    .local v7, "timeSec":J
    sub-long v9, v1, v7

    const-wide/32 v11, 0xa8c0

    cmp-long v13, v9, v11

    if-gez v13, :cond_42

    .line 186
    const/4 v9, 0x1

    aget-object v9, v6, v9

    invoke-interface {v0, v4, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    .end local v4    # "sku":Ljava/lang/String;
    .end local v5    # "rawString":Ljava/lang/String;
    .end local v6    # "splitted":[Ljava/lang/String;
    .end local v7    # "timeSec":J
    :cond_42
    goto :goto_10

    .line 191
    :cond_43
    return-object v0
.end method

.method private static writeSkuDetailsToCache(Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 195
    .local p0, "skuDetailsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 197
    .local v0, "nowSec":J
    sget-object v2, Lcom/facebook/appevents/internal/InAppPurchaseEventManager;->skuDetailSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 198
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_15
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 199
    .local v4, "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ";"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 200
    .end local v4    # "pair":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    goto :goto_15

    .line 202
    :cond_48
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 203
    return-void
.end method
