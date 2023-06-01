.class public Lcom/ssjj/fnsdk/core/share/ShareStat;
.super Ljava/lang/Object;


# static fields
.field public static final STATUS_CLICK_COPY_LINK:I = 0x5

.field public static final STATUS_CLICK_INVITE_FRIEND_BUTTON:I = 0x4

.field public static final STATUS_FAIL:I = -0x9

.field public static final STATUS_GET_CONFIG_FAIL:I = -0x65

.field public static final STATUS_GET_PRICE_CONFIG_FAIL:I = -0x67

.field public static final STATUS_OPEN_APP_FROM_BROSWER:I = 0xa

.field public static final STATUS_SAVE_IMAGE_TO_LOCAL:I = 0x3

.field public static final STATUS_SHARE_LIST:I = 0x1

.field public static final STATUS_SHARE_LIST_BACK:I = -0x1

.field public static final STATUS_SHARE_OUT:I = 0x2

.field public static final STATUS_SHARE_OUT_CANCEL:I = -0x2

.field public static final STATUS_SHARE_OUT_CANCEL_NOT_INSTALL_APP:I = -0x66

.field public static final STATUS_SUCC:I = 0x9

.field private static a:Lcom/ssjj/fnsdk/core/share/ShareStat;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/ssjj/fnsdk/core/share/ShareStat;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/share/ShareStat;-><init>()V

    sput-object v0, Lcom/ssjj/fnsdk/core/share/ShareStat;->a:Lcom/ssjj/fnsdk/core/share/ShareStat;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ssjj/fnsdk/core/share/ShareStat;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/core/share/ShareStat;->a:Lcom/ssjj/fnsdk/core/share/ShareStat;

    return-object v0
.end method


# virtual methods
.method public shareStat(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/FNShareItem;I)V
    .registers 5

    const-string v0, ""

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/ssjj/fnsdk/core/share/ShareStat;->shareStat(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/FNShareItem;ILjava/lang/String;)V

    return-void
.end method

.method public shareStat(Landroid/content/Context;Lcom/ssjj/fnsdk/core/share/FNShareItem;ILjava/lang/String;)V
    .registers 21

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    move/from16 v2, p3

    if-nez v0, :cond_e

    const-string v0, "shareStat cancel, item is null!!"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    return-void

    :cond_e
    iget-object v3, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->uid:Ljava/lang/String;

    iget-object v4, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->roleId:Ljava/lang/String;

    iget-object v5, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->roleName:Ljava/lang/String;

    iget-object v6, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->serverId:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "shareStat, uid = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", share "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->shareType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->shareTo:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->shareScene:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v7, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v7}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    :try_start_51
    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNPid()Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNGid()Ljava/lang/String;

    move-result-object v9

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const-string v12, "fnpid"

    invoke-virtual {v7, v12, v8}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "fnpidraw"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getRawFNPid()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v12, v13}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "game_id"

    invoke-virtual {v7, v12, v9}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "uid"

    invoke-virtual {v7, v12, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "server_id"

    invoke-virtual {v7, v12, v6}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "role_id"

    invoke-virtual {v7, v12, v4}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "role_name"

    invoke-virtual {v7, v12, v5}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "share_to"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->shareTo:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v5, v12}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "share_type"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->shareType:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v5, v12}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "share_scene"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->shareScene:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v5, v12}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "share_action"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->action:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v5, v12}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "status"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v5, v12}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "happened_time"

    invoke-virtual {v7, v5, v11}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "did"

    invoke-virtual {v7, v5, v10}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->shareTo:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->shareType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/ssjj/fnsdk/core/share/FNShareItem;->shareScene:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "sign"

    invoke-virtual {v7, v3, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/ssjj/fnsdk/core/share/FNShareItem;->keys()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_18b

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_18b

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_15c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_163

    goto :goto_18b

    :cond_163
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Lcom/ssjj/fnsdk/core/share/FNShareItem;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v4, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15c

    :cond_18b
    :goto_18b
    const-string v0, "channel"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "channelSy"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getSYChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fillParam(Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)V

    const-string v0, "deviceType"

    const-string v2, "android"

    invoke-virtual {v7, v0, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "err_msg"
    :try_end_1ad
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_1ad} :catch_1f9

    const-string v2, ""

    if-nez p4, :cond_1b3

    move-object v3, v2

    goto :goto_1b5

    :cond_1b3
    move-object/from16 v3, p4

    :goto_1b5
    :try_start_1b5
    invoke-virtual {v7, v0, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mno"

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getMno()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nm"

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getNm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v0, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "pkgName"

    if-nez v1, :cond_1d8

    move-object v3, v2

    goto :goto_1dc

    :cond_1d8
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_1dc
    invoke-virtual {v7, v0, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v3, :cond_1e6

    goto :goto_1e8

    :cond_1e6
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_1e8
    invoke-virtual {v7, v0, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appVersion"

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v0, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f8
    .catch Ljava/lang/Exception; {:try_start_1b5 .. :try_end_1f8} :catch_1f9

    goto :goto_1fa

    :catch_1f9
    move-exception v0

    :goto_1fa
    sget-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_SHARE_STAT:Ljava/lang/String;

    new-instance v2, Lcom/ssjj/fnsdk/core/share/j;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v1, v0, v7}, Lcom/ssjj/fnsdk/core/share/j;-><init>(Lcom/ssjj/fnsdk/core/share/ShareStat;Landroid/content/Context;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/ssjj/fnsdk/core/share/j;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
