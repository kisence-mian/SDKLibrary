.class public Lcom/taptap/pay/sdk/library/DLCManager;
.super Ljava/lang/Object;
.source "DLCManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;
    }
.end annotation


# static fields
.field public static final BILLING_RESULT_ERR:I = 0x2

.field public static final BILLING_RESULT_NOT_INSTALL_TAPTAP:I = 0x1

.field public static final BILLING_RESULT_OK:I = 0x0

.field static final DLC_CMD_ORDER:I = 0x1

.field static final DLC_CMD_QUERY:I = 0x0

.field public static final DLC_NOT_PURCHASED:I = 0x0

.field public static final DLC_PURCHASED:I = 0x1

.field public static final DLC_RETURN_ERROR:I = -0x1

.field public static final QUERY_RESULT_ERR:I = 0x2

.field public static final QUERY_RESULT_NOT_INSTALL_TAPTAP:I = 0x1

.field public static final QUERY_RESULT_OK:I = 0x0

.field private static final RESPONSE_CODE:Ljava/lang/String; = "RESPONSE_CODE"

.field private static final RESPONSE_INAPP_PURCHASE_DATA:Ljava/lang/String; = "INAPP_PURCHASE_DATA"

.field private static final RESPONSE_INAPP_SIGNATURE:Ljava/lang/String; = "INAPP_DATA_SIGNATURE"

.field private static final TAG:Ljava/lang/String; = "DLCManager"

.field private static volatile skuList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private currentCmd:I

.field private mBase64Signature:Ljava/lang/String;

.field private mCheckOnce:Z

.field private mInventory:Lcom/taptap/pay/sdk/library/Inventory;

.field private mInventoryCallback:Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;

.field private secureRandomRequestCode:I

.field private waitPayingSKU:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/taptap/pay/sdk/library/DLCManager;->skuList:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/taptap/pay/sdk/library/DLCManager;->mCheckOnce:Z

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/taptap/pay/sdk/library/DLCManager;->currentCmd:I

    .line 59
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taptap/pay/sdk/library/DLCManager;->waitPayingSKU:Ljava/lang/String;

    .line 61
    iput-object v0, p0, Lcom/taptap/pay/sdk/library/DLCManager;->mBase64Signature:Ljava/lang/String;

    .line 66
    return-void
.end method

.method static synthetic access$000(Lcom/taptap/pay/sdk/library/DLCManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/DLCManager;

    .line 22
    iget-boolean v0, p0, Lcom/taptap/pay/sdk/library/DLCManager;->mCheckOnce:Z

    return v0
.end method

.method static synthetic access$100(Lcom/taptap/pay/sdk/library/DLCManager;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/DLCManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/taptap/pay/sdk/library/DLCManager;->initInventory(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/taptap/pay/sdk/library/DLCManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/DLCManager;

    .line 22
    iget v0, p0, Lcom/taptap/pay/sdk/library/DLCManager;->secureRandomRequestCode:I

    return v0
.end method

.method static synthetic access$202(Lcom/taptap/pay/sdk/library/DLCManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/DLCManager;
    .param p1, "x1"    # I

    .line 22
    iput p1, p0, Lcom/taptap/pay/sdk/library/DLCManager;->secureRandomRequestCode:I

    return p1
.end method

.method static synthetic access$302(Lcom/taptap/pay/sdk/library/DLCManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/DLCManager;
    .param p1, "x1"    # I

    .line 22
    iput p1, p0, Lcom/taptap/pay/sdk/library/DLCManager;->currentCmd:I

    return p1
.end method

.method static synthetic access$400(Lcom/taptap/pay/sdk/library/DLCManager;)Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/DLCManager;

    .line 22
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/DLCManager;->mInventoryCallback:Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;

    return-object v0
.end method

.method static synthetic access$500(Lcom/taptap/pay/sdk/library/DLCManager;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/DLCManager;

    .line 22
    invoke-direct {p0}, Lcom/taptap/pay/sdk/library/DLCManager;->getCurrentSkuListStatus()Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/taptap/pay/sdk/library/DLCManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/taptap/pay/sdk/library/DLCManager;

    .line 22
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/DLCManager;->waitPayingSKU:Ljava/lang/String;

    return-object v0
.end method

.method private getCurrentSkuListStatus()Ljava/util/HashMap;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 248
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 249
    .local v0, "dlcQueryList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    sget-object v2, Lcom/taptap/pay/sdk/library/DLCManager;->skuList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_40

    .line 250
    invoke-virtual {p0}, Lcom/taptap/pay/sdk/library/DLCManager;->getInventory()Lcom/taptap/pay/sdk/library/Inventory;

    move-result-object v2

    sget-object v3, Lcom/taptap/pay/sdk/library/DLCManager;->skuList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/taptap/pay/sdk/library/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 251
    sget-object v2, Lcom/taptap/pay/sdk/library/DLCManager;->skuList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3d

    .line 253
    :cond_2f
    sget-object v2, Lcom/taptap/pay/sdk/library/DLCManager;->skuList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    :goto_3d
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 256
    .end local v1    # "i":I
    :cond_40
    return-object v0
.end method

.method private initInventory(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "purchaseData"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .line 220
    if-eqz p1, :cond_52

    if-nez p2, :cond_5

    goto :goto_52

    .line 224
    :cond_5
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/DLCManager;->mBase64Signature:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 225
    invoke-static {v0, p1, p2}, Lcom/taptap/pay/sdk/library/Security;->verifyPurchase(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 227
    :cond_f
    :try_start_f
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 228
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v1, "list"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 229
    .local v1, "array":Lorg/json/JSONArray;
    invoke-virtual {p0}, Lcom/taptap/pay/sdk/library/DLCManager;->getInventory()Lcom/taptap/pay/sdk/library/Inventory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/taptap/pay/sdk/library/Inventory;->clear()V

    .line 230
    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_4c

    .line 231
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2a
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_4c

    .line 232
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_34} :catch_4d

    .line 234
    .local v3, "purchase_json":Lorg/json/JSONObject;
    :try_start_34
    new-instance v4, Lcom/taptap/pay/sdk/library/TapPurchase;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/taptap/pay/sdk/library/TapPurchase;-><init>(Ljava/lang/String;)V

    .line 235
    .local v4, "purchase":Lcom/taptap/pay/sdk/library/TapPurchase;
    invoke-virtual {p0}, Lcom/taptap/pay/sdk/library/DLCManager;->getInventory()Lcom/taptap/pay/sdk/library/Inventory;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/taptap/pay/sdk/library/Inventory;->addPurchase(Lcom/taptap/pay/sdk/library/TapPurchase;)V
    :try_end_44
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_44} :catch_45
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_44} :catch_4d

    .line 238
    .end local v4    # "purchase":Lcom/taptap/pay/sdk/library/TapPurchase;
    goto :goto_49

    .line 236
    :catch_45
    move-exception v4

    .line 237
    .local v4, "e":Lorg/json/JSONException;
    :try_start_46
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_49} :catch_4d

    .line 231
    .end local v3    # "purchase_json":Lorg/json/JSONObject;
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 243
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :cond_4c
    goto :goto_51

    .line 241
    :catch_4d
    move-exception v0

    .line 242
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_51
    :goto_51
    return-void

    .line 221
    :cond_52
    :goto_52
    return-void
.end method


# virtual methods
.method getInventory()Lcom/taptap/pay/sdk/library/Inventory;
    .registers 2

    .line 81
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/DLCManager;->mInventory:Lcom/taptap/pay/sdk/library/Inventory;

    if-nez v0, :cond_b

    .line 82
    new-instance v0, Lcom/taptap/pay/sdk/library/Inventory;

    invoke-direct {v0}, Lcom/taptap/pay/sdk/library/Inventory;-><init>()V

    iput-object v0, p0, Lcom/taptap/pay/sdk/library/DLCManager;->mInventory:Lcom/taptap/pay/sdk/library/Inventory;

    .line 84
    :cond_b
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/DLCManager;->mInventory:Lcom/taptap/pay/sdk/library/Inventory;

    return-object v0
.end method

.method getRequestCode()I
    .registers 2

    .line 88
    iget v0, p0, Lcom/taptap/pay/sdk/library/DLCManager;->secureRandomRequestCode:I

    return v0
.end method

.method notifyPurchaseCallback(Ljava/lang/String;I)V
    .registers 4
    .param p1, "sku"    # Ljava/lang/String;
    .param p2, "status"    # I

    .line 98
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/DLCManager;->mInventoryCallback:Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;

    if-eqz v0, :cond_7

    .line 99
    invoke-interface {v0, p1, p2}, Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;->onOrderCallBack(Ljava/lang/String;I)V

    .line 101
    :cond_7
    return-void
.end method

.method notifyQueryCallback(ILjava/util/HashMap;)V
    .registers 4
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 92
    .local p2, "result":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/DLCManager;->mInventoryCallback:Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;

    if-eqz v0, :cond_7

    .line 93
    invoke-interface {v0, p1, p2}, Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;->onQueryCallBack(ILjava/util/HashMap;)Z

    .line 95
    :cond_7
    return-void
.end method

.method onActivityResult(IILandroid/content/Intent;)V
    .registers 16
    .param p1, "requestCode"    # I
    .param p2, "responseCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 260
    const-string v0, "DLCManager"

    const-string v1, "onActivityResult"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 263
    .local v1, "gameActivity":Landroid/app/Activity;
    iget v2, p0, Lcom/taptap/pay/sdk/library/DLCManager;->secureRandomRequestCode:I

    if-ne p1, v2, :cond_eb

    .line 264
    const/4 v2, 0x0

    const-string v3, "onQueryCallBack: QUERY_RESULT_ERR"

    const-string v4, "isSkuPurchased = "

    const-string v5, "onOrderCallBack: sku = "

    const/4 v6, 0x2

    const/4 v7, -0x1

    if-ne p2, v7, :cond_bd

    .line 266
    const-string v8, "RESPONSE_CODE"

    invoke-virtual {p3, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 267
    .local v8, "result":I
    const-string v9, "INAPP_PURCHASE_DATA"

    invoke-virtual {p3, v9}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 268
    .local v9, "purchaseData":Ljava/lang/String;
    const-string v10, "INAPP_DATA_SIGNATURE"

    invoke-virtual {p3, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 269
    .local v10, "signature":Ljava/lang/String;
    if-eqz v1, :cond_38

    .line 270
    invoke-static {v1, v9}, Lcom/taptap/pay/sdk/library/Settings;->savePurchaseData(Landroid/content/Context;Ljava/lang/String;)V

    .line 271
    invoke-static {v1, v10}, Lcom/taptap/pay/sdk/library/Settings;->saveSign(Landroid/content/Context;Ljava/lang/String;)V

    .line 274
    :cond_38
    if-nez v8, :cond_8e

    .line 276
    invoke-direct {p0, v9, v10}, Lcom/taptap/pay/sdk/library/DLCManager;->initInventory(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget v2, p0, Lcom/taptap/pay/sdk/library/DLCManager;->currentCmd:I

    if-nez v2, :cond_64

    .line 278
    invoke-direct {p0}, Lcom/taptap/pay/sdk/library/DLCManager;->getCurrentSkuListStatus()Ljava/util/HashMap;

    move-result-object v2

    .line 279
    .local v2, "dlcResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryCallBack: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/taptap/pay/sdk/library/DLCManager;->notifyQueryCallback(ILjava/util/HashMap;)V

    .line 282
    .end local v2    # "dlcResult":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    goto :goto_bc

    .line 283
    :cond_64
    iget-object v2, p0, Lcom/taptap/pay/sdk/library/DLCManager;->waitPayingSKU:Ljava/lang/String;

    .line 284
    .local v2, "sku":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/taptap/pay/sdk/library/DLCManager;->getInventory()Lcom/taptap/pay/sdk/library/Inventory;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/taptap/pay/sdk/library/Inventory;->hasPurchase(Ljava/lang/String;)Z

    move-result v3

    .line 285
    .local v3, "isSkuPurchased":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {p0, v2, v3}, Lcom/taptap/pay/sdk/library/DLCManager;->notifyPurchaseCallback(Ljava/lang/String;I)V

    .line 288
    .end local v2    # "sku":Ljava/lang/String;
    .end local v3    # "isSkuPurchased":Z
    goto :goto_bc

    .line 291
    :cond_8e
    iget v11, p0, Lcom/taptap/pay/sdk/library/DLCManager;->currentCmd:I

    if-nez v11, :cond_99

    .line 292
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-virtual {p0, v6, v2}, Lcom/taptap/pay/sdk/library/DLCManager;->notifyQueryCallback(ILjava/util/HashMap;)V

    goto :goto_bc

    .line 296
    :cond_99
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taptap/pay/sdk/library/DLCManager;->waitPayingSKU:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/DLCManager;->waitPayingSKU:Ljava/lang/String;

    invoke-virtual {p0, v0, v7}, Lcom/taptap/pay/sdk/library/DLCManager;->notifyPurchaseCallback(Ljava/lang/String;I)V

    .line 301
    .end local v8    # "result":I
    .end local v9    # "purchaseData":Ljava/lang/String;
    .end local v10    # "signature":Ljava/lang/String;
    :goto_bc
    goto :goto_eb

    .line 303
    :cond_bd
    iget v8, p0, Lcom/taptap/pay/sdk/library/DLCManager;->currentCmd:I

    if-nez v8, :cond_c8

    .line 304
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-virtual {p0, v6, v2}, Lcom/taptap/pay/sdk/library/DLCManager;->notifyQueryCallback(ILjava/util/HashMap;)V

    goto :goto_eb

    .line 308
    :cond_c8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/taptap/pay/sdk/library/DLCManager;->waitPayingSKU:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Lcom/taptap/pay/sdk/library/DLCManager;->waitPayingSKU:Ljava/lang/String;

    invoke-virtual {p0, v0, v7}, Lcom/taptap/pay/sdk/library/DLCManager;->notifyPurchaseCallback(Ljava/lang/String;I)V

    .line 315
    :cond_eb
    :goto_eb
    return-void
.end method

.method purchase(Ljava/lang/String;)V
    .registers 5
    .param p1, "sku"    # Ljava/lang/String;

    .line 183
    sget-object v0, Lcom/taptap/pay/sdk/library/DLCManager;->skuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 184
    const-class v0, Lcom/taptap/pay/sdk/library/DLCManager;

    monitor-enter v0

    .line 185
    :try_start_8
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 186
    .local v1, "gameActivity":Landroid/app/Activity;
    if-eqz v1, :cond_1c

    .line 187
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/DLCManager;->waitPayingSKU:Ljava/lang/String;

    .line 188
    new-instance v2, Lcom/taptap/pay/sdk/library/DLCManager$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/taptap/pay/sdk/library/DLCManager$2;-><init>(Lcom/taptap/pay/sdk/library/DLCManager;Ljava/lang/String;Landroid/app/Activity;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 216
    .end local v1    # "gameActivity":Landroid/app/Activity;
    :cond_1c
    monitor-exit v0

    .line 217
    return-void

    .line 216
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_1e

    throw v1
.end method

.method varargs queryPurchaseBySKU([Ljava/lang/String;)V
    .registers 5
    .param p1, "skus"    # [Ljava/lang/String;

    .line 104
    sget-object v0, Lcom/taptap/pay/sdk/library/DLCManager;->skuList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 105
    sget-object v0, Lcom/taptap/pay/sdk/library/DLCManager;->skuList:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 107
    const-class v0, Lcom/taptap/pay/sdk/library/DLCManager;

    monitor-enter v0

    .line 108
    :try_start_11
    invoke-static {}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getInstance()Lcom/taptap/pay/sdk/library/TapTapLicense;

    move-result-object v1

    invoke-virtual {v1}, Lcom/taptap/pay/sdk/library/TapTapLicense;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 109
    .local v1, "gameActivity":Landroid/app/Activity;
    if-eqz v1, :cond_23

    .line 110
    new-instance v2, Lcom/taptap/pay/sdk/library/DLCManager$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/taptap/pay/sdk/library/DLCManager$1;-><init>(Lcom/taptap/pay/sdk/library/DLCManager;Landroid/app/Activity;[Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 179
    .end local v1    # "gameActivity":Landroid/app/Activity;
    :cond_23
    monitor-exit v0

    .line 180
    return-void

    .line 179
    :catchall_25
    move-exception v1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_11 .. :try_end_27} :catchall_25

    throw v1
.end method

.method setCheckOnce(Z)V
    .registers 2
    .param p1, "checkOnce"    # Z

    .line 69
    iput-boolean p1, p0, Lcom/taptap/pay/sdk/library/DLCManager;->mCheckOnce:Z

    .line 70
    return-void
.end method

.method setPublicKey(Ljava/lang/String;)V
    .registers 2
    .param p1, "publicKey"    # Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/DLCManager;->mBase64Signature:Ljava/lang/String;

    .line 74
    return-void
.end method

.method setupPurchaseListener(Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;)V
    .registers 2
    .param p1, "callback"    # Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;

    .line 77
    iput-object p1, p0, Lcom/taptap/pay/sdk/library/DLCManager;->mInventoryCallback:Lcom/taptap/pay/sdk/library/DLCManager$InventoryCallback;

    .line 78
    return-void
.end method
