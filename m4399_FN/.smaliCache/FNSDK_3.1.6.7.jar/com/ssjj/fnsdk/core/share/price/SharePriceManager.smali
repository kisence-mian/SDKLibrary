.class public Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;
.super Ljava/lang/Object;


# static fields
.field private static c:Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;


# instance fields
.field private a:Ljava/util/concurrent/ExecutorService;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ssjj/fnsdk/core/share/process/ActionData;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/ssjj/fnsdk/core/entity/LoginData;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;-><init>()V

    sput-object v0, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->c:Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->d:Lcom/ssjj/fnsdk/core/entity/LoginData;

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;F)F
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_13

    :try_start_a
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13
    :goto_13
    return p3
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;I)I
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_13

    :try_start_a
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_13
    :goto_13
    return p3
.end method

.method private a(Lorg/json/JSONObject;)Lcom/ssjj/fnsdk/core/share/process/ActionData;
    .registers 11

    const-string v0, "copywriters"

    new-instance v1, Lcom/ssjj/fnsdk/core/share/process/ActionData;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/share/process/ActionData;-><init>()V

    :try_start_7
    const-string v2, "action"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/ssjj/fnsdk/core/share/process/ActionData;->action:Ljava/lang/String;

    const-string v2, "bgw"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/ssjj/fnsdk/core/share/process/ActionData;->bgw:I

    const-string v2, "bgh"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/ssjj/fnsdk/core/share/process/ActionData;->bgh:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/ssjj/fnsdk/core/share/process/ActionData;->list:Ljava/util/List;

    const-string v2, "list"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2e
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-lt v4, v5, :cond_5d

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/ssjj/fnsdk/core/share/process/ActionData;->pageConfigs:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5c

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    :goto_45
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lt v3, v0, :cond_4c

    goto :goto_5c

    :cond_4c
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->c(Lorg/json/JSONObject;)Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;

    move-result-object v0

    iget-object v2, v1, Lcom/ssjj/fnsdk/core/share/process/ActionData;->pageConfigs:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    :cond_5c
    :goto_5c
    return-object v1

    :cond_5d
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    new-instance v6, Lcom/ssjj/fnsdk/core/share/process/CfgItem;

    invoke-direct {v6}, Lcom/ssjj/fnsdk/core/share/process/CfgItem;-><init>()V

    const-string v7, "key"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->key:Ljava/lang/String;

    const-string v7, "type"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->type:Ljava/lang/String;

    const-string v7, "defval"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->defval:Ljava/lang/String;

    const-string v7, "1"

    const-string v8, "forceshow"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8e

    const/4 v7, 0x1

    goto :goto_8f

    :cond_8e
    const/4 v7, 0x0

    :goto_8f
    iput-boolean v7, v6, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->forceShow:Z

    const-string v7, "cfg"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->b(Lorg/json/JSONObject;)Lcom/ssjj/fnsdk/core/share/process/CfgData;

    move-result-object v5

    iput-object v5, v6, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget-object v5, v1, Lcom/ssjj/fnsdk/core/share/process/ActionData;->list:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a2} :catch_a5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2e

    :catch_a5
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, ""

    invoke-direct {p0, p1, p2, v0}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    :try_start_6
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_f
    return-object p3
.end method

.method private a(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/process/ActionData;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 9

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p2, Lcom/ssjj/fnsdk/core/share/process/ActionData;->list:Ljava/util/List;

    if-eqz v1, :cond_56

    iget-object p2, p2, Lcom/ssjj/fnsdk/core/share/process/ActionData;->list:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_f
    :goto_f
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_16

    goto :goto_56

    :cond_16
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;

    iget-object v2, v1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->defval:Ljava/lang/String;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->isUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2b

    iget-object v2, v1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->defval:Ljava/lang/String;

    iget-object v3, v1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->defval:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    iget-object v2, v1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    if-eqz v2, :cond_44

    iget-object v2, v1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget-object v2, v2, Lcom/ssjj/fnsdk/core/share/process/CfgData;->font:Ljava/lang/String;

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->isUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_44

    iget-object v2, v1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget-object v2, v2, Lcom/ssjj/fnsdk/core/share/process/CfgData;->font:Ljava/lang/String;

    iget-object v3, v1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->data:Lcom/ssjj/fnsdk/core/share/process/CfgData;

    iget-object v3, v3, Lcom/ssjj/fnsdk/core/share/process/CfgData;->font:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_44
    if-eqz p3, :cond_f

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->key:Ljava/lang/String;

    invoke-virtual {p3, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->isUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0, v1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f

    :cond_56
    :goto_56
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_91

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    if-nez v0, :cond_64

    goto :goto_91

    :cond_64
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_71
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_82

    new-instance p1, Lcom/ssjj/fnsdk/core/share/price/g;

    invoke-direct {p1, p0, v0, p4}, Lcom/ssjj/fnsdk/core/share/price/g;-><init>(Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;Ljava/util/concurrent/CountDownLatch;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    new-array p2, p3, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->execAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_97

    :cond_82
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/ssjj/fnsdk/core/share/price/f;

    invoke-direct {v2, p0, v0}, Lcom/ssjj/fnsdk/core/share/price/f;-><init>(Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->b(Landroid/content/Context;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto :goto_71

    :cond_91
    :goto_91
    const-string p1, "\u6ca1url\u4e0b\u8f7d"

    const/4 p2, 0x0

    invoke-interface {p4, p3, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :goto_97
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 20

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    const-string v0, "price"

    const-string v5, "msg"

    new-instance v6, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v6}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/16 v7, -0x67

    const-string v8, ""

    const/4 v9, 0x1

    if-eqz v3, :cond_1a0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_24

    goto/16 :goto_1a0

    :cond_24
    :try_start_24
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v13, "code"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_3a

    invoke-virtual {v12, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_39} :catch_e6

    goto :goto_3c

    :cond_3a
    const-string v5, "\u83b7\u53d6\u5931\u8d25"

    :goto_3c
    if-ne v13, v9, :cond_cc

    :try_start_3e
    const-string v13, "data"

    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    iget-object v14, v1, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->b:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->clear()V

    const/4 v14, 0x0

    :goto_4a
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    move-result v15

    if-lt v14, v15, :cond_61

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_115

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->d(Lorg/json/JSONObject;)Lcom/ssjj/fnsdk/core/share/price/SharePriceConfig;

    move-result-object v0

    move-object v11, v0

    goto/16 :goto_116

    :cond_61
    invoke-virtual {v13, v14}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    invoke-direct {v1, v15}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Lorg/json/JSONObject;)Lcom/ssjj/fnsdk/core/share/process/ActionData;

    move-result-object v15

    iget-object v11, v1, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->b:Ljava/util/List;

    invoke-interface {v11, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v10, "action = "

    invoke-direct {v11, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v15, Lcom/ssjj/fnsdk/core/share/process/ActionData;->action:Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", key = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v15, Lcom/ssjj/fnsdk/core/share/process/ActionData;->list:Ljava/util/List;

    if-eqz v11, :cond_b7

    iget-object v11, v15, Lcom/ssjj/fnsdk/core/share/process/ActionData;->list:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8f
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-nez v15, :cond_96

    goto :goto_b7

    :cond_96
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/ssjj/fnsdk/core/share/process/CfgItem;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v15, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->key:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v9, 0x1

    goto :goto_8f

    :cond_b7
    :goto_b7
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    const/4 v9, 0x1

    goto/16 :goto_4a

    :cond_cc
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v9, "("

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, ") "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_e5} :catch_e6

    goto :goto_114

    :catch_e6
    move-exception v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ":\n"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "get share img cfg err: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    :goto_114
    const/4 v9, 0x0

    :cond_115
    const/4 v11, 0x0

    :goto_116
    if-nez v9, :cond_160

    invoke-static {v8}, Lcom/ssjj/fnsdk/core/share/FNShareFactory;->createText(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/share/FNShareItem;

    move-result-object v0

    iput-object v8, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->shareType:Ljava/lang/String;

    iget-object v3, v1, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->d:Lcom/ssjj/fnsdk/core/entity/LoginData;

    if-eqz v3, :cond_138

    iget-object v3, v3, Lcom/ssjj/fnsdk/core/entity/LoginData;->uid:Ljava/lang/String;

    iput-object v3, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->uid:Ljava/lang/String;

    iget-object v3, v1, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->d:Lcom/ssjj/fnsdk/core/entity/LoginData;

    iget-object v3, v3, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleId:Ljava/lang/String;

    iput-object v3, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->roleId:Ljava/lang/String;

    iget-object v3, v1, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->d:Lcom/ssjj/fnsdk/core/entity/LoginData;

    iget-object v3, v3, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleName:Ljava/lang/String;

    iput-object v3, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->roleName:Ljava/lang/String;

    iget-object v3, v1, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->d:Lcom/ssjj/fnsdk/core/entity/LoginData;

    iget-object v3, v3, Lcom/ssjj/fnsdk/core/entity/LoginData;->serverId:Ljava/lang/String;

    iput-object v3, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->serverId:Ljava/lang/String;

    :cond_138
    invoke-static {}, Lcom/ssjj/fnsdk/core/share/ShareStat;->getInstance()Lcom/ssjj/fnsdk/core/share/ShareStat;

    move-result-object v3

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v2, v0, v7, v8}, Lcom/ssjj/fnsdk/core/share/ShareStat;->shareStat(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/FNShareItem;ILjava/lang/String;)V

    if-eqz v4, :cond_1cf

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :goto_153
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    :goto_15c
    invoke-interface {v4, v2, v0, v6}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_1cf

    :cond_160
    if-eqz v4, :cond_1cf

    if-eqz v11, :cond_198

    const-string v0, "url"

    iget-object v2, v11, Lcom/ssjj/fnsdk/core/share/price/SharePriceConfig;->url:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "iconurl"

    iget-object v2, v11, Lcom/ssjj/fnsdk/core/share/price/SharePriceConfig;->iconurl:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "title"

    iget-object v2, v11, Lcom/ssjj/fnsdk/core/share/price/SharePriceConfig;->title:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "desc"

    iget-object v2, v11, Lcom/ssjj/fnsdk/core/share/price/SharePriceConfig;->desc:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "qrcode"

    iget-object v2, v11, Lcom/ssjj/fnsdk/core/share/price/SharePriceConfig;->qrcode:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v4, :cond_1cf

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    goto :goto_15c

    :cond_198
    if-eqz v4, :cond_1cf

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_153

    :cond_1a0
    :goto_1a0
    invoke-static {v8}, Lcom/ssjj/fnsdk/core/share/FNShareFactory;->createText(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/share/FNShareItem;

    move-result-object v0

    iput-object v8, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->shareType:Ljava/lang/String;

    iget-object v3, v1, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->d:Lcom/ssjj/fnsdk/core/entity/LoginData;

    if-eqz v3, :cond_1c0

    iget-object v3, v3, Lcom/ssjj/fnsdk/core/entity/LoginData;->uid:Ljava/lang/String;

    iput-object v3, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->uid:Ljava/lang/String;

    iget-object v3, v1, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->d:Lcom/ssjj/fnsdk/core/entity/LoginData;

    iget-object v3, v3, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleId:Ljava/lang/String;

    iput-object v3, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->roleId:Ljava/lang/String;

    iget-object v3, v1, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->d:Lcom/ssjj/fnsdk/core/entity/LoginData;

    iget-object v3, v3, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleName:Ljava/lang/String;

    iput-object v3, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->roleName:Ljava/lang/String;

    iget-object v3, v1, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->d:Lcom/ssjj/fnsdk/core/entity/LoginData;

    iget-object v3, v3, Lcom/ssjj/fnsdk/core/entity/LoginData;->serverId:Ljava/lang/String;

    iput-object v3, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->serverId:Ljava/lang/String;

    :cond_1c0
    invoke-static {}, Lcom/ssjj/fnsdk/core/share/ShareStat;->getInstance()Lcom/ssjj/fnsdk/core/share/ShareStat;

    move-result-object v3

    const-string v5, "\u8fd4\u56de\u503c\u4e3a\u7a7a"

    invoke-virtual {v3, v2, v0, v7, v5}, Lcom/ssjj/fnsdk/core/share/ShareStat;->shareStat(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/FNShareItem;ILjava/lang/String;)V

    if-eqz v4, :cond_1cf

    const/4 v2, 0x1

    invoke-interface {v4, v2, v5, v6}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_1cf
    :goto_1cf
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 11

    const-string v0, "msg"

    new-instance v1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const-string v2, ""

    const/4 v3, 0x1

    if-eqz p2, :cond_6e

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_17

    goto :goto_6e

    :cond_17
    :try_start_17
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v4, "code"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_2c
    if-ne v4, v3, :cond_35

    if-eqz p4, :cond_9e

    const/4 p1, 0x0

    invoke-interface {p4, p1, v2, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_9e

    :cond_35
    const-string p1, "init"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_40

    const-string v2, "\u521d\u59cb\u5316\u51cf\u4ef7\u5206\u4eab\u5931\u8d25"

    goto :goto_4a

    :cond_40
    const-string p1, "stop"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4a

    const-string v2, "\u505c\u6b62\u51cf\u4ef7\u5206\u4eab\u5931\u8d25"

    :cond_4a
    :goto_4a
    if-eqz p4, :cond_9e

    invoke-interface {p4, v3, v2, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_4f} :catch_50

    goto :goto_9e

    :catch_50
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p4, :cond_9e

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "get Json error "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    invoke-interface {p4, v3, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_9e

    :cond_6e
    :goto_6e
    invoke-static {v2}, Lcom/ssjj/fnsdk/core/share/FNShareFactory;->createText(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/share/FNShareItem;

    move-result-object p2

    iput-object v2, p2, Lcom/ssjj/fnsdk/core/share/FNShareItem;->shareType:Ljava/lang/String;

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->d:Lcom/ssjj/fnsdk/core/entity/LoginData;

    if-eqz p3, :cond_8e

    iget-object p3, p3, Lcom/ssjj/fnsdk/core/entity/LoginData;->uid:Ljava/lang/String;

    iput-object p3, p2, Lcom/ssjj/fnsdk/core/share/FNShareItem;->uid:Ljava/lang/String;

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->d:Lcom/ssjj/fnsdk/core/entity/LoginData;

    iget-object p3, p3, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleId:Ljava/lang/String;

    iput-object p3, p2, Lcom/ssjj/fnsdk/core/share/FNShareItem;->roleId:Ljava/lang/String;

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->d:Lcom/ssjj/fnsdk/core/entity/LoginData;

    iget-object p3, p3, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleName:Ljava/lang/String;

    iput-object p3, p2, Lcom/ssjj/fnsdk/core/share/FNShareItem;->roleName:Ljava/lang/String;

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->d:Lcom/ssjj/fnsdk/core/entity/LoginData;

    iget-object p3, p3, Lcom/ssjj/fnsdk/core/entity/LoginData;->serverId:Ljava/lang/String;

    iput-object p3, p2, Lcom/ssjj/fnsdk/core/share/FNShareItem;->serverId:Ljava/lang/String;

    :cond_8e
    invoke-static {}, Lcom/ssjj/fnsdk/core/share/ShareStat;->getInstance()Lcom/ssjj/fnsdk/core/share/ShareStat;

    move-result-object p3

    const/16 v0, -0x65

    const-string v2, "\u8fd4\u56de\u503c\u4e3a\u7a7a"

    invoke-virtual {p3, p1, p2, v0, v2}, Lcom/ssjj/fnsdk/core/share/ShareStat;->shareStat(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/FNShareItem;ILjava/lang/String;)V

    if-eqz p4, :cond_9e

    invoke-interface {p4, v3, v2, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_9e
    :goto_9e
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 27

    move-object v1, p0

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p9

    move-object/from16 v8, p11

    const-string v9, "android"

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez p1, :cond_1f

    if-eqz v8, :cond_1e

    const-string v0, "\u8bf7\u5148\u521d\u59cb\u5316\u8702\u9e1fsdk"

    invoke-interface {v8, v11, v0, v10}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_1e
    return-void

    :cond_1f
    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->b(Ljava/lang/String;)Z

    move-result v12

    const-string v13, ""

    if-nez v12, :cond_3f

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "\nuid: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_40

    :cond_3f
    move-object v12, v13

    :goto_40
    invoke-direct {p0, v2}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->b(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5d

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\nroleId: "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_5d
    invoke-direct {p0, v3}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_7a

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\nroleName: "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_7a
    invoke-direct {p0, v4}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_97

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\nroleLevel: "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_97
    invoke-direct {p0, v5}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_b4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\nserverId: "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_b4
    invoke-direct {p0, v6}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_d1

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\nserverName: "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_d1
    invoke-direct {p0, v7}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_ee

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v14, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\ntype: "

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :cond_ee
    if-eqz v12, :cond_10f

    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_10f

    if-eqz v8, :cond_10e

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u8f93\u5165\u6709\u8bef\uff0c\u8bf7\u91cd\u65b0\u8bbe\u503c\uff1a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v8, v11, v0, v10}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_10e
    return-void

    :cond_10f
    new-instance v10, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v10}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    :try_start_114
    const-string v12, "fnpid"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNPid()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v12, v14}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "fnpidraw"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getRawFNPid()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v12, v14}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "client_id"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNGid()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v12, v14}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "uid"

    invoke-virtual {v10, v12, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "roleId"

    invoke-virtual {v10, v12, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "roleName"

    invoke-virtual {v10, v12, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "roleLevel"

    invoke-virtual {v10, v12, v4}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "serverName"

    invoke-virtual {v10, v4, v6}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "serverId"

    invoke-virtual {v10, v4, v5}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNPid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNGid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "sign"

    invoke-virtual {v10, v2, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "did"

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device_id"

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appVersion"

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "osVersion"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v2, :cond_1ae

    move-object v2, v13

    goto :goto_1b0

    :cond_1ae
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_1b0
    invoke-virtual {v10, v0, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v2, :cond_1bb

    move-object v2, v13

    goto :goto_1bd

    :cond_1bb
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_1bd
    invoke-virtual {v10, v0, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mno"

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getMno()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nm"

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getNm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "channelSy"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getSYChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v0, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fillParam(Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)V

    const-string v0, "pkgName"

    if-nez p1, :cond_1f9

    move-object v2, v13

    goto :goto_1fd

    :cond_1f9
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_1fd
    invoke-virtual {v10, v0, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "os"

    invoke-virtual {v10, v0, v9}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "deviceType"

    invoke-virtual {v10, v0, v9}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "callback_info"

    if-nez p8, :cond_20f

    goto :goto_211

    :cond_20f
    move-object/from16 v13, p8

    :goto_211
    invoke-virtual {v10, v0, v13}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "default"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_232

    const-string v0, "type"

    invoke-virtual {v10, v0, v7}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_221
    .catch Ljava/lang/Exception; {:try_start_114 .. :try_end_221} :catch_222

    goto :goto_232

    :catch_222
    move-exception v0

    const-string v0, "throw exception"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    if-eqz v8, :cond_232

    new-instance v2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    invoke-interface {v8, v11, v0, v2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_232
    :goto_232
    new-instance v0, Lcom/ssjj/fnsdk/core/share/price/c;

    move-object/from16 p2, v0

    move-object/from16 p3, p0

    move-object/from16 p4, p1

    move-object/from16 p5, p10

    move-object/from16 p6, v10

    move-object/from16 p7, p9

    move-object/from16 p8, p11

    invoke-direct/range {p2 .. p8}, Lcom/ssjj/fnsdk/core/share/price/c;-><init>(Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;Landroid/content/Context;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->execAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;Landroid/content/Context;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16

    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method private b(Lorg/json/JSONObject;Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private b(Lorg/json/JSONObject;)Lcom/ssjj/fnsdk/core/share/process/CfgData;
    .registers 5

    new-instance v0, Lcom/ssjj/fnsdk/core/share/process/CfgData;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/share/process/CfgData;-><init>()V

    :try_start_5
    const-string v1, "x"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->x:I

    const-string v1, "y"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->y:I

    const-string v1, "w"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->w:I

    const-string v1, "h"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->h:I

    const-string v1, "size"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->size:I

    const-string v1, "align"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->align:Ljava/lang/String;

    const-string v1, "font"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->font:Ljava/lang/String;

    const-string v1, "style"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->style:Ljava/lang/String;

    const-string v1, "rotation"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->c(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->rotation:F

    const-string v1, "fixtype"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->fixType:Ljava/lang/String;

    const-string v1, "color"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Ljava/lang/String;)Z

    move-result v1
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5f} :catch_80

    if-eqz v1, :cond_84

    :try_start_61
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->color:I
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_67} :catch_68

    goto :goto_84

    :catch_68
    move-exception v1

    :try_start_69
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "color value is not correct: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    const/high16 p1, -0x1000000

    iput p1, v0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->color:I
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_7f} :catch_80

    goto :goto_84

    :catch_80
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_84
    :goto_84
    return-object v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 5

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->isUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->c(Landroid/content/Context;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto :goto_1e

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "url\u65e0\u6548 "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-interface {p3, v0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :goto_1e
    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_1e

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1e

    const-string v0, "0"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1e

    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1e

    const/4 p1, 0x1

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method private c(Lorg/json/JSONObject;Ljava/lang/String;)F
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method private c(Lorg/json/JSONObject;)Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;
    .registers 5

    new-instance v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;-><init>()V

    :try_start_5
    const-string v1, "size"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->size:I

    const-string v1, "color"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->color:I

    :cond_1f
    const-string v1, "font"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->font:Ljava/lang/String;

    const-string v1, "style"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->style:Ljava/lang/String;

    const-string v1, "text"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->text:Ljava/lang/String;
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_37} :catch_38

    goto :goto_3c

    :catch_38
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3c
    return-object v0
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 14

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->getFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v8, 0x0

    if-eqz v0, :cond_29

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u4e0b\u8f7d\u53d6\u6d88\u3002\u5df2\u4e0b\u8f7d: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    const-string p1, ""

    const/4 p2, 0x0

    invoke-interface {p3, v8, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_4c

    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Lcom/ssjj/fnsdk/core/share/price/h;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v5

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/ssjj/fnsdk/core/share/price/h;-><init>(Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    new-array p1, v8, [Ljava/lang/String;

    invoke-virtual {p0, v9, p1}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->execAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    :goto_4c
    return-void
.end method

.method private d(Lorg/json/JSONObject;)Lcom/ssjj/fnsdk/core/share/price/SharePriceConfig;
    .registers 4

    new-instance v0, Lcom/ssjj/fnsdk/core/share/price/SharePriceConfig;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/share/price/SharePriceConfig;-><init>()V

    :try_start_5
    const-string v1, "url"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/share/price/SharePriceConfig;->url:Ljava/lang/String;

    const-string v1, "iconurl"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/share/price/SharePriceConfig;->iconurl:Ljava/lang/String;

    const-string v1, "title"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/share/price/SharePriceConfig;->title:Ljava/lang/String;

    const-string v1, "desc"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/share/price/SharePriceConfig;->desc:Ljava/lang/String;

    const-string v1, "qrcode"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/ssjj/fnsdk/core/share/price/SharePriceConfig;->qrcode:Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2d} :catch_2e

    goto :goto_32

    :catch_2e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_32
    return-object v0
.end method

.method public static getFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "f"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Android/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "/fnshare_cache"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_4c

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_4c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "/"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance()Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->c:Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;

    return-object v0
.end method

.method public static isUrl(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_10

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string v0, "http"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public createShareImage(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 16

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_f

    const-string p1, "param \u4e0d\u80fd\u4e3anull"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    if-eqz p3, :cond_e

    invoke-interface {p3, v0, p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_e
    return-void

    :cond_f
    const-string v2, "action"

    invoke-virtual {p2, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_26

    const-string p1, "action \u5b57\u6bb5\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    if-eqz p3, :cond_25

    invoke-interface {p3, v0, p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_25
    return-void

    :cond_26
    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->b:Ljava/util/List;

    if-eqz v3, :cond_76

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_31

    goto :goto_76

    :cond_31
    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_37
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_3f

    move-object v4, v1

    goto :goto_4d

    :cond_3f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ssjj/fnsdk/core/share/process/ActionData;

    iget-object v5, v4, Lcom/ssjj/fnsdk/core/share/process/ActionData;->action:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    :goto_4d
    if-nez v4, :cond_67

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u65e0\u6b64action\u914d\u7f6e\u9879: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    if-eqz p3, :cond_66

    invoke-interface {p3, v0, p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_66
    return-void

    :cond_67
    new-instance v0, Lcom/ssjj/fnsdk/core/share/price/d;

    move-object v6, v0

    move-object v7, p0

    move-object v8, p2

    move-object v9, v4

    move-object v10, p1

    move-object v11, p3

    invoke-direct/range {v6 .. v11}, Lcom/ssjj/fnsdk/core/share/price/d;-><init>(Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/share/process/ActionData;Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    invoke-direct {p0, p1, v4, p2, v0}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/process/ActionData;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void

    :cond_76
    :goto_76
    const-string p1, "\u5206\u4eab\u914d\u7f6e\u9879\u4e3a\u7a7a"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    if-eqz p3, :cond_80

    invoke-interface {p3, v0, p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_80
    return-void
.end method

.method public varargs execAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Params:",
            "Ljava/lang/Object;",
            "Progress:",
            "Ljava/lang/Object;",
            "Result:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask<",
            "TParams;TProgress;TResult;>;[TParams;)V"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p1, v0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_6

    goto :goto_a

    :catchall_6
    move-exception v0

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_a
    return-void
.end method

.method public getSharePriceConfig(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 18

    move-object v12, p0

    move-object/from16 v0, p2

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v1, "roleId"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "roleName"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "roleLevel"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "serverId"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "serverName"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "callbackInfo"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v1, Lcom/ssjj/fnsdk/core/entity/LoginData;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/entity/LoginData;-><init>()V

    iput-object v1, v12, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->d:Lcom/ssjj/fnsdk/core/entity/LoginData;

    iput-object v2, v1, Lcom/ssjj/fnsdk/core/entity/LoginData;->uid:Ljava/lang/String;

    iget-object v1, v12, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->d:Lcom/ssjj/fnsdk/core/entity/LoginData;

    iput-object v3, v1, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleId:Ljava/lang/String;

    iget-object v1, v12, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->d:Lcom/ssjj/fnsdk/core/entity/LoginData;

    iput-object v4, v1, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleName:Ljava/lang/String;

    iget-object v1, v12, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->d:Lcom/ssjj/fnsdk/core/entity/LoginData;

    iput-object v5, v1, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleLevel:Ljava/lang/String;

    iget-object v1, v12, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->d:Lcom/ssjj/fnsdk/core/entity/LoginData;

    iput-object v6, v1, Lcom/ssjj/fnsdk/core/entity/LoginData;->serverId:Ljava/lang/String;

    iget-object v1, v12, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->d:Lcom/ssjj/fnsdk/core/entity/LoginData;

    iput-object v7, v1, Lcom/ssjj/fnsdk/core/entity/LoginData;->serverName:Ljava/lang/String;

    const-string v9, "default"

    sget-object v10, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_GET_SHARE_PRICE_CFG:Ljava/lang/String;

    new-instance v11, Lcom/ssjj/fnsdk/core/share/price/a;

    move-object v1, p1

    move-object/from16 v13, p3

    invoke-direct {v11, p0, v0, p1, v13}, Lcom/ssjj/fnsdk/core/share/price/a;-><init>(Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;Lcom/ssjj/fnsdk/core/SsjjFNParams;Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    move-object v0, p0

    invoke-direct/range {v0 .. v11}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p1

    if-nez p1, :cond_12

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_12
    const/4 p1, 0x5

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public initOrStopSharePrice(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 18

    move-object/from16 v0, p2

    const-string v1, "uid"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "roleId"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "roleName"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "roleLevel"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "serverId"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "serverName"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v1, "callbackInfo"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_INIT_SHARE_PRICE:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v13, p3

    invoke-direct/range {v2 .. v13}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method
