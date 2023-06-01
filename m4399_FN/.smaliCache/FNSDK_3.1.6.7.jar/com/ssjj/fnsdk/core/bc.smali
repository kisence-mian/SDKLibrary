.class Lcom/ssjj/fnsdk/core/bc;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

.field private final synthetic d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

.field private final synthetic e:Landroid/content/SharedPreferences;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:J

.field private final synthetic h:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Lcom/ssjj/fnsdk/core/SsjjFNListener;Landroid/content/SharedPreferences;Ljava/lang/String;JLjava/lang/String;)V
    .registers 10

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/bc;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/bc;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/bc;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/bc;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/bc;->e:Landroid/content/SharedPreferences;

    iput-object p6, p0, Lcom/ssjj/fnsdk/core/bc;->f:Ljava/lang/String;

    iput-wide p7, p0, Lcom/ssjj/fnsdk/core/bc;->g:J

    iput-object p9, p0, Lcom/ssjj/fnsdk/core/bc;->h:Ljava/lang/String;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/bc;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/bc;->b:Ljava/lang/String;

    const-string v1, "GET"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/bc;->c:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-static {p1, v0, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)Ljava/lang/String;

    move-result-object p1
    :try_end_10
    .catch Lcom/ssjj/fnsdk/core/SsjjFNException; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_16

    :catch_11
    move-exception p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_16
    return-object p1
.end method

.method protected a(Ljava/lang/String;)V
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "desc"

    const-string v3, "title"

    const-string v4, "iconurl"

    const-string v5, "fullurlQRData"

    const-string v6, "fullurl"

    const-string v7, "qrdata"

    const-string v8, "qrcode"

    const-string v9, "url"

    iget-object v10, v1, Lcom/ssjj/fnsdk/core/bc;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v10, :cond_22b

    new-instance v10, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v10}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const-string v11, "tg_last_params"

    const/4 v12, 0x1

    const-string v13, ""

    if-eqz v2, :cond_214

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    if-nez v14, :cond_30

    goto/16 :goto_214

    :cond_30
    :try_start_30
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct {v15, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v14, "code"

    invoke-virtual {v15, v14}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v14

    if-ne v14, v12, :cond_183

    const-string v14, "data"

    invoke-virtual {v15, v14}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v15
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_47} :catch_1ab

    if-eqz v15, :cond_53

    :try_start_49
    invoke-virtual {v14, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_4d} :catch_4e

    goto :goto_54

    :catch_4e
    move-exception v0

    move-object v6, v11

    move-object v3, v13

    goto/16 :goto_1af

    :cond_53
    move-object v15, v13

    :goto_54
    :try_start_54
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v16
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_54 .. :try_end_58} :catch_1ab

    if-eqz v16, :cond_61

    :try_start_5a
    invoke-virtual {v14, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_5e} :catch_4e

    move-object/from16 v12, v16

    goto :goto_62

    :cond_61
    move-object v12, v13

    :goto_62
    :try_start_62
    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_66} :catch_1ab

    if-eqz v17, :cond_6f

    :try_start_68
    invoke-virtual {v14, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6c} :catch_4e

    move-object/from16 v2, v17

    goto :goto_70

    :cond_6f
    move-object v2, v13

    :goto_70
    :try_start_70
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v17
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_70 .. :try_end_74} :catch_1ab

    if-eqz v17, :cond_81

    :try_start_76
    invoke-virtual {v14, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17
    :try_end_7a
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_7a} :catch_4e

    move-object/from16 v22, v17

    move-object/from16 v17, v13

    move-object/from16 v13, v22

    goto :goto_83

    :cond_81
    move-object/from16 v17, v13

    :goto_83
    :try_start_83
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_83 .. :try_end_87} :catch_17e

    if-eqz v18, :cond_9a

    :try_start_89
    invoke-virtual {v14, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_8d} :catch_94

    move-object/from16 v22, v18

    move-object/from16 v18, v11

    move-object/from16 v11, v22

    goto :goto_9e

    :catch_94
    move-exception v0

    move-object v6, v11

    move-object/from16 v3, v17

    goto/16 :goto_1af

    :cond_9a
    move-object/from16 v18, v11

    move-object/from16 v11, v17

    :goto_9e
    :try_start_9e
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19
    :try_end_a2
    .catch Ljava/lang/Exception; {:try_start_9e .. :try_end_a2} :catch_178

    if-eqz v19, :cond_b2

    :try_start_a4
    invoke-virtual {v14, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19
    :try_end_a8
    .catch Ljava/lang/Exception; {:try_start_a4 .. :try_end_a8} :catch_ab

    move-object/from16 v1, v19

    goto :goto_b4

    :catch_ab
    move-exception v0

    :goto_ac
    move-object/from16 v3, v17

    move-object/from16 v6, v18

    goto/16 :goto_1af

    :cond_b2
    move-object/from16 v1, v17

    :goto_b4
    :try_start_b4
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_b8} :catch_174

    if-eqz v19, :cond_c5

    :try_start_ba
    invoke-virtual {v14, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_ba .. :try_end_be} :catch_c1

    move-object/from16 v20, v19

    goto :goto_c7

    :catch_c1
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_ac

    :cond_c5
    move-object/from16 v20, v17

    :goto_c7
    :try_start_c7
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v19
    :try_end_cb
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_cb} :catch_174

    if-eqz v19, :cond_d2

    :try_start_cd
    invoke-virtual {v14, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14
    :try_end_d1
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_d1} :catch_c1

    goto :goto_d4

    :cond_d2
    move-object/from16 v14, v17

    :goto_d4
    const-string v19, "\u83b7\u53d6\u5931\u8d25"

    if-eqz v15, :cond_e2

    :try_start_d8
    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21
    :try_end_e0
    .catch Ljava/lang/Exception; {:try_start_d8 .. :try_end_e0} :catch_c1

    if-gtz v21, :cond_ee

    :cond_e2
    if-eqz v12, :cond_16c

    :try_start_e4
    invoke-virtual {v12}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v21

    if-lez v21, :cond_16c

    :cond_ee
    invoke-virtual {v10, v9, v15}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v8, v12}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v7, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v6, v13}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v5, v11}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v4, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v4, v20

    invoke-virtual {v10, v3, v4}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v0, v14}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_108
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_108} :catch_174

    move-object v0, v1

    move-object/from16 v1, p0

    :try_start_10b
    iget-object v3, v1, Lcom/ssjj/fnsdk/core/bc;->e:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    iget-object v5, v1, Lcom/ssjj/fnsdk/core/bc;->f:Ljava/lang/String;
    :try_end_113
    .catch Ljava/lang/Exception; {:try_start_10b .. :try_end_113} :catch_178

    move-object/from16 v6, v18

    :try_start_115
    invoke-interface {v3, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "tg_last_time"

    iget-wide v7, v1, Lcom/ssjj/fnsdk/core/bc;->g:J

    invoke-interface {v3, v5, v7, v8}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "tg_url"

    invoke-interface {v3, v5, v15}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "tg_qrcode"

    invoke-interface {v3, v5, v12}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v5, "tg_qrdata"

    invoke-interface {v3, v5, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "tg_fullurl"

    invoke-interface {v2, v3, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "tg_fullurl_qrdata"

    invoke-interface {v2, v3, v11}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "tg_iconurl"

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "tg_title"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "tg_desc"

    invoke-interface {v0, v2, v14}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, v1, Lcom/ssjj/fnsdk/core/bc;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;
    :try_end_156
    .catch Ljava/lang/Exception; {:try_start_115 .. :try_end_156} :catch_16a

    move-object/from16 v3, v17

    const/4 v2, 0x0

    :try_start_159
    invoke-interface {v0, v2, v3, v10}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    :try_end_15c
    .catch Ljava/lang/Exception; {:try_start_159 .. :try_end_15c} :catch_1a9

    :try_start_15c
    iget-object v0, v1, Lcom/ssjj/fnsdk/core/bc;->a:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Z)V
    :try_end_162
    .catch Ljava/lang/Exception; {:try_start_15c .. :try_end_162} :catch_167

    move-object/from16 v0, v19

    const/4 v14, 0x1

    goto/16 :goto_1f1

    :catch_167
    move-exception v0

    const/4 v14, 0x1

    goto :goto_1b0

    :catch_16a
    move-exception v0

    goto :goto_180

    :cond_16c
    move-object/from16 v1, p0

    move-object/from16 v3, v17

    move-object/from16 v6, v18

    const/4 v2, 0x0

    goto :goto_1a5

    :catch_174
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_179

    :catch_178
    move-exception v0

    :goto_179
    move-object/from16 v3, v17

    move-object/from16 v6, v18

    goto :goto_1ae

    :catch_17e
    move-exception v0

    move-object v6, v11

    :goto_180
    move-object/from16 v3, v17

    goto :goto_1ae

    :cond_183
    move-object v6, v11

    move-object v3, v13

    const/4 v2, 0x0

    :try_start_186
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ") "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "msg"

    invoke-virtual {v15, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19
    :try_end_1a5
    .catch Ljava/lang/Exception; {:try_start_186 .. :try_end_1a5} :catch_1a9

    :goto_1a5
    move-object/from16 v0, v19

    const/4 v14, 0x0

    goto :goto_1f1

    :catch_1a9
    move-exception v0

    goto :goto_1af

    :catch_1ab
    move-exception v0

    move-object v6, v11

    move-object v3, v13

    :goto_1ae
    const/4 v2, 0x0

    :goto_1af
    const/4 v14, 0x0

    :goto_1b0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v4, p1

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "get "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/ssjj/fnsdk/core/bc;->h:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " url err: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    move-object/from16 v0, v19

    :goto_1f1
    if-nez v14, :cond_22b

    iget-object v2, v1, Lcom/ssjj/fnsdk/core/bc;->e:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v2, v1, Lcom/ssjj/fnsdk/core/bc;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    invoke-interface {v2, v4, v0, v10}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_22b

    :cond_214
    :goto_214
    move-object v6, v11

    move-object v3, v13

    const/4 v4, 0x1

    iget-object v0, v1, Lcom/ssjj/fnsdk/core/bc;->e:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v6, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, v1, Lcom/ssjj/fnsdk/core/bc;->d:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const-string v2, "\u8fd4\u56de\u503c\u4e3a\u7a7a"

    invoke-interface {v0, v4, v2, v10}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_22b
    :goto_22b
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/bc;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/bc;->a(Ljava/lang/String;)V

    return-void
.end method
