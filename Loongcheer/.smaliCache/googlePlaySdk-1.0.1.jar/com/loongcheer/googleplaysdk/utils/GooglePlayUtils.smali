.class public Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;
.super Ljava/lang/Object;
.source "GooglePlayUtils.java"


# static fields
.field public static INAPP:Ljava/lang/String; = null

.field private static final ORDERERROR:I = 0x1

.field private static final SHOPP:I

.field public static SUBS:Ljava/lang/String;

.field public static SpKey:Ljava/lang/String;

.field public static billingClient:Lcom/android/billingclient/api/BillingClient;

.field public static playInterface:Lcom/loongcheer/googleplaysdk/callback/PlayInterface;

.field public static type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 44
    const/4 v0, 0x0

    sput-object v0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 46
    const-string v0, "inapp"

    sput-object v0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->INAPP:Ljava/lang/String;

    .line 47
    const-string v0, "subs"

    sput-object v0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->SUBS:Ljava/lang/String;

    .line 48
    const-string v0, ""

    sput-object v0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->type:Ljava/lang/String;

    .line 49
    const-string v0, "play_json"

    sput-object v0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->SpKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 40
    invoke-static {}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->getPlayVerify()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Ljava/lang/String;Lcom/loongcheer/googleplaysdk/callback/PlayInterface;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Lcom/loongcheer/googleplaysdk/callback/PlayInterface;
    .param p2, "x2"    # Landroid/app/Activity;
    .param p3, "x3"    # Ljava/lang/String;

    .line 40
    invoke-static {p0, p1, p2, p3}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->queryShopp(Ljava/lang/String;Lcom/loongcheer/googleplaysdk/callback/PlayInterface;Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Landroid/app/Activity;)V
    .registers 1
    .param p0, "x0"    # Landroid/app/Activity;

    .line 40
    invoke-static {p0}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->startConnection(Landroid/app/Activity;)V

    return-void
.end method

.method public static consumption(Ljava/lang/String;Lcom/loongcheer/googleplaysdk/callback/ConsumptionInterface;)V
    .registers 5
    .param p0, "purchaseToken"    # Ljava/lang/String;
    .param p1, "consumptionInterface"    # Lcom/loongcheer/googleplaysdk/callback/ConsumptionInterface;

    .line 215
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    .line 216
    invoke-virtual {v0, p0}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object v0

    .line 218
    .local v0, "consumeParams":Lcom/android/billingclient/api/ConsumeParams;
    new-instance v1, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$5;

    invoke-direct {v1, p1}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$5;-><init>(Lcom/loongcheer/googleplaysdk/callback/ConsumptionInterface;)V

    .line 230
    .local v1, "listener":Lcom/android/billingclient/api/ConsumeResponseListener;
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->getBillingClient(Landroid/app/Activity;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    .line 231
    return-void
.end method

.method public static getBillingClient(Landroid/app/Activity;)Lcom/android/billingclient/api/BillingClient;
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 59
    sget-object v0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-nez v0, :cond_1c

    .line 60
    invoke-static {p0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    new-instance v1, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$1;

    invoke-direct {v1, p0}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    sput-object v0, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 93
    return-object v0

    .line 96
    :cond_1c
    return-object v0
.end method

.method private static getPlayVerify()Z
    .registers 4

    .line 362
    :try_start_0
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 363
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 365
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "play_verify"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 366
    .local v1, "play":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "google  \u9a8c\u8bc1\u72b6\u6001 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/loongcheer/interactivesdk/utils/Utils;->log(Ljava/lang/Object;)V
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_34} :catch_35

    .line 368
    return v1

    .line 371
    .end local v0    # "appInfo":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "play":Z
    :catch_35
    move-exception v0

    .line 372
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 374
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v0, 0x1

    return v0
.end method

.method public static googlePlay(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/loongcheer/googleplaysdk/callback/PlayInterface;Ljava/lang/String;)V
    .registers 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "shopid"    # Ljava/lang/String;
    .param p2, "playType"    # Ljava/lang/String;
    .param p3, "googleInfaces"    # Lcom/loongcheer/googleplaysdk/callback/PlayInterface;
    .param p4, "accountId"    # Ljava/lang/String;

    .line 110
    sput-object p3, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->playInterface:Lcom/loongcheer/googleplaysdk/callback/PlayInterface;

    .line 111
    sput-object p2, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->type:Ljava/lang/String;

    .line 113
    invoke-static {p0}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->getBillingClient(Landroid/app/Activity;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    new-instance v1, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$2;

    invoke-direct {v1, p1, p0, p4}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$2;-><init>(Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    .line 136
    return-void
.end method

.method private static handlePurchase(Lcom/android/billingclient/api/Purchase;)V
    .registers 4
    .param p0, "purchase"    # Lcom/android/billingclient/api/Purchase;

    .line 247
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    .line 251
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v0

    if-nez v0, :cond_2d

    .line 254
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object v0

    .line 256
    .local v0, "consumeParams":Lcom/android/billingclient/api/ConsumeParams;
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->getBillingClient(Landroid/app/Activity;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    new-instance v2, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$6;

    invoke-direct {v2, p0}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$6;-><init>(Lcom/android/billingclient/api/Purchase;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    .line 274
    .end local v0    # "consumeParams":Lcom/android/billingclient/api/ConsumeParams;
    :cond_2d
    return-void
.end method

.method public static handleacknowledgePurchase(Lcom/android/billingclient/api/Purchase;Lcom/loongcheer/googleplaysdk/callback/PlayInterface;)V
    .registers 5
    .param p0, "purchase"    # Lcom/android/billingclient/api/Purchase;
    .param p1, "gooleplayintface"    # Lcom/loongcheer/googleplaysdk/callback/PlayInterface;

    .line 283
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_35

    .line 287
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v0

    if-nez v0, :cond_2e

    .line 291
    invoke-static {}, Lcom/android/billingclient/api/AcknowledgePurchaseParams;->newBuilder()Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    .line 292
    invoke-virtual {p0}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;

    move-result-object v0

    .line 293
    invoke-virtual {v0}, Lcom/android/billingclient/api/AcknowledgePurchaseParams$Builder;->build()Lcom/android/billingclient/api/AcknowledgePurchaseParams;

    move-result-object v0

    .line 295
    .local v0, "acknowledgePurchaseParams":Lcom/android/billingclient/api/AcknowledgePurchaseParams;
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->getBillingClient(Landroid/app/Activity;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    new-instance v2, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$7;

    invoke-direct {v2, p1, p0}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$7;-><init>(Lcom/loongcheer/googleplaysdk/callback/PlayInterface;Lcom/android/billingclient/api/Purchase;)V

    invoke-virtual {v1, v0, v2}, Lcom/android/billingclient/api/BillingClient;->acknowledgePurchase(Lcom/android/billingclient/api/AcknowledgePurchaseParams;Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;)V

    .line 307
    .end local v0    # "acknowledgePurchaseParams":Lcom/android/billingclient/api/AcknowledgePurchaseParams;
    goto :goto_35

    .line 308
    :cond_2e
    const/16 v0, 0x12

    const-string v1, "\u5df2\u9a8c\u8bc1\u8ba2\u5355"

    invoke-interface {p1, v0, v1}, Lcom/loongcheer/googleplaysdk/callback/PlayInterface;->fail(ILjava/lang/String;)V

    .line 312
    :cond_35
    :goto_35
    return-void
.end method

.method public static onDeta()V
    .registers 1

    .line 238
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->getBillingClient(Landroid/app/Activity;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient;->endConnection()V

    .line 239
    return-void
.end method

.method public static queryPurchasesList(Lcom/loongcheer/googleplaysdk/callback/PurchasesResultInterface;)V
    .registers 3
    .param p0, "purchasesResultInterface"    # Lcom/loongcheer/googleplaysdk/callback/PurchasesResultInterface;

    .line 323
    invoke-static {}, Lcom/loongcheer/interactivesdk/config/GameConfig;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->getBillingClient(Landroid/app/Activity;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    new-instance v1, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$8;

    invoke-direct {v1, p0}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$8;-><init>(Lcom/loongcheer/googleplaysdk/callback/PurchasesResultInterface;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    .line 349
    return-void
.end method

.method private static queryShopp(Ljava/lang/String;Lcom/loongcheer/googleplaysdk/callback/PlayInterface;Landroid/app/Activity;Ljava/lang/String;)V
    .registers 9
    .param p0, "shoppid"    # Ljava/lang/String;
    .param p1, "playInterface"    # Lcom/loongcheer/googleplaysdk/callback/PlayInterface;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "accountId"    # Ljava/lang/String;

    .line 173
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 174
    .local v0, "skuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v1

    .line 176
    .local v1, "params":Lcom/android/billingclient/api/SkuDetailsParams$Builder;
    invoke-virtual {v1, v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v2

    sget-object v3, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->type:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    .line 177
    sget-object v2, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v3

    new-instance v4, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$4;

    invoke-direct {v4, p1, p3, p2}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$4;-><init>(Lcom/loongcheer/googleplaysdk/callback/PlayInterface;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v2, v3, v4}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    .line 203
    return-void
.end method

.method private static startConnection(Landroid/app/Activity;)V
    .registers 3
    .param p0, "activity"    # Landroid/app/Activity;

    .line 148
    invoke-static {p0}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils;->getBillingClient(Landroid/app/Activity;)Lcom/android/billingclient/api/BillingClient;

    move-result-object v0

    new-instance v1, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$3;

    invoke-direct {v1}, Lcom/loongcheer/googleplaysdk/utils/GooglePlayUtils$3;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    .line 161
    return-void
.end method
