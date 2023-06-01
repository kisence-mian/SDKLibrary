.class public Lcom/ssjj/fnsdk/lib/impl/d;
.super Lcom/ssjj/fnsdk/lib/core/ApiClass;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/lib/core/ApiClass;-><init>()V

    return-void
.end method

.method private a(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_5

    const-string p1, "\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    return-object p1

    :cond_5
    const-string v0, "shareType"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/lib/impl/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const-string p1, "shareType\u4e0d\u80fd\u4e3a\u7a7a"

    return-object p1

    :cond_14
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ssjj/fnsdk/lib/impl/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    const-string v0, "roleId"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ssjj/fnsdk/lib/impl/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_42

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getRoleId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_42
    const-string v0, "roleName"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ssjj/fnsdk/lib/impl/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_59

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getRoleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_59
    const-string v0, "serverId"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ssjj/fnsdk/lib/impl/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_70

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getServerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_70
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Ljava/lang/String;)Z
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


# virtual methods
.method public getShareToSupportList(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ssjj/fnsdk/lib/sdk/FNParam;",
            "Lcom/ssjj/fnsdk/lib/sdk/FNBack;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/FNShare;->getInstance()Lcom/ssjj/fnsdk/core/share/FNShare;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/share/FNShare;->getSurportList()Ljava/util/List;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getShareToSupportList -> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_13

    const/4 v1, 0x0

    goto :goto_17

    :cond_13
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    if-eqz p2, :cond_2f

    new-instance v0, Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;-><init>()V

    const/4 v1, 0x1

    const-string v2, "succ"

    invoke-interface {p2, v1, v2, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_2f
    return-object p1
.end method

.method public init(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 3

    invoke-static {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getActivity(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/FNShare;->getInstance()Lcom/ssjj/fnsdk/core/share/FNShare;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ssjj/fnsdk/core/share/FNShare;->init(Landroid/app/Activity;)V

    return-void
.end method

.method public release(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 3

    invoke-static {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getActivity(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/FNShare;->getInstance()Lcom/ssjj/fnsdk/core/share/FNShare;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ssjj/fnsdk/core/share/FNShare;->release(Landroid/app/Activity;)V

    return-void
.end method

.method public shareStat(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/lib/impl/d;->a(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/lib/impl/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    if-eqz p2, :cond_2d

    new-instance v1, Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;-><init>()V

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->fromJson(Ljava/lang/String;)V

    :cond_1a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "\u5206\u4eab\u5931\u8d25 "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-interface {p2, v0, p1, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_2d
    return-void

    :cond_2e
    invoke-static {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getActivity(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/ssjj/fnsdk/core/share/FNShareItem;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/share/FNShareItem;-><init>()V

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ssjj/fnsdk/core/share/FNShareItem;->fromJson(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "status"

    invoke-virtual {p1, v3, v2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/ShareStat;->getInstance()Lcom/ssjj/fnsdk/core/share/ShareStat;

    move-result-object v2

    invoke-virtual {v2, v0, v1, p1}, Lcom/ssjj/fnsdk/core/share/ShareStat;->shareStat(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/FNShareItem;I)V

    if-eqz p2, :cond_5f

    const-string p1, "succ"

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p2, v1, p1, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_5f
    return-void
.end method

.method public shareTo(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/lib/impl/d;->a(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/lib/impl/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    if-eqz p2, :cond_2d

    new-instance v1, Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;-><init>()V

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->fromJson(Ljava/lang/String;)V

    :cond_1a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "\u5206\u4eab\u5931\u8d25 "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-interface {p2, v0, p1, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_2d
    return-void

    :cond_2e
    :try_start_2e
    const-string v0, "shareToList"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->getObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_36
    .catchall {:try_start_2e .. :try_end_36} :catchall_37

    goto :goto_39

    :catchall_37
    move-exception v0

    const/4 v0, 0x0

    :goto_39
    if-nez v0, :cond_46

    :try_start_3b
    const-string v1, "list"

    invoke-virtual {p1, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->getObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_45

    move-object v0, v1

    goto :goto_46

    :catchall_45
    move-exception v1

    :cond_46
    :goto_46
    if-eqz v0, :cond_4c

    invoke-virtual {p0, p1, p2}, Lcom/ssjj/fnsdk/lib/impl/d;->shareToList(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V

    return-void

    :cond_4c
    new-instance v0, Lcom/ssjj/fnsdk/lib/impl/e;

    invoke-direct {v0, p0, p2}, Lcom/ssjj/fnsdk/lib/impl/e;-><init>(Lcom/ssjj/fnsdk/lib/impl/d;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V

    const-string p2, "shareTo"

    invoke-virtual {p1, p2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getActivity(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/ssjj/fnsdk/core/share/FNShareItem;

    invoke-direct {v2}, Lcom/ssjj/fnsdk/core/share/FNShareItem;-><init>()V

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/ssjj/fnsdk/core/share/FNShareItem;->fromJson(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/FNShare;->getInstance()Lcom/ssjj/fnsdk/core/share/FNShare;

    move-result-object p1

    invoke-virtual {p1, v1, p2, v2, v0}, Lcom/ssjj/fnsdk/core/share/FNShare;->share(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/share/FNShareItem;Lcom/ssjj/fnsdk/core/share/FNShareListener;)V

    return-void
.end method

.method public shareToList(Lcom/ssjj/fnsdk/lib/sdk/FNParam;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V
    .registers 11

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/lib/impl/d;->a(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/lib/impl/d;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2e

    if-eqz p2, :cond_2d

    new-instance v1, Lcom/ssjj/fnsdk/lib/sdk/FNParam;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;-><init>()V

    if-eqz p1, :cond_1a

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->fromJson(Ljava/lang/String;)V

    :cond_1a
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "\u5206\u4eab\u5931\u8d25 "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x1

    invoke-interface {p2, v0, p1, v1}, Lcom/ssjj/fnsdk/lib/sdk/FNBack;->onBack(ILjava/lang/String;Lcom/ssjj/fnsdk/lib/sdk/FNParam;)V

    :cond_2d
    return-void

    :cond_2e
    new-instance v7, Lcom/ssjj/fnsdk/lib/impl/f;

    invoke-direct {v7, p0, p2}, Lcom/ssjj/fnsdk/lib/impl/f;-><init>(Lcom/ssjj/fnsdk/lib/impl/d;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "enableShareDialogCallback"

    invoke-virtual {p1, v1, v0}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4e

    new-instance v0, Lcom/ssjj/fnsdk/lib/impl/g;

    invoke-direct {v0, p0, p2}, Lcom/ssjj/fnsdk/lib/impl/g;-><init>(Lcom/ssjj/fnsdk/lib/impl/d;Lcom/ssjj/fnsdk/lib/sdk/FNBack;)V

    move-object v6, v0

    goto :goto_4f

    :cond_4e
    move-object v6, v1

    :goto_4f
    invoke-static {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNSDK;->getActivity(Lcom/ssjj/fnsdk/lib/sdk/FNParam;)Landroid/app/Activity;

    move-result-object v3

    new-instance v5, Lcom/ssjj/fnsdk/core/share/FNShareItem;

    invoke-direct {v5}, Lcom/ssjj/fnsdk/core/share/FNShareItem;-><init>()V

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->toJson()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Lcom/ssjj/fnsdk/core/share/FNShareItem;->fromJson(Ljava/lang/String;)V

    :try_start_5f
    const-string p2, "shareToList"

    invoke-virtual {p1, p2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->getObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;
    :try_end_67
    .catchall {:try_start_5f .. :try_end_67} :catchall_69

    move-object v1, p2

    goto :goto_6d

    :catchall_69
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6d
    if-nez v1, :cond_7d

    :try_start_6f
    const-string p2, "shareTo"

    invoke-virtual {p1, p2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->getObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;
    :try_end_77
    .catchall {:try_start_6f .. :try_end_77} :catchall_79

    move-object v1, p2

    goto :goto_7d

    :catchall_79
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7d
    :goto_7d
    if-nez v1, :cond_8d

    :try_start_7f
    const-string p2, "list"

    invoke-virtual {p1, p2}, Lcom/ssjj/fnsdk/lib/sdk/FNParam;->getObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_87
    .catchall {:try_start_7f .. :try_end_87} :catchall_89

    move-object v1, p1

    goto :goto_8d

    :catchall_89
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_8d
    :goto_8d
    if-nez v1, :cond_99

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/FNShare;->getInstance()Lcom/ssjj/fnsdk/core/share/FNShare;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/share/FNShare;->getSurportList()Ljava/util/List;

    move-result-object p1

    move-object v4, p1

    goto :goto_9a

    :cond_99
    move-object v4, v1

    :goto_9a
    if-eqz v6, :cond_a4

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/FNShare;->getInstance()Lcom/ssjj/fnsdk/core/share/FNShare;

    move-result-object v2

    invoke-virtual/range {v2 .. v7}, Lcom/ssjj/fnsdk/core/share/FNShare;->share(Landroid/app/Activity;Ljava/util/List;Lcom/ssjj/fnsdk/core/share/FNShareItem;Lcom/ssjj/fnsdk/core/share/FNShareDialogListener;Lcom/ssjj/fnsdk/core/share/FNShareListener;)V

    goto :goto_ab

    :cond_a4
    invoke-static {}, Lcom/ssjj/fnsdk/core/share/FNShare;->getInstance()Lcom/ssjj/fnsdk/core/share/FNShare;

    move-result-object p1

    invoke-virtual {p1, v3, v4, v5, v7}, Lcom/ssjj/fnsdk/core/share/FNShare;->share(Landroid/app/Activity;Ljava/util/List;Lcom/ssjj/fnsdk/core/share/FNShareItem;Lcom/ssjj/fnsdk/core/share/FNShareListener;)V

    :goto_ab
    return-void
.end method
