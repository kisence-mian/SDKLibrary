.class public Lcom/ssjj/fnsdk/core/update/FNUpdateManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;
    }
.end annotation


# static fields
.field public static final CANCEL_FORCE_UPDATE:I = 0x8

.field public static final CANCEL_NORMAL_UPDATE:I = 0x7

.field public static final CHECK_UPDATE_FAIL:I = -0x1

.field public static final CHECK_UPDATE_FAIL_EXCEPTION:I = -0x3

.field public static final CHECK_UPDATE_FAIL_NET_ERROR:I = -0x4

.field public static final CHECK_UPDATE_FAIL_NO_NET:I = -0x2

.field public static final CHECK_UPDATE_NO_SD:I = 0xb

.field public static CODE_CHECK_HAS_UPDATE:I = 0x0

.field public static CODE_CHECK_NO_UPDATE:I = 0x0

.field public static CODE_CHECK_UPDATE_EXCEPTION:I = 0x0

.field public static CODE_CHECK_UPDATE_FAILED:I = 0x0

.field public static final HAS_FORCE_UPDATE:I = 0x4

.field public static final HAS_NORMAL_UPDATE:I = 0x3

.field public static final NO_UPDATE:I = 0x1

.field public static final PARAM_CODE:Ljava/lang/String; = "param_code"

.field public static final PARAM_DESC:Ljava/lang/String; = "desc"

.field public static final PARAM_FORCE:Ljava/lang/String; = "isForce"

.field public static final PARAM_MD5:Ljava/lang/String; = "md5"

.field public static final PARAM_MSG:Ljava/lang/String; = "param_msg"

.field public static final PARAM_SIZE:Ljava/lang/String; = "size"

.field public static final PARAM_URL:Ljava/lang/String; = "url"

.field public static final PARAM_VERSION:Ljava/lang/String; = "version"

.field public static final START_FORCE_UPDATE:I = 0x6

.field public static final START_NORMAL_UPDATE:I = 0x5

.field public static final UPDATE_FAIL_CONTINUE:I = 0x9

.field public static final UPDATE_FINISH_FAIL:I = -0x7

.field public static final UPDATE_FINISH_SUCCESS:I = 0xa

.field public static final UPDATING_FAIL:I = -0x6

.field private static a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;


# instance fields
.field private b:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

.field private c:Lcom/ssjj/fnsdk/core/SsjjFNListener;

.field private d:Z

.field private e:Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->CODE_CHECK_HAS_UPDATE:I

    const/4 v0, 0x1

    sput v0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->CODE_CHECK_NO_UPDATE:I

    const/4 v0, 0x2

    sput v0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->CODE_CHECK_UPDATE_FAILED:I

    const/16 v0, 0xb

    sput v0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->CODE_CHECK_UPDATE_EXCEPTION:I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->d:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->e:Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;)Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    return-object p0
.end method

.method private a()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->dismiss()V

    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    :cond_12
    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/update/FNDownloadItem;)V
    .registers 13

    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->getInstance()Lcom/ssjj/fnsdk/core/StatManager;

    move-result-object v0

    const-string v1, "show"

    const-string v2, "dialog_install"

    const-string v3, "fn_update"

    invoke-virtual {v0, p1, v3, v1, v2}, Lcom/ssjj/fnsdk/core/StatManager;->recordEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ssjj/fnsdk/core/update/v;

    const/4 v7, 0x1

    move-object v4, v0

    move-object v5, p0

    move-object v6, p1

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/ssjj/fnsdk/core/update/v;-><init>(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;Landroid/content/Context;ILandroid/app/Activity;Lcom/ssjj/fnsdk/core/update/FNDownloadItem;)V

    new-instance p1, Landroid/text/SpannableString;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "\u3000\u3000\u60a8\u6709\u6700\u65b0\u7248\u672c\u66f4\u65b0\u5305\uff0c\u8bf7\u7acb\u5373\u5b89\u88c5\uff0c\u4e00\u8d77\u6765\u4f53\u9a8c\u6700\u65b0\u6e38\u620f\u5185\u5bb9\u5427~\n\n"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\uff08\u5b89\u88c5\u8fc7\u7a0b\u65e0\u9700\u8017\u8d39\u6d41\u91cf\uff09"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    sget v3, Lcom/ssjj/fnsdk/core/update/ViewTheme;->colorTextHint:I

    invoke-direct {p2, v3}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v1, v2

    const/16 v2, 0x11

    invoke-virtual {p1, p2, v3, v1, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    const-string p2, "\u63d0\u793a"

    invoke-virtual {v0, p2}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setTitle(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setMsgSpan(Landroid/text/SpannableString;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    move-result-object p1

    const-string p2, "\u91cd\u65b0\u4e0b\u8f7d"

    invoke-virtual {p1, p2}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setLeftButtonText(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    move-result-object p1

    const-string p2, "\u7acb\u5373\u5b89\u88c5"

    invoke-virtual {p1, p2}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setRightButtonText(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->show()V

    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/update/FNDownloadItem;Lcom/ssjj/fnsdk/core/update/FNDialogTip;)V
    .registers 12

    if-nez p3, :cond_3

    return-void

    :cond_3
    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->l()Z

    move-result v6

    if-eqz v6, :cond_c

    const-string p2, "\u9000\u51fa\u6e38\u620f"

    goto :goto_e

    :cond_c
    const-string p2, "\u9000\u51fa\u66f4\u65b0"

    :goto_e
    invoke-virtual {p3}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->hide()V

    new-instance v7, Lcom/ssjj/fnsdk/core/update/y;

    const/4 v3, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-object v5, p1

    invoke-direct/range {v0 .. v6}, Lcom/ssjj/fnsdk/core/update/y;-><init>(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;Landroid/content/Context;ILcom/ssjj/fnsdk/core/update/FNDialogTip;Landroid/app/Activity;Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "\u7ec8\u6b62\u66f4\u65b0\u5c06\u76f4\u63a5"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\uff0c\u662f\u5426"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "\uff1f"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "\u63d0\u793a"

    invoke-virtual {v7, p3}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setTitle(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u3000\u3000"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setMsg(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    move-result-object p1

    const-string p3, "\u8fd4\u56de\u5b89\u88c5"

    invoke-virtual {p1, p3}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setLeftButtonText(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setRightButtonText(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    invoke-virtual {v7}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->show()V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/update/FNDownloadItem;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->a(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/update/FNDownloadItem;)V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/update/FNDownloadItem;Lcom/ssjj/fnsdk/core/update/FNDialogTip;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->a(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/update/FNDownloadItem;Lcom/ssjj/fnsdk/core/update/FNDialogTip;)V

    return-void
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;)Lcom/ssjj/fnsdk/core/SsjjFNListener;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->c:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    return-object p0
.end method

.method private b(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/update/FNDownloadItem;)V
    .registers 10

    new-instance v6, Lcom/ssjj/fnsdk/core/update/w;

    const/4 v3, 0x1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/ssjj/fnsdk/core/update/w;-><init>(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;Landroid/content/Context;ILandroid/app/Activity;Lcom/ssjj/fnsdk/core/update/FNDownloadItem;)V

    const-string p1, "\u63d0\u793a"

    invoke-virtual {v6, p1}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setTitle(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u3000\u3000"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\u60a8\u786e\u5b9a\u8981\u5220\u9664\u7f13\u5b58\u5305\u5e76\u4e14\u91cd\u65b0\u4e0b\u8f7d\u5417\uff1f"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setMsg(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    move-result-object p1

    const-string p2, "\u8fd4\u56de"

    invoke-virtual {p1, p2}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setLeftButtonText(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    move-result-object p1

    const-string p2, "\u786e\u5b9a"

    invoke-virtual {p1, p2}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->setRightButtonText(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/update/FNDialogTip;

    invoke-virtual {v6}, Lcom/ssjj/fnsdk/core/update/FNDialogTip;->show()V

    return-void
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/update/FNDownloadItem;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->c(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/update/FNDownloadItem;)V

    return-void
.end method

.method private c(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/update/FNDownloadItem;)V
    .registers 10

    if-nez p2, :cond_a

    const-string p1, "fnsdk"

    const-string p2, "\u663e\u793a\u5f3a\u5236\u66f4\u65b0\u63a5\u53e3\u65f6\uff0cdownItem\u4e3anull"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->a()V

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/update/FNDownloadItem;->a()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Is smart update ? "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    if-eqz v0, :cond_2b

    new-instance v0, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/update/FNSmartUpdateModel;-><init>()V

    goto :goto_30

    :cond_2b
    new-instance v0, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/update/FNUpdateModel;-><init>()V

    :goto_30
    move-object v5, v0

    new-instance v0, Lcom/ssjj/fnsdk/core/update/x;

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/ssjj/fnsdk/core/update/x;-><init>(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;Landroid/content/Context;Lcom/ssjj/fnsdk/core/update/FNDownloadItem;Lcom/ssjj/fnsdk/core/update/AbsUpdateModel;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->show()V

    return-void
.end method

.method static synthetic c(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/update/FNDownloadItem;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/update/FNDownloadItem;)V

    return-void
.end method

.method public static getInstance()Lcom/ssjj/fnsdk/core/update/FNUpdateManager;
    .registers 2

    sget-object v0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    if-nez v0, :cond_17

    const-class v0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    monitor-enter v0

    :try_start_7
    sget-object v1, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    if-nez v1, :cond_12

    new-instance v1, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;-><init>()V

    sput-object v1, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    :cond_17
    :goto_17
    sget-object v0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->a:Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    return-object v0
.end method


# virtual methods
.method public checkUpdate(Landroid/app/Activity;ZLcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 11

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/update/util/ScreenUtil;->init(Landroid/content/Context;)V

    if-eqz p1, :cond_81

    if-nez p3, :cond_9

    goto/16 :goto_81

    :cond_9
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_13

    const-string p1, "checkUpdate err: activity param is not instanceof Activity"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    return-void

    :cond_13
    :try_start_13
    const-string v0, "com.ssjj.fnsdk.platform.FNAdapterDemo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1f

    const/4 v0, 0x0

    goto :goto_20

    :cond_1f
    const/4 v0, 0x1

    :goto_20
    if-eqz v0, :cond_42

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getSsjjFNAdapter()Lcom/ssjj/fnsdk/core/SsjjFNAdapter;

    move-result-object v0

    const-string v3, "checkUpdate"

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/app/Activity;

    aput-object v6, v5, v1

    const-class v6, Lcom/ssjj/fnsdk/core/SsjjFNListener;

    aput-object v6, v5, v2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object p3, v4, v2

    invoke-static {v0, v3, v5, v4}, Lcom/ssjj/fnsdk/core/RefUtil;->invoke(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_40} :catch_41

    return-void

    :catch_41
    move-exception v0

    :cond_42
    iput-object p3, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->c:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->checkNet2(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6d

    const/16 p1, 0x70

    const-string p2, "onNetWorkError"

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    new-instance p1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const-string p2, "param_code"

    const-string v0, "-2"

    invoke-virtual {p1, p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "param_msg"

    const-string v0, "\u6ca1\u6709\u8fde\u63a5\u7f51\u7edc"

    invoke-virtual {p1, p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, -0x1

    invoke-interface {p3, p2, v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void

    :cond_6d
    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->getInstance()Lcom/ssjj/fnsdk/core/StatManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/StatManager;->sendAllEvent(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/ssjj/fnsdk/core/update/u;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/ssjj/fnsdk/core/update/u;-><init>(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;Lcom/ssjj/fnsdk/core/SsjjFNListener;ZLandroid/app/Activity;)V

    invoke-virtual {p0, v0, v1}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->getUpdateInfo(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void

    :cond_81
    :goto_81
    const-string p1, "checkUpdate err: activity or updateListener is null"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    return-void
.end method

.method public getUpdateInfo(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->e:Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->d:Z

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->e:Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;

    invoke-virtual {v0, v2}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;->cancel(Z)Z

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->e:Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;

    :cond_f
    new-instance v0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;-><init>(Lcom/ssjj/fnsdk/core/update/FNUpdateManager;Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNListener;Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->e:Lcom/ssjj/fnsdk/core/update/FNUpdateManager$a;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->execAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method public onPause()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->d:Z

    const/16 v0, 0x9b

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    :cond_14
    return-void
.end method

.method public onResume()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->b:Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/FNDialogUpdate;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->d:Z

    if-eqz v0, :cond_15

    const/16 v0, 0x9c

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;)V

    :cond_15
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->d:Z

    return-void
.end method
