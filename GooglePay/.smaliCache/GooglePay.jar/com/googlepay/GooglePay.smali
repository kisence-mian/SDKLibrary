.class public Lcom/googlepay/GooglePay;
.super LsdkInterface/SDKBase;
.source "GooglePay.java"

# interfaces
.implements LsdkInterface/IPay;


# static fields
.field private static goodsIDKeys:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field acknowledgePurchaseResponseListener:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

.field private billingClient:Lcom/android/billingclient/api/BillingClient;

.field consumeResponseListener:Lcom/android/billingclient/api/ConsumeResponseListener;

.field goodsID:Ljava/lang/String;

.field goodsIDList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field initCallback:Lcom/android/billingclient/api/BillingClientStateListener;

.field private isBillingServiceSonnect:Ljava/lang/Boolean;

.field payInfo:LsdkInterface/module/PayInfo;

.field skuDetailsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/SkuDetails;",
            ">;"
        }
    .end annotation
.end field

.field waitingConfirmingPurchase:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/billingclient/api/Purchase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 508
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/googlepay/GooglePay;->goodsIDKeys:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 36
    invoke-direct {p0}, LsdkInterface/SDKBase;-><init>()V

    .line 39
    const-string v0, ""

    iput-object v0, p0, Lcom/googlepay/GooglePay;->goodsID:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlepay/GooglePay;->goodsIDList:Ljava/util/List;

    .line 42
    new-instance v0, LsdkInterface/module/PayInfo;

    invoke-direct {v0}, LsdkInterface/module/PayInfo;-><init>()V

    iput-object v0, p0, Lcom/googlepay/GooglePay;->payInfo:LsdkInterface/module/PayInfo;

    .line 45
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/googlepay/GooglePay;->isBillingServiceSonnect:Ljava/lang/Boolean;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlepay/GooglePay;->skuDetailsList:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/googlepay/GooglePay;->waitingConfirmingPurchase:Ljava/util/List;

    return-void
.end method

.method private AddSkuDetailsList(Lcom/android/billingclient/api/SkuDetails;)V
    .registers 6
    .param p1, "skuDetails"    # Lcom/android/billingclient/api/SkuDetails;

    .line 400
    iget-object v0, p0, Lcom/googlepay/GooglePay;->skuDetailsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_23

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/SkuDetails;

    .line 401
    .local v1, "l_skuDetails":Lcom/android/billingclient/api/SkuDetails;
    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 402
    move-object v0, p1

    .line 403
    .end local v1    # "l_skuDetails":Lcom/android/billingclient/api/SkuDetails;
    .local v0, "l_skuDetails":Lcom/android/billingclient/api/SkuDetails;
    return-void

    .line 405
    .end local v0    # "l_skuDetails":Lcom/android/billingclient/api/SkuDetails;
    :cond_22
    goto :goto_6

    .line 406
    :cond_23
    iget-object v0, p0, Lcom/googlepay/GooglePay;->skuDetailsList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    return-void
.end method

.method private GetGoodsInfoFromGoogle(Ljava/util/List;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 368
    .local p1, "skuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GooglePay GetGoodsInfoFromGoogle skuList.size() >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 370
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 371
    .local v2, "sku":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GooglePay GetGoodsInfoFromGoogle sku >"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 372
    .end local v2    # "sku":Ljava/lang/String;
    goto :goto_24

    .line 374
    :cond_4b
    invoke-static {}, Lcom/android/billingclient/api/SkuDetailsParams;->newBuilder()Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v0

    .line 375
    .local v0, "params":Lcom/android/billingclient/api/SkuDetailsParams$Builder;
    invoke-virtual {v0, p1}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setSkusList(Ljava/util/List;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    move-result-object v1

    const-string v2, "inapp"

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->setType(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetailsParams$Builder;

    .line 376
    iget-object v1, p0, Lcom/googlepay/GooglePay;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v0}, Lcom/android/billingclient/api/SkuDetailsParams$Builder;->build()Lcom/android/billingclient/api/SkuDetailsParams;

    move-result-object v2

    new-instance v3, Lcom/googlepay/GooglePay$7;

    invoke-direct {v3, p0}, Lcom/googlepay/GooglePay$7;-><init>(Lcom/googlepay/GooglePay;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/billingclient/api/BillingClient;->querySkuDetailsAsync(Lcom/android/billingclient/api/SkuDetailsParams;Lcom/android/billingclient/api/SkuDetailsResponseListener;)V

    .line 395
    return-void
.end method

.method private GoodsKeyToGoogle(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "goodsKeyFromUnity"    # Ljava/lang/String;

    .line 513
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 515
    const-string v0, "Google pay GoodsKeyToGoogle key is null"

    invoke-virtual {p0, v0}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 516
    const-string v0, ""

    return-object v0

    .line 519
    :cond_e
    sget-object v0, Lcom/googlepay/GooglePay;->goodsIDKeys:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 521
    sget-object v0, Lcom/googlepay/GooglePay;->goodsIDKeys:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 525
    :cond_1f
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "putValue":Ljava/lang/String;
    sget-object v1, Lcom/googlepay/GooglePay;->goodsIDKeys:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    return-object v0
.end method

.method private GoodsKeyToUnity(Ljava/lang/String;)Ljava/lang/String;
    .registers 7
    .param p1, "goodsKeyFromGoogle"    # Ljava/lang/String;

    .line 535
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 537
    const-string v0, "Google pay GoodsKeyToUnity key is null"

    invoke-virtual {p0, v0}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 538
    const-string v0, ""

    return-object v0

    .line 540
    :cond_e
    sget-object v0, Lcom/googlepay/GooglePay;->goodsIDKeys:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_58

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 541
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 542
    .local v2, "key":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 543
    .local v3, "val":Ljava/lang/String;
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 545
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Google pay GoodsKeyToUnity key is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "===value==="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 546
    return-object v2

    .line 548
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "val":Ljava/lang/String;
    :cond_57
    goto :goto_18

    .line 550
    :cond_58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Google pay GoodsKeyToUnity key is not found : >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 551
    return-object p1
.end method

.method private RePurchasesResult()V
    .registers 4

    .line 191
    const-string v0, "GooglePay RePurchasesResult"

    invoke-virtual {p0, v0}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/googlepay/GooglePay;->billingClient:Lcom/android/billingclient/api/BillingClient;

    if-eqz v0, :cond_14

    .line 194
    new-instance v1, Lcom/googlepay/GooglePay$5;

    invoke-direct {v1, p0}, Lcom/googlepay/GooglePay$5;-><init>(Lcom/googlepay/GooglePay;)V

    const-string v2, "inapp"

    invoke-virtual {v0, v2, v1}, Lcom/android/billingclient/api/BillingClient;->queryPurchasesAsync(Ljava/lang/String;Lcom/android/billingclient/api/PurchasesResponseListener;)V

    goto :goto_19

    .line 208
    :cond_14
    const-string v0, "RePurchasesResult billingClient is null"

    invoke-virtual {p0, v0}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 210
    :goto_19
    return-void
.end method

.method private RestartInitGooglePay()V
    .registers 3

    .line 186
    iget-object v0, p0, Lcom/googlepay/GooglePay;->billingClient:Lcom/android/billingclient/api/BillingClient;

    iget-object v1, p0, Lcom/googlepay/GooglePay;->initCallback:Lcom/android/billingclient/api/BillingClientStateListener;

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    .line 187
    return-void
.end method

.method static synthetic access$002(Lcom/googlepay/GooglePay;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/googlepay/GooglePay;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .line 36
    iput-object p1, p0, Lcom/googlepay/GooglePay;->isBillingServiceSonnect:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$100(Lcom/googlepay/GooglePay;)V
    .registers 1
    .param p0, "x0"    # Lcom/googlepay/GooglePay;

    .line 36
    invoke-direct {p0}, Lcom/googlepay/GooglePay;->RePurchasesResult()V

    return-void
.end method

.method static synthetic access$200(Lcom/googlepay/GooglePay;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Lcom/googlepay/GooglePay;
    .param p1, "x1"    # Ljava/util/List;

    .line 36
    invoke-direct {p0, p1}, Lcom/googlepay/GooglePay;->GetGoodsInfoFromGoogle(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$300(Lcom/googlepay/GooglePay;)V
    .registers 1
    .param p0, "x0"    # Lcom/googlepay/GooglePay;

    .line 36
    invoke-direct {p0}, Lcom/googlepay/GooglePay;->RestartInitGooglePay()V

    return-void
.end method

.method static synthetic access$400(Lcom/googlepay/GooglePay;)Lcom/android/billingclient/api/BillingClient;
    .registers 2
    .param p0, "x0"    # Lcom/googlepay/GooglePay;

    .line 36
    iget-object v0, p0, Lcom/googlepay/GooglePay;->billingClient:Lcom/android/billingclient/api/BillingClient;

    return-object v0
.end method

.method static synthetic access$500(Lcom/googlepay/GooglePay;Lcom/android/billingclient/api/SkuDetails;)V
    .registers 2
    .param p0, "x0"    # Lcom/googlepay/GooglePay;
    .param p1, "x1"    # Lcom/android/billingclient/api/SkuDetails;

    .line 36
    invoke-direct {p0, p1}, Lcom/googlepay/GooglePay;->AddSkuDetailsList(Lcom/android/billingclient/api/SkuDetails;)V

    return-void
.end method


# virtual methods
.method public ClearPurchase(Lorg/json/JSONObject;)V
    .registers 11
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 430
    const-string v0, "<"

    const-string v1, "GooglePay  ClearPurchase goodsID >"

    iget-object v2, p0, Lcom/googlepay/GooglePay;->waitingConfirmingPurchase:Ljava/util/List;

    if-nez v2, :cond_e

    .line 431
    const-string v0, "GooglePay  ClearPurchase waitingConfirmingPurchase is null"

    invoke-virtual {p0, v0}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 432
    return-void

    .line 434
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GooglePay ClearPurchase waitingConfirmingPurchase size :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/googlepay/GooglePay;->waitingConfirmingPurchase:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 435
    const-string v2, ""

    .line 437
    .local v2, "goodsID":Ljava/lang/String;
    :try_start_2c
    const-string v3, "GoodsID"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 438
    invoke-direct {p0, v2}, Lcom/googlepay/GooglePay;->GoodsKeyToGoogle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    .line 439
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V
    :try_end_50
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_50} :catch_116

    .line 444
    nop

    .line 446
    iget-object v3, p0, Lcom/googlepay/GooglePay;->waitingConfirmingPurchase:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_57
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_115

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/billingclient/api/Purchase;

    .line 447
    .local v4, "purchase":Lcom/android/billingclient/api/Purchase;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "< sku:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " equals "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_113

    .line 449
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "< isAcknowledged >"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 453
    invoke-static {}, Lcom/android/billingclient/api/ConsumeParams;->newBuilder()Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/billingclient/api/ConsumeParams$Builder;->setPurchaseToken(Ljava/lang/String;)Lcom/android/billingclient/api/ConsumeParams$Builder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/billingclient/api/ConsumeParams$Builder;->build()Lcom/android/billingclient/api/ConsumeParams;

    move-result-object v5

    .line 454
    .local v5, "consumeParams":Lcom/android/billingclient/api/ConsumeParams;
    iget-object v6, p0, Lcom/googlepay/GooglePay;->billingClient:Lcom/android/billingclient/api/BillingClient;

    iget-object v8, p0, Lcom/googlepay/GooglePay;->consumeResponseListener:Lcom/android/billingclient/api/ConsumeResponseListener;

    invoke-virtual {v6, v5, v8}, Lcom/android/billingclient/api/BillingClient;->consumeAsync(Lcom/android/billingclient/api/ConsumeParams;Lcom/android/billingclient/api/ConsumeResponseListener;)V

    .line 463
    .end local v5    # "consumeParams":Lcom/android/billingclient/api/ConsumeParams;
    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->isAcknowledged()Z

    move-result v5

    if-nez v5, :cond_113

    .line 464
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GooglePay  ClearPurchase ==aaa=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/billingclient/api/Purchase;->getSkus()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 467
    .end local v4    # "purchase":Lcom/android/billingclient/api/Purchase;
    :cond_113
    goto/16 :goto_57

    .line 468
    :cond_115
    return-void

    .line 441
    :catch_116
    move-exception v0

    .line 442
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GooglePay ClearPurchase error :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/googlepay/GooglePay;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 443
    return-void
.end method

.method public GetGoodsInfo(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GooglePay GetGoodsInfo json >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 342
    const-string v0, ""

    .line 344
    .local v0, "goodsID":Ljava/lang/String;
    :try_start_1e
    const-string v1, "GoodsID"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 345
    invoke-direct {p0, v0}, Lcom/googlepay/GooglePay;->GoodsKeyToGoogle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_29} :catch_59

    move-object v0, v1

    .line 350
    nop

    .line 352
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2c
    iget-object v2, p0, Lcom/googlepay/GooglePay;->skuDetailsList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4d

    .line 353
    iget-object v2, p0, Lcom/googlepay/GooglePay;->skuDetailsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/billingclient/api/SkuDetails;

    .line 354
    .local v2, "skuDetails":Lcom/android/billingclient/api/SkuDetails;
    invoke-virtual {v2}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 355
    invoke-virtual {p0, v2}, Lcom/googlepay/GooglePay;->SendGoodsInfoCallBack(Lcom/android/billingclient/api/SkuDetails;)V

    .line 356
    return-void

    .line 352
    .end local v2    # "skuDetails":Lcom/android/billingclient/api/SkuDetails;
    :cond_4a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 361
    .end local v1    # "i":I
    :cond_4d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 362
    .local v1, "skuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 363
    invoke-direct {p0, v1}, Lcom/googlepay/GooglePay;->GetGoodsInfoFromGoogle(Ljava/util/List;)V

    .line 364
    return-void

    .line 347
    .end local v1    # "skuList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_59
    move-exception v1

    .line 348
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetGoodsInfo error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/googlepay/GooglePay;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 349
    return-void
.end method

.method public GetSkuDetails(Ljava/lang/String;)Lcom/android/billingclient/api/SkuDetails;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;

    .line 327
    iget-object v0, p0, Lcom/googlepay/GooglePay;->skuDetailsList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/billingclient/api/SkuDetails;

    .line 328
    .local v1, "skuDetails":Lcom/android/billingclient/api/SkuDetails;
    invoke-virtual {v1}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 329
    return-object v1

    .line 331
    .end local v1    # "skuDetails":Lcom/android/billingclient/api/SkuDetails;
    :cond_1d
    goto :goto_6

    .line 333
    :cond_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GooglePay GetSkuDetails Don\'t Find Goods Key size\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/googlepay/GooglePay;->skuDetailsList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Key : >"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 334
    const/4 v0, 0x0

    return-object v0
.end method

.method public Init(Lorg/json/JSONObject;)V
    .registers 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .line 55
    invoke-super {p0, p1}, LsdkInterface/SDKBase;->Init(Lorg/json/JSONObject;)V

    .line 59
    :try_start_3
    invoke-virtual {p0}, Lcom/googlepay/GooglePay;->GetProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "GoodsIDList"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/googlepay/GooglePay;->goodsID:Ljava/lang/String;

    .line 61
    const-string v1, "\\|"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "arr":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_16
    array-length v2, v0

    if-ge v1, v2, :cond_23

    .line 63
    iget-object v2, p0, Lcom/googlepay/GooglePay;->goodsIDList:Ljava/util/List;

    aget-object v3, v0, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_20} :catch_24

    .line 62
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    .line 67
    .end local v0    # "arr":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_23
    goto :goto_3b

    .line 65
    :catch_24
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GooglePay Init Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/googlepay/GooglePay;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 69
    .end local v0    # "e":Ljava/io/IOException;
    :goto_3b
    const-string v0, "GooglePay  Init "

    invoke-virtual {p0, v0}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p0}, Lcom/googlepay/GooglePay;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/billingclient/api/BillingClient;->newBuilder(Landroid/content/Context;)Lcom/android/billingclient/api/BillingClient$Builder;

    move-result-object v0

    .line 73
    .local v0, "builder":Lcom/android/billingclient/api/BillingClient$Builder;
    new-instance v1, Lcom/googlepay/GooglePay$1;

    invoke-direct {v1, p0}, Lcom/googlepay/GooglePay$1;-><init>(Lcom/googlepay/GooglePay;)V

    invoke-virtual {v0, v1}, Lcom/android/billingclient/api/BillingClient$Builder;->setListener(Lcom/android/billingclient/api/PurchasesUpdatedListener;)Lcom/android/billingclient/api/BillingClient$Builder;

    .line 103
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->enablePendingPurchases()Lcom/android/billingclient/api/BillingClient$Builder;

    .line 106
    new-instance v1, Lcom/googlepay/GooglePay$2;

    invoke-direct {v1, p0}, Lcom/googlepay/GooglePay$2;-><init>(Lcom/googlepay/GooglePay;)V

    iput-object v1, p0, Lcom/googlepay/GooglePay;->initCallback:Lcom/android/billingclient/api/BillingClientStateListener;

    .line 139
    new-instance v1, Lcom/googlepay/GooglePay$3;

    invoke-direct {v1, p0}, Lcom/googlepay/GooglePay$3;-><init>(Lcom/googlepay/GooglePay;)V

    iput-object v1, p0, Lcom/googlepay/GooglePay;->acknowledgePurchaseResponseListener:Lcom/android/billingclient/api/AcknowledgePurchaseResponseListener;

    .line 155
    new-instance v1, Lcom/googlepay/GooglePay$4;

    invoke-direct {v1, p0}, Lcom/googlepay/GooglePay$4;-><init>(Lcom/googlepay/GooglePay;)V

    iput-object v1, p0, Lcom/googlepay/GooglePay;->consumeResponseListener:Lcom/android/billingclient/api/ConsumeResponseListener;

    .line 170
    invoke-virtual {v0}, Lcom/android/billingclient/api/BillingClient$Builder;->build()Lcom/android/billingclient/api/BillingClient;

    move-result-object v1

    iput-object v1, p0, Lcom/googlepay/GooglePay;->billingClient:Lcom/android/billingclient/api/BillingClient;

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GooglePay  Init startConnection >"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/googlepay/GooglePay;->billingClient:Lcom/android/billingclient/api/BillingClient;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/googlepay/GooglePay;->billingClient:Lcom/android/billingclient/api/BillingClient;

    iget-object v2, p0, Lcom/googlepay/GooglePay;->initCallback:Lcom/android/billingclient/api/BillingClientStateListener;

    invoke-virtual {v1, v2}, Lcom/android/billingclient/api/BillingClient;->startConnection(Lcom/android/billingclient/api/BillingClientStateListener;)V

    .line 174
    return-void
.end method

.method public IsPrePay()Z
    .registers 2

    .line 317
    const/4 v0, 0x0

    return v0
.end method

.method public IsReSendPay()Z
    .registers 2

    .line 322
    const/4 v0, 0x0

    return v0
.end method

.method public OnResume()V
    .registers 1

    .line 180
    invoke-super {p0}, LsdkInterface/SDKBase;->OnResume()V

    .line 181
    invoke-direct {p0}, Lcom/googlepay/GooglePay;->RePurchasesResult()V

    .line 182
    return-void
.end method

.method public Pay(Lorg/json/JSONObject;)V
    .registers 7
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .line 215
    const-string v0, "GooglePay  Pay isBillingServiceSonnect : "

    const-string v1, ""

    .line 217
    .local v1, "goodsID":Ljava/lang/String;
    :try_start_4
    const-string v2, "GoodsID"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 218
    invoke-static {p1}, LsdkInterface/module/PayInfo;->FromJson(Lorg/json/JSONObject;)LsdkInterface/module/PayInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/googlepay/GooglePay;->payInfo:LsdkInterface/module/PayInfo;

    .line 220
    iget-object v2, p0, Lcom/googlepay/GooglePay;->isBillingServiceSonnect:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_48

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/googlepay/GooglePay;->isBillingServiceSonnect:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 222
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcom/googlepay/GooglePay;->isBillingServiceSonnect:Ljava/lang/Boolean;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v3, v0}, Lcom/googlepay/GooglePay;->SendPayCallBack(ZLcom/android/billingclient/api/Purchase;Ljava/lang/String;)V

    .line 223
    return-void

    .line 226
    :cond_48
    invoke-direct {p0, v1}, Lcom/googlepay/GooglePay;->GoodsKeyToGoogle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "finalGoodsID":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GooglePay Pay finalGoodsID >"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 230
    iget-object v2, p0, Lcom/googlepay/GooglePay;->payInfo:LsdkInterface/module/PayInfo;

    iput-object v1, v2, LsdkInterface/module/PayInfo;->goodsID:Ljava/lang/String;

    .line 231
    invoke-virtual {p0}, Lcom/googlepay/GooglePay;->GetCurrentActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/googlepay/GooglePay$6;

    invoke-direct {v3, p0, v0}, Lcom/googlepay/GooglePay$6;-><init>(Lcom/googlepay/GooglePay;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_78
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_78} :catch_79

    .line 281
    .end local v0    # "finalGoodsID":Ljava/lang/String;
    goto :goto_90

    .line 279
    :catch_79
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Google Pay Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v0}, Lcom/googlepay/GooglePay;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 282
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_90
    return-void
.end method

.method SendGoodsInfoCallBack(Lcom/android/billingclient/api/SkuDetails;)V
    .registers 5
    .param p1, "result"    # Lcom/android/billingclient/api/SkuDetails;

    .line 412
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 414
    .local v0, "jo":Lorg/json/JSONObject;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "google pay GetGoodsInfo success  id :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " price:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 415
    const-string v1, "ModuleName"

    const-string v2, "Pay"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 416
    const-string v1, "FunctionName"

    const-string v2, "GetGoodsInfo"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 417
    const-string v1, "GoodsID"

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/googlepay/GooglePay;->GoodsKeyToUnity(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 418
    const-string v1, "localizedPriceString"

    invoke-virtual {p1}, Lcom/android/billingclient/api/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 419
    invoke-static {v0}, LsdkInterface/SdkInterface;->SendMessage(Lorg/json/JSONObject;)V
    :try_end_54
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_54} :catch_55

    .line 423
    .end local v0    # "jo":Lorg/json/JSONObject;
    goto :goto_6c

    .line 421
    :catch_55
    move-exception v0

    .line 422
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SendPayCallBack Error "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/googlepay/GooglePay;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 424
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_6c
    return-void
.end method

.method SendPayCallBack(ZLcom/android/billingclient/api/Purchase;Ljava/lang/String;)V
    .registers 12
    .param p1, "success"    # Z
    .param p2, "purchase"    # Lcom/android/billingclient/api/Purchase;
    .param p3, "errorCode"    # Ljava/lang/String;

    .line 473
    const-string v0, "|"

    const-string v1, ""

    const-string v2, ""

    .line 474
    .local v2, "purchaseToken":Ljava/lang/String;
    const-string v3, ""

    .line 476
    .local v3, "packageName":Ljava/lang/String;
    const-string v4, ""

    .line 477
    .local v4, "orderID":Ljava/lang/String;
    if-eqz p1, :cond_1a

    if-eqz p2, :cond_1a

    .line 478
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    .line 479
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 480
    invoke-virtual {p2}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v4

    .line 482
    :cond_1a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GooglePay SendPayCallBack IsSuccess : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " errorCode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 485
    :try_start_3a
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 486
    .local v5, "jo":Lorg/json/JSONObject;
    const-string v6, "ModuleName"

    const-string v7, "Pay"

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 487
    const-string v6, "IsSuccess"

    invoke-virtual {v5, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 488
    const-string v6, "GoodsID"

    iget-object v7, p0, Lcom/googlepay/GooglePay;->payInfo:LsdkInterface/module/PayInfo;

    iget-object v7, v7, LsdkInterface/module/PayInfo;->goodsID:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 489
    const-string v6, "OrderID"

    invoke-virtual {v5, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 490
    const-string v6, "Error"

    invoke-virtual {v5, v6, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 491
    const-string v6, "Payment"

    sget-object v7, LsdkInterface/define/StoreName;->GooglePay:LsdkInterface/define/StoreName;

    invoke-virtual {v7}, LsdkInterface/define/StoreName;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 492
    const-string v6, "Receipt"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, p0, Lcom/googlepay/GooglePay;->payInfo:LsdkInterface/module/PayInfo;

    iget-object v7, v7, LsdkInterface/module/PayInfo;->goodsID:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 494
    const-string v0, "Currency"

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 495
    const-string v0, "GoodsName"

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 496
    const-string v0, "Price"

    const-string v1, "0"

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 497
    const-string v0, "GoodsType"

    const-string v1, "NORMAL"

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 498
    iget-object v0, p0, Lcom/googlepay/GooglePay;->payInfo:LsdkInterface/module/PayInfo;

    invoke-virtual {v0, v5}, LsdkInterface/module/PayInfo;->ToJson(Lorg/json/JSONObject;)V

    .line 500
    invoke-static {v5}, LsdkInterface/SdkInterface;->SendMessage(Lorg/json/JSONObject;)V
    :try_end_b7
    .catch Lorg/json/JSONException; {:try_start_3a .. :try_end_b7} :catch_b8

    .line 503
    .end local v5    # "jo":Lorg/json/JSONObject;
    goto :goto_cf

    .line 501
    :catch_b8
    move-exception v0

    .line 502
    .local v0, "e":Lorg/json/JSONException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SendPayCallBack Error "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/googlepay/GooglePay;->SendError(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 504
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_cf
    return-void
.end method

.method handlePurchase(Lcom/android/billingclient/api/Purchase;)V
    .registers 5
    .param p1, "purchase"    # Lcom/android/billingclient/api/Purchase;

    .line 286
    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getPurchaseState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_39

    .line 289
    iget-object v0, p0, Lcom/googlepay/GooglePay;->payInfo:LsdkInterface/module/PayInfo;

    invoke-virtual {p1}, Lcom/android/billingclient/api/Purchase;->getOrderId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, LsdkInterface/module/PayInfo;->orderID:Ljava/lang/String;

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GooglePay Pay handlePurchase payInfo.goodsID >"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/googlepay/GooglePay;->payInfo:LsdkInterface/module/PayInfo;

    iget-object v2, v2, LsdkInterface/module/PayInfo;->goodsID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "<"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/googlepay/GooglePay;->SendLog(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/googlepay/GooglePay;->waitingConfirmingPurchase:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    const-string v0, "0"

    invoke-virtual {p0, v1, p1, v0}, Lcom/googlepay/GooglePay;->SendPayCallBack(ZLcom/android/billingclient/api/Purchase;Ljava/lang/String;)V

    .line 313
    :cond_39
    return-void
.end method
