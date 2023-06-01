.class final Lcom/ssjj/fnsdk/core/ai;
.super Ljava/lang/Object;


# static fields
.field public static A:Ljava/lang/String;

.field public static B:Ljava/lang/String;

.field public static C:Ljava/lang/String;

.field public static D:Ljava/lang/String;

.field public static E:Ljava/lang/String;

.field public static F:Ljava/lang/String;

.field public static G:Ljava/lang/String;

.field public static H:Ljava/lang/String;

.field public static I:Ljava/lang/String;

.field public static J:Ljava/lang/String;

.field public static K:Ljava/lang/String;

.field public static L:Ljava/lang/String;

.field public static M:Ljava/lang/String;

.field public static N:Ljava/lang/String;

.field public static O:Ljava/lang/String;

.field public static P:Ljava/lang/String;

.field public static Q:Ljava/lang/String;

.field private static R:Lcom/ssjj/fnsdk/core/util/cutout/AbsFNCutoutAdapter;

.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Ljava/lang/String;

.field public static i:Ljava/lang/String;

.field public static j:Ljava/lang/String;

.field public static k:Ljava/lang/String;

.field public static l:Ljava/lang/String;

.field public static m:Ljava/lang/String;

.field public static n:Ljava/lang/String;

.field public static o:Ljava/lang/String;

.field public static p:Ljava/lang/String;

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:Ljava/lang/String;

.field public static w:Ljava/lang/String;

.field public static x:Ljava/lang/String;

.field public static y:Ljava/lang/String;

.field public static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "setConfig"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->a:Ljava/lang/String;

    const-string v0, "getShareUrl"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->b:Ljava/lang/String;

    const-string v0, "getInviteUrl"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->c:Ljava/lang/String;

    const-string v0, "getPuzzleUrl"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->d:Ljava/lang/String;

    const-string v0, "getShareData"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->e:Ljava/lang/String;

    const-string v0, "uploadImage"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->f:Ljava/lang/String;

    const-string v0, "checkImage"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->g:Ljava/lang/String;

    const-string v0, "reportIllegalImage"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->h:Ljava/lang/String;

    const-string v0, "upFCode"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->i:Ljava/lang/String;

    const-string v0, "pickImageFromCamera"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->j:Ljava/lang/String;

    const-string v0, "pickImageFromLocal"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->k:Ljava/lang/String;

    const-string v0, "pickFileFromLocal"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->l:Ljava/lang/String;

    const-string v0, "pickImageFromCrop"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->m:Ljava/lang/String;

    const-string v0, "loadShareConfig"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->n:Ljava/lang/String;

    const-string v0, "createShareImage"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->o:Ljava/lang/String;

    const-string v0, "getShareImageActionList"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->p:Ljava/lang/String;

    const-string v0, "getShareImageActionKeyList"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->q:Ljava/lang/String;

    const-string v0, "mergeTextToImage"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->r:Ljava/lang/String;

    const-string v0, "getSharePriceConfig"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->s:Ljava/lang/String;

    const-string v0, "opSharePrice"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->t:Ljava/lang/String;

    const-string v0, "getClickLinkFromBroswer"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->u:Ljava/lang/String;

    const-string v0, "djPay"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->v:Ljava/lang/String;

    const-string v0, "djPayConfig"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->w:Ljava/lang/String;

    const-string v0, "djCheckOrder"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->x:Ljava/lang/String;

    const-string v0, "djCheckOrderLoop"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->y:Ljava/lang/String;

    const-string v0, "djConfirmOrder"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->z:Ljava/lang/String;

    const-string v0, "djSetPayResultListener"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->A:Ljava/lang/String;

    const-string v0, "djGetHistoryOrders"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->B:Ljava/lang/String;

    const-string v0, "tlog"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->C:Ljava/lang/String;

    const-string v0, "tlogSetDebug"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->D:Ljava/lang/String;

    const-string v0, "tlogSetEnable"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->E:Ljava/lang/String;

    const-string v0, "checkUpdate"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->F:Ljava/lang/String;

    const-string v0, "logGiftCodeActive"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->G:Ljava/lang/String;

    const-string v0, "getIpInfo"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->H:Ljava/lang/String;

    const-string v0, "adaptCutout"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->I:Ljava/lang/String;

    const-string v0, "hasCutout"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->J:Ljava/lang/String;

    const-string v0, "getStatusBarHeight"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->K:Ljava/lang/String;

    const-string v0, "getCutoutSize"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->L:Ljava/lang/String;

    const-string v0, "addFNEventListener"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->M:Ljava/lang/String;

    const-string v0, "removeFNEventListener"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->N:Ljava/lang/String;

    const-string v0, "notifyFNEventListener"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->O:Ljava/lang/String;

    const-string v0, "checkPermissions"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->P:Ljava/lang/String;

    const-string v0, "getServerTime"

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->Q:Ljava/lang/String;

    invoke-static {}, Lcom/ssjj/fnsdk/core/util/cutout/CutoutUtils;->createCutoutAdapter()Lcom/ssjj/fnsdk/core/util/cutout/AbsFNCutoutAdapter;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/ai;->R:Lcom/ssjj/fnsdk/core/util/cutout/AbsFNCutoutAdapter;

    return-void
.end method

.method private static a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Ljava/lang/String;I)I
    .registers 3

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_16

    :try_start_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_16

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p2
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_14} :catch_15

    goto :goto_16

    :catch_15
    move-exception p0

    :cond_16
    :goto_16
    return p2
.end method

.method private static a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_29

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Request permission: Key["

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "is empty"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_2a

    :cond_29
    move-object p2, p0

    :goto_2a
    return-object p2
.end method

.method public static a(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 14

    const-string v0, "permissions"

    if-nez p2, :cond_a

    const-string p0, "Listener can not be null!"

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    return-void

    :cond_a
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p0, :cond_17

    const-string p0, "Activity can not be null!"

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    invoke-interface {p2, v2, p0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void

    :cond_17
    if-nez p1, :cond_22

    const-string p0, "SsjjFNParams can not be null!"

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    invoke-interface {p2, v2, p0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void

    :cond_22
    :try_start_22
    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->getObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_28} :catch_29

    goto :goto_2b

    :catch_29
    move-exception v3

    move-object v3, v1

    :goto_2b
    if-eqz v3, :cond_30

    array-length v4, v3

    if-nez v4, :cond_40

    :cond_30
    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_40

    const-string v3, "\\|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :cond_40
    if-nez v3, :cond_48

    const-string p0, "param \"permissions\" should be type of \"String[]\" or \"String\""

    invoke-interface {p2, v2, p0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void

    :cond_48
    const-string v0, "title"

    const-string v1, "\u6743\u9650\u7533\u8bf7"

    invoke-static {p1, v0, v1}, Lcom/ssjj/fnsdk/core/ai;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "msg"

    const-string v1, "\u4e3a\u4fdd\u8bc1\u6e38\u620f\u6b63\u5e38\u8fd0\u884c\uff0c\u8bf7\u5f00\u542f\u76f8\u5e94\u6743\u9650\uff0c\u5426\u5219\u53ef\u80fd\u4f1a\u5f71\u54cd\u6e38\u620f\u7684\u6b63\u5e38\u8fd0\u884c\u3002"

    invoke-static {p1, v0, v1}, Lcom/ssjj/fnsdk/core/ai;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "btnCancelTxt"

    const-string v1, "\u53d6\u6d88"

    invoke-static {p1, v0, v1}, Lcom/ssjj/fnsdk/core/ai;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "btnOkTxt"

    const-string v1, "\u8bbe\u7f6e"

    invoke-static {p1, v0, v1}, Lcom/ssjj/fnsdk/core/ai;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "needShowCustomRequestDialog"

    const-string v1, "true"

    invoke-static {p1, v0, v1}, Lcom/ssjj/fnsdk/core/ai;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 v10, p1, 0x1

    new-instance p1, Lcom/ssjj/fnsdk/core/ao;

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v4 .. v10}, Lcom/ssjj/fnsdk/core/ao;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNListener;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->getInstance()Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;

    move-result-object p2

    invoke-virtual {p2, p0, v3, p1}, Lcom/ssjj/fnsdk/core/util/permission/PermissionMgr;->checkPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/ssjj/fnsdk/core/util/permission/GrantHelper;)V

    return-void
.end method

.method private static a(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 4

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->getInstance()Lcom/ssjj/fnsdk/core/share/process/ShareManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->createShareImage(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method protected static a(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z
    .registers 9

    const/4 v0, 0x0

    if-nez p2, :cond_5

    const/4 v1, 0x0

    goto :goto_15

    :cond_5
    const-string v1, "isHW"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_15
    const/4 v2, 0x1

    if-eqz v1, :cond_3d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "HW"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSpecial;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSpecial;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSpecial;->isSurportApi(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3d

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSpecial;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSpecial;

    move-result-object p1

    invoke-virtual {p1, p0, v1, p2, p3}, Lcom/ssjj/fnsdk/core/SsjjFNSpecial;->invoke(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return v2

    :cond_3d
    :try_start_3d
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->a:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4b

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->b(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    :goto_48
    const/4 v0, 0x1

    goto/16 :goto_2bb

    :cond_4b
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5e

    new-instance v1, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;

    const/16 v3, 0xd3

    invoke-direct {v1, v3, p3}, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;-><init>(ILcom/ssjj/fnsdk/core/SsjjFNListener;)V

    invoke-static {p0, p2, v1}, Lcom/ssjj/fnsdk/core/ai;->f(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto :goto_48

    :cond_5e
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->c:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    new-instance v1, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;

    const/16 v3, 0xd4

    invoke-direct {v1, v3, p3}, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;-><init>(ILcom/ssjj/fnsdk/core/SsjjFNListener;)V

    invoke-static {p0, p2, v1}, Lcom/ssjj/fnsdk/core/ai;->g(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto :goto_48

    :cond_71
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->d:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_84

    new-instance v1, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;

    const/16 v3, 0xd5

    invoke-direct {v1, v3, p3}, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;-><init>(ILcom/ssjj/fnsdk/core/SsjjFNListener;)V

    invoke-static {p0, p2, v1}, Lcom/ssjj/fnsdk/core/ai;->h(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto :goto_48

    :cond_84
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->e:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a1

    if-nez p2, :cond_90

    const/4 v1, 0x0

    goto :goto_96

    :cond_90
    const-string v1, "type"

    invoke-virtual {p2, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_96
    new-instance v3, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;

    const/16 v4, 0xd6

    invoke-direct {v3, v1, v4, p3}, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;-><init>(Ljava/lang/String;ILcom/ssjj/fnsdk/core/SsjjFNListener;)V

    invoke-static {p0, p2, v3}, Lcom/ssjj/fnsdk/core/ai;->i(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto :goto_48

    :cond_a1
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->f:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b4

    new-instance v1, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;

    const/16 v3, 0xc9

    invoke-direct {v1, v3, p3}, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;-><init>(ILcom/ssjj/fnsdk/core/SsjjFNListener;)V

    invoke-static {p0, p2, v1}, Lcom/ssjj/fnsdk/core/ai;->c(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto :goto_48

    :cond_b4
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->g:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c0

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->d(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto :goto_48

    :cond_c0
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->h:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_cd

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->e(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto/16 :goto_48

    :cond_cd
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->i:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e1

    new-instance v1, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;

    const/16 v3, 0xca

    invoke-direct {v1, v3, p3}, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;-><init>(ILcom/ssjj/fnsdk/core/SsjjFNListener;)V

    invoke-static {p0, p2, v1}, Lcom/ssjj/fnsdk/core/ai;->j(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto/16 :goto_48

    :cond_e1
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->j:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_ee

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->k(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto/16 :goto_48

    :cond_ee
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->k:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_fb

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->l(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto/16 :goto_48

    :cond_fb
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->l:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_108

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->m(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto/16 :goto_48

    :cond_108
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->m:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_115

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->n(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto/16 :goto_48

    :cond_115
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->n:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_129

    new-instance v1, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;

    const/16 v3, 0xdd

    invoke-direct {v1, v3, p3}, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;-><init>(ILcom/ssjj/fnsdk/core/SsjjFNListener;)V

    invoke-static {p0, p2, v1}, Lcom/ssjj/fnsdk/core/ai;->b(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto/16 :goto_48

    :cond_129
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->o:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13d

    new-instance v1, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;

    const/16 v3, 0xde

    invoke-direct {v1, v3, p3}, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;-><init>(ILcom/ssjj/fnsdk/core/SsjjFNListener;)V

    invoke-static {p0, p2, v1}, Lcom/ssjj/fnsdk/core/ai;->a(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto/16 :goto_48

    :cond_13d
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->p:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14a

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->c(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto/16 :goto_48

    :cond_14a
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->q:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_157

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->d(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto/16 :goto_48

    :cond_157
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->r:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16b

    new-instance v1, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;

    const/16 v3, 0xdf

    invoke-direct {v1, v3, p3}, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;-><init>(ILcom/ssjj/fnsdk/core/SsjjFNListener;)V

    invoke-static {p0, p2, v1}, Lcom/ssjj/fnsdk/core/ai;->e(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto/16 :goto_48

    :cond_16b
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->s:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17f

    new-instance v1, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;

    const/16 v3, 0xe2

    invoke-direct {v1, v3, p3}, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;-><init>(ILcom/ssjj/fnsdk/core/SsjjFNListener;)V

    invoke-static {p0, p2, v1}, Lcom/ssjj/fnsdk/core/ai;->f(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto/16 :goto_48

    :cond_17f
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->t:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_193

    new-instance v1, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;

    const/16 v3, 0xe3

    invoke-direct {v1, v3, p3}, Lcom/ssjj/fnsdk/core/TLog$TLogListenerWrapper;-><init>(ILcom/ssjj/fnsdk/core/SsjjFNListener;)V

    invoke-static {p0, p2, v1}, Lcom/ssjj/fnsdk/core/ai;->g(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto/16 :goto_48

    :cond_193
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->u:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a0

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->h(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto/16 :goto_48

    :cond_1a0
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->v:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ad

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->i(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto/16 :goto_48

    :cond_1ad
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->w:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ba

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->j(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto/16 :goto_48

    :cond_1ba
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->x:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c7

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->k(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto/16 :goto_48

    :cond_1c7
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->y:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1d4

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->l(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto/16 :goto_48

    :cond_1d4
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->z:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e1

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->m(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto/16 :goto_48

    :cond_1e1
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->A:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1ee

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->n(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto/16 :goto_48

    :cond_1ee
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->B:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1fb

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->o(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto/16 :goto_48

    :cond_1fb
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->C:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_208

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->r(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto/16 :goto_48

    :cond_208
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->D:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_215

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->p(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto/16 :goto_48

    :cond_215
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->E:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_222

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->q(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto/16 :goto_48

    :cond_222
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->F:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22f

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->s(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto/16 :goto_48

    :cond_22f
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->G:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23c

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->o(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto/16 :goto_48

    :cond_23c
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->H:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_249

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->p(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto/16 :goto_48

    :cond_249
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->J:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_255

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->q(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return v2

    :cond_255
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->I:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_261

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->r(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return v2

    :cond_261
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->K:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_26d

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->s(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return v2

    :cond_26d
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->L:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_279

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->t(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return v2

    :cond_279
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->M:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_285

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->u(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return v2

    :cond_285
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->N:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_291

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->v(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return v2

    :cond_291
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->O:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_29d

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->w(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return v2

    :cond_29d
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->P:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2aa

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->a(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto/16 :goto_48

    :cond_2aa
    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->Q:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2bb

    invoke-static {p0, p2, p3}, Lcom/ssjj/fnsdk/core/ai;->x(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    :try_end_2b5
    .catchall {:try_start_3d .. :try_end_2b5} :catchall_2b7

    goto/16 :goto_48

    :catchall_2b7
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2bb
    :goto_2bb
    if-nez v0, :cond_2d4

    :try_start_2bd
    invoke-static {}, Lcom/ssjj/fnsdk/core/share/FNShare;->getInstance()Lcom/ssjj/fnsdk/core/share/FNShare;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ssjj/fnsdk/core/share/FNShare;->isSurportFunc(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2d4

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/FNShare;->getInstance()Lcom/ssjj/fnsdk/core/share/FNShare;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/share/FNShare;->invoke(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result v0
    :try_end_2cf
    .catchall {:try_start_2bd .. :try_end_2cf} :catchall_2d0

    goto :goto_2d4

    :catchall_2d0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2d4
    :goto_2d4
    return v0
.end method

.method private static a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z
    .registers 4

    const/4 v0, 0x1

    if-nez p0, :cond_12

    const-string p0, "ERR\uff1aparams = null"

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    if-eqz p1, :cond_10

    const-string p0, "\u53c2\u6570 params \u4e0d\u80fd\u4e3a\u7a7a"

    const/4 v1, 0x0

    invoke-interface {p1, v0, p0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_10
    const/4 p0, 0x0

    return p0

    :cond_12
    return v0
.end method

.method private static a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_14

    :try_start_6
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_14

    const-string p1, "true"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_12} :catch_13

    goto :goto_15

    :catch_13
    move-exception p0

    :cond_14
    const/4 p0, 0x0

    :goto_15
    return p0
.end method

.method protected static a(Ljava/lang/String;)Z
    .registers 42

    move-object/from16 v0, p0

    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->a:Ljava/lang/String;

    sget-object v2, Lcom/ssjj/fnsdk/core/ai;->b:Ljava/lang/String;

    sget-object v3, Lcom/ssjj/fnsdk/core/ai;->c:Ljava/lang/String;

    sget-object v4, Lcom/ssjj/fnsdk/core/ai;->d:Ljava/lang/String;

    sget-object v5, Lcom/ssjj/fnsdk/core/ai;->e:Ljava/lang/String;

    sget-object v6, Lcom/ssjj/fnsdk/core/ai;->f:Ljava/lang/String;

    sget-object v7, Lcom/ssjj/fnsdk/core/ai;->g:Ljava/lang/String;

    sget-object v8, Lcom/ssjj/fnsdk/core/ai;->h:Ljava/lang/String;

    sget-object v9, Lcom/ssjj/fnsdk/core/ai;->i:Ljava/lang/String;

    sget-object v10, Lcom/ssjj/fnsdk/core/ai;->j:Ljava/lang/String;

    sget-object v11, Lcom/ssjj/fnsdk/core/ai;->k:Ljava/lang/String;

    sget-object v12, Lcom/ssjj/fnsdk/core/ai;->l:Ljava/lang/String;

    sget-object v13, Lcom/ssjj/fnsdk/core/ai;->m:Ljava/lang/String;

    sget-object v14, Lcom/ssjj/fnsdk/core/ai;->n:Ljava/lang/String;

    sget-object v15, Lcom/ssjj/fnsdk/core/ai;->o:Ljava/lang/String;

    sget-object v16, Lcom/ssjj/fnsdk/core/ai;->p:Ljava/lang/String;

    sget-object v17, Lcom/ssjj/fnsdk/core/ai;->q:Ljava/lang/String;

    sget-object v18, Lcom/ssjj/fnsdk/core/ai;->r:Ljava/lang/String;

    sget-object v19, Lcom/ssjj/fnsdk/core/ai;->s:Ljava/lang/String;

    sget-object v20, Lcom/ssjj/fnsdk/core/ai;->t:Ljava/lang/String;

    sget-object v21, Lcom/ssjj/fnsdk/core/ai;->u:Ljava/lang/String;

    sget-object v22, Lcom/ssjj/fnsdk/core/ai;->v:Ljava/lang/String;

    sget-object v23, Lcom/ssjj/fnsdk/core/ai;->w:Ljava/lang/String;

    sget-object v24, Lcom/ssjj/fnsdk/core/ai;->x:Ljava/lang/String;

    sget-object v25, Lcom/ssjj/fnsdk/core/ai;->y:Ljava/lang/String;

    sget-object v26, Lcom/ssjj/fnsdk/core/ai;->z:Ljava/lang/String;

    sget-object v27, Lcom/ssjj/fnsdk/core/ai;->A:Ljava/lang/String;

    sget-object v28, Lcom/ssjj/fnsdk/core/ai;->B:Ljava/lang/String;

    sget-object v29, Lcom/ssjj/fnsdk/core/ai;->C:Ljava/lang/String;

    sget-object v30, Lcom/ssjj/fnsdk/core/ai;->D:Ljava/lang/String;

    sget-object v31, Lcom/ssjj/fnsdk/core/ai;->E:Ljava/lang/String;

    sget-object v32, Lcom/ssjj/fnsdk/core/ai;->F:Ljava/lang/String;

    sget-object v33, Lcom/ssjj/fnsdk/core/ai;->G:Ljava/lang/String;

    sget-object v34, Lcom/ssjj/fnsdk/core/ai;->H:Ljava/lang/String;

    sget-object v35, Lcom/ssjj/fnsdk/core/ai;->I:Ljava/lang/String;

    sget-object v36, Lcom/ssjj/fnsdk/core/ai;->J:Ljava/lang/String;

    sget-object v37, Lcom/ssjj/fnsdk/core/ai;->K:Ljava/lang/String;

    sget-object v38, Lcom/ssjj/fnsdk/core/ai;->L:Ljava/lang/String;

    sget-object v39, Lcom/ssjj/fnsdk/core/ai;->P:Ljava/lang/String;

    sget-object v40, Lcom/ssjj/fnsdk/core/ai;->Q:Ljava/lang/String;

    filled-new-array/range {v1 .. v40}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/ai;->a(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_66

    :try_start_5c
    invoke-static {}, Lcom/ssjj/fnsdk/core/share/FNShare;->getInstance()Lcom/ssjj/fnsdk/core/share/FNShare;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/ssjj/fnsdk/core/share/FNShare;->isSurportFunc(Ljava/lang/String;)Z

    move-result v1
    :try_end_64
    .catchall {:try_start_5c .. :try_end_64} :catchall_65

    goto :goto_66

    :catchall_65
    move-exception v0

    :cond_66
    :goto_66
    return v1
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z
    .registers 5

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/ai;->b(Ljava/lang/String;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_27

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "\u53c2\u6570["

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "]\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_25

    const/4 p1, 0x0

    invoke-interface {p2, v0, p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_25
    const/4 p0, 0x0

    return p0

    :cond_27
    return v0
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_24

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_24

    if-eqz p1, :cond_24

    array-length v1, p1

    if-lez v1, :cond_24

    array-length v1, p1

    const/4 v2, 0x0

    :goto_14
    if-lt v2, v1, :cond_17

    goto :goto_24

    :cond_17
    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_21

    const/4 v0, 0x1

    goto :goto_24

    :cond_21
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_24
    :goto_24
    return v0
.end method

.method private static b(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 5

    if-eqz p1, :cond_4c

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->keys()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_27

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_27

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_27

    :cond_19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/EnvConfig;->setConfig(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_27
    :goto_27
    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->objKeys()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4c

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4c

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_37
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3e

    goto :goto_4c

    :cond_3e
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->getObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/EnvConfig;->setConfigObj(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_37

    :cond_4c
    :goto_4c
    if-eqz p2, :cond_54

    const/4 p0, 0x0

    const-string v0, "succ"

    invoke-interface {p2, p0, v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_54
    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 4

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->getInstance()Lcom/ssjj/fnsdk/core/share/process/ShareManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->loadShareConfig(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method private static b(Ljava/lang/String;)Z
    .registers 1

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x0

    return p0

    :cond_e
    const/4 p0, 0x1

    return p0
.end method

.method private static c(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 13

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/ai;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "imageData"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "imagePath"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "fileName"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v0, "fileBuf"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->getObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, [B

    const-string v0, "imageType"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "imageSize"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v1

    move-object v2, p0

    move-object v9, p2

    invoke-virtual/range {v1 .. v9}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->uploadImage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method private static c(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 4

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->getInstance()Lcom/ssjj/fnsdk/core/share/process/ShareManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->getShareImageActionList(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method private static d(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 4

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/ai;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "imageUrl"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_20

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_20

    :cond_18
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->checkImage(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void

    :cond_20
    :goto_20
    if-eqz p2, :cond_2d

    new-instance p0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/4 p1, 0x1

    const-string v0, "imageUrl\u4e0d\u80fd\u4e3a\u7a7a!"

    invoke-interface {p2, p1, v0, p0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_2d
    return-void
.end method

.method private static d(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 4

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->getInstance()Lcom/ssjj/fnsdk/core/share/process/ShareManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->getShareImageActionKeyList(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method private static e(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 11

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/ai;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "uid"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, p2}, Lcom/ssjj/fnsdk/core/ai;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result v0

    if-nez v0, :cond_14

    return-void

    :cond_14
    const-string v0, "imageUrl"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0, p2}, Lcom/ssjj/fnsdk/core/ai;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result v0

    if-nez v0, :cond_21

    return-void

    :cond_21
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/ai;->b(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_31

    :goto_2f
    move-object v5, v2

    goto :goto_3d

    :cond_31
    :try_start_31
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_36

    move-object v5, v0

    goto :goto_3d

    :catch_36
    move-exception v0

    const-string v0, "\u4e3e\u62a5\u7c7b\u578b\u4e0d\u5b58\u5728"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_2f

    :goto_3d
    const-string v0, "reason"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/ai;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    move-object v6, v2

    goto :goto_4c

    :cond_4b
    move-object v6, p1

    :goto_4c
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v1

    move-object v2, p0

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->reportIllegalImage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method private static e(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 4

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->getInstance()Lcom/ssjj/fnsdk/core/share/process/ShareManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->mergeTextToImage(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method private static f(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 9

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/ai;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    new-instance v3, Lcom/ssjj/fnsdk/core/entity/LoginData;

    invoke-direct {v3, p1}, Lcom/ssjj/fnsdk/core/entity/LoginData;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    const-string p0, "callbackInfo"

    invoke-virtual {p1, p0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v2, 0x0

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    const-string v1, "share"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getShareUrl(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/LoginData;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method private static f(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 4

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->getInstance()Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->getSharePriceConfig(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method private static g(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 9

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/ai;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    new-instance v3, Lcom/ssjj/fnsdk/core/entity/LoginData;

    invoke-direct {v3, p1}, Lcom/ssjj/fnsdk/core/entity/LoginData;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    const-string p0, "headImage"

    invoke-virtual {p1, p0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v3, p0, v0}, Lcom/ssjj/fnsdk/core/entity/LoginData;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    const-string p0, "callbackInfo"

    invoke-virtual {p1, p0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p0, "inviteType"

    invoke-virtual {p1, p0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    const-string v1, "invite"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getShareUrl(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/LoginData;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method private static g(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 4

    invoke-static {}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->getInstance()Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ssjj/fnsdk/core/share/price/SharePriceManager;->initOrStopSharePrice(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method private static h(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 9

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/ai;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    new-instance v3, Lcom/ssjj/fnsdk/core/entity/LoginData;

    invoke-direct {v3, p1}, Lcom/ssjj/fnsdk/core/entity/LoginData;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    const-string p0, "headImage"

    invoke-virtual {p1, p0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v3, p0, v0}, Lcom/ssjj/fnsdk/core/entity/LoginData;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_17
    const-string p0, "puzzleType"

    invoke-virtual {p1, p0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_22

    invoke-virtual {v3, p0, v0}, Lcom/ssjj/fnsdk/core/entity/LoginData;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    const-string p0, "callbackInfo"

    invoke-virtual {p1, p0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string p0, "inviteType"

    invoke-virtual {p1, p0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    const-string v1, "puzzle"

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getShareUrl(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/LoginData;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method private static h(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 6

    if-nez p2, :cond_3

    return-void

    :cond_3
    new-instance p0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const-string v0, "intent"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->getObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_17

    instance-of v0, p1, Landroid/content/Intent;

    if-eqz v0, :cond_17

    check-cast p1, Landroid/content/Intent;

    goto :goto_18

    :cond_17
    const/4 p1, 0x0

    :goto_18
    const-string v0, "no data"

    const/4 v1, 0x1

    if-nez p1, :cond_21

    invoke-interface {p2, v1, v0, p0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void

    :cond_21
    invoke-static {}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->getInstance()Lcom/ssjj/fnsdk/core/share/process/ShareManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->getClickLink(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3e

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_32

    goto :goto_3e

    :cond_32
    const-string v0, "link"

    invoke-virtual {p0, v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    const-string v0, "has data"

    invoke-interface {p2, p1, v0, p0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void

    :cond_3e
    :goto_3e
    invoke-interface {p2, v1, v0, p0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void
.end method

.method private static i(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/ai;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getShareData(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method private static i(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 4

    invoke-static {}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->getInstance()Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->djPay(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method private static j(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 4

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/ai;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Lcom/ssjj/fnsdk/core/entity/LoginData;

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/entity/LoginData;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    const-string v0, "fCode"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->upFCode(Lcom/ssjj/fnsdk/core/entity/LoginData;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method private static j(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 4

    invoke-static {}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->getInstance()Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->djPayConfig(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method private static k(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 6

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/ai;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "outputPath"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNImagePicker;->getInstance()Lcom/ssjj/fnsdk/core/FNImagePicker;

    move-result-object v1

    new-instance v2, Lcom/ssjj/fnsdk/core/aj;

    invoke-direct {v2, v0, p2}, Lcom/ssjj/fnsdk/core/aj;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    invoke-virtual {v1, p0, p1, v2}, Lcom/ssjj/fnsdk/core/FNImagePicker;->pickImageFromCamera(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;)V

    return-void
.end method

.method private static k(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 4

    invoke-static {}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->getInstance()Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->djCheckOrder(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method private static l(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 5

    new-instance p1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNImagePicker;->getInstance()Lcom/ssjj/fnsdk/core/FNImagePicker;

    move-result-object v0

    new-instance v1, Lcom/ssjj/fnsdk/core/ak;

    invoke-direct {v1, p1, p2}, Lcom/ssjj/fnsdk/core/ak;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    invoke-virtual {v0, p0, v1}, Lcom/ssjj/fnsdk/core/FNImagePicker;->pickImageFromLocal(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;)V

    return-void
.end method

.method private static l(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 4

    invoke-static {}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->getInstance()Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->djCheckOrderLoop(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method private static m(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 6

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    if-eqz p1, :cond_e

    const-string v1, "fileType"

    invoke-virtual {p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    if-eqz p1, :cond_1b

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1d

    :cond_1b
    const-string p1, "*/*"

    :cond_1d
    invoke-static {}, Lcom/ssjj/fnsdk/core/FNImagePicker;->getInstance()Lcom/ssjj/fnsdk/core/FNImagePicker;

    move-result-object v1

    new-instance v2, Lcom/ssjj/fnsdk/core/al;

    invoke-direct {v2, v0, p2}, Lcom/ssjj/fnsdk/core/al;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    invoke-virtual {v1, p0, p1, v2}, Lcom/ssjj/fnsdk/core/FNImagePicker;->pickFileFromLocal(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;)V

    return-void
.end method

.method private static m(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 4

    invoke-static {}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->getInstance()Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->djConfirmOrder(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method private static n(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 10

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/ai;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "inputPath"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "outputPath"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/ssjj/fnsdk/core/FNImagePicker$CropOption;

    invoke-direct {v5}, Lcom/ssjj/fnsdk/core/FNImagePicker$CropOption;-><init>()V

    const-string v0, "crop"

    invoke-static {p1, v0}, Lcom/ssjj/fnsdk/core/ai;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, v5, Lcom/ssjj/fnsdk/core/FNImagePicker$CropOption;->crop:Z

    const-string v0, "aspectW"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/ssjj/fnsdk/core/ai;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/ssjj/fnsdk/core/FNImagePicker$CropOption;->aspectX:I

    const-string v0, "aspectH"

    invoke-static {p1, v0, v1}, Lcom/ssjj/fnsdk/core/ai;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/ssjj/fnsdk/core/FNImagePicker$CropOption;->aspectY:I

    const-string v0, "outputW"

    invoke-static {p1, v0, v1}, Lcom/ssjj/fnsdk/core/ai;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Ljava/lang/String;I)I

    move-result v0

    iput v0, v5, Lcom/ssjj/fnsdk/core/FNImagePicker$CropOption;->outputX:I

    const-string v0, "outputH"

    invoke-static {p1, v0, v1}, Lcom/ssjj/fnsdk/core/ai;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Ljava/lang/String;I)I

    move-result p1

    iput p1, v5, Lcom/ssjj/fnsdk/core/FNImagePicker$CropOption;->outputY:I

    new-instance p1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNImagePicker;->getInstance()Lcom/ssjj/fnsdk/core/FNImagePicker;

    move-result-object v1

    new-instance v6, Lcom/ssjj/fnsdk/core/am;

    invoke-direct {v6, p1, p2}, Lcom/ssjj/fnsdk/core/am;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/ssjj/fnsdk/core/FNImagePicker;->pickImageFromCrop(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/FNImagePicker$CropOption;Lcom/ssjj/fnsdk/core/FNImagePicker$FNImagePickerListener;)V

    return-void
.end method

.method private static n(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 4

    invoke-static {}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->getInstance()Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->djSetPayResultListener(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method private static o(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 15

    instance-of v0, p0, Landroid/app/Activity;

    const/4 v1, 0x1

    if-nez v0, :cond_f

    const-string p1, "\u5fc5\u987b\u4f20\u5165Activity\u7684Context"

    :goto_7
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_f
    if-eqz p1, :cond_96

    const-string v0, "uid"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "roleId"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "roleName"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "serverId"

    invoke-virtual {p1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v2, "serverName"

    invoke-virtual {p1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v2, "roleLevel"

    invoke-virtual {p1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v2, "giftCode"

    invoke-virtual {p1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_44

    const-string p1, "uid\u4e0d\u80fd\u4e3a\u7a7a"

    goto :goto_7

    :cond_44
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4d

    const-string p1, "roleId\u4e0d\u80fd\u4e3a\u7a7a"

    goto :goto_7

    :cond_4d
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_56

    const-string p1, "roleName\u4e0d\u80fd\u4e3a\u7a7a"

    goto :goto_7

    :cond_56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5f

    const-string p1, "giftCode\u4e0d\u80fd\u4e3a\u7a7a"

    goto :goto_7

    :cond_5f
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v2

    move-object v5, v0

    move-object v6, v11

    move-object v9, p1

    move-object v10, p2

    invoke-virtual/range {v2 .. v10}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->logGiftCodeActive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSpecial;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSpecial;

    move-result-object p2

    const-string v1, "4399GiftcodeUpload"

    invoke-virtual {p2, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSpecial;->isSurportApi(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_96

    new-instance p2, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const-string v2, "4399_param_giftcode_value"

    invoke-virtual {p2, v2, p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "4399_param_giftcode_roleName"

    invoke-virtual {p2, p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "4399_param_giftcode_serverId"

    invoke-virtual {p2, p1, v11}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSpecial;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSpecial;

    move-result-object p1

    new-instance v0, Lcom/ssjj/fnsdk/core/an;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/an;-><init>()V

    invoke-virtual {p1, p0, v1, p2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNSpecial;->invoke(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    :cond_96
    return-void
.end method

.method private static o(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 4

    invoke-static {}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->getInstance()Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/ssjj/fnsdk/core/cz/SsjjFNDjPayManager;->djGetHistoryOrders(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method private static p(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 5

    const-string v0, ""

    if-eqz p1, :cond_12

    const-string v1, "ip"

    invoke-virtual {p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_12

    :cond_11
    move-object v0, p1

    :cond_12
    :goto_12
    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p1

    invoke-virtual {p1, p0, v0, p2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getIpInfo(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method private static p(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 5

    const/4 p0, 0x0

    if-eqz p1, :cond_18

    const-string v0, "debug"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/TLog;->setTLogDebug(Z)V

    const/4 v0, 0x0

    goto :goto_1a

    :cond_18
    const-string v0, "params\u4e0d\u80fd\u4e3anull"

    :goto_1a
    if-eqz p2, :cond_25

    if-nez v0, :cond_21

    const-string v0, "succ"

    goto :goto_22

    :cond_21
    const/4 p0, 0x1

    :goto_22
    invoke-interface {p2, p0, v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_25
    return-void
.end method

.method private static q(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 4

    if-nez p2, :cond_3

    return-void

    :cond_3
    sget-object p1, Lcom/ssjj/fnsdk/core/ai;->R:Lcom/ssjj/fnsdk/core/util/cutout/AbsFNCutoutAdapter;

    invoke-virtual {p1, p0}, Lcom/ssjj/fnsdk/core/util/cutout/AbsFNCutoutAdapter;->hasCutout(Landroid/app/Activity;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    const-string p1, ""

    const/4 v0, 0x0

    invoke-interface {p2, p0, p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void
.end method

.method private static q(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 5

    const/4 p0, 0x1

    if-eqz p1, :cond_18

    const-string v0, "enable"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/TLog;->setTLogEnable(Z)V

    const/4 v0, 0x0

    goto :goto_1a

    :cond_18
    const-string v0, "params\u4e0d\u80fd\u4e3anull"

    :goto_1a
    if-eqz p2, :cond_24

    if-nez v0, :cond_21

    const/4 p0, 0x0

    const-string v0, "succ"

    :cond_21
    invoke-interface {p2, p0, v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_24
    return-void
.end method

.method private static r(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 3

    sget-object p1, Lcom/ssjj/fnsdk/core/ai;->R:Lcom/ssjj/fnsdk/core/util/cutout/AbsFNCutoutAdapter;

    invoke-virtual {p1, p0}, Lcom/ssjj/fnsdk/core/util/cutout/AbsFNCutoutAdapter;->adaptCutout(Landroid/app/Activity;)V

    return-void
.end method

.method private static r(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 16

    const/4 p0, 0x0

    if-eqz p1, :cond_93

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "code"

    invoke-virtual {p1, v1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "value"

    invoke-virtual {p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {p1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v2, "position"

    invoke-virtual {p1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v2, "happenTime"

    const-wide/16 v5, -0x1

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p1, v2, v7}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    if-lez v0, :cond_3e

    invoke-static {v0, v1, v7, v8}, Lcom/ssjj/fnsdk/core/TLog;->log(ILjava/lang/String;J)V

    goto :goto_8e

    :cond_3e
    invoke-static {v3}, Lcom/ssjj/fnsdk/core/ai;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_90

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/ai;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_90

    const-string v0, "startTime"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    const-string v0, "endTime"

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    const-string v0, "happenCount"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-wide/16 v5, 0x0

    cmp-long v2, v9, v5

    if-lez v2, :cond_8b

    cmp-long v2, v11, v5

    if-lez v2, :cond_8b

    move-wide v5, v9

    move-wide v7, v11

    move v9, v0

    invoke-static/range {v3 .. v9}, Lcom/ssjj/fnsdk/core/TLog;->log(Ljava/lang/String;Ljava/lang/String;JJI)V

    goto :goto_8e

    :cond_8b
    invoke-static {v3, v4, v1, v7, v8}, Lcom/ssjj/fnsdk/core/TLog;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    :goto_8e
    const/4 v0, 0x0

    goto :goto_95

    :cond_90
    const-string v0, "\u7f3a\u5c11\u53c2\u6570\u6216\u53c2\u6570\u9519\u8bef\uff0c\u5177\u4f53\u8bf7\u770b\u6587\u6863"

    goto :goto_95

    :cond_93
    const-string v0, "params\u4e0d\u80fd\u4e3anull"

    :goto_95
    if-eqz p2, :cond_a0

    if-nez v0, :cond_9c

    const-string v0, "succ"

    goto :goto_9d

    :cond_9c
    const/4 p0, 0x1

    :goto_9d
    invoke-interface {p2, p0, v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_a0
    return-void
.end method

.method private static s(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 5

    if-nez p2, :cond_3

    return-void

    :cond_3
    new-instance p1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ssjj/fnsdk/core/ai;->R:Lcom/ssjj/fnsdk/core/util/cutout/AbsFNCutoutAdapter;

    invoke-virtual {v1, p0}, Lcom/ssjj/fnsdk/core/util/cutout/AbsFNCutoutAdapter;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "statusBarHeight"

    invoke-virtual {p1, v1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "direction"

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/util/cutout/CutoutUtils;->getCutoutDirection(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    const-string v0, ""

    invoke-interface {p2, p0, v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void
.end method

.method private static s(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 5

    instance-of v0, p0, Landroid/app/Activity;

    const/4 v1, 0x1

    if-nez v0, :cond_f

    const-string p1, "\u5fc5\u987b\u4f20\u5165Activity\u7684Context"

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_f
    if-eqz p1, :cond_20

    const-string v0, "focusUseNormalUpdate"

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_20

    goto :goto_21

    :cond_20
    const/4 v1, 0x0

    :goto_21
    invoke-static {}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->getInstance()Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    move-result-object p1

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p1, p0, v1, p2}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->checkUpdate(Landroid/app/Activity;ZLcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method private static t(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 7

    if-nez p2, :cond_3

    return-void

    :cond_3
    new-instance p1, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    sget-object v0, Lcom/ssjj/fnsdk/core/ai;->R:Lcom/ssjj/fnsdk/core/util/cutout/AbsFNCutoutAdapter;

    invoke-virtual {v0, p0}, Lcom/ssjj/fnsdk/core/util/cutout/AbsFNCutoutAdapter;->getCutoutSize(Landroid/app/Activity;)[I

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "width"

    invoke-virtual {p1, v3, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "height"

    invoke-virtual {p1, v3, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cutoutSize"

    invoke-virtual {p1, v1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->putObj(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "direction"

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/util/cutout/CutoutUtils;->getCutoutDirection(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    invoke-interface {p2, v2, p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void
.end method

.method private static u(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 4

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/ai;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    const-string p0, "eventName"

    invoke-virtual {p1, p0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p0, p2}, Lcom/ssjj/fnsdk/core/ai;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result p0

    if-nez p0, :cond_14

    return-void

    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "addFNEventListener: "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    const-string p0, "\\|"

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->getInstance()Lcom/ssjj/fnsdk/core/listener/FNEventManager;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->addObserver([Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method private static v(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 3

    if-nez p2, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->getInstance()Lcom/ssjj/fnsdk/core/listener/FNEventManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->removeObserver(Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "removeFNEventListener: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void
.end method

.method private static w(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 4

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/ai;->a(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    const-string p0, "eventName"

    invoke-virtual {p1, p0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p0, p2}, Lcom/ssjj/fnsdk/core/ai;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)Z

    move-result p0

    if-nez p0, :cond_14

    return-void

    :cond_14
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p2, "notifyFNEventListener, eventName="

    invoke-direct {p0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->getInstance()Lcom/ssjj/fnsdk/core/listener/FNEventManager;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Lcom/ssjj/fnsdk/core/listener/FNEventManager;->notifyAll(Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void
.end method

.method private static x(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 5

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->setGetServerTimeListener(Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getServerTime()J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long p2, p0, v0

    if-lez p2, :cond_1c

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->callbackServerTime()V

    :cond_1c
    return-void
.end method
