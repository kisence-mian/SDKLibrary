.class Lcom/ssjj/fnsdk/core/s;
.super Lcom/ssjj/fnsdk/core/SsjjFNAdapter;


# instance fields
.field private c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ssjj/fnsdk/core/SsjjFNAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/app/Activity;

.field private f:Z

.field private g:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Lcom/ssjj/fnsdk/core/entity/LoginData;


# direct methods
.method constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/s;->f:Z

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/s;->g:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/s;->h:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/s;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/s;->j:Lcom/ssjj/fnsdk/core/entity/LoginData;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/s;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/s;->g:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    return-object p0
.end method

.method private a(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V
    .registers 7

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    const-string v1, "fncz_cz_checkSwitch"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->isSurportFunc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    const-string v2, "fncz_cz"

    invoke-virtual {v0, v2}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->isSurportFunc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    new-instance v2, Lcom/ssjj/fnsdk/core/ab;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/ab;-><init>(Lcom/ssjj/fnsdk/core/s;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V

    const/4 p2, 0x0

    invoke-virtual {v0, p1, v1, p2, v2}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->invoke(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    goto :goto_29

    :cond_26
    invoke-direct {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/s;->b(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V

    :goto_29
    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V
    .registers 7

    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->getInstance()Lcom/ssjj/fnsdk/core/StatManager;

    move-result-object v0

    sget-object v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    const-string v2, "pay_disable"

    const-string v3, ""

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/ssjj/fnsdk/core/StatManager;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->b:Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;->msg:Ljava/lang/String;

    if-eqz v0, :cond_32

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->b:Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;->msg:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_32

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->b:Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;->msg:Ljava/lang/String;

    goto :goto_34

    :cond_32
    const-string v0, "\u4eb2\uff0c\u7cfb\u7edf\u7ef4\u62a4\uff0c\u5145\u503c\u6682\u65f6\u5173\u95ed\u54e6~~"

    :goto_34
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "pay close, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v1, Lcom/ssjj/fnsdk/core/ad;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/ssjj/fnsdk/core/ad;-><init>(Lcom/ssjj/fnsdk/core/s;Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/s;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/s;->b(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/s;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/s;->c(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 5

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/s;->h:Z

    if-nez v0, :cond_3d

    const/4 v0, 0x0

    :goto_5
    const/16 v1, 0xa

    if-lt v0, v1, :cond_22

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->e:Landroid/app/Activity;

    if-eqz v0, :cond_3d

    const-string v0, "0"

    sget-object v1, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_platformId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->e:Landroid/app/Activity;

    new-instance v1, Lcom/ssjj/fnsdk/core/af;

    invoke-direct {v1, p0, p1}, Lcom/ssjj/fnsdk/core/af;-><init>(Lcom/ssjj/fnsdk/core/s;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_3d

    :cond_22
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8c03\u7528\u9519\u8bef\uff1a"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "() \u63a5\u53e3\u8c03\u7528\u987a\u5e8f\u9519\u8bef\uff01\u8bf7\u5728 logLoginFinish(uid) \u4e4b\u540e\u518d\u8c03\u7528\uff01"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_3d
    :goto_3d
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const/4 v0, 0x1

    if-eqz p2, :cond_30

    if-eqz p1, :cond_30

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_30

    const-string v1, "all"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    return v0

    :cond_18
    const-string v1, "\\|"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_21
    if-lt v3, v1, :cond_24

    return v2

    :cond_24
    aget-object v4, p1, v3

    invoke-virtual {p2, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2d

    return v0

    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_30
    return v0
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/s;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/s;->e:Landroid/app/Activity;

    return-object p0
.end method

.method private b(Landroid/app/Activity;)V
    .registers 5

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/s;->f:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/s;->f:Z

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_15

    return-void

    :cond_15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    :try_start_1b
    new-instance v2, Lcom/ssjj/fnsdk/core/w;

    invoke-direct {v2, p0, v1}, Lcom/ssjj/fnsdk/core/w;-><init>(Lcom/ssjj/fnsdk/core/s;Lcom/ssjj/fnsdk/core/SsjjFNAdapter;)V

    invoke-virtual {v1, p1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->init(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;)V
    :try_end_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_24

    goto :goto_e

    :catchall_24
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_e
.end method

.method private b(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->pay(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V

    return-void
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/s;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/s;->b(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V

    return-void
.end method

.method static synthetic c(Lcom/ssjj/fnsdk/core/s;)Lcom/ssjj/fnsdk/core/SsjjFNAdapter;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    return-object p0
.end method

.method private c(Landroid/app/Activity;)V
    .registers 11

    const-string v0, "plugin tool err: "

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/s;->f:Z

    const/4 v2, 0x0

    :try_start_b
    const-string v3, "fn_plugin_tool_list"

    invoke-static {p1, v3}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_3d

    const-string v4, "\\|"

    if-lez v3, :cond_21

    :try_start_15
    invoke-virtual {p1, v3}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    :cond_21
    if-eqz v2, :cond_26

    array-length v3, v2

    if-nez v3, :cond_52

    :cond_26
    const-string v3, "fnres/fn_plugin_tool.list"

    invoke-static {p1, v3}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->readTextFromAssets(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_52

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_52

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_3c} :catch_3d

    goto :goto_52

    :catch_3d
    move-exception p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    :cond_52
    :goto_52
    if-eqz v2, :cond_df

    array-length p1, v2

    if-lez p1, :cond_df

    array-length p1, v2

    const/4 v3, 0x0

    :goto_59
    if-lt v3, p1, :cond_5d

    goto/16 :goto_df

    :cond_5d
    aget-object v4, v2, v3

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "com.ssjj.fnsdk.tool."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ".FNToolAdapter"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :try_start_74
    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Class;

    invoke-virtual {v7, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    new-array v8, v1, [Ljava/lang/Object;

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    iget-object v8, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v4, v7, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->b:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".FNToolConfig"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "fn_pluginId"

    invoke-static {v4, v6}, Lcom/ssjj/fnsdk/core/RefUtil;->getStaticField(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v7, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->a:Ljava/lang/String;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNCfg2;

    move-result-object v4

    iget-object v6, v7, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->a:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->add(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_74 .. :try_end_b3} :catch_b4

    goto :goto_db

    :catch_b4
    move-exception v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v6, "plugin tool not fount: "

    invoke-direct {v4, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    :goto_db
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_59

    :cond_df
    :goto_df
    return-void
.end method

.method private c(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V
    .registers 6

    new-instance p3, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p3}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const-string v0, "money"

    iget-object v1, p2, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->price:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "ext"

    iget-object v1, p2, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->callbackInfo:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "name"

    iget-object v1, p2, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productName:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "desc"

    iget-object v1, p2, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productDesc:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "roleId"

    iget-object v1, p2, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->roleId:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "roleName"

    iget-object v1, p2, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->roleName:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uid"

    iget-object v1, p2, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->uid:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "serverId"

    iget-object v1, p2, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->serverId:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "level"

    iget-object v1, p2, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->level:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "count"

    iget-object p2, p2, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productCount:Ljava/lang/String;

    invoke-virtual {p3, v0, p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object p2

    new-instance v0, Lcom/ssjj/fnsdk/core/ac;

    invoke-direct {v0, p0}, Lcom/ssjj/fnsdk/core/ac;-><init>(Lcom/ssjj/fnsdk/core/s;)V

    const-string v1, "fncz_cz"

    invoke-virtual {p2, p1, v1, p3, v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->invoke(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    return-void
.end method

.method static synthetic d(Lcom/ssjj/fnsdk/core/s;)Ljava/util/List;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "logout adapter only"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->logout(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_17

    return-void

    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v1, p1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->logout(Landroid/app/Activity;)V

    goto :goto_10
.end method

.method public checkAndUpdateVersion(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V
    .registers 4

    const-string v0, "checkAndUpdateVersion"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/ssjj/fnsdk/core/u;

    invoke-direct {v0, p0, p2}, Lcom/ssjj/fnsdk/core/u;-><init>(Lcom/ssjj/fnsdk/core/s;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V

    new-instance p2, Lcom/ssjj/fnsdk/core/v;

    invoke-direct {p2, p0, p1, v0}, Lcom/ssjj/fnsdk/core/v;-><init>(Lcom/ssjj/fnsdk/core/s;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public exit(Lcom/ssjj/fnsdk/core/listener/SsjjFNExitListener;)V
    .registers 4

    const-string v0, "exit"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/ssjj/fnsdk/core/listener/SsjjFNExitListenerImpl;

    invoke-direct {v0, p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNExitListenerImpl;-><init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNExitListener;)V

    :try_start_a
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->release()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->exit(Lcom/ssjj/fnsdk/core/listener/SsjjFNExitListener;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_33

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/FNShare;->getInstance()Lcom/ssjj/fnsdk/core/share/FNShare;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->e:Landroid/app/Activity;

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/share/FNShare;->release(Landroid/app/Activity;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNCfg2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->release()V

    goto :goto_41

    :cond_33
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->exit(Lcom/ssjj/fnsdk/core/listener/SsjjFNExitListener;)V
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_3c} :catch_3d

    goto :goto_1c

    :catch_3d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_41
    return-void
.end method

.method public getSsjjFNAdapter()Lcom/ssjj/fnsdk/core/SsjjFNAdapter;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    return-object v0
.end method

.method public getUserListener()Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;
    .registers 2

    const-string v0, "getUserListener"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->getUserListener()Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->g:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    :cond_f
    return-object v0
.end method

.method public hideFloatBar(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "hideFloatBar"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->hideFloatBar(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_25

    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v1, p1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->hideFloatBar(Landroid/app/Activity;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_20} :catch_21

    goto :goto_10

    :catch_21
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_25
    return-void
.end method

.method public init(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;)V
    .registers 12

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "init, lang = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  sdkVersion = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "3.1.6.7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    new-instance v6, Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListenerImpl;

    invoke-direct {v6, p2}, Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListenerImpl;-><init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;)V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/s;->e:Landroid/app/Activity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNCfg2;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->init(Landroid/content/Context;)V

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/s;->c(Landroid/app/Activity;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    if-eqz p2, :cond_45

    new-instance v0, Lcom/ssjj/fnsdk/core/t;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-wide v4, v7

    invoke-direct/range {v1 .. v6}, Lcom/ssjj/fnsdk/core/t;-><init>(Lcom/ssjj/fnsdk/core/s;Landroid/app/Activity;JLcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;)V

    invoke-virtual {p2, p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->init(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNInitListener;)V

    :cond_45
    invoke-static {}, Lcom/ssjj/fnsdk/core/share/FNShare;->getInstance()Lcom/ssjj/fnsdk/core/share/FNShare;

    move-result-object p2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->e:Landroid/app/Activity;

    invoke-virtual {p2, v0}, Lcom/ssjj/fnsdk/core/share/FNShare;->init(Landroid/app/Activity;)V

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/s;->b(Landroid/app/Activity;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNCfg2;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->getCfg()V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "plat init end "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v7

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    return-void
.end method

.method public invoke(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z
    .registers 8

    :try_start_0
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->invoke(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_7

    goto :goto_c

    :catchall_7
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v0, 0x0

    :goto_c
    if-nez v0, :cond_2c

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_14
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1b

    goto :goto_2c

    :cond_1b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    :try_start_21
    invoke-virtual {v2, p1, p2, p3, p4}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->invoke(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result v0
    :try_end_25
    .catchall {:try_start_21 .. :try_end_25} :catchall_26

    goto :goto_2a

    :catchall_26
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2a
    if-eqz v0, :cond_14

    :cond_2c
    :goto_2c
    return v0
.end method

.method public isSurportFunc(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    if-nez v0, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->isSurportFunc(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_19

    goto :goto_25

    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->isSurportFunc(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_25
    :goto_25
    return v0
.end method

.method public logCreateRole(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    const-string v0, "logCreateRole"

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/s;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "roleId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\nroleName = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\nserverId = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\nserverName = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :try_start_69
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->setRoleId(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->logCreateRole(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_82

    goto :goto_90

    :cond_82
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->logCreateRole(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8b
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_8b} :catch_8c

    goto :goto_7b

    :catch_8c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_90
    return-void
.end method

.method public logEnterGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const-string v0, "logEnterGame"

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/s;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "roleId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\nroleName = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\nroleLevel = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\nserverId = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\nserverName = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/ssjj/fnsdk/core/entity/LoginData;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/entity/LoginData;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/s;->j:Lcom/ssjj/fnsdk/core/entity/LoginData;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/s;->i:Ljava/lang/String;

    iput-object v1, v0, Lcom/ssjj/fnsdk/core/entity/LoginData;->uid:Ljava/lang/String;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->j:Lcom/ssjj/fnsdk/core/entity/LoginData;

    iput-object p1, v0, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleId:Ljava/lang/String;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->j:Lcom/ssjj/fnsdk/core/entity/LoginData;

    iput-object p2, v0, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleName:Ljava/lang/String;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->j:Lcom/ssjj/fnsdk/core/entity/LoginData;

    iput-object p3, v0, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleLevel:Ljava/lang/String;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->j:Lcom/ssjj/fnsdk/core/entity/LoginData;

    iput-object p4, v0, Lcom/ssjj/fnsdk/core/entity/LoginData;->serverId:Ljava/lang/String;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->j:Lcom/ssjj/fnsdk/core/entity/LoginData;

    iput-object p5, v0, Lcom/ssjj/fnsdk/core/entity/LoginData;->serverName:Ljava/lang/String;

    :try_start_9f
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->logEnterGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    if-eqz v2, :cond_b7

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->logEnterGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_b7
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_bd
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_c4

    goto :goto_d8

    :cond_c4
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->logEnterGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_d3} :catch_d4

    goto :goto_bd

    :catch_d4
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_d8
    :try_start_d8
    invoke-static {}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->getInstance()Lcom/ssjj/fnsdk/core/share/process/ShareManager;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/s;->e:Landroid/app/Activity;

    if-nez p2, :cond_e2

    const/4 p3, 0x0

    goto :goto_e6

    :cond_e2
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p3

    :goto_e6
    iget-object p4, p0, Lcom/ssjj/fnsdk/core/s;->j:Lcom/ssjj/fnsdk/core/entity/LoginData;

    invoke-virtual {p1, p2, p3, p4}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->postLink(Landroid/content/Context;Landroid/content/Intent;Lcom/ssjj/fnsdk/core/entity/LoginData;)V
    :try_end_eb
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_eb} :catch_ec

    goto :goto_f0

    :catch_ec
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_f0
    return-void
.end method

.method public logLoginFinish(Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/s;->i:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/s;->h:Z

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_13

    goto :goto_16

    :cond_13
    const-string v0, "logLoginFinish"

    goto :goto_2b

    :cond_16
    :goto_16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "logLoginFinish("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2b
    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    :try_start_2e
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->logLoginFinish(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_40

    goto :goto_4e

    :cond_40
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v1, p1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->logLoginFinish(Ljava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_49} :catch_4a

    goto :goto_39

    :catch_4a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4e
    return-void
.end method

.method public logRoleLevel(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "logRoleLevel"

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/s;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "roleLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\nserverId = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :try_start_3b
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->logRoleLevel(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_46
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_4d

    goto :goto_5b

    :cond_4d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->logRoleLevel(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_56} :catch_57

    goto :goto_46

    :catch_57
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5b
    return-void
.end method

.method public logSelectServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    const-string v0, "logSelectServer"

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/s;->a(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "roleLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\nuserName = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\nserverId = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :try_start_52
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->logSelectServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_64

    goto :goto_72

    :cond_64
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v1, p1, p2, p3}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->logSelectServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_6d} :catch_6e

    goto :goto_5d

    :catch_6e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_72
    return-void
.end method

.method public login(Landroid/app/Activity;)V
    .registers 6

    const-string v0, "login"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/s;->h:Z

    :try_start_8
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->isDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    sget-object v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    const-string v2, "close_login"

    const-string v3, ""

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "\u4eb2\uff0c\u7cfb\u7edf\u7ef4\u62a4\uff0c\u767b\u5f55\u6682\u65f6\u5173\u95ed\u54e6~~"

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->c:Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;->msg:Ljava/lang/String;

    if-eqz v1, :cond_53

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->c:Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;->msg:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_53

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->c:Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_53
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "login close, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v1, Lcom/ssjj/fnsdk/core/x;

    invoke-direct {v1, p0, p1, v0}, Lcom/ssjj/fnsdk/core/x;-><init>(Lcom/ssjj/fnsdk/core/s;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_6d} :catch_6e

    return-void

    :catch_6e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_72
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->login(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_84

    return-void

    :cond_84
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v1, p1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->login(Landroid/app/Activity;)V

    goto :goto_7d
.end method

.method public logout(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "logout"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    :try_start_5
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->logout()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->logout(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1e

    goto :goto_2c

    :cond_1e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v1, p1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->logout(Landroid/app/Activity;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_27} :catch_28

    goto :goto_17

    :catch_28
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2c
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    :try_start_2a
    invoke-static {}, Lcom/ssjj/fnsdk/core/FNImagePicker;->getInstance()Lcom/ssjj/fnsdk/core/FNImagePicker;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/FNImagePicker;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_35

    return-void

    :cond_35
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_40
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_51

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/FNShare;->getInstance()Lcom/ssjj/fnsdk/core/share/FNShare;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/share/FNShare;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {p1, p2, p3}, Lcom/ssjj/fnsdk/core/UpdateUtil;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_5f

    :cond_51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v1, p1, p2, p3}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->onActivityResult(IILandroid/content/Intent;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_5a} :catch_5b

    goto :goto_40

    :catch_5b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5f
    return-void
.end method

.method public onDestroy()V
    .registers 3

    const-string v0, "onDestroy"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->onDestroy()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1e

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/FNShare;->getInstance()Lcom/ssjj/fnsdk/core/share/FNShare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/share/FNShare;->onDestroy()V

    goto :goto_2c

    :cond_1e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->onDestroy()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_27} :catch_28

    goto :goto_10

    :catch_28
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2c
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onNewIntent, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    :try_start_12
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2b

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/FNShare;->getInstance()Lcom/ssjj/fnsdk/core/share/FNShare;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/share/FNShare;->onNewIntent(Landroid/content/Intent;)V

    goto :goto_39

    :cond_2b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v1, p1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->onNewIntent(Landroid/content/Intent;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_34} :catch_35

    goto :goto_1d

    :catch_35
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_39
    :try_start_39
    invoke-static {}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->getInstance()Lcom/ssjj/fnsdk/core/share/process/ShareManager;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/s;->e:Landroid/app/Activity;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/s;->j:Lcom/ssjj/fnsdk/core/entity/LoginData;

    invoke-virtual {v0, v1, p1, v2}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->postLink(Landroid/content/Context;Landroid/content/Intent;Lcom/ssjj/fnsdk/core/entity/LoginData;)V
    :try_end_44
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_44} :catch_45

    goto :goto_49

    :catch_45
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_49
    return-void
.end method

.method public onPause()V
    .registers 3

    const-string v0, "onPause"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->onPause()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/FNShare;->getInstance()Lcom/ssjj/fnsdk/core/share/FNShare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/share/FNShare;->onPause()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->getInstance()Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->onPause()V

    goto :goto_33

    :cond_25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->onPause()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2e} :catch_2f

    goto :goto_10

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_33
    return-void
.end method

.method public onRestart()V
    .registers 3

    const-string v0, "onRestart"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->b:I

    :try_start_c
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->onRestart()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/FNShare;->getInstance()Lcom/ssjj/fnsdk/core/share/FNShare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/share/FNShare;->onRestart()V

    goto :goto_33

    :cond_25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->onRestart()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2e} :catch_2f

    goto :goto_17

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_33
    return-void
.end method

.method public onResume()V
    .registers 3

    const-string v0, "onResume"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->b:I

    :try_start_c
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->onResume()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_2c

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/FNShare;->getInstance()Lcom/ssjj/fnsdk/core/share/FNShare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/share/FNShare;->onResume()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->getInstance()Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->onResume()V

    goto :goto_3a

    :cond_2c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->onResume()V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_35} :catch_36

    goto :goto_17

    :catch_36
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3a
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSaveInstanceState, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    :try_start_12
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_24

    goto :goto_32

    :cond_24
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v1, p1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_2d} :catch_2e

    goto :goto_1d

    :catch_2e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_32
    return-void
.end method

.method public onStart()V
    .registers 3

    const-string v0, "onStart"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->b:I

    :try_start_c
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->onStart()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/FNShare;->getInstance()Lcom/ssjj/fnsdk/core/share/FNShare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/share/FNShare;->onStart()V

    goto :goto_33

    :cond_25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->onStart()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2e} :catch_2f

    goto :goto_17

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_33
    return-void
.end method

.method public onStop()V
    .registers 3

    const-string v0, "onStop"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    const/4 v1, 0x2

    iput v1, v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->b:I

    :try_start_c
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->onStop()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_17
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_25

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/FNShare;->getInstance()Lcom/ssjj/fnsdk/core/share/FNShare;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/share/FNShare;->onStop()V

    goto :goto_33

    :cond_25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->onStop()V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2e} :catch_2f

    goto :goto_17

    :catch_2f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_33
    return-void
.end method

.method public pay(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pay, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListenerImpl;

    invoke-direct {v0, p3}, Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListenerImpl;-><init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V

    invoke-virtual {v0, p2}, Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListenerImpl;->onStartPay(Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;)V

    :try_start_1a
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNConfig;

    move-result-object p3

    const/4 v1, 0x2

    invoke-virtual {p3, v1}, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->isDisabled(I)Z

    move-result p3

    if-eqz p3, :cond_3d

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNConfig;

    move-result-object p3

    iget-object p3, p3, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->b:Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;

    iget-object p3, p3, Lcom/ssjj/fnsdk/core/SsjjFNConfig$CfgItem;->servers:Ljava/lang/String;

    iget-object v1, p2, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->serverId:Ljava/lang/String;

    invoke-direct {p0, p3, v1}, Lcom/ssjj/fnsdk/core/s;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_3d

    invoke-direct {p0, p1, v0}, Lcom/ssjj/fnsdk/core/s;->a(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_38} :catch_39

    return-void

    :catch_39
    move-exception p3

    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3d
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->checkCanPay()Z

    move-result p3

    if-nez p3, :cond_50

    new-instance p2, Lcom/ssjj/fnsdk/core/z;

    invoke-direct {p2, p0, p1}, Lcom/ssjj/fnsdk/core/z;-><init>(Lcom/ssjj/fnsdk/core/s;Landroid/app/Activity;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_50
    if-nez p2, :cond_5b

    const-string p1, "productInfo \u4e3a null"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListenerImpl;->onFailed(Ljava/lang/String;)V

    return-void

    :cond_5b
    iget-object p3, p2, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->uid:Ljava/lang/String;

    if-eqz p3, :cond_c1

    iget-object p3, p2, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->uid:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-eqz p3, :cond_c1

    iget-object p3, p2, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->uid:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_76

    goto :goto_c1

    :cond_76
    iget-object p3, p2, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->price:Ljava/lang/String;

    if-eqz p3, :cond_86

    iget-object p3, p2, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->price:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-nez p3, :cond_88

    :cond_86
    iput-object v1, p2, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->price:Ljava/lang/String;

    :cond_88
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager;

    move-result-object p3

    iget-object v1, p2, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productId:Ljava/lang/String;

    invoke-virtual {p3, p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNProductIdConvertManager;->convert(Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    iget-object v1, p2, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productId:Ljava/lang/String;

    if-eqz v1, :cond_a6

    iget-object v1, p2, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productId:Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a6

    new-instance v1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;

    invoke-direct {v1, p2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;-><init>(Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;)V

    iput-object p3, v1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productId:Ljava/lang/String;

    goto :goto_a7

    :cond_a6
    move-object v1, p2

    :goto_a7
    invoke-direct {p0, p1, v1, v0}, Lcom/ssjj/fnsdk/core/s;->a(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_b0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_b7

    return-void

    :cond_b7
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {p2, p1, v1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->pay(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListener;)V

    goto :goto_b0

    :cond_c1
    :goto_c1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_UID_IS_INVAILID:Ljava/lang/String;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, ", \u503c\u4e3a\uff1a"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p2, p2, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->uid:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance p3, Lcom/ssjj/fnsdk/core/aa;

    invoke-direct {p3, p0, p1, p2}, Lcom/ssjj/fnsdk/core/aa;-><init>(Lcom/ssjj/fnsdk/core/s;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/ssjj/fnsdk/core/listener/SsjjFNPayListenerImpl;->onFailed(Ljava/lang/String;)V

    return-void
.end method

.method public setOauthData(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setOauthData"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/LogUtil;->isLog()Z

    move-result v1

    if-eqz v1, :cond_1d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1f

    :cond_1d
    const-string v1, ""

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    :try_start_2a
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->onSetOauthData(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->onSetOauthData(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->getInstance()Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->onSetOauthData(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->setOauthData(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_51

    goto :goto_5f

    :cond_51
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v1, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->setOauthData(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_5a} :catch_5b

    goto :goto_4a

    :catch_5b
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_5f
    return-void
.end method

.method public setSsjjFNAdapter(Lcom/ssjj/fnsdk/core/SsjjFNAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    return-void
.end method

.method public setUserListener(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;)V
    .registers 4

    const-string v0, "setUserListener"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;

    invoke-direct {v0, p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListenerImpl;-><init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/s;->g:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->setUserListener(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_17
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1e

    return-void

    :cond_1e
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/s;->g:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->setUserListener(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;)V

    goto :goto_17
.end method

.method public showBBS(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "showBBS"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->showBBS(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_25

    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v1, p1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->showBBS(Landroid/app/Activity;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_20} :catch_21

    goto :goto_10

    :catch_21
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_25
    return-void
.end method

.method public showFloatBar(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "showFloatBar"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->showFloatBar(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_25

    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v1, p1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->showFloatBar(Landroid/app/Activity;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_20} :catch_21

    goto :goto_10

    :catch_21
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_25
    return-void
.end method

.method public showGameCenter(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "showGameCenter"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->showGameCenter(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_25

    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v1, p1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->showGameCenter(Landroid/app/Activity;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_20} :catch_21

    goto :goto_10

    :catch_21
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_25
    return-void
.end method

.method public showPlatformExitDialog(Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;)V
    .registers 4

    const-string v0, "showPlatformExitDialog"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListenerImpl;

    invoke-direct {v0, p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListenerImpl;-><init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;)V

    :try_start_a
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->showPlatformExitDialog(Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1c

    goto :goto_2a

    :cond_1c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->showPlatformExitDialog(Lcom/ssjj/fnsdk/core/listener/SsjjFNExitDialogListener;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_25} :catch_26

    goto :goto_15

    :catch_26
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2a
    return-void
.end method

.method public showUserCenter(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "showUserCenter"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->showUserCenter(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_25

    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v1, p1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->showUserCenter(Landroid/app/Activity;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_20} :catch_21

    goto :goto_10

    :catch_21
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_25
    return-void
.end method

.method public switchUser(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "switchUser"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->log(Ljava/lang/String;)V

    :try_start_5
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->c:Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->switchUser(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/s;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_25

    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    invoke-virtual {v1, p1}, Lcom/ssjj/fnsdk/core/SsjjFNAdapter;->switchUser(Landroid/app/Activity;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_20} :catch_21

    goto :goto_10

    :catch_21
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_25
    return-void
.end method
