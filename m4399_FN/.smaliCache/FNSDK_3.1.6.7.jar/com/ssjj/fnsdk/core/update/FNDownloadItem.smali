.class public Lcom/ssjj/fnsdk/core/update/FNDownloadItem;
.super Ljava/lang/Object;


# static fields
.field public static final PARAM_KEY_ITEM:Ljava/lang/String; = "item"


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ssjj/fnsdk/core/update/PatchInfo;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 22

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string v0, "patch"

    const-string v3, "channel_type"

    const-string v4, "btn_val"

    const-string v5, "jump_link"

    const-string v6, "btn_type"

    const-string v7, "btn_text"

    const-string v8, "packageSize"

    const-string v9, "sign"

    const-string v10, "updateDesc"

    const-string v11, "forceUpdate"

    const-string v12, "downloadUrl"

    const-string v13, "versionName"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v14, ""

    iput-object v14, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->f:Ljava/lang/String;

    iput-object v14, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->g:Ljava/lang/String;

    iput-object v14, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->h:Ljava/lang/String;

    const-string v15, "1"

    iput-object v15, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->i:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v0, "0"

    iput-object v0, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->j:Ljava/lang/String;

    iput-object v14, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->k:Ljava/lang/String;

    iput-object v14, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->l:Ljava/lang/String;

    iput-object v14, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->m:Ljava/lang/String;

    iput-object v14, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->a:Ljava/lang/String;

    iput-object v14, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->b:Ljava/lang/String;

    iput-object v14, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->c:Ljava/lang/String;

    iput-object v14, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->d:Ljava/lang/String;

    move-object/from16 v17, v0

    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->e:Z

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->n:Z

    iput-object v14, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->p:Ljava/lang/String;

    iput-object v14, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->q:Ljava/lang/String;

    :try_start_4b
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_5b

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_5d

    :cond_5b
    move-object/from16 v13, v17

    :goto_5d
    iput-object v13, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->j:Ljava/lang/String;

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6a

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_6b

    :cond_6a
    move-object v12, v14

    :goto_6b
    iput-object v12, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->f:Ljava/lang/String;

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_78

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_79

    :cond_78
    move-object v11, v15

    :goto_79
    iput-object v11, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->i:Ljava/lang/String;

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_86

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_87

    :cond_86
    move-object v10, v14

    :goto_87
    iput-object v10, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->g:Ljava/lang/String;

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_94

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto :goto_95

    :cond_94
    move-object v9, v14

    :goto_95
    iput-object v9, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->h:Ljava/lang/String;

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_a2

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_a3

    :cond_a2
    move-object v8, v14

    :goto_a3
    iput-object v8, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->k:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_b0

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto :goto_b1

    :cond_b0
    move-object v7, v14

    :goto_b1
    iput-object v7, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->a:Ljava/lang/String;

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_be

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_bf

    :cond_be
    move-object v6, v14

    :goto_bf
    iput-object v6, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->c:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_cc

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_cd

    :cond_cc
    move-object v5, v14

    :goto_cd
    iput-object v5, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->b:Ljava/lang/String;

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_da

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_db

    :cond_da
    move-object v4, v14

    :goto_db
    iput-object v4, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->d:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_e7

    iget-object v4, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->d:Ljava/lang/String;

    iput-object v4, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->b:Ljava/lang/String;

    :cond_e7
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_f3

    :cond_f2
    move-object v3, v14

    :goto_f3
    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->e:Z

    move-object/from16 v3, v16

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10e

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    move-object/from16 v3, p1

    invoke-direct {v1, v3, v0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->a(Landroid/content/Context;Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->o:Ljava/util/List;

    goto :goto_110

    :cond_10e
    move-object/from16 v3, p1

    :goto_110
    invoke-direct/range {p0 .. p0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->x()Z

    move-result v0
    :try_end_114
    .catch Ljava/lang/Exception; {:try_start_4b .. :try_end_114} :catch_229

    const-string v5, "_"

    const-string v6, ".apk"

    if-eqz v0, :cond_1af

    :try_start_11a
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->b(Ljava/lang/String;)V

    invoke-static/range {p1 .. p1}, Lcom/ssjj/fnsdk/core/UpdateUtil;->checkSD(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_145

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/Download_Game"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->b(Ljava/lang/String;)V

    :cond_145
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "download saveDir: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_165

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    :cond_165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->f:Ljava/lang/String;

    invoke-direct {v1, v3}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->getInstance()Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->getRawApkMd5()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->l:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->l:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ".temp"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->m:Ljava/lang/String;

    :cond_1af
    invoke-direct/range {p0 .. p0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->A()Z

    move-result v0

    if-eqz v0, :cond_1c9

    invoke-virtual/range {p0 .. p0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->hasPatch()Z

    move-result v0

    if-eqz v0, :cond_1c9

    invoke-direct/range {p0 .. p0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->y()Z

    move-result v0

    if-eqz v0, :cond_1c9

    invoke-direct/range {p0 .. p0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->z()Z

    move-result v0

    if-eqz v0, :cond_1c9

    const/4 v0, 0x1

    goto :goto_1ca

    :cond_1c9
    const/4 v0, 0x0

    :goto_1ca
    iput-boolean v0, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->n:Z

    if-eqz v0, :cond_20e

    iget-object v0, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->o:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    iget-object v0, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v7, 0x1

    sub-int/2addr v3, v7

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ssjj/fnsdk/core/update/PatchInfo;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->apkSavePath:Ljava/lang/String;

    invoke-virtual {v7, v6, v14}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->getInstance()Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;

    move-result-object v5

    invoke-virtual {v5}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateMgr;->getRawApkMd5()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->p:Ljava/lang/String;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->newMd5:Ljava/lang/String;

    iput-object v0, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->q:Ljava/lang/String;

    :cond_20e
    iget-boolean v0, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->n:Z

    if-eqz v0, :cond_21d

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->b(Z)Z

    move-result v0

    if-eqz v0, :cond_250

    const/4 v0, 0x0

    iput-boolean v0, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->n:Z

    goto :goto_250

    :cond_21d
    if-eqz v4, :cond_250

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->c(Z)Z

    move-result v3

    if-eqz v3, :cond_250

    iput-boolean v0, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->n:Z
    :try_end_228
    .catch Ljava/lang/Exception; {:try_start_11a .. :try_end_228} :catch_229

    goto :goto_250

    :catch_229
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getUpdateInfo err: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    :cond_250
    :goto_250
    iget-object v0, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_25b

    const-string v0, "\u53d1\u73b0\u65b0\u7248\u672c"

    goto :goto_275

    :cond_25b
    iget-object v0, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->g:Ljava/lang/String;

    const-string v2, "<br />"

    const-string v3, "<br/>"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->g:Ljava/lang/String;

    const-string v2, "<br/>\n"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->g:Ljava/lang/String;

    const-string v2, "\n"

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :goto_275
    iput-object v0, v1, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->g:Ljava/lang/String;

    return-void
.end method

.method private A()Z
    .registers 4

    :try_start_0
    invoke-static {}, Lcom/ssjj/fnsdk/core/update/FNUpdateJni;->init()Z

    move-result v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_5

    goto :goto_7

    :catchall_5
    move-exception v0

    const/4 v0, 0x0

    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Has smart update so ? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return v0
.end method

.method private a(J)J
    .registers 6

    const-wide/32 v0, 0x6400000

    cmp-long v2, p1, v0

    if-gez v2, :cond_a

    const-wide/16 p1, 0x0

    return-wide p1

    :cond_a
    const-wide/16 v0, 0xa

    div-long/2addr p1, v0

    return-wide p1
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private a(Landroid/content/Context;Lorg/json/JSONArray;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/ssjj/fnsdk/core/update/PatchInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_29

    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-nez v1, :cond_e

    goto :goto_29

    :cond_e
    const/4 v1, 0x0

    :goto_f
    :try_start_f
    invoke-virtual {p2}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lt v1, v2, :cond_16

    goto :goto_29

    :cond_16
    new-instance v2, Lcom/ssjj/fnsdk/core/update/PatchInfo;

    invoke-virtual {p2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/ssjj/fnsdk/core/update/PatchInfo;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_22} :catch_25

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :catch_25
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_29
    :goto_29
    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .registers 12

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/ssjj/fnsdk/core/update/o;

    invoke-direct {p1, p0}, Lcom/ssjj/fnsdk/core/update/o;-><init>(Lcom/ssjj/fnsdk/core/update/FNDownloadItem;)V

    invoke-virtual {v0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_2e

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    array-length v2, p1

    const/4 v3, 0x0

    :goto_16
    if-lt v3, v2, :cond_19

    goto :goto_2e

    :cond_19
    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    sub-long v5, v0, v5

    const-wide/32 v7, 0x240c8400

    cmp-long v9, v5, v7

    if-lez v9, :cond_2b

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_2e
    :goto_2e
    return-void
.end method

.method private b(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->l:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3c

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->l:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_3c

    :cond_1d
    if-nez p1, :cond_21

    const/4 p1, 0x1

    return p1

    :cond_21
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->h:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2a

    return v1

    :cond_2a
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->h:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/util/Md5Utils;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3c
    :goto_3c
    return v1
.end method

.method private c(Z)Z
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->p:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3c

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3c

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->p:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1d

    goto :goto_3c

    :cond_1d
    if-nez p1, :cond_21

    const/4 p1, 0x1

    return p1

    :cond_21
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->q:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2a

    return v1

    :cond_2a
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->q:Ljava/lang/String;

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->p:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/update/util/Md5Utils;->md5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_3c
    :goto_3c
    return v1
.end method

.method private n()J
    .registers 3

    :try_start_0
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_7

    goto :goto_a

    :catch_7
    move-exception v0

    const-wide/16 v0, 0x0

    :goto_a
    return-wide v0
.end method

.method private o()J
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_f

    return-wide v1

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ssjj/fnsdk/core/update/PatchInfo;

    :try_start_15
    iget-wide v3, v3, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchSize:J
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_17} :catch_19

    add-long/2addr v1, v3

    goto :goto_8

    :catch_19
    move-exception v3

    goto :goto_8
.end method

.method private p()J
    .registers 7

    const-wide/16 v0, 0x0

    :try_start_2
    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->k:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_8} :catch_1d

    :try_start_8
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->m:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_19} :catch_1b

    sub-long/2addr v2, v4

    goto :goto_1f

    :catch_1b
    move-exception v4

    goto :goto_1f

    :catch_1d
    move-exception v2

    move-wide v2, v0

    :cond_1f
    :goto_1f
    cmp-long v4, v2, v0

    if-gez v4, :cond_24

    goto :goto_25

    :cond_24
    move-wide v0, v2

    :goto_25
    return-wide v0
.end method

.method private q()J
    .registers 11

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_16

    cmp-long v0, v3, v1

    if-gez v0, :cond_14

    goto :goto_15

    :cond_14
    move-wide v1, v3

    :goto_15
    return-wide v1

    :cond_16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ssjj/fnsdk/core/update/PatchInfo;

    :try_start_1c
    iget-wide v6, v5, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchSize:J

    invoke-virtual {v5}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->getDownloadSize()J

    move-result-wide v8
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_22} :catch_25

    sub-long/2addr v6, v8

    add-long/2addr v3, v6

    goto :goto_9

    :catch_25
    move-exception v5

    goto :goto_9
.end method

.method private r()V
    .registers 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_10
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_20
    return-void
.end method

.method private s()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->o:Ljava/util/List;

    if-eqz v0, :cond_21

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_21

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_17

    goto :goto_21

    :cond_17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/update/PatchInfo;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->deleteCache()V

    goto :goto_10

    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->p:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_39

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->p:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_39
    return-void
.end method

.method private t()Z
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->m:Ljava/lang/String;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1d

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    return v0

    :cond_1d
    const/4 v0, 0x0

    return v0
.end method

.method private u()Z
    .registers 8

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->o:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_38

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_c

    goto :goto_38

    :cond_c
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_19

    return v1

    :cond_19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ssjj/fnsdk/core/update/PatchInfo;

    new-instance v3, Ljava/io/File;

    iget-object v4, v2, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchSavePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v3

    iget-wide v5, v2, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchSize:J

    cmp-long v2, v3, v5

    if-gez v2, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_38
    :goto_38
    return v1
.end method

.method private v()J
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_b

    return-wide v1

    :cond_b
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->k:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->m:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_29

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->m:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v1

    :cond_29
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v2, v0

    return-wide v2
.end method

.method private w()J
    .registers 9

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->o:Ljava/util/List;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_38

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_d

    goto :goto_38

    :cond_d
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-wide v3, v1

    :cond_14
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_1c

    sub-long/2addr v1, v3

    return-wide v1

    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ssjj/fnsdk/core/update/PatchInfo;

    iget-wide v6, v5, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchSize:J

    add-long/2addr v1, v6

    new-instance v6, Ljava/io/File;

    iget-object v5, v5, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchSavePath:Ljava/lang/String;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v5

    add-long/2addr v3, v5

    goto :goto_14

    :cond_38
    :goto_38
    return-wide v1
.end method

.method private x()Z
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->f:Ljava/lang/String;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2c

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->f:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".apk"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2c

    const/4 v0, 0x1

    return v0

    :cond_2c
    const/4 v0, 0x0

    return v0
.end method

.method private y()Z
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v0, 0x1

    return v0

    :cond_e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ssjj/fnsdk/core/update/PatchInfo;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->isValid()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v0, 0x0

    return v0
.end method

.method private z()Z
    .registers 10

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->o()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->n()J

    move-result-wide v2

    sub-long v4, v0, v2

    invoke-direct {p0, v2, v3}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->a(J)J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gtz v8, :cond_14

    const/4 v4, 0x1

    goto :goto_15

    :cond_14
    const/4 v4, 0x0

    :goto_15
    if-nez v4, :cond_33

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\u5c0f\u4e8e\u9600\u503c\uff0c\u5207\u6362\u5230\u6574\u66f4\uff0cpatchsSize="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", apkSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :cond_33
    return v4
.end method


# virtual methods
.method a(I)V
    .registers 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_6

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->n:Z

    goto :goto_9

    :cond_6
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->n:Z

    :goto_9
    return-void
.end method

.method a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->n:Z

    return v0
.end method

.method a(Z)Z
    .registers 3

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->n:Z

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->c(Z)Z

    move-result p1

    return p1

    :cond_9
    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->b(Z)Z

    move-result p1

    return p1
.end method

.method b()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->n:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->p:Ljava/lang/String;

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->l:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->m:Ljava/lang/String;

    return-object v0
.end method

.method d()Ljava/lang/String;
    .registers 3

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->n:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ssjj/fnsdk/core/update/PatchInfo;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->newMd5:Ljava/lang/String;

    return-object v0

    :cond_17
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->h:Ljava/lang/String;

    return-object v0
.end method

.method e()Ljava/lang/String;
    .registers 3

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->n:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ssjj/fnsdk/core/update/PatchInfo;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->newVer:Ljava/lang/String;

    return-object v0

    :cond_17
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->j:Ljava/lang/String;

    return-object v0
.end method

.method f()Ljava/lang/String;
    .registers 3

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->n:Z

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->o:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ssjj/fnsdk/core/update/PatchInfo;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/update/PatchInfo;->patchUrl:Ljava/lang/String;

    return-object v0

    :cond_17
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->f:Ljava/lang/String;

    return-object v0
.end method

.method g()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadSize()J
    .registers 3

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->n:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->q()J

    move-result-wide v0

    return-wide v0

    :cond_9
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public getHadDownloadedSize()J
    .registers 6

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->n:Z

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_13

    return-wide v1

    :cond_13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ssjj/fnsdk/core/update/PatchInfo;

    invoke-virtual {v3}, Lcom/ssjj/fnsdk/core/update/PatchInfo;->getDownloadSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_c

    :cond_1f
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->m:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_30

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    :cond_30
    return-wide v1
.end method

.method public getTotalSize()J
    .registers 3

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->n:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->o()J

    move-result-wide v0

    return-wide v0

    :cond_9
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method h()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ssjj/fnsdk/core/update/PatchInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->o:Ljava/util/List;

    return-object v0
.end method

.method public hasPatch()Z
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method i()V
    .registers 2

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->n:Z

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->s()V

    goto :goto_b

    :cond_8
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->r()V

    :goto_b
    return-void
.end method

.method public isValidUrl()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->n:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->y()Z

    move-result v0

    return v0

    :cond_9
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->x()Z

    move-result v0

    return v0
.end method

.method j()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->n:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->u()Z

    move-result v0

    return v0

    :cond_9
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->t()Z

    move-result v0

    return v0
.end method

.method k()Z
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->j:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_54

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_54

    const-string v0, "0"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_54

    const-string v0, "0.0"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_54

    const-string v0, "0.0.0"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_54

    const-string v0, "0.0.0.0"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_54

    const-string v0, "0.0.0.0.0"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    goto :goto_54

    :cond_42
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getAppVersion()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->j:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/ssjj/fnsdk/core/UpdateUtil;->cmpVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_54

    const/4 v0, 0x1

    return v0

    :cond_54
    :goto_54
    return v1
.end method

.method l()Z
    .registers 3

    const-string v0, "1"

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method m()J
    .registers 3

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->n:Z

    if-eqz v0, :cond_9

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->w()J

    move-result-wide v0

    return-wide v0

    :cond_9
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->v()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->j:Ljava/lang/String;

    return-object v0
.end method
