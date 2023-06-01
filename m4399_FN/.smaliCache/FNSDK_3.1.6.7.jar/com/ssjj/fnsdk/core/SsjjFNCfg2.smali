.class public Lcom/ssjj/fnsdk/core/SsjjFNCfg2;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;
    }
.end annotation


# static fields
.field private static a:Lcom/ssjj/fnsdk/core/SsjjFNCfg2;


# instance fields
.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/content/Context;

.field private f:Z

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;-><init>()V

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->a:Lcom/ssjj/fnsdk/core/SsjjFNCfg2;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->b:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->d:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->e:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->f:Z

    const-string v0, "_fn_cfg2_"

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->g:Ljava/lang/String;

    const-string v0, "val"

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->h:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    :cond_8
    invoke-direct {p0, p3}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-object v1

    :cond_f
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;

    if-nez p1, :cond_18

    return-object v1

    :cond_18
    invoke-static {p1, p3}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;->c(Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNCfg2;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->c:Ljava/util/Map;

    return-object p0
.end method

.method private a()V
    .registers 3

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->d:Ljava/util/Map;

    invoke-direct {p0, v1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->a(Ljava/util/Map;Ljava/lang/String;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->f:Z

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNCfg2;Ljava/util/Map;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->a(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const-string v0, "data"

    const-string v1, "msg"

    invoke-direct {p0, p2}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->d(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    return v3

    :cond_c
    const-string v2, ""

    const/4 v4, -0x1

    const/4 v5, 0x1

    :try_start_10
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "sign"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "code"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v8
    :try_end_21
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_21} :catch_a7

    :try_start_21
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2a

    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    :cond_2a
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_34
    const-string v0, "\"sign\":\""

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v1, v5, :cond_6b

    add-int/2addr v0, v1

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v6, 0x2c

    if-ne v4, v6, :cond_51

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, 0x1

    const/4 v4, 0x1

    goto :goto_52

    :cond_51
    const/4 v4, 0x0

    :goto_52
    const-string v9, "\""

    invoke-virtual {p2, v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v9

    sub-int/2addr v9, v5

    if-ge v0, v9, :cond_6a

    if-nez v4, :cond_6a

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v9

    if-ne v9, v6, :cond_6a

    goto :goto_6b

    :cond_6a
    move v4, v0

    :cond_6b
    :goto_6b
    if-le v1, v5, :cond_9e

    if-le v4, v1, :cond_9e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/2addr v4, v5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQC3APanDqlskE1nH7BpB75m8DE/qPtsQQ2kMN0mgQXvvzQBvW28JBnLQ2hc7syk7nsWr4cQKjYwI2guQuB6BjmJ6AiTewsnuOPAmXbF0BcQB4FmuxLCWhLEa7iDGib6yE1Wk2WB9YHX2I51pFj+z1KvCf1H6Q7Kw7IxfZIXkE60ZQIDAQAB"

    invoke-static {v7, v1}, Lcom/ssjj/fnsdk/core/q;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c5

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_c6

    :cond_9e
    const-string v0, "cfg2 sign not found"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V
    :try_end_a3
    .catch Lorg/json/JSONException; {:try_start_21 .. :try_end_a3} :catch_a4

    goto :goto_c5

    :catch_a4
    move-exception v0

    move v4, v8

    goto :goto_a8

    :catch_a7
    move-exception v0

    :goto_a8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "cfg2 json err: "

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "\n"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    move v8, v4

    :cond_c5
    :goto_c5
    const/4 v0, 0x0

    :goto_c6
    if-eqz v0, :cond_f7

    if-ne v8, v5, :cond_e7

    if-eqz v2, :cond_e7

    invoke-direct {p0, p2}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->c(Ljava/lang/String;)V

    const-string p2, "[]"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_e4

    const-string p2, "{}"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_e4

    invoke-direct {p0, p1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->b(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v3

    goto :goto_fc

    :cond_e4
    const-string p1, "cfg2 data empty"

    goto :goto_f9

    :cond_e7
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "cfg2 code = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_f9

    :cond_f7
    const-string p1, "cfg2 sign fail"

    :goto_f9
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :goto_fc
    return v3
.end method

.method private b()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->e:Landroid/content/Context;

    if-eqz v0, :cond_14

    const-string v1, "_fn_cfg2_"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "val"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return-object v0
.end method

.method private b(Ljava/util/Map;Ljava/lang/String;)Z
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v3, "params"

    const-string v4, "force"

    const-string v5, "\n"

    invoke-direct {v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_12

    return v6

    :cond_12
    new-instance v7, Ljava/lang/StringBuilder;

    const/16 v0, 0x400

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    :try_start_19
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v8, "plugins"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v8, :cond_dd

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_dd

    const/4 v0, 0x0

    const/4 v10, 0x0

    :goto_2f
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-lt v10, v11, :cond_38

    move v6, v0

    goto/16 :goto_100

    :cond_38
    invoke-virtual {v8, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    new-instance v12, Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;

    const/4 v13, 0x0

    invoke-direct {v12, v1, v13}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNCfg2;Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;)V
    :try_end_42
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_42} :catch_e4

    :try_start_42
    const-string v13, "id"

    invoke-virtual {v11, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;->a(Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_58

    invoke-virtual {v11, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;->b(Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;Ljava/lang/String;)V

    :cond_58
    invoke-static {v12}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;->a(Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " -> "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_ab

    invoke-virtual {v11, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_a6

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x2

    if-le v13, v14, :cond_a6

    new-instance v13, Lorg/json/JSONObject;

    invoke-direct {v13, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v11

    if-eqz v11, :cond_ab

    :goto_82
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-nez v14, :cond_89

    goto :goto_ab

    :cond_89
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v12, v14, v15}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;->a(Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_82

    :cond_a6
    const-string v6, " empty"

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ab
    :goto_ab
    invoke-static {v12}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;->b(Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;)Z

    move-result v6

    if-eqz v6, :cond_be

    invoke-static {v12}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;->a(Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;)Ljava/lang/String;

    move-result-object v0
    :try_end_b5
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_b5} :catch_c1
    .catch Lorg/json/JSONException; {:try_start_42 .. :try_end_b5} :catch_e4

    move-object/from16 v6, p1

    :try_start_b7
    invoke-interface {v6, v0, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ba
    .catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_ba} :catch_bc
    .catch Lorg/json/JSONException; {:try_start_b7 .. :try_end_ba} :catch_e4

    const/4 v0, 0x1

    goto :goto_d5

    :catch_bc
    move-exception v0

    goto :goto_c4

    :cond_be
    move-object/from16 v6, p1

    goto :goto_d5

    :catch_c1
    move-exception v0

    move-object/from16 v6, p1

    :goto_c4
    :try_start_c4
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_d5
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x0

    goto/16 :goto_2f

    :cond_dd
    const-string v0, "cfg2 plugins empty"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V
    :try_end_e2
    .catch Lorg/json/JSONException; {:try_start_c4 .. :try_end_e2} :catch_e4

    const/4 v6, 0x1

    goto :goto_100

    :catch_e4
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "cfg2 json err: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_100
    invoke-static {}, Lcom/ssjj/fnsdk/core/LogUtil;->isLog()Z

    move-result v0

    if-eqz v0, :cond_126

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "cfg2 "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v6, :cond_112

    const-string v2, "ok"

    goto :goto_114

    :cond_112
    const-string v2, "fail"

    :goto_114
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :cond_126
    return v6
.end method

.method private c(Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->e:Landroid/content/Context;

    if-eqz v0, :cond_1f

    const-string v1, "_fn_cfg2_"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "val"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_1f
    return-void
.end method

.method private c(Ljava/util/Map;Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->d(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;

    if-nez p1, :cond_11

    return v1

    :cond_11
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;->c(Lcom/ssjj/fnsdk/core/SsjjFNCfg2$a;)Z

    move-result p1

    return p1
.end method

.method private d(Ljava/lang/String;)Z
    .registers 2

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_e

    const/4 p1, 0x0

    return p1

    :cond_e
    const/4 p1, 0x1

    return p1
.end method

.method public static getInstance()Lcom/ssjj/fnsdk/core/SsjjFNCfg2;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->a:Lcom/ssjj/fnsdk/core/SsjjFNCfg2;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->c:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/String;)Z
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->c:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->c(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5

    const-string v0, "onGetCfgKeys"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1, v1}, Lcom/ssjj/fnsdk/core/RefUtil;->invoke2(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    return-void

    :cond_10
    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    return-void

    :cond_17
    invoke-static {}, Lcom/ssjj/fnsdk/core/LogUtil;->isLog()Z

    move-result v0

    if-eqz v0, :cond_39

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onGetCfgKeys "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :cond_39
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->f:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->a()V

    :cond_7
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->d:Ljava/util/Map;

    invoke-direct {p0, v0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/lang/String;)Z
    .registers 3

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->f:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->a()V

    :cond_7
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->d:Ljava/util/Map;

    invoke-direct {p0, v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->c(Ljava/util/Map;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public getCfg()V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v1

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/ssjj/fnsdk/core/ah;

    invoke-direct {v2, p0}, Lcom/ssjj/fnsdk/core/ah;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNCfg2;)V

    invoke-virtual {v1, v0, v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void

    :cond_2f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    :try_start_35
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_42} :catch_43

    goto :goto_18

    :catch_43
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method

.method public init(Landroid/content/Context;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->e:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->release()V

    return-void
.end method

.method public release()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->f:Z

    return-void
.end method
