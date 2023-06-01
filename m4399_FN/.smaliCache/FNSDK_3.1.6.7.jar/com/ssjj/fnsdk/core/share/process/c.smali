.class Lcom/ssjj/fnsdk/core/share/process/c;
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
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/process/ShareManager;

.field private final synthetic b:Landroid/content/Context;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Ljava/lang/String;

.field private final synthetic h:Ljava/lang/String;

.field private final synthetic i:Lcom/ssjj/fnsdk/core/SsjjFNListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/process/ShareManager;Landroid/content/Context;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 10

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/process/c;->a:Lcom/ssjj/fnsdk/core/share/process/ShareManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/process/c;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/share/process/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/share/process/c;->d:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/share/process/c;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/ssjj/fnsdk/core/share/process/c;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/ssjj/fnsdk/core/share/process/c;->g:Ljava/lang/String;

    iput-object p8, p0, Lcom/ssjj/fnsdk/core/share/process/c;->h:Ljava/lang/String;

    iput-object p9, p0, Lcom/ssjj/fnsdk/core/share/process/c;->i:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/process/c;->b:Landroid/content/Context;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/process/c;->c:Ljava/lang/String;

    const-string v1, "GET"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/process/c;->d:Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-static {p1, v0, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)Ljava/lang/String;

    move-result-object p1
    :try_end_c
    .catch Lcom/ssjj/fnsdk/core/SsjjFNException; {:try_start_0 .. :try_end_c} :catch_d

    goto :goto_12

    :catch_d
    move-exception p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNException;->printStackTrace()V

    const/4 p1, 0x0

    :goto_12
    return-object p1
.end method

.method protected a(Ljava/lang/String;)V
    .registers 14

    const-string v0, "msg"

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/share/process/c;->a:Lcom/ssjj/fnsdk/core/share/process/ShareManager;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Lcom/ssjj/fnsdk/core/share/process/ShareManager;Z)V

    new-instance v1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/16 v3, -0x65

    const-string v4, ""

    if-eqz p1, :cond_162

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1f

    goto/16 :goto_162

    :cond_1f
    const/4 v5, 0x0

    :try_start_20
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v7, "code"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_36

    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_35} :catch_db

    goto :goto_38

    :cond_36
    const-string v0, "\u83b7\u53d6\u5931\u8d25"

    :goto_38
    if-ne v7, v2, :cond_c1

    :try_start_3a
    const-string v7, "data"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, p0, Lcom/ssjj/fnsdk/core/share/process/c;->a:Lcom/ssjj/fnsdk/core/share/process/ShareManager;

    invoke-static {v7}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Lcom/ssjj/fnsdk/core/share/process/ShareManager;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->clear()V

    const/4 v7, 0x0

    :goto_4a
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-lt v7, v8, :cond_53

    const/4 p1, 0x1

    goto/16 :goto_10a

    :cond_53
    iget-object v8, p0, Lcom/ssjj/fnsdk/core/share/process/c;->a:Lcom/ssjj/fnsdk/core/share/process/ShareManager;

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Lcom/ssjj/fnsdk/core/share/process/ShareManager;Lorg/json/JSONObject;)Lcom/ssjj/fnsdk/core/share/process/ActionData;

    move-result-object v8

    iget-object v9, p0, Lcom/ssjj/fnsdk/core/share/process/c;->a:Lcom/ssjj/fnsdk/core/share/process/ShareManager;

    invoke-static {v9}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Lcom/ssjj/fnsdk/core/share/process/ShareManager;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "action = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, v8, Lcom/ssjj/fnsdk/core/share/process/ActionData;->action:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", key = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v8, Lcom/ssjj/fnsdk/core/share/process/ActionData;->list:Ljava/util/List;

    if-eqz v10, :cond_ae

    iget-object v8, v8, Lcom/ssjj/fnsdk/core/share/process/ActionData;->list:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_87
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_8e

    goto :goto_ae

    :cond_8e
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ssjj/fnsdk/core/share/process/CfgItem;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v11, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v10, Lcom/ssjj/fnsdk/core/share/process/CfgItem;->key:Ljava/lang/String;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_87

    :cond_ae
    :goto_ae
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4a

    :cond_c1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v8, "("

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_da} :catch_db

    goto :goto_109

    :catch_db
    move-exception v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ":\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v6, "get share img cfg err: "

    invoke-direct {p1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    :goto_109
    const/4 p1, 0x0

    :goto_10a
    if-nez p1, :cond_14d

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/share/FNShareFactory;->createText(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/share/FNShareItem;

    move-result-object p1

    iput-object v4, p1, Lcom/ssjj/fnsdk/core/share/FNShareItem;->shareType:Ljava/lang/String;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/share/process/c;->e:Ljava/lang/String;

    iput-object v4, p1, Lcom/ssjj/fnsdk/core/share/FNShareItem;->uid:Ljava/lang/String;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/share/process/c;->f:Ljava/lang/String;

    iput-object v4, p1, Lcom/ssjj/fnsdk/core/share/FNShareItem;->roleId:Ljava/lang/String;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/share/process/c;->g:Ljava/lang/String;

    iput-object v4, p1, Lcom/ssjj/fnsdk/core/share/FNShareItem;->roleName:Ljava/lang/String;

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/share/process/c;->h:Ljava/lang/String;

    iput-object v4, p1, Lcom/ssjj/fnsdk/core/share/FNShareItem;->serverId:Ljava/lang/String;

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/ShareStat;->getInstance()Lcom/ssjj/fnsdk/core/share/ShareStat;

    move-result-object v4

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/share/process/c;->b:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, p1, v3, v6}, Lcom/ssjj/fnsdk/core/share/ShareStat;->shareStat(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/FNShareItem;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/process/c;->i:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_18a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_18a

    :cond_14d
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/process/c;->i:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_18a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v5, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    goto :goto_18a

    :cond_162
    :goto_162
    invoke-static {v4}, Lcom/ssjj/fnsdk/core/share/FNShareFactory;->createText(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/share/FNShareItem;

    move-result-object p1

    iput-object v4, p1, Lcom/ssjj/fnsdk/core/share/FNShareItem;->shareType:Ljava/lang/String;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/process/c;->e:Ljava/lang/String;

    iput-object v0, p1, Lcom/ssjj/fnsdk/core/share/FNShareItem;->uid:Ljava/lang/String;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/process/c;->f:Ljava/lang/String;

    iput-object v0, p1, Lcom/ssjj/fnsdk/core/share/FNShareItem;->roleId:Ljava/lang/String;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/process/c;->g:Ljava/lang/String;

    iput-object v0, p1, Lcom/ssjj/fnsdk/core/share/FNShareItem;->roleName:Ljava/lang/String;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/process/c;->h:Ljava/lang/String;

    iput-object v0, p1, Lcom/ssjj/fnsdk/core/share/FNShareItem;->serverId:Ljava/lang/String;

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/ShareStat;->getInstance()Lcom/ssjj/fnsdk/core/share/ShareStat;

    move-result-object v0

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/share/process/c;->b:Landroid/content/Context;

    const-string v5, "\u8fd4\u56de\u503c\u4e3a\u7a7a"

    invoke-virtual {v0, v4, p1, v3, v5}, Lcom/ssjj/fnsdk/core/share/ShareStat;->shareStat(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/FNShareItem;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/process/c;->i:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p1, :cond_18a

    invoke-interface {p1, v2, v5, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_18a
    :goto_18a
    return-void
.end method

.method protected varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/share/process/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/share/process/c;->a(Ljava/lang/String;)V

    return-void
.end method
