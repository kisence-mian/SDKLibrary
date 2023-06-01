.class public Lcom/ssjj/fnsdk/core/http/FNHttpWrapper;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ssjj/fnsdk/core/SsjjFNException;
        }
    .end annotation

    move-object/from16 v1, p1

    if-eqz v1, :cond_152

    const-string v0, "Zm5zZGsuNDM5OXN5LmNvbQ=="

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Zm5zZGstYmdwLjQzOTlzeS5jb20="

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_BGPS:[[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_33

    sget-object v2, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_BGPS:[[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_33

    sget-object v2, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_BGPS:[[Ljava/lang/String;

    array-length v5, v2

    const/4 v6, 0x0

    :goto_23
    if-lt v6, v5, :cond_26

    goto :goto_33

    :cond_26
    aget-object v7, v2, v6

    aget-object v8, v7, v3

    aget-object v7, v7, v4

    invoke-virtual {v0, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    :cond_33
    :goto_33
    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v5, v0, 0x1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v6, 0x1f4

    invoke-virtual {v0, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v7, v0, 0x1f4

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v6, v0, 0x3e8

    move/from16 v3, p6

    move/from16 v16, p7

    move-object v14, v1

    const/4 v15, 0x0

    :goto_58
    move-object/from16 v8, p0

    move-object v9, v14

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p5

    move-object v4, v14

    move v14, v3

    move/from16 v17, v7

    move v7, v15

    move/from16 v15, v16

    :try_start_6a
    invoke-static/range {v8 .. v15}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->openUrlOnceWithTimeOut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0
    :try_end_6e
    .catch Lcom/ssjj/fnsdk/core/SsjjFNException; {:try_start_6a .. :try_end_6e} :catch_14f
    .catchall {:try_start_6a .. :try_end_6e} :catchall_6f

    return-object v0

    :catchall_6f
    move-exception v0

    move-object v8, v0

    :try_start_71
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "net err: "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " -> "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/net/URL;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V
    :try_end_ac
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_ac} :catch_ad

    goto :goto_ae

    :catch_ad
    move-exception v0

    :goto_ae
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    invoke-static/range {p0 .. p0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->checkNet2(Landroid/content/Context;)Z

    move-result v0

    if-eqz v5, :cond_bf

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_bf

    goto/16 :goto_135

    :cond_bf
    const/4 v9, 0x1

    if-lt v7, v9, :cond_c8

    const/16 v3, 0x2710

    move-object v14, v2

    const/16 v4, 0x2710

    goto :goto_ce

    :cond_c8
    add-int/2addr v3, v6

    add-int v16, v16, v6

    move-object v14, v4

    move/from16 v4, v16

    :goto_ce
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "retry, connTimeout="

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", readTimeout="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    add-int/lit8 v15, v7, 0x1

    const/4 v7, 0x3

    if-ge v15, v7, :cond_131

    const-string v10, "retry delay "

    if-nez v0, :cond_110

    :try_start_f3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x9c4

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "ms\uff0c\u65e0\u7f51\u7edc..."

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    move/from16 v10, v17

    const/16 v0, 0x9c4

    goto :goto_129

    :cond_110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    :try_end_115
    .catch Ljava/lang/Exception; {:try_start_f3 .. :try_end_115} :catch_130

    move/from16 v10, v17

    :try_start_117
    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, "ms"

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    move v0, v10

    :goto_129
    int-to-long v11, v0

    invoke-static {v11, v12}, Ljava/lang/Thread;->sleep(J)V
    :try_end_12d
    .catch Ljava/lang/Exception; {:try_start_117 .. :try_end_12d} :catch_12e

    goto :goto_133

    :catch_12e
    move-exception v0

    goto :goto_133

    :catch_130
    move-exception v0

    :cond_131
    move/from16 v10, v17

    :goto_133
    if-lt v15, v7, :cond_149

    :goto_135
    invoke-static/range {p0 .. p0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->checkNet2(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_143

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNException;

    const-string v1, "\u7f51\u7edc\u4e0d\u53ef\u7528\u6216\u65e0\u7f51\u7edc"

    invoke-direct {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_143
    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNException;

    invoke-direct {v0, v8}, Lcom/ssjj/fnsdk/core/SsjjFNException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_149
    move/from16 v16, v4

    move v7, v10

    const/4 v4, 0x1

    goto/16 :goto_58

    :catch_14f
    move-exception v0

    move-object v1, v0

    throw v1

    :cond_152
    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNException;

    const-string v1, "url is null"

    invoke-direct {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
