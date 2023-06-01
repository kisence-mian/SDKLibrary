.class public Lcom/ssjj/fnsdk/core/share/process/ShareManager;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/ssjj/fnsdk/core/share/process/ShareManager;


# instance fields
.field private b:Ljava/util/concurrent/ExecutorService;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ssjj/fnsdk/core/share/process/ActionData;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ssjj/fnsdk/core/share/process/ShareManager;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;-><init>()V

    sput-object v0, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a:Lcom/ssjj/fnsdk/core/share/process/ShareManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->c:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->d:Z

    return-void
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;F)F
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Ljava/lang/String;)Z

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

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Ljava/lang/String;)Z

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

.method static synthetic a(Lcom/ssjj/fnsdk/core/share/process/ShareManager;Lorg/json/JSONObject;)Lcom/ssjj/fnsdk/core/share/process/ActionData;
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Lorg/json/JSONObject;)Lcom/ssjj/fnsdk/core/share/process/ActionData;

    move-result-object p0

    return-object p0
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

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->c(Lorg/json/JSONObject;)Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;

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

    invoke-direct {p0, v5}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->b(Lorg/json/JSONObject;)Lcom/ssjj/fnsdk/core/share/process/CfgData;

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

    invoke-direct {p0, p1, p2, v0}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

.method static synthetic a(Lcom/ssjj/fnsdk/core/share/process/ShareManager;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->c:Ljava/util/List;

    return-object p0
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

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->isUrl(Ljava/lang/String;)Z

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

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->isUrl(Ljava/lang/String;)Z

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

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->isUrl(Ljava/lang/String;)Z

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

    new-instance p1, Lcom/ssjj/fnsdk/core/share/process/h;

    invoke-direct {p1, p0, v0, p4}, Lcom/ssjj/fnsdk/core/share/process/h;-><init>(Lcom/ssjj/fnsdk/core/share/process/ShareManager;Ljava/util/concurrent/CountDownLatch;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    new-array p2, p3, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->execAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    goto :goto_97

    :cond_82
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lcom/ssjj/fnsdk/core/share/process/g;

    invoke-direct {v2, p0, v0}, Lcom/ssjj/fnsdk/core/share/process/g;-><init>(Lcom/ssjj/fnsdk/core/share/process/ShareManager;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Landroid/content/Context;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

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
    .registers 5

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->isUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->b(Landroid/content/Context;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

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

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 25

    move-object v11, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v0, p5

    move-object/from16 v9, p6

    move-object/from16 v1, p7

    move-object/from16 v10, p9

    const-string v2, "android"

    const/4 v12, 0x0

    iput-boolean v12, v11, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->d:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez p1, :cond_1e

    const-string v0, "\u8bf7\u5148\u521d\u59cb\u5316\u8702\u9e1fsdk"

    invoke-interface {v10, v4, v0, v3}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void

    :cond_1e
    invoke-direct {p0, v6}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->b(Ljava/lang/String;)Z

    move-result v5

    const-string v13, ""

    if-nez v5, :cond_3e

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v14, "\nuid: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3f

    :cond_3e
    move-object v5, v13

    :goto_3f
    invoke-direct {p0, v7}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->b(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_5c

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\nroleId: "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_5c
    invoke-direct {p0, v8}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_79

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\nroleName: "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_79
    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_96

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\nroleLevel: "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_96
    invoke-direct {p0, v9}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_b3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\nserverId: "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_b3
    invoke-direct {p0, v1}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_d0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v14, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "\nserverName: "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_d0
    if-eqz v5, :cond_ef

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_ef

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8f93\u5165\u6709\u8bef\uff0c\u8bf7\u91cd\u65b0\u8bbe\u503c\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v4, v0, v3}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void

    :cond_ef
    sget-object v4, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_GET_SHARE_CFG:Ljava/lang/String;

    new-instance v5, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v5}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    :try_start_f6
    const-string v3, "fnpid"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNPid()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v3, v14}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "fnpidraw"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getRawFNPid()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v3, v14}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "client_id"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNGid()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v3, v14}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "uid"

    invoke-virtual {v5, v3, v6}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "roleId"

    invoke-virtual {v5, v3, v7}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "roleName"

    invoke-virtual {v5, v3, v8}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "roleLevel"

    invoke-virtual {v5, v3, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "serverName"

    invoke-virtual {v5, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "serverId"

    invoke-virtual {v5, v0, v9}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNPid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNGid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "sign"

    invoke-virtual {v5, v1, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "did"

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device_id"

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appVersion"

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "osVersion"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v1, :cond_190

    move-object v1, v13

    goto :goto_192

    :cond_190
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_192
    invoke-virtual {v5, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v1, :cond_19d

    move-object v1, v13

    goto :goto_19f

    :cond_19d
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_19f
    invoke-virtual {v5, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mno"

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getMno()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nm"

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getNm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "channelSy"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getSYChannel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fillParam(Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)V

    const-string v0, "pkgName"

    if-nez p1, :cond_1db

    move-object v1, v13

    goto :goto_1df

    :cond_1db
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :goto_1df
    invoke-virtual {v5, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "os"

    invoke-virtual {v5, v0, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "deviceType"

    invoke-virtual {v5, v0, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "callback_info"

    if-nez p8, :cond_1f1

    goto :goto_1f3

    :cond_1f1
    move-object/from16 v13, p8

    :goto_1f3
    invoke-virtual {v5, v0, v13}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f6
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_1f6} :catch_1f7

    goto :goto_1f8

    :catch_1f7
    move-exception v0

    :goto_1f8
    new-instance v0, Lcom/ssjj/fnsdk/core/share/process/c;

    move-object v1, v0

    move-object v2, p0

    move-object/from16 v3, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p6

    move-object/from16 v10, p9

    invoke-direct/range {v1 .. v10}, Lcom/ssjj/fnsdk/core/share/process/c;-><init>(Lcom/ssjj/fnsdk/core/share/process/ShareManager;Landroid/content/Context;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    new-array v1, v12, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->execAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 25

    move-object/from16 v9, p2

    move-object/from16 v11, p4

    move-object/from16 v13, p7

    move-object/from16 v6, p10

    const-string v0, "android"

    if-nez p1, :cond_1a

    if-eqz v6, :cond_19

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/4 v1, 0x1

    const-string v2, "\u8bf7\u5148\u521d\u59cb\u5316\u8702\u9e1fsdk"

    invoke-interface {v6, v1, v2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_19
    return-void

    :cond_1a
    sget-object v4, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_POST_LINK:Ljava/lang/String;

    new-instance v5, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v5}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    :try_start_21
    const-string v1, "fnpid"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNPid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fnpidraw"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getRawFNPid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "client_id"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNGid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uid"

    invoke-virtual {v5, v1, v9}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "roleId"
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_43} :catch_14c

    move-object/from16 v10, p3

    :try_start_45
    invoke-virtual {v5, v1, v10}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "roleName"

    invoke-virtual {v5, v1, v11}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "roleLevel"

    move-object/from16 v2, p5

    invoke-virtual {v5, v1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "serverName"

    invoke-virtual {v5, v1, v13}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "serverId"
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_5b} :catch_14a

    move-object/from16 v12, p6

    :try_start_5d
    invoke-virtual {v5, v1, v12}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNPid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNGid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1
    :try_end_85
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_85} :catch_148

    move-object/from16 v7, p9

    :try_start_87
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "sign"

    invoke-virtual {v5, v2, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "device_id"

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "callback_info"
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_a7} :catch_146

    const-string v2, ""

    if-nez p8, :cond_ad

    move-object v3, v2

    goto :goto_af

    :cond_ad
    move-object/from16 v3, p8

    :goto_af
    :try_start_af
    invoke-virtual {v5, v1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "url"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static/range {p9 .. p9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->encodeUrlWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "channel"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNChannel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "channelSy"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getSYChannel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "os"

    invoke-virtual {v5, v1, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appVersion"

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "osVersion"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v3, :cond_f4

    move-object v3, v2

    goto :goto_f6

    :cond_f4
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_f6
    invoke-virtual {v5, v1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "device"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v3, :cond_101

    move-object v3, v2

    goto :goto_103

    :cond_101
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_103
    invoke-virtual {v5, v1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "did"

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "mno"

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getMno()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "nm"

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getNm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v1

    invoke-virtual {v1, v5}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fillParam(Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)V

    const-string v1, "pkgName"

    if-nez p1, :cond_139

    goto :goto_13d

    :cond_139
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_13d
    invoke-virtual {v5, v1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "deviceType"

    invoke-virtual {v5, v1, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_145
    .catch Ljava/lang/Exception; {:try_start_af .. :try_end_145} :catch_146

    goto :goto_153

    :catch_146
    move-exception v0

    goto :goto_153

    :catch_148
    move-exception v0

    goto :goto_151

    :catch_14a
    move-exception v0

    goto :goto_14f

    :catch_14c
    move-exception v0

    move-object/from16 v10, p3

    :goto_14f
    move-object/from16 v12, p6

    :goto_151
    move-object/from16 v7, p9

    :goto_153
    new-instance v0, Lcom/ssjj/fnsdk/core/share/process/b;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object/from16 v6, p10

    move-object/from16 v7, p9

    move-object/from16 v8, p8

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p6

    move-object/from16 v13, p7

    invoke-direct/range {v1 .. v13}, Lcom/ssjj/fnsdk/core/share/process/b;-><init>(Lcom/ssjj/fnsdk/core/share/process/ShareManager;Landroid/content/Context;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Lcom/ssjj/fnsdk/core/SsjjFNListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->execAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/share/process/ShareManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/share/process/ShareManager;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Ljava/lang/String;)Z

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

    invoke-direct {p0, p1, p2, v0}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Lorg/json/JSONObject;Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method private b(Lorg/json/JSONObject;)Lcom/ssjj/fnsdk/core/share/process/CfgData;
    .registers 5

    new-instance v0, Lcom/ssjj/fnsdk/core/share/process/CfgData;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/share/process/CfgData;-><init>()V

    :try_start_5
    const-string v1, "x"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->x:I

    const-string v1, "y"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->y:I

    const-string v1, "w"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->w:I

    const-string v1, "h"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->h:I

    const-string v1, "size"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->size:I

    const-string v1, "align"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->align:Ljava/lang/String;

    const-string v1, "font"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->font:Ljava/lang/String;

    const-string v1, "style"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->style:Ljava/lang/String;

    const-string v1, "rotation"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->c(Lorg/json/JSONObject;Ljava/lang/String;)F

    move-result v1

    iput v1, v0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->rotation:F

    const-string v1, "fixtype"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/share/process/CfgData;->fixType:Ljava/lang/String;

    const-string v1, "color"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Ljava/lang/String;)Z

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
    .registers 14

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->getFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

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

    new-instance v9, Lcom/ssjj/fnsdk/core/share/process/i;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, v5

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/ssjj/fnsdk/core/share/process/i;-><init>(Lcom/ssjj/fnsdk/core/share/process/ShareManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    new-array p1, v8, [Ljava/lang/String;

    invoke-virtual {p0, v9, p1}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->execAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    :goto_4c
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

    invoke-direct {p0, p1, p2, v0}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Lorg/json/JSONObject;Ljava/lang/String;F)F

    move-result p1

    return p1
.end method

.method private c(Lorg/json/JSONObject;)Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;
    .registers 5

    new-instance v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;-><init>()V

    :try_start_5
    const-string v1, "size"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->b(Lorg/json/JSONObject;Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->size:I

    const-string v1, "color"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->color:I

    :cond_1f
    const-string v1, "font"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->font:Ljava/lang/String;

    const-string v1, "style"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/share/page/SharePageConfig;->style:Ljava/lang/String;

    const-string v1, "text"

    invoke-direct {p0, p1, v1}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

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

.method public static getInstance()Lcom/ssjj/fnsdk/core/share/process/ShareManager;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a:Lcom/ssjj/fnsdk/core/share/process/ShareManager;

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

    invoke-direct {p0, v2}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_26

    const-string p1, "action \u5b57\u6bb5\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    if-eqz p3, :cond_25

    invoke-interface {p3, v0, p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_25
    return-void

    :cond_26
    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->c:Ljava/util/List;

    if-eqz v3, :cond_76

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_31

    goto :goto_76

    :cond_31
    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->c:Ljava/util/List;

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
    new-instance v0, Lcom/ssjj/fnsdk/core/share/process/d;

    move-object v6, v0

    move-object v7, p0

    move-object v8, p2

    move-object v9, v4

    move-object v10, p1

    move-object v11, p3

    invoke-direct/range {v6 .. v11}, Lcom/ssjj/fnsdk/core/share/process/d;-><init>(Lcom/ssjj/fnsdk/core/share/process/ShareManager;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/share/process/ActionData;Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    invoke-direct {p0, p1, v4, p2, v0}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/process/ActionData;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void

    :cond_76
    :goto_76
    iget-boolean p1, p0, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->d:Z

    if-nez p1, :cond_7d

    const-string p1, "\u5206\u4eab\u914d\u7f6e\u672a\u52a0\u8f7d\uff0c\u8bf7\u5148\u8c03\u7528 loadShareConfig \u63a5\u53e3"

    goto :goto_7f

    :cond_7d
    const-string p1, "\u5206\u4eab\u914d\u7f6e\u9879\u4e3a\u7a7a"

    :goto_7f
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    if-eqz p3, :cond_87

    invoke-interface {p3, v0, p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_87
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
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->b:Ljava/util/concurrent/ExecutorService;

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

.method public getClickLink(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_27

    const-string v0, "android.intent.action.VIEW"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_27

    const-string v1, "android.intent.category.BROWSABLE"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_27
    const-string p1, ""

    return-object p1
.end method

.method public getShareImageActionKeyList(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 13

    const/4 p1, 0x0

    if-eqz p2, :cond_a

    const-string v0, "action"

    invoke-virtual {p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_b

    :cond_a
    move-object p2, p1

    :goto_b
    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p2, :cond_92

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_92

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_31

    const/4 v4, 0x0

    goto :goto_80

    :cond_31
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ssjj/fnsdk/core/share/process/ActionData;

    iget-object v6, v5, Lcom/ssjj/fnsdk/core/share/process/ActionData;->action:Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29

    iget-object v4, v5, Lcom/ssjj/fnsdk/core/share/process/ActionData;->list:Ljava/util/List;

    if-eqz v4, :cond_7f

    iget-object v4, v5, Lcom/ssjj/fnsdk/core/share/process/ActionData;->list:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_49
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_50

    goto :goto_7f

    :cond_50
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ssjj/fnsdk/core/share/process/CfgItem;

    new-instance v6, Ljava/lang/StringBuilder;

    iget-object v7, v5, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->key:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "|"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v5, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->type:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, v5, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->defval:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_49

    :cond_7f
    :goto_7f
    const/4 v4, 0x1

    :goto_80
    if-nez v4, :cond_94

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "\u65e0\u6b64action\uff1a"

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_94

    :cond_92
    const-string p1, "\u4f20\u5165action\u53c2\u6570\u6709\u8bef"

    :cond_94
    :goto_94
    const-string p2, "keyList"

    invoke-virtual {v0, p2, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->addObj(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_b3

    if-eqz p1, :cond_ae

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v2, p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_b3

    :cond_ae
    const-string p1, ""

    invoke-interface {p3, v3, p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_b3
    :goto_b3
    return-void
.end method

.method public getShareImageActionList(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 6

    new-instance p1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2b

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1f

    goto :goto_2b

    :cond_1f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/share/process/ActionData;

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/share/process/ActionData;->action:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_2b
    :goto_2b
    const-string v0, "actionList"

    invoke-virtual {p1, v0, p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->addObj(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_42

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_3c

    const/4 p2, 0x1

    const-string v0, "\u65e0action\u5217\u8868\uff0c\u6216\u672a\u83b7\u53d6\u914d\u7f6e"

    goto :goto_3f

    :cond_3c
    const/4 p2, 0x0

    const-string v0, ""

    :goto_3f
    invoke-interface {p3, p2, v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_42
    return-void
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->d:Z

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result p1

    if-nez p1, :cond_15

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->b:Ljava/util/concurrent/ExecutorService;

    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_15
    const/4 p1, 0x5

    invoke-static {p1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public loadShareConfig(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 15

    const-string v0, "uid"

    invoke-virtual {p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "roleId"

    invoke-virtual {p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "roleName"

    invoke-virtual {p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "roleLevel"

    invoke-virtual {p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "serverId"

    invoke-virtual {p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "serverName"

    invoke-virtual {p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "callbackInfo"

    invoke-virtual {p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    move-object v1, p0

    move-object v2, p1

    move-object v10, p3

    invoke-direct/range {v1 .. v10}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method public mergeTextToImage(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 15

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

    invoke-direct {p0, v2}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_26

    const-string p1, "action \u5b57\u6bb5\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    if-eqz p3, :cond_25

    invoke-interface {p3, v0, p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_25
    return-void

    :cond_26
    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->c:Ljava/util/List;

    if-eqz v3, :cond_8b

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_31

    goto :goto_8b

    :cond_31
    iget-object v3, p0, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->c:Ljava/util/List;

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
    iget-object v10, v4, Lcom/ssjj/fnsdk/core/share/process/ActionData;->pageConfigs:Ljava/util/List;

    if-eqz v10, :cond_80

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_72

    goto :goto_80

    :cond_72
    new-instance v0, Lcom/ssjj/fnsdk/core/share/process/f;

    move-object v5, v0

    move-object v6, p0

    move-object v7, p1

    move-object v8, p2

    move-object v9, p3

    invoke-direct/range {v5 .. v10}, Lcom/ssjj/fnsdk/core/share/process/f;-><init>(Lcom/ssjj/fnsdk/core/share/process/ShareManager;Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;Ljava/util/List;)V

    invoke-direct {p0, p1, v4, p2, v0}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/process/ActionData;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void

    :cond_80
    :goto_80
    const-string p1, "\u540e\u53f0\u6ca1\u914d\u7f6e\u6587\u672c, \u8bf7\u8054\u7cfb\u8702\u9e1f\u6280\u672f\u914d\u7f6e"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    if-eqz p3, :cond_8a

    invoke-interface {p3, v0, p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_8a
    return-void

    :cond_8b
    :goto_8b
    iget-boolean p1, p0, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->d:Z

    if-nez p1, :cond_92

    const-string p1, "\u5206\u4eab\u914d\u7f6e\u672a\u52a0\u8f7d\uff0c\u8bf7\u5148\u8c03\u7528 loadShareConfig \u63a5\u53e3"

    goto :goto_94

    :cond_92
    const-string p1, "\u5206\u4eab\u914d\u7f6e\u9879\u4e3a\u7a7a"

    :goto_94
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    if-eqz p3, :cond_9c

    invoke-interface {p3, v0, p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_9c
    return-void
.end method

.method public postLink(Landroid/content/Context;Landroid/content/Intent;Lcom/ssjj/fnsdk/core/entity/LoginData;)V
    .registers 16

    if-eqz p2, :cond_b7

    if-nez p1, :cond_6

    goto/16 :goto_b7

    :cond_6
    if-eqz p3, :cond_b7

    iget-object v0, p3, Lcom/ssjj/fnsdk/core/entity/LoginData;->uid:Ljava/lang/String;

    if-nez v0, :cond_e

    goto/16 :goto_b7

    :cond_e
    invoke-static {}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->getInstance()Lcom/ssjj/fnsdk/core/share/process/ShareManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->getClickLink(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_b7

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_b7

    const-string p2, "://"

    invoke-virtual {v10, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_b7

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "open from url: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    const-string p2, "app_link_callback_info"

    const-string v0, ""

    invoke-static {p2, v0}, Lcom/ssjj/fnsdk/core/EnvConfig;->getConfig(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v9, p2

    check-cast v9, Ljava/lang/String;

    const-string p2, "app_link_on_check_listener"

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/EnvConfig;->getConfigObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_8d

    instance-of v0, p2, Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v0, :cond_8d

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const-string v1, "fromUrl"

    invoke-virtual {v0, v1, v10}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "callbackInfo"

    invoke-virtual {v0, v1, v9}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uid"

    iget-object v2, p3, Lcom/ssjj/fnsdk/core/entity/LoginData;->uid:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "roleId"

    iget-object v2, p3, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "roleName"

    iget-object v2, p3, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "serverId"

    iget-object v2, p3, Lcom/ssjj/fnsdk/core/entity/LoginData;->serverId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "serverName"

    iget-object v2, p3, Lcom/ssjj/fnsdk/core/entity/LoginData;->serverName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    check-cast p2, Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const/4 v1, 0x0

    const-string v2, "succ"

    invoke-interface {p2, v1, v2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_8d
    const-string p2, "app_link_on_post_listener"

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/EnvConfig;->getConfigObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_9c

    instance-of v0, p2, Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v0, :cond_9c

    check-cast p2, Lcom/ssjj/fnsdk/core/SsjjFNListener;

    goto :goto_9d

    :cond_9c
    const/4 p2, 0x0

    :goto_9d
    move-object v11, p2

    const-string p2, "fnnp=1"

    invoke-virtual {v10, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_b7

    iget-object v3, p3, Lcom/ssjj/fnsdk/core/entity/LoginData;->uid:Ljava/lang/String;

    iget-object v4, p3, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleId:Ljava/lang/String;

    iget-object v5, p3, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleName:Ljava/lang/String;

    iget-object v6, p3, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleLevel:Ljava/lang/String;

    iget-object v7, p3, Lcom/ssjj/fnsdk/core/entity/LoginData;->serverId:Ljava/lang/String;

    iget-object v8, p3, Lcom/ssjj/fnsdk/core/entity/LoginData;->serverName:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v11}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    :cond_b7
    :goto_b7
    return-void
.end method
