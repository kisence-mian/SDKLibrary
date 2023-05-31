.class public Lcom/tencent/smtt/sdk/QbSdk;
.super Ljava/lang/Object;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;
    }
.end annotation


# static fields
.field private static A:Ljava/lang/String; = null

.field private static B:Z = false

.field private static C:Z = false

.field private static D:Lcom/tencent/smtt/sdk/TbsListener; = null

.field private static E:Lcom/tencent/smtt/sdk/TbsListener; = null

.field public static final EXTENSION_INIT_FAILURE:I = -0x1869f

.field private static F:Z = false

.field private static G:Z = false

.field public static KEY_SET_SENDREQUEST_AND_UPLOAD:Ljava/lang/String; = null

.field public static final LOGIN_TYPE_KEY_PARTNER_CALL_POS:Ljava/lang/String; = "PosID"

.field public static final LOGIN_TYPE_KEY_PARTNER_ID:Ljava/lang/String; = "ChannelID"

.field public static final PARAM_KEY_FEATUREID:Ljava/lang/String; = "param_key_featureid"

.field public static final PARAM_KEY_FUNCTIONID:Ljava/lang/String; = "param_key_functionid"

.field public static final PARAM_KEY_POSITIONID:Ljava/lang/String; = "param_key_positionid"

.field public static final QBMODE:I = 0x2

.field public static final SVNVERSION:Ljava/lang/String; = "jnizz"

.field public static final TBSMODE:I = 0x1

.field public static final TID_QQNumber_Prefix:Ljava/lang/String; = "QQ:"

.field public static final VERSION:I = 0x1

.field static a:Z

.field static b:Z

.field static c:Z

.field static d:Ljava/lang/String;

.field static e:Z

.field static f:J

.field static g:J

.field static h:Ljava/lang/Object;

.field static i:Z

.field static j:Z

.field static k:Z

.field static volatile l:Z

.field static m:Lcom/tencent/smtt/sdk/TbsListener;

.field public static mDisableUseHostBackupCore:Z

.field static n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static o:I

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static r:Ljava/lang/Object;

.field private static s:Z

.field public static sIsVersionPrinted:Z

.field private static t:[Ljava/lang/String;

.field private static u:Ljava/lang/String;

.field private static v:Ljava/lang/String;

.field private static w:Z

.field private static x:I

.field private static y:I

.field private static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    sput-boolean v1, Lcom/tencent/smtt/sdk/QbSdk;->sIsVersionPrinted:Z

    sput v1, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    const-string v0, ""

    sput-object v0, Lcom/tencent/smtt/sdk/QbSdk;->p:Ljava/lang/String;

    sput-object v2, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    sput-object v2, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    sput-boolean v1, Lcom/tencent/smtt/sdk/QbSdk;->a:Z

    sput-boolean v1, Lcom/tencent/smtt/sdk/QbSdk;->b:Z

    sput-boolean v3, Lcom/tencent/smtt/sdk/QbSdk;->c:Z

    sput-boolean v1, Lcom/tencent/smtt/sdk/QbSdk;->s:Z

    const-string v0, "NULL"

    sput-object v0, Lcom/tencent/smtt/sdk/QbSdk;->u:Ljava/lang/String;

    const-string v0, "UNKNOWN"

    sput-object v0, Lcom/tencent/smtt/sdk/QbSdk;->v:Ljava/lang/String;

    sput-boolean v1, Lcom/tencent/smtt/sdk/QbSdk;->e:Z

    sput-wide v4, Lcom/tencent/smtt/sdk/QbSdk;->f:J

    sput-wide v4, Lcom/tencent/smtt/sdk/QbSdk;->g:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tencent/smtt/sdk/QbSdk;->h:Ljava/lang/Object;

    sput-boolean v1, Lcom/tencent/smtt/sdk/QbSdk;->w:Z

    sput-boolean v3, Lcom/tencent/smtt/sdk/QbSdk;->i:Z

    sput-boolean v3, Lcom/tencent/smtt/sdk/QbSdk;->j:Z

    sput-boolean v1, Lcom/tencent/smtt/sdk/QbSdk;->k:Z

    sput v1, Lcom/tencent/smtt/sdk/QbSdk;->x:I

    const/16 v0, 0xaa

    sput v0, Lcom/tencent/smtt/sdk/QbSdk;->y:I

    sput-object v2, Lcom/tencent/smtt/sdk/QbSdk;->z:Ljava/lang/String;

    sput-object v2, Lcom/tencent/smtt/sdk/QbSdk;->A:Ljava/lang/String;

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->a:Z

    sput-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->l:Z

    sput-boolean v1, Lcom/tencent/smtt/sdk/QbSdk;->mDisableUseHostBackupCore:Z

    sput-boolean v1, Lcom/tencent/smtt/sdk/QbSdk;->B:Z

    sput-boolean v3, Lcom/tencent/smtt/sdk/QbSdk;->C:Z

    sput-object v2, Lcom/tencent/smtt/sdk/QbSdk;->D:Lcom/tencent/smtt/sdk/TbsListener;

    sput-object v2, Lcom/tencent/smtt/sdk/QbSdk;->E:Lcom/tencent/smtt/sdk/TbsListener;

    sput-boolean v1, Lcom/tencent/smtt/sdk/QbSdk;->F:Z

    sput-boolean v1, Lcom/tencent/smtt/sdk/QbSdk;->G:Z

    new-instance v0, Lcom/tencent/smtt/sdk/n;

    invoke-direct {v0}, Lcom/tencent/smtt/sdk/n;-><init>()V

    sput-object v0, Lcom/tencent/smtt/sdk/QbSdk;->m:Lcom/tencent/smtt/sdk/TbsListener;

    const-string v0, "SET_SENDREQUEST_AND_UPLOAD"

    sput-object v0, Lcom/tencent/smtt/sdk/QbSdk;->KEY_SET_SENDREQUEST_AND_UPLOAD:Ljava/lang/String;

    sput-object v2, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Landroid/content/Context;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 11

    const/4 v1, 0x0

    const/16 v8, 0xd8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_17

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const-string v2, "initForPatch return false!"

    invoke-virtual {v0, v8, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    move-object v0, v1

    :goto_16
    return-object v0

    :cond_17
    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const-string v2, "incrUpdate"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    const-class v4, Landroid/os/Bundle;

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p0, v4, v5

    aput-object p1, v4, v6

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_34

    check-cast v0, Landroid/os/Bundle;

    goto :goto_16

    :cond_34
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const-string v2, "incrUpdate return null!"

    invoke-virtual {v0, v8, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setInstallErrorCode(ILjava/lang/String;)V

    move-object v0, v1

    goto :goto_16
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;
    .registers 10

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    const v0, -0x1869f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_10
    :goto_10
    return-object v0

    :cond_11
    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const-string v1, "miscCall"

    new-array v2, v6, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    aput-object v3, v2, v4

    const-class v3, Landroid/os/Bundle;

    aput-object v3, v2, v5

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p1, v3, v4

    aput-object p2, v3, v5

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_10
.end method

.method static a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->p:Ljava/lang/String;

    return-object v0
.end method

.method static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 7

    const-class v1, Lcom/tencent/smtt/sdk/QbSdk;

    monitor-enter v1

    :try_start_3
    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->a:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_44

    if-eqz v0, :cond_9

    :goto_7
    monitor-exit v1

    return-void

    :cond_9
    const/4 v0, 0x1

    :try_start_a
    sput-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->a:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "forceSysWebViewInner: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/QbSdk;->v:Ljava/lang/String;

    const-string v0, "QbSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "QbSdk.SysWebViewForcedInner..."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/tencent/smtt/sdk/QbSdk;->v:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    const/16 v2, 0x191

    new-instance v3, Ljava/lang/Throwable;

    sget-object v4, Lcom/tencent/smtt/sdk/QbSdk;->v:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v2, v3}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V
    :try_end_43
    .catchall {:try_start_a .. :try_end_43} :catchall_44

    goto :goto_7

    :catchall_44
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method static a(Landroid/content/Context;)Z
    .registers 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_2
    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    if-eqz v0, :cond_8

    move v0, v6

    :goto_7
    return v0

    :cond_8
    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    if-nez v2, :cond_1b

    const-string v0, "QbSdk"

    const-string v1, "QbSdk initExtension (false) optDir == null"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    goto :goto_7

    :cond_1b
    new-instance v8, Ljava/io/File;

    const-string v0, "tbs_sdk_extension_dex.jar"

    invoke-direct {v8, v2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_32

    const-string v0, "QbSdk"

    const-string v1, "QbSdk initExtension (false) dexFile.exists()=false"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v7

    goto :goto_7

    :cond_32
    const-string v0, "QbSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "new DexLoader #3 dexFile is "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/bt;->b(Landroid/content/Context;)Ljava/nio/channels/FileLock;

    new-instance v0, Lcom/tencent/smtt/export/external/DexLoader;

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/smtt/export/external/DexLoader;-><init>(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "com.tencent.tbs.sdk.extension.TbsSDKExtension"

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/export/external/DexLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/QbSdk;->loadTBSSDKExtension(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_79
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_79} :catch_7b

    move v0, v6

    goto :goto_7

    :catch_7b
    move-exception v0

    const-string v1, "QbSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initExtension sys WebView: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    goto/16 :goto_7
.end method

.method static a(Landroid/content/Context;I)Z
    .registers 3

    const/16 v0, 0x4e20

    invoke-static {p0, p1, v0}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;II)Z

    move-result v0

    return v0
.end method

.method static a(Landroid/content/Context;II)Z
    .registers 12

    const v8, 0xaa71

    const/4 v5, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v1, 0x1

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    sget-object v2, Lcom/tencent/smtt/sdk/QbSdk;->KEY_SET_SENDREQUEST_AND_UPLOAD:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    sget-object v2, Lcom/tencent/smtt/sdk/QbSdk;->KEY_SET_SENDREQUEST_AND_UPLOAD:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "false"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "QbSdk"

    const-string v2, "[QbSdk.isX5Disabled] -- SET_SENDREQUEST_AND_UPLOAD is false"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_2d
    return v0

    :cond_2e
    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->c(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_36

    move v0, v1

    goto :goto_2d

    :cond_36
    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const-string v2, "isX5Disabled"

    new-array v3, v5, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v7

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_69

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_2d

    :cond_69
    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const-string v2, "isX5Disabled"

    new-array v3, v7, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_92

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_2d

    :cond_92
    move v0, v1

    goto :goto_2d
.end method

.method private static a(Landroid/content/Context;Z)Z
    .registers 11
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/tencent/smtt/utils/TbsLog;->initIfNeed(Landroid/content/Context;)V

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->sIsVersionPrinted:Z

    if-nez v0, :cond_12

    const-string v0, "QbSdk"

    const-string v1, "svn revision: jnizz; SDK_VERSION_CODE: 43633; SDK_VERSION_NAME: 4.3.0.1020"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v7, Lcom/tencent/smtt/sdk/QbSdk;->sIsVersionPrinted:Z

    :cond_12
    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->a:Z

    if-eqz v0, :cond_40

    if-nez p1, :cond_40

    const-string v0, "QbSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QbSdk init: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/tencent/smtt/sdk/QbSdk;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    const/16 v1, 0x19e

    new-instance v2, Ljava/lang/Throwable;

    sget-object v3, Lcom/tencent/smtt/sdk/QbSdk;->v:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    move v0, v6

    :goto_3f
    return v0

    :cond_40
    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->b:Z

    if-eqz v0, :cond_5d

    const-string v0, "QbSdk"

    const-string v1, "QbSdk init mIsSysWebViewForcedByOuter = true"

    invoke-static {v0, v1, v7}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    const/16 v1, 0x192

    new-instance v2, Ljava/lang/Throwable;

    sget-object v3, Lcom/tencent/smtt/sdk/QbSdk;->u:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    move v0, v6

    goto :goto_3f

    :cond_5d
    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->C:Z

    if-nez v0, :cond_64

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->d(Landroid/content/Context;)V

    :cond_64
    :try_start_64
    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_87

    const-string v0, "QbSdk"

    const-string v1, "QbSdk init (false) optDir == null"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    const/16 v1, 0x138

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "QbSdk.init (false) TbsCoreShareDir is null"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    move v0, v6

    goto :goto_3f

    :cond_87
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e3

    sget v0, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    if-eqz v0, :cond_d6

    sget v0, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->d(Landroid/content/Context;)I

    move-result v2

    if-eq v0, v2, :cond_d6

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const-string v0, "QbSdk"

    const-string v1, "QbSdk init (false) ERROR_UNMATCH_TBSCORE_VER_THIRDPARTY!"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    const/16 v1, 0x12e

    new-instance v2, Ljava/lang/Throwable;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "sTbsVersion: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; AvailableTbsCoreVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->d(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    move v0, v6

    goto/16 :goto_3f

    :cond_d6
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->d(Landroid/content/Context;)I

    move-result v0

    sput v0, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    :goto_dc
    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    if-eqz v0, :cond_17b

    move v0, v7

    goto/16 :goto_3f

    :cond_e3
    sget v0, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    if-eqz v0, :cond_152

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Lcom/tencent/smtt/sdk/am;->a(ZLandroid/content/Context;)I

    move-result v0

    sget v2, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    if-eq v2, v0, :cond_153

    const/4 v1, 0x0

    sput-object v1, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    const/4 v1, 0x0

    sput-object v1, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const-string v1, "QbSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "QbSdk init (false) not isThirdPartyApp tbsCoreInstalledVer="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "QbSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "QbSdk init (false) not isThirdPartyApp sTbsVersion="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    const/16 v2, 0x12f

    new-instance v3, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sTbsVersion: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; tbsCoreInstalledVer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    move v0, v6

    goto/16 :goto_3f

    :cond_152
    move v0, v6

    :cond_153
    sput v0, Lcom/tencent/smtt/sdk/QbSdk;->o:I
    :try_end_155
    .catch Ljava/lang/Throwable; {:try_start_64 .. :try_end_155} :catch_156

    goto :goto_dc

    :catch_156
    move-exception v0

    const-string v1, "QbSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "QbSdk init Throwable: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    const/16 v2, 0x132

    invoke-virtual {v1, p0, v2, v0}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    move v0, v6

    goto/16 :goto_3f

    :cond_17b
    :try_start_17b
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1ee

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1db

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "tbs_sdk_extension_dex.jar"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v0

    :goto_193
    invoke-virtual {v8}, Ljava/io/File;->exists()Z
    :try_end_196
    .catch Ljava/lang/Throwable; {:try_start_17b .. :try_end_196} :catch_156

    move-result v0

    if-nez v0, :cond_261

    :try_start_199
    const-string v0, "QbSdk"

    const-string v1, "QbSdk init (false) tbs_sdk_extension_dex.jar is not exist!"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/am;->j(Landroid/content/Context;)I

    move-result v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    const-string v3, "tbs_jars_fusion_dex.jar"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_222

    if-lez v0, :cond_1ff

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    const/16 v2, 0x1023

    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tbs_sdk_extension_dex not exist(with fusion dex)!"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V
    :try_end_1d8
    .catch Ljava/lang/Throwable; {:try_start_199 .. :try_end_1d8} :catch_21d

    :goto_1d8
    move v0, v6

    goto/16 :goto_3f

    :cond_1db
    :try_start_1db
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    const/16 v1, 0x130

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "isShareTbsCoreAvailable false!"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    move v0, v6

    goto/16 :goto_3f

    :cond_1ee
    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    const-string v3, "tbs_sdk_extension_dex.jar"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1fd
    .catch Ljava/lang/Throwable; {:try_start_1db .. :try_end_1fd} :catch_156

    move-object v8, v0

    goto :goto_193

    :cond_1ff
    :try_start_1ff
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    const/16 v2, 0x1024

    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tbs_sdk_extension_dex not exist(with fusion dex)!"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V
    :try_end_21c
    .catch Ljava/lang/Throwable; {:try_start_1ff .. :try_end_21c} :catch_21d

    goto :goto_1d8

    :catch_21d
    move-exception v0

    :try_start_21e
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_221
    .catch Ljava/lang/Throwable; {:try_start_21e .. :try_end_221} :catch_156

    goto :goto_1d8

    :cond_222
    if-lez v0, :cond_242

    :try_start_224
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    const/16 v2, 0x1019

    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tbs_sdk_extension_dex not exist(without fusion dex)!"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    goto :goto_1d8

    :cond_242
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    const/16 v2, 0x101a

    new-instance v3, Ljava/lang/Exception;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "tbs_sdk_extension_dex not exist(without fusion dex)!"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0, v2, v3}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V
    :try_end_25f
    .catch Ljava/lang/Throwable; {:try_start_224 .. :try_end_25f} :catch_21d

    goto/16 :goto_1d8

    :cond_261
    :try_start_261
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2df

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v4

    :goto_26b
    const-string v0, "QbSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QbSdk init optDirExtension #1 is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "QbSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "new DexLoader #1 dexFile is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/bt;->b(Landroid/content/Context;)Ljava/nio/channels/FileLock;

    new-instance v0, Lcom/tencent/smtt/export/external/DexLoader;

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/smtt/export/external/DexLoader;-><init>(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "com.tencent.tbs.sdk.extension.TbsSDKExtension"

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/export/external/DexLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/QbSdk;->loadTBSSDKExtension(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const-string v1, "setClientVersion"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v7

    goto/16 :goto_3f

    :cond_2df
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_2e2
    .catch Ljava/lang/Throwable; {:try_start_261 .. :try_end_2e2} :catch_156

    move-result-object v4

    goto :goto_26b
.end method

.method static a(Landroid/content/Context;ZZ)Z
    .registers 12

    const/4 v2, -0x1

    const/16 v8, 0x133

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsPVConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsPVConfig;->getDisabledCoreVersion()I

    move-result v0

    if-eqz v0, :cond_21

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/smtt/sdk/am;->j(Landroid/content/Context;)I

    move-result v1

    if-ne v0, v1, :cond_21

    const-string v0, "QbSdk"

    const-string v1, "force use sys by remote switch"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    :goto_20
    return v4

    :cond_21
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->i(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_37

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    const/16 v1, 0x12e

    invoke-virtual {v0, p0, v1}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;I)V

    goto :goto_20

    :cond_37
    invoke-static {p0, p1}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_45

    const-string v0, "QbSdk"

    const-string v1, "QbSdk.init failure!"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    :cond_45
    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const-string v1, "canLoadX5Core"

    new-array v5, v3, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    new-array v6, v3, [Ljava/lang/Object;

    const v7, 0xaa71

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v0, v1, v5, v6}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2e8

    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_6f

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    const-string v5, "AuthenticationFail"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    :cond_6f
    instance-of v0, v1, Landroid/os/Bundle;

    if-nez v0, :cond_96

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    const/16 v2, 0x14a

    new-instance v3, Ljava/lang/Throwable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v2, v3}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    const-string v0, "loaderror"

    const-string v1, "ret not instance of bundle"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20

    :cond_96
    move-object v0, v1

    check-cast v0, Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_c3

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    const/16 v2, 0x14b

    new-instance v3, Ljava/lang/Throwable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v2, v3}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    const-string v0, "loaderror"

    const-string v1, "empty bundle"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_c3
    :try_start_c3
    const-string v1, "result_code"

    const/4 v5, -0x1

    invoke-virtual {v0, v1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
    :try_end_c9
    .catch Ljava/lang/Exception; {:try_start_c3 .. :try_end_c9} :catch_139

    move-result v1

    move v5, v1

    :goto_cb
    if-nez v5, :cond_155

    move v2, v3

    :goto_ce
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_158

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->d(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Lcom/tencent/smtt/sdk/o;->a(I)V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->d(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/smtt/sdk/QbSdk;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_ff

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/tencent/smtt/sdk/QbSdk;->p:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/smtt/sdk/QbSdk;->p:Ljava/lang/String;

    :cond_ff
    sget-object v1, Lcom/tencent/smtt/sdk/QbSdk;->p:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v3, 0x6

    if-eq v1, v3, :cond_10c

    const-string v1, ""

    sput-object v1, Lcom/tencent/smtt/sdk/QbSdk;->p:Ljava/lang/String;

    :cond_10c
    :try_start_10c
    const-string v1, "tbs_jarfiles"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/smtt/sdk/QbSdk;->t:[Ljava/lang/String;
    :try_end_114
    .catch Ljava/lang/Throwable; {:try_start_10c .. :try_end_114} :catch_1f8

    sget-object v1, Lcom/tencent/smtt/sdk/QbSdk;->t:[Ljava/lang/String;

    instance-of v1, v1, [Ljava/lang/String;

    if-nez v1, :cond_204

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sJarFiles not instanceof String[]: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/tencent/smtt/sdk/QbSdk;->t:[Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v8, v1}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    goto/16 :goto_20

    :catch_139
    move-exception v1

    const-string v5, "QbSdk"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "bundle.getInt(KEY_RESULT_CODE) error : "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v2

    goto/16 :goto_cb

    :cond_155
    move v2, v4

    goto/16 :goto_ce

    :cond_158
    :try_start_158
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xc

    if-lt v1, v6, :cond_189

    const-string v1, "tbs_core_version"

    const-string v6, "0"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/smtt/sdk/QbSdk;->p:Ljava/lang/String;
    :try_end_168
    .catch Ljava/lang/Exception; {:try_start_158 .. :try_end_168} :catch_19a

    :cond_168
    :goto_168
    :try_start_168
    sget-object v1, Lcom/tencent/smtt/sdk/QbSdk;->p:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/tencent/smtt/sdk/QbSdk;->o:I
    :try_end_170
    .catch Ljava/lang/NumberFormatException; {:try_start_168 .. :try_end_170} :catch_1a0

    :goto_170
    sget v1, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    invoke-static {v1}, Lcom/tencent/smtt/sdk/o;->a(I)V

    sget v1, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    if-nez v1, :cond_1a4

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "sTbsVersion is 0"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v8, v1}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    goto/16 :goto_20

    :cond_189
    :try_start_189
    const-string v1, "tbs_core_version"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/smtt/sdk/QbSdk;->p:Ljava/lang/String;

    sget-object v1, Lcom/tencent/smtt/sdk/QbSdk;->p:Ljava/lang/String;

    if-nez v1, :cond_168

    const-string v1, "0"

    sput-object v1, Lcom/tencent/smtt/sdk/QbSdk;->p:Ljava/lang/String;
    :try_end_199
    .catch Ljava/lang/Exception; {:try_start_189 .. :try_end_199} :catch_19a

    goto :goto_168

    :catch_19a
    move-exception v1

    const-string v1, "0"

    sput-object v1, Lcom/tencent/smtt/sdk/QbSdk;->p:Ljava/lang/String;

    goto :goto_168

    :catch_1a0
    move-exception v1

    sput v4, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    goto :goto_170

    :cond_1a4
    sget v1, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    if-lez v1, :cond_1ae

    sget v1, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    const/16 v6, 0x6362

    if-le v1, v6, :cond_1b4

    :cond_1ae
    sget v1, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    const/16 v6, 0x6380

    if-ne v1, v6, :cond_1f6

    :cond_1b4
    :goto_1b4
    if-eqz v3, :cond_10c

    const-string v0, "TbsDownload"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "is_obsolete --> delete old core:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "is_obsolete --> delete old core:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v3, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v8, v1}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    goto/16 :goto_20

    :cond_1f6
    move v3, v4

    goto :goto_1b4

    :catch_1f8
    move-exception v0

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    const/16 v2, 0x149

    invoke-virtual {v1, p0, v2, v0}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    goto/16 :goto_20

    :cond_204
    :try_start_204
    const-string v1, "tbs_librarypath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/QbSdk;->d:Ljava/lang/String;
    :try_end_20c
    .catch Ljava/lang/Exception; {:try_start_204 .. :try_end_20c} :catch_371

    const/4 v1, 0x0

    if-eqz v5, :cond_21d

    :try_start_20f
    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const-string v3, "getErrorCodeForLogReport"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0, v3, v4, v6}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21c
    .catch Ljava/lang/Exception; {:try_start_20f .. :try_end_21c} :catch_253

    move-result-object v1

    :cond_21d
    :goto_21d
    packed-switch v5, :pswitch_data_374

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    const/16 v3, 0x19f

    new-instance v4, Ljava/lang/Throwable;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "detail: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "errcode"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v3, v4}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    move v4, v2

    :cond_248
    :goto_248
    if-nez v4, :cond_20

    const-string v0, "loaderror"

    const-string v1, "319"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20

    :catch_253
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_21d

    :pswitch_258
    instance-of v0, v1, Ljava/lang/Integer;

    if-eqz v0, :cond_280

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v4, Ljava/lang/Throwable;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "detail: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0, v0, v4}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    move v4, v2

    goto :goto_248

    :cond_280
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    new-instance v3, Ljava/lang/Throwable;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "detail: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v8, v3}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    move v4, v2

    goto :goto_248

    :pswitch_29d
    instance-of v0, v1, Ljava/lang/Integer;

    if-eqz v0, :cond_2c5

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v3

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v4, Ljava/lang/Throwable;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "detail: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0, v0, v4}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    move v4, v2

    goto :goto_248

    :cond_2c5
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    const/16 v3, 0x194

    new-instance v4, Ljava/lang/Throwable;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "detail: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v3, v4}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    move v4, v2

    goto/16 :goto_248

    :pswitch_2e5
    move v4, v2

    goto/16 :goto_248

    :cond_2e8
    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const-string v1, "canLoadX5"

    new-array v2, v3, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v2, v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/smtt/sdk/a;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v0, v1, v2, v5}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_366

    instance-of v0, v1, Ljava/lang/String;

    if-eqz v0, :cond_313

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    const-string v2, "AuthenticationFail"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_20

    :cond_313
    instance-of v0, v1, Ljava/lang/Boolean;

    if-eqz v0, :cond_248

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->d()I

    move-result v0

    sput v0, Lcom/tencent/smtt/sdk/QbSdk;->o:I

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->d()I

    move-result v0

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;I)Z

    move-result v2

    move-object v0, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_331

    if-nez v2, :cond_331

    move v4, v3

    :cond_331
    if-nez v4, :cond_20

    const-string v0, "loaderror"

    const-string v3, "318"

    invoke-static {v0, v3}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "loaderror"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "isX5Disable:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "loaderror"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "(Boolean) ret:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_20

    :cond_366
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    const/16 v1, 0x134

    invoke-virtual {v0, p0, v1}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;I)V

    goto/16 :goto_248

    :catch_371
    move-exception v0

    goto/16 :goto_20

    :pswitch_data_374
    .packed-switch -0x2
        :pswitch_29d
        :pswitch_258
        :pswitch_2e5
    .end packed-switch
.end method

.method static synthetic a(Z)Z
    .registers 1

    sput-boolean p0, Lcom/tencent/smtt/sdk/QbSdk;->B:Z

    return p0
.end method

.method protected static b()Ljava/lang/String;
    .registers 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bu;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    const-string v1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v2, "getGUID"

    new-array v3, v4, [Ljava/lang/Class;

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2a

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_2a

    check-cast v0, Ljava/lang/String;

    :goto_29
    return-object v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method static b(Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :goto_3
    return v0

    :cond_4
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.tencent.portfolio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_73

    const-string v1, "QbSdk"

    const-string v2, "clearPluginConfigFile #1"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v1

    iget-object v1, v1, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v2, "app_versionname"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.tencent.portfolio"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    const-string v3, "QbSdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "clearPluginConfigFile oldAppVersionName is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newAppVersionName is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_73

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_73

    const-string v1, "plugin_setting"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    if-eqz v1, :cond_73

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v1, "QbSdk"

    const-string v2, "clearPluginConfigFile done"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_73} :catch_75

    :cond_73
    const/4 v0, 0x1

    goto :goto_3

    :catch_75
    move-exception v1

    const-string v2, "QbSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clearPluginConfigFile error is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method static synthetic c()Lcom/tencent/smtt/sdk/TbsListener;
    .registers 1

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->D:Lcom/tencent/smtt/sdk/TbsListener;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)Z
    .registers 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    :try_start_2
    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    if-eqz v0, :cond_8

    move v0, v6

    :goto_7
    return v0

    :cond_8
    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1b

    const-string v0, "QbSdk"

    const-string v1, "QbSdk initForX5DisableConfig (false) optDir == null"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    goto :goto_7

    :cond_1b
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_56

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4b

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "tbs_sdk_extension_dex.jar"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v8, v0

    :goto_33
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_67

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    const/16 v1, 0x196

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "initForX5DisableConfig failure -- tbs_sdk_extension_dex.jar is not exist!"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1, v2}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    move v0, v7

    goto :goto_7

    :cond_4b
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    const/16 v1, 0x130

    invoke-virtual {v0, p0, v1}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;I)V

    move v0, v7

    goto :goto_7

    :cond_56
    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    new-instance v0, Ljava/io/File;

    const-string v3, "tbs_sdk_extension_dex.jar"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v8, v0

    goto :goto_33

    :cond_67
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e5

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v4

    :goto_71
    const-string v0, "QbSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QbSdk init optDirExtension #3 is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "QbSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "new DexLoader #4 dexFile is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/bt;->b(Landroid/content/Context;)Ljava/nio/channels/FileLock;

    new-instance v0, Lcom/tencent/smtt/export/external/DexLoader;

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/smtt/export/external/DexLoader;-><init>(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "com.tencent.tbs.sdk.extension.TbsSDKExtension"

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/export/external/DexLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/QbSdk;->loadTBSSDKExtension(Landroid/content/Context;Ljava/lang/String;)V

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const-string v1, "setClientVersion"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v6

    goto/16 :goto_7

    :cond_e5
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_e8
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_e8} :catch_ea

    move-result-object v4

    goto :goto_71

    :catch_ea
    move-exception v0

    const-string v1, "QbSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "initForX5DisableConfig sys WebView: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    goto/16 :goto_7
.end method

.method public static canLoadVideo(Landroid/content/Context;)Z
    .registers 7

    const/4 v5, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const-string v1, "canLoadVideo"

    new-array v3, v5, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v2

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v0, v1, v3, v4}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_30

    move-object v0, v1

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2c

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    const/16 v3, 0x139

    invoke-virtual {v0, p0, v3}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;I)V

    :cond_2c
    :goto_2c
    if-nez v1, :cond_3a

    move v0, v2

    :goto_2f
    return v0

    :cond_30
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    const/16 v3, 0x13a

    invoke-virtual {v0, p0, v3}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;I)V

    goto :goto_2c

    :cond_3a
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_2f
.end method

.method public static canLoadX5(Landroid/content/Context;)Z
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0, v0}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;ZZ)Z

    move-result v0

    return v0
.end method

.method public static canLoadX5FirstTimeThirdApp(Landroid/content/Context;)Z
    .registers 9

    const/4 v0, 0x1

    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.moji.mjweather"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_17

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ne v1, v2, :cond_17

    :goto_16
    return v0

    :cond_17
    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    if-nez v0, :cond_d1

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_2e

    const-string v0, "QbSdk"

    const-string v1, "QbSdk canLoadX5FirstTimeThirdApp (false) optDir == null"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    goto :goto_16

    :cond_2e
    new-instance v7, Ljava/io/File;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tbs_sdk_extension_dex.jar"

    invoke-direct {v7, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_49

    const-string v0, "QbSdk"

    const-string v1, "QbSdk canLoadX5FirstTimeThirdApp (false) dexFile.exists()=false"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v6

    goto :goto_16

    :cond_49
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c5

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v4

    :goto_53
    const-string v0, "QbSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "QbSdk init optDirExtension #2 is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "QbSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "new DexLoader #2 dexFile is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/bt;->b(Landroid/content/Context;)Ljava/nio/channels/FileLock;

    new-instance v0, Lcom/tencent/smtt/export/external/DexLoader;

    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v7}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/smtt/export/external/DexLoader;-><init>(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "com.tencent.tbs.sdk.extension.TbsSDKExtension"

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/export/external/DexLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    if-nez v0, :cond_d1

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->e(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_ca

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_ca

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v1, 0xe3

    const-string v2, "host context is null!"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setLoadErrorCode(ILjava/lang/String;)V

    move v0, v6

    goto/16 :goto_16

    :cond_c5
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    goto :goto_53

    :cond_ca
    invoke-virtual {v7}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/QbSdk;->loadTBSSDKExtension(Landroid/content/Context;Ljava/lang/String;)V

    :cond_d1
    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const-string v1, "canLoadX5CoreForThirdApp"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_ed

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_ed

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_ea
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_ea} :catch_f0

    move-result v0

    goto/16 :goto_16

    :cond_ed
    move v0, v6

    goto/16 :goto_16

    :catch_f0
    move-exception v0

    const-string v1, "QbSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "canLoadX5FirstTimeThirdApp sys WebView: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v6

    goto/16 :goto_16
.end method

.method public static canOpenFile(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/tencent/smtt/sdk/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/tencent/smtt/sdk/h;

    invoke-direct {v0, p0, p1, p2}, Lcom/tencent/smtt/sdk/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/h;->start()V

    return-void
.end method

.method public static canOpenMimeFileType(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 4

    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_7
    return v1
.end method

.method public static canOpenWebPlus(Landroid/content/Context;)Z
    .registers 10

    const/4 v4, 0x0

    const v8, 0x54c5638

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget v0, Lcom/tencent/smtt/sdk/QbSdk;->x:I

    if-nez v0, :cond_10

    invoke-static {}, Lcom/tencent/smtt/sdk/a;->a()I

    move-result v0

    sput v0, Lcom/tencent/smtt/sdk/QbSdk;->x:I

    :cond_10
    const-string v0, "QbSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "canOpenWebPlus - totalRAM: "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v5, Lcom/tencent/smtt/sdk/QbSdk;->x:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x7

    if-lt v0, v3, :cond_31

    sget v0, Lcom/tencent/smtt/sdk/QbSdk;->x:I

    sget v3, Lcom/tencent/smtt/sdk/QbSdk;->y:I

    if-ge v0, v3, :cond_32

    :cond_31
    :goto_31
    return v2

    :cond_32
    if-eqz p0, :cond_31

    :try_start_34
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    const-string v5, "tbs.conf"

    invoke-direct {v0, v3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_4d
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_4d} :catch_d3
    .catchall {:try_start_34 .. :try_end_4d} :catchall_e9

    :try_start_4d
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v0, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v5, "android_sdk_max_supported"

    invoke-virtual {v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "android_sdk_min_supported"

    invoke-virtual {v0, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-gt v7, v5, :cond_73

    if-ge v7, v6, :cond_8d

    :cond_73
    const-string v0, "QbSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "canOpenWebPlus - sdkVersion: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_87
    .catch Ljava/lang/Throwable; {:try_start_4d .. :try_end_87} :catch_154
    .catchall {:try_start_4d .. :try_end_87} :catchall_14f

    :try_start_87
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_87 .. :try_end_8a} :catch_8b

    goto :goto_31

    :catch_8b
    move-exception v0

    goto :goto_31

    :cond_8d
    :try_start_8d
    const-string v5, "tbs_core_version"

    invoke-virtual {v0, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_96
    .catch Ljava/lang/Throwable; {:try_start_8d .. :try_end_96} :catch_154
    .catchall {:try_start_8d .. :try_end_96} :catchall_14f

    move-result v0

    :try_start_97
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9a
    .catch Ljava/lang/Exception; {:try_start_97 .. :try_end_9a} :catch_13e

    :goto_9a
    :try_start_9a
    new-instance v5, Ljava/io/File;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/am;->t(Landroid/content/Context;)Ljava/io/File;

    move-result-object v3

    const-string v6, "tbs_extension.conf"

    invoke-direct {v5, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_aa
    .catch Ljava/lang/Throwable; {:try_start_9a .. :try_end_aa} :catch_124
    .catchall {:try_start_9a .. :try_end_aa} :catchall_136

    :try_start_aa
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    invoke-virtual {v4, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    const-string v5, "tbs_local_version"

    invoke-virtual {v4, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const-string v6, "app_versioncode_for_switch"

    invoke-virtual {v4, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_c5
    .catch Ljava/lang/Throwable; {:try_start_aa .. :try_end_c5} :catch_14c
    .catchall {:try_start_aa .. :try_end_c5} :catchall_147

    move-result v6

    if-eq v0, v8, :cond_ca

    if-ne v5, v8, :cond_f1

    :cond_ca
    move v0, v2

    :goto_cb
    :try_start_cb
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_ce
    .catch Ljava/lang/Exception; {:try_start_cb .. :try_end_ce} :catch_143

    :goto_ce
    if-nez v0, :cond_31

    move v2, v1

    goto/16 :goto_31

    :catch_d3
    move-exception v0

    move-object v1, v4

    :goto_d5
    :try_start_d5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    const-string v0, "QbSdk"

    const-string v3, "canOpenWebPlus - canLoadX5 Exception"

    invoke-static {v0, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_df
    .catchall {:try_start_d5 .. :try_end_df} :catchall_151

    if-eqz v1, :cond_31

    :try_start_e1
    invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e4
    .catch Ljava/lang/Exception; {:try_start_e1 .. :try_end_e4} :catch_e6

    goto/16 :goto_31

    :catch_e6
    move-exception v0

    goto/16 :goto_31

    :catchall_e9
    move-exception v0

    move-object v3, v4

    :goto_eb
    if-eqz v3, :cond_f0

    :try_start_ed
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_f0
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_f0} :catch_141

    :cond_f0
    :goto_f0
    throw v0

    :cond_f1
    if-le v0, v5, :cond_f5

    move v0, v2

    goto :goto_cb

    :cond_f5
    if-ne v0, v5, :cond_158

    if-lez v6, :cond_101

    :try_start_f9
    invoke-static {p0}, Lcom/tencent/smtt/utils/b;->b(Landroid/content/Context;)I

    move-result v0

    if-eq v6, v0, :cond_101

    move v0, v2

    goto :goto_cb

    :cond_101
    const-string v0, "x5_disabled"

    invoke-virtual {v4, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_122

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v4, "switch_backupcore_enable"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_11d
    .catch Ljava/lang/Throwable; {:try_start_f9 .. :try_end_11d} :catch_14c
    .catchall {:try_start_f9 .. :try_end_11d} :catchall_147

    move-result v0

    if-nez v0, :cond_122

    move v0, v1

    goto :goto_cb

    :cond_122
    move v0, v2

    goto :goto_cb

    :catch_124
    move-exception v0

    :goto_125
    :try_start_125
    const-string v0, "QbSdk"

    const-string v3, "canOpenWebPlus - isX5Disabled Exception"

    invoke-static {v0, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12c
    .catchall {:try_start_125 .. :try_end_12c} :catchall_149

    if-eqz v4, :cond_131

    :try_start_12e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_131
    .catch Ljava/lang/Exception; {:try_start_12e .. :try_end_131} :catch_133

    :cond_131
    move v0, v1

    goto :goto_ce

    :catch_133
    move-exception v0

    move v0, v1

    goto :goto_ce

    :catchall_136
    move-exception v0

    move-object v3, v4

    :goto_138
    if-eqz v3, :cond_13d

    :try_start_13a
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_13a .. :try_end_13d} :catch_145

    :cond_13d
    :goto_13d
    throw v0

    :catch_13e
    move-exception v3

    goto/16 :goto_9a

    :catch_141
    move-exception v1

    goto :goto_f0

    :catch_143
    move-exception v3

    goto :goto_ce

    :catch_145
    move-exception v1

    goto :goto_13d

    :catchall_147
    move-exception v0

    goto :goto_138

    :catchall_149
    move-exception v0

    move-object v3, v4

    goto :goto_138

    :catch_14c
    move-exception v0

    move-object v4, v3

    goto :goto_125

    :catchall_14f
    move-exception v0

    goto :goto_eb

    :catchall_151
    move-exception v0

    move-object v3, v1

    goto :goto_eb

    :catch_154
    move-exception v0

    move-object v1, v3

    goto/16 :goto_d5

    :cond_158
    move v0, v2

    goto/16 :goto_cb
.end method

.method public static canUseVideoFeatrue(Landroid/content/Context;I)Z
    .registers 8

    const/4 v5, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const-string v2, "canUseVideoFeatrue"

    new-array v3, v5, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_25

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_25

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_24
    return v0

    :cond_25
    move v0, v1

    goto :goto_24
.end method

.method public static checkTbsValidity(Landroid/content/Context;)V
    .registers 3

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    invoke-static {p0}, Lcom/tencent/smtt/utils/t;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "QbSdk"

    const-string v1, "sys WebView: SysWebViewForcedBy checkTbsValidity"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    const/16 v1, 0x1a3

    invoke-virtual {v0, p0, v1}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;I)V

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->forceSysWebView()V

    goto :goto_2
.end method

.method public static clear(Landroid/content/Context;)V
    .registers 1

    return-void
.end method

.method public static clearAllWebViewCache(Landroid/content/Context;Z)V
    .registers 8

    const/4 v0, 0x1

    const-string v1, "QbSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clearAllWebViewCache("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_26
    new-instance v2, Lcom/tencent/smtt/sdk/WebView;

    invoke-direct {v2, p0}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/WebView;->getWebViewClientExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_2e} :catch_4e

    move-result-object v2

    if-eqz v2, :cond_67

    :try_start_31
    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v1

    if-eqz v1, :cond_44

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v2

    if-eqz v2, :cond_44

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v1

    invoke-virtual {v1, p0, p1}, Lcom/tencent/smtt/sdk/bu;->a(Landroid/content/Context;Z)V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_44} :catch_d2

    :cond_44
    :goto_44
    if-eqz v0, :cond_69

    const-string v0, "QbSdk"

    const-string v1, "is_in_x5_mode --> no need to clear system webview!"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4d
    return-void

    :catch_4e
    move-exception v0

    :goto_4f
    const-string v2, "QbSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "clearAllWebViewCache exception 2 -- "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_67
    move v0, v1

    goto :goto_44

    :cond_69
    :try_start_69
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_83

    const-string v1, "searchBoxJavaBridge_"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v1, "accessibility"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v1, "accessibilityTraversal"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_83
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->clearCache(Z)V

    if-eqz p1, :cond_93

    invoke-static {p0}, Landroid/webkit/CookieSyncManager;->createInstance(Landroid/content/Context;)Landroid/webkit/CookieSyncManager;

    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieManager;->removeAllCookie()V

    :cond_93
    invoke-static {p0}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearUsernamePassword()V

    invoke-static {p0}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearHttpAuthUsernamePassword()V

    invoke-static {p0}, Landroid/webkit/WebViewDatabase;->getInstance(Landroid/content/Context;)Landroid/webkit/WebViewDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebViewDatabase;->clearFormData()V

    invoke-static {}, Landroid/webkit/WebStorage;->getInstance()Landroid/webkit/WebStorage;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebStorage;->deleteAllData()V

    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebIconDatabase;->removeAllIcons()V
    :try_end_b6
    .catch Ljava/lang/Throwable; {:try_start_69 .. :try_end_b6} :catch_b7

    goto :goto_4d

    :catch_b7
    move-exception v0

    const-string v1, "QbSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "clearAllWebViewCache exception 1 -- "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4d

    :catch_d2
    move-exception v1

    move-object v5, v1

    move v1, v0

    move-object v0, v5

    goto/16 :goto_4f
.end method

.method public static closeFileReader(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/bt;->a(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bu;->p()V

    :cond_14
    return-void
.end method

.method public static continueLoadSo(Landroid/content/Context;)V
    .registers 5

    const/4 v3, 0x0

    const-string v0, "com.tencent.mm"

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-boolean v0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCreated:Z

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const-string v1, "continueLoadSo"

    new-array v2, v3, [Ljava/lang/Class;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1c
    return-void
.end method

.method public static createMiniQBShortCut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)Z
    .registers 15

    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_9

    move v0, v1

    :goto_8
    return v0

    :cond_9
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    move v0, v1

    goto :goto_8

    :cond_11
    invoke-static {p0, p1, p2}, Lcom/tencent/smtt/sdk/QbSdk;->isMiniQBShortCutExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-ne v0, v2, :cond_19

    move v0, v1

    goto :goto_8

    :cond_19
    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v3

    if-eqz v3, :cond_7d

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v0

    if-eqz v0, :cond_7d

    const/4 v0, 0x0

    instance-of v4, p3, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v4, :cond_30

    check-cast p3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_30
    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/bu;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v3

    const-string v4, "QbSdk"

    const-string v5, "qbsdk createMiniQBShortCut"

    invoke-static {v4, v5}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v5, "createMiniQBShortCut"

    new-array v6, v10, [Ljava/lang/Class;

    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v1

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v8

    const-class v7, Landroid/graphics/Bitmap;

    aput-object v7, v6, v9

    new-array v7, v10, [Ljava/lang/Object;

    aput-object p0, v7, v1

    aput-object p1, v7, v2

    aput-object p2, v7, v8

    aput-object v0, v7, v9

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v3, "QbSdk"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "qbsdk after createMiniQBShortCut ret: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_7b

    move v0, v2

    goto :goto_8

    :cond_7b
    move v0, v1

    goto :goto_8

    :cond_7d
    move v0, v1

    goto :goto_8
.end method

.method static synthetic d()Lcom/tencent/smtt/sdk/TbsListener;
    .registers 1

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->E:Lcom/tencent/smtt/sdk/TbsListener;

    return-object v0
.end method

.method private static d(Landroid/content/Context;)V
    .registers 11

    const/4 v9, 0x3

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v1, -0x1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->C:Z

    const/4 v2, 0x0

    :try_start_8
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v0, v3, :cond_23

    const-string v0, "tbs_preloadx5_check_cfg_file"

    const/4 v3, 0x4

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_14} :catch_c5

    move-result-object v3

    :goto_15
    :try_start_15
    const-string v0, "tbs_preload_x5_recorder"

    const/4 v2, -0x1

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_1b} :catch_165

    move-result v2

    if-ltz v2, :cond_171

    add-int/lit8 v2, v2, 0x1

    if-le v2, v6, :cond_2b

    :cond_22
    :goto_22
    return-void

    :cond_23
    :try_start_23
    const-string v0, "tbs_preloadx5_check_cfg_file"

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_29} :catch_c5

    move-result-object v3

    goto :goto_15

    :cond_2b
    move v0, v2

    :goto_2c
    :try_start_2c
    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v4

    invoke-virtual {v4, p0}, Lcom/tencent/smtt/sdk/am;->j(Landroid/content/Context;)I
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_33} :catch_16a

    move-result v4

    if-lez v4, :cond_22

    if-gt v0, v6, :cond_45

    :try_start_38
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "tbs_preload_x5_recorder"

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_45
    const-string v0, "tbs_preload_x5_counter"

    const/4 v6, -0x1

    invoke-interface {v3, v0, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_e1

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    const-string v7, "tbs_preload_x5_counter"

    add-int/lit8 v0, v0, 0x1

    invoke-interface {v6, v7, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_5d
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_5d} :catch_16e

    :goto_5d
    if-le v0, v9, :cond_103

    :try_start_5f
    const-string v0, "tbs_preload_x5_version"

    const/4 v1, -0x1

    invoke-interface {v3, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    if-ne v0, v4, :cond_e4

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Z)V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/ai;->a()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_86

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;Z)V

    :cond_86
    const-string v2, "QbSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "QbSdk - preload_x5_check: tbs core "

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is deleted!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a0
    const-string v2, "tbs_precheck_disable_version"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_a8
    .catch Ljava/lang/Throwable; {:try_start_5f .. :try_end_a8} :catch_aa

    goto/16 :goto_22

    :catch_aa
    move-exception v0

    const-string v1, "QbSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tbs_preload_x5_counter disable version exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_22

    :catch_c5
    move-exception v0

    move-object v3, v2

    move v4, v1

    move v2, v1

    :goto_c9
    const-string v6, "QbSdk"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "tbs_preload_x5_counter Inc exception:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e1
    move v0, v1

    goto/16 :goto_5d

    :cond_e4
    :try_start_e4
    const-string v2, "QbSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "QbSdk - preload_x5_check -- reset exception core_ver:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_102
    .catch Ljava/lang/Throwable; {:try_start_e4 .. :try_end_102} :catch_aa

    goto :goto_a0

    :cond_103
    if-lez v2, :cond_11d

    if-gt v2, v9, :cond_11d

    const-string v0, "QbSdk"

    const-string v1, "QbSdk - preload_x5_check -- before creation!"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/bt;->a(Landroid/content/Context;)V

    const-string v0, "QbSdk"

    const-string v1, "QbSdk - preload_x5_check -- after creation!"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v5

    :cond_11d
    :try_start_11d
    const-string v0, "tbs_preload_x5_counter"

    const/4 v2, -0x1

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_135

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "tbs_preload_x5_counter"

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v3, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z
    :try_end_135
    .catch Ljava/lang/Throwable; {:try_start_11d .. :try_end_135} :catch_14b

    :cond_135
    :goto_135
    const-string v0, "QbSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "QbSdk -- preload_x5_check result:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_22

    :catch_14b
    move-exception v0

    const-string v2, "QbSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "tbs_preload_x5_counter Dec exception:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_135

    :catch_165
    move-exception v0

    move v2, v1

    move v4, v1

    goto/16 :goto_c9

    :catch_16a
    move-exception v0

    move v4, v1

    goto/16 :goto_c9

    :catch_16e
    move-exception v0

    goto/16 :goto_c9

    :cond_171
    move v0, v2

    move v2, v1

    goto/16 :goto_2c
.end method

.method public static deleteMiniQBShortCut(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p0, :cond_7

    :cond_6
    :goto_6
    return v0

    :cond_7
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/bu;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v2

    const-string v3, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v4, "deleteMiniQBShortCut"

    new-array v5, v8, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v0

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v1

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v7

    new-array v6, v8, [Ljava/lang/Object;

    aput-object p0, v6, v0

    aput-object p1, v6, v1

    aput-object p2, v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    move v0, v1

    goto :goto_6
.end method

.method public static disAllowThirdAppDownload()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->c:Z

    return-void
.end method

.method public static disableAutoCreateX5Webview()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->j:Z

    return-void
.end method

.method public static fileInfoDetect(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_39

    :try_start_c
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bu;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    const-string v1, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v2, "fileInfoDetect"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-class v5, Landroid/webkit/ValueCallback;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    aput-object p1, v4, v5

    const/4 v5, 0x2

    aput-object p2, v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_39} :catch_3a

    :cond_39
    :goto_39
    return-void

    :catch_3a
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_39
.end method

.method public static forceSysWebView()V
    .registers 2

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->b:Z

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SysWebViewForcedByOuter: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/QbSdk;->u:Ljava/lang/String;

    const-string v0, "QbSdk"

    const-string v1, "sys WebView: SysWebViewForcedByOuter"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static getApkFileSize(Landroid/content/Context;)J
    .registers 5

    const-wide/16 v0, 0x0

    if-eqz p0, :cond_14

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object v2

    iget-object v2, v2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string v3, "tbs_apkfilesize"

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :cond_14
    return-wide v0
.end method

.method public static getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const-string v1, ""

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "activity"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v4, v2, :cond_32

    iget-object v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2c} :catch_2e

    :goto_2c
    move-object v1, v0

    goto :goto_1a

    :catch_2e
    move-exception v0

    const-string v1, ""

    :cond_31
    return-object v1

    :cond_32
    move-object v0, v1

    goto :goto_2c
.end method

.method public static getDexLoaderFileList(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .registers 11

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->t:[Ljava/lang/String;

    instance-of v0, v0, [Ljava/lang/String;

    if-eqz v0, :cond_2b

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->t:[Ljava/lang/String;

    array-length v2, v0

    new-array v0, v2, [Ljava/lang/String;

    :goto_f
    if-ge v1, v2, :cond_4f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/tencent/smtt/sdk/QbSdk;->t:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_2b
    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const-string v2, "getJarFiles"

    new-array v3, v7, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v1

    const-class v4, Landroid/content/Context;

    aput-object v4, v3, v5

    const-class v4, Ljava/lang/String;

    aput-object v4, v3, v6

    new-array v4, v7, [Ljava/lang/Object;

    aput-object p0, v4, v1

    aput-object p1, v4, v5

    aput-object p2, v4, v6

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, [Ljava/lang/String;

    if-eqz v2, :cond_50

    :goto_4d
    check-cast v0, [Ljava/lang/String;

    :cond_4f
    return-object v0

    :cond_50
    new-array v0, v5, [Ljava/lang/String;

    const-string v2, ""

    aput-object v2, v0, v1

    goto :goto_4d
.end method

.method public static getDownloadWithoutWifi()Z
    .registers 1

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->F:Z

    return v0
.end method

.method public static getIsSysWebViewForcedByOuter()Z
    .registers 1

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->b:Z

    return v0
.end method

.method public static getJarFilesAndLibraryPath(Landroid/content/Context;)Z
    .registers 8

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    if-nez v0, :cond_f

    const-string v0, "QbSdk"

    const-string v2, "getJarFilesAndLibraryPath sExtensionObj is null"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_e
    return v0

    :cond_f
    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const-string v3, "canLoadX5CoreAndNotLoadSo"

    new-array v4, v2, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    new-array v5, v2, [Ljava/lang/Object;

    const v6, 0xaa71

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v0, v3, v4, v5}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    if-nez v0, :cond_4a

    const-string v0, "QbSdk"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getJarFilesAndLibraryPath bundle is null and coreverison is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v4

    invoke-virtual {v4, v2, p0}, Lcom/tencent/smtt/sdk/am;->a(ZLandroid/content/Context;)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_e

    :cond_4a
    const-string v1, "tbs_jarfiles"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/tencent/smtt/sdk/QbSdk;->t:[Ljava/lang/String;

    const-string v1, "tbs_librarypath"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/QbSdk;->d:Ljava/lang/String;

    move v0, v2

    goto :goto_e
.end method

.method public static getMiniQBVersion(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/bt;->a(Landroid/content/Context;)V

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bu;->f()Ljava/lang/String;

    move-result-object v0

    :goto_17
    return-object v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public static getOnlyDownload()Z
    .registers 1

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->k:Z

    return v0
.end method

.method public static getQQBuildNumber()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->A:Ljava/lang/String;

    return-object v0
.end method

.method public static getSettings()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    return-object v0
.end method

.method public static getTBSInstalling()Z
    .registers 1

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->G:Z

    return v0
.end method

.method public static getTID()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->z:Ljava/lang/String;

    return-object v0
.end method

.method public static getTbsResourcesPath(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTbsVersion(Landroid/content/Context;)I
    .registers 4

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->a(Landroid/content/Context;Z)I

    move-result v0

    :cond_b
    :goto_b
    return v0

    :cond_c
    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/am;->j(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p0}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/ai;->c()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->reset(Landroid/content/Context;)V

    goto :goto_b
.end method

.method public static getTbsVersionForCrash(Landroid/content/Context;)I
    .registers 4

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/TbsShareManager;->a(Landroid/content/Context;Z)I

    move-result v0

    :cond_b
    :goto_b
    return v0

    :cond_c
    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/am;->k(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_b

    invoke-static {p0}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/ai;->c()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_b

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->reset(Landroid/content/Context;)V

    goto :goto_b
.end method

.method public static initBuglyAsync(Z)V
    .registers 1

    sput-boolean p0, Lcom/tencent/smtt/sdk/QbSdk;->i:Z

    return-void
.end method

.method public static initForinitAndNotLoadSo(Landroid/content/Context;)V
    .registers 7

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    if-nez v0, :cond_15

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/am;->r(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_16

    const-string v0, "QbSdk"

    const-string v1, "QbSdk initForinitAndNotLoadSo optDir == null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    :goto_15
    return-void

    :cond_16
    new-instance v2, Ljava/io/File;

    const-string v1, "tbs_sdk_extension_dex.jar"

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2b

    const-string v0, "QbSdk"

    const-string v1, "QbSdk initForinitAndNotLoadSo dexFile.exists()=false"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_2b
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/bt;->b(Landroid/content/Context;)Ljava/nio/channels/FileLock;

    new-instance v0, Lcom/tencent/smtt/export/external/DexLoader;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v3, v5

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/tencent/smtt/export/external/DexLoader;-><init>(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    const-string v1, "com.tencent.tbs.sdk.extension.TbsSDKExtension"

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/export/external/DexLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    goto :goto_15
.end method

.method public static initTbsSettings(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    if-nez v0, :cond_7

    sput-object p0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    :goto_6
    return-void

    :cond_7
    :try_start_7
    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_c} :catch_d

    goto :goto_6

    :catch_d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public static initX5Environment(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V
    .registers 5

    const/4 v2, 0x0

    if-nez p0, :cond_4

    :goto_3
    return-void

    :cond_4
    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->b(Landroid/content/Context;)Z

    new-instance v0, Lcom/tencent/smtt/sdk/l;

    invoke-direct {v0, p0, p1}, Lcom/tencent/smtt/sdk/l;-><init>(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V

    sput-object v0, Lcom/tencent/smtt/sdk/QbSdk;->E:Lcom/tencent/smtt/sdk/TbsListener;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/tencent/smtt/sdk/am;->b(Landroid/content/Context;Z)V

    :cond_1c
    new-instance v0, Lcom/tencent/smtt/sdk/m;

    invoke-direct {v0, p0, p1}, Lcom/tencent/smtt/sdk/m;-><init>(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V

    invoke-static {p0, v2, v2, v0}, Lcom/tencent/smtt/sdk/TbsDownloader;->needDownload(Landroid/content/Context;ZZLcom/tencent/smtt/sdk/TbsDownloader$TbsDownloaderCallback;)Z

    goto :goto_3
.end method

.method public static installLocalQbApk(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/tencent/smtt/sdk/o;->a(Z)Lcom/tencent/smtt/sdk/o;

    move-result-object v1

    invoke-virtual {v1, p0, v0, v0}, Lcom/tencent/smtt/sdk/o;->a(Landroid/content/Context;ZZ)V

    if-eqz v1, :cond_19

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/o;->b()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/bh;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/tencent/smtt/sdk/bh;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v0

    :cond_19
    return v0
.end method

.method public static intentDispatch(Lcom/tencent/smtt/sdk/WebView;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 12

    const/4 v6, 0x0

    const/4 v3, 0x0

    if-nez p0, :cond_6

    move v0, v6

    :goto_5
    return v0

    :cond_6
    const-string v0, "mttbrowser://miniqb/ch=icon?"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "url="

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_75

    add-int/lit8 v0, v0, 0x4

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :goto_20
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v0, "unknown"

    :try_start_27
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2d} :catch_65

    :goto_2d
    const-string v4, "14004"

    const-string v7, "ChannelID"

    invoke-virtual {v5, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PosID"

    invoke-virtual {v5, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "miniqb://home"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    const-string v0, "qb://navicard/addCard?cardId=168&cardName=168"

    :goto_43
    const-string v4, "QbSdk.startMiniQBToLoadUrl"

    invoke-static {v1, v0, v5, v4, v3}, Lcom/tencent/smtt/sdk/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/tencent/smtt/sdk/WebView;)I

    move-result v0

    if-eqz v0, :cond_6d

    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_6a

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v4

    if-eqz v4, :cond_6a

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    move-object v4, p3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/smtt/sdk/bu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Landroid/webkit/ValueCallback;)I

    move-result v0

    if-nez v0, :cond_6a

    const/4 v0, 0x1

    goto :goto_5

    :catch_65
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2d

    :cond_6a
    invoke-virtual {p0, v2}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_6d
    :goto_6d
    move v0, v6

    goto :goto_5

    :cond_6f
    invoke-virtual {p0, p2}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_6d

    :cond_73
    move-object v0, v2

    goto :goto_43

    :cond_75
    move-object v2, v3

    goto :goto_20
.end method

.method public static isMiniQBShortCutExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_7

    move v0, v1

    :goto_6
    return v0

    :cond_7
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloader;->getOverSea(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    move v0, v1

    goto :goto_6

    :cond_f
    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_4c

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v2

    if-eqz v2, :cond_4c

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bu;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    const-string v2, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v3, "isMiniQBShortCutExist"

    new-array v4, v7, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    aput-object v5, v4, v1

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v6

    new-array v5, v7, [Ljava/lang/Object;

    aput-object p0, v5, v1

    aput-object p1, v5, v6

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4a

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    instance-of v2, v0, Ljava/lang/Boolean;

    if-eqz v2, :cond_4e

    check-cast v0, Ljava/lang/Boolean;

    :goto_45
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_6

    :cond_4a
    move v0, v1

    goto :goto_6

    :cond_4c
    move v0, v1

    goto :goto_6

    :cond_4e
    move-object v0, v1

    goto :goto_45
.end method

.method public static isNeedInitX5FirstTime()Z
    .registers 1

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->w:Z

    return v0
.end method

.method public static isTbsCoreInited()Z
    .registers 2

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/o;->a(Z)Lcom/tencent/smtt/sdk/o;

    move-result-object v1

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/o;->g()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    :cond_e
    return v0
.end method

.method public static isX5DisabledSync(Landroid/content/Context;)Z
    .registers 9

    const/4 v7, 0x2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/tencent/smtt/sdk/ai;->a(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ai;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/ai;->c()I

    move-result v2

    if-ne v2, v7, :cond_11

    move v2, v1

    :goto_e
    if-eqz v2, :cond_13

    :goto_10
    return v0

    :cond_11
    move v2, v0

    goto :goto_e

    :cond_13
    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->c(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1b

    move v0, v1

    goto :goto_10

    :cond_1b
    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/tencent/smtt/sdk/am;->j(Landroid/content/Context;)I

    move-result v2

    sget-object v3, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const-string v4, "isX5DisabledSync"

    new-array v5, v7, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v0

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v1

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v0

    const v0, 0xaa71

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v1

    invoke-static {v3, v4, v5, v6}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4f

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_10

    :cond_4f
    move v0, v1

    goto :goto_10
.end method

.method public static loadTBSSDKExtension(Landroid/content/Context;Ljava/lang/String;)V
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sget-object v3, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    if-eqz v3, :cond_8

    :goto_7
    return-void

    :cond_8
    sget-object v3, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    if-nez v3, :cond_13

    const-string v3, "QbSdk"

    const-string v4, "QbSdk loadTBSSDKExtension sExtensionClass is null"

    invoke-static {v3, v4}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    :try_start_13
    sget-object v3, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_34} :catch_59

    move-result-object v2

    :goto_35
    :try_start_35
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_d4

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->e(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_5d

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_5d

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v0

    const/16 v1, 0xe3

    const-string v2, "host context is null!"

    invoke-virtual {v0, v1, v2}, Lcom/tencent/smtt/sdk/TbsLogReport;->setLoadErrorCode(ILjava/lang/String;)V

    goto :goto_7

    :catch_57
    move-exception v0

    goto :goto_7

    :catch_59
    move-exception v1

    move v1, v2

    move-object v2, v0

    goto :goto_35

    :cond_5d
    if-nez v1, :cond_b5

    if-nez v0, :cond_91

    sget-object v1, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    goto/16 :goto_7

    :cond_91
    sget-object v1, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    goto/16 :goto_7

    :cond_b5
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v1, v3

    const/4 v3, 0x1

    aput-object v0, v1, v3

    const/4 v0, 0x2

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsShareManager;->getHostCorePathAppDefined()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    const/4 v0, 0x3

    aput-object p1, v1, v0

    const/4 v0, 0x4

    const/4 v3, 0x0

    aput-object v3, v1, v0

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    goto/16 :goto_7

    :cond_d4
    if-nez v1, :cond_104

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->q:Ljava/lang/Class;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_f3

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    :cond_f3
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    goto/16 :goto_7

    :cond_104
    const-string v1, "com.tencent.mm"

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_116

    sget-boolean v1, Lcom/tencent/smtt/sdk/WebView;->mWebViewCreated:Z

    if-nez v1, :cond_116

    const-string v0, "notLoadSo"

    :cond_116
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v1, v3

    const/4 v3, 0x1

    aput-object p0, v1, v3

    const/4 v3, 0x2

    const/4 v4, 0x0

    aput-object v4, v1, v3

    const/4 v3, 0x3

    aput-object p1, v1, v3

    const/4 v3, 0x4

    aput-object v0, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;
    :try_end_12f
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_12f} :catch_57

    goto/16 :goto_7
.end method

.method public static declared-synchronized preInit(Landroid/content/Context;)V
    .registers 3

    const-class v0, Lcom/tencent/smtt/sdk/QbSdk;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_4
    invoke-static {p0, v1}, Lcom/tencent/smtt/sdk/QbSdk;->preInit(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_9

    monitor-exit v0

    return-void

    :catchall_9
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized preInit(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V
    .registers 7

    const-class v1, Lcom/tencent/smtt/sdk/QbSdk;

    monitor-enter v1

    :try_start_3
    invoke-static {p0}, Lcom/tencent/smtt/utils/TbsLog;->initIfNeed(Landroid/content/Context;)V

    const-string v0, "QbSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "preInit -- processName: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->getCurrentProcessName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "QbSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "preInit -- stack: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "#"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->a:Z

    sput-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->l:Z

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->s:Z

    if-nez v0, :cond_63

    new-instance v0, Lcom/tencent/smtt/sdk/j;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2, p1, p0}, Lcom/tencent/smtt/sdk/j;-><init>(Landroid/os/Looper;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;Landroid/content/Context;)V

    new-instance v2, Lcom/tencent/smtt/sdk/k;

    invoke-direct {v2, p0, v0}, Lcom/tencent/smtt/sdk/k;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    const-string v0, "tbs_preinit"

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-virtual {v2, v0}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->s:Z
    :try_end_63
    .catchall {:try_start_3 .. :try_end_63} :catchall_65

    :cond_63
    monitor-exit v1

    return-void

    :catchall_65
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static reset(Landroid/content/Context;)V
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/tencent/smtt/sdk/QbSdk;->reset(Landroid/content/Context;Z)V

    return-void
.end method

.method public static reset(Landroid/content/Context;Z)V
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "QbSdk"

    const-string v3, "QbSdk reset!"

    invoke-static {v2, v3, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_9
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsDownloader;->stopDownload()V

    if-eqz p1, :cond_98

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_98

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/tencent/smtt/sdk/am;->i(Landroid/content/Context;)I

    move-result v2

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/tencent/smtt/sdk/am;->j(Landroid/content/Context;)I

    move-result v3

    const v4, 0xa924

    if-le v2, v4, :cond_98

    if-eq v2, v3, :cond_98

    :goto_2b
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloader;->b(Landroid/content/Context;)V

    const-string v1, "tbs"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "core_share_decouple"

    invoke-static {v1, v2, v3}, Lcom/tencent/smtt/utils/k;->a(Ljava/io/File;ZLjava/lang/String;)V

    const-string v1, "QbSdk"

    const-string v2, "delete downloaded apk success"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v1, Lcom/tencent/smtt/sdk/am;->a:Ljava/lang/ThreadLocal;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "bugly_switch.txt"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_61

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    :cond_61
    if-eqz v0, :cond_7d

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/am;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/tencent/smtt/sdk/am;->u(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;Ljava/io/File;)Z

    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/am;->b(Landroid/content/Context;)V
    :try_end_7d
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_7d} :catch_7e

    :cond_7d
    :goto_7d
    return-void

    :catch_7e
    move-exception v0

    const-string v1, "QbSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "QbSdk reset exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7d

    :cond_98
    move v0, v1

    goto :goto_2b
.end method

.method public static resetDecoupleCore(Landroid/content/Context;)V
    .registers 5

    const-string v0, "QbSdk"

    const-string v1, "QbSdk resetDecoupleCore!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    :try_start_8
    invoke-static {}, Lcom/tencent/smtt/sdk/am;->a()Lcom/tencent/smtt/sdk/am;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/am;->q(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/utils/k;->b(Ljava/io/File;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_13} :catch_14

    :goto_13
    return-void

    :catch_14
    move-exception v0

    const-string v1, "QbSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "QbSdk resetDecoupleCore exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public static setCurrentID(Ljava/lang/String;)V
    .registers 5

    if-nez p0, :cond_3

    :cond_2
    :goto_2
    return-void

    :cond_3
    const-string v0, "QQ:"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "0000000000000000"

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/QbSdk;->z:Ljava/lang/String;

    goto :goto_2
.end method

.method public static setDisableUnpreinitBySwitch(Z)V
    .registers 4

    sput-boolean p0, Lcom/tencent/smtt/sdk/QbSdk;->B:Z

    const-string v0, "QbSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDisableUnpreinitBySwitch -- mDisableUnpreinitBySwitch is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/tencent/smtt/sdk/QbSdk;->B:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDisableUseHostBackupCoreBySwitch(Z)V
    .registers 4

    sput-boolean p0, Lcom/tencent/smtt/sdk/QbSdk;->mDisableUseHostBackupCore:Z

    const-string v0, "QbSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setDisableUseHostBackupCoreBySwitch -- mDisableUseHostBackupCore is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v2, Lcom/tencent/smtt/sdk/QbSdk;->mDisableUseHostBackupCore:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setDownloadWithoutWifi(Z)V
    .registers 1

    sput-boolean p0, Lcom/tencent/smtt/sdk/QbSdk;->F:Z

    return-void
.end method

.method public static setNeedInitX5FirstTime(Z)V
    .registers 1

    sput-boolean p0, Lcom/tencent/smtt/sdk/QbSdk;->w:Z

    return-void
.end method

.method public static setOnlyDownload(Z)V
    .registers 1

    sput-boolean p0, Lcom/tencent/smtt/sdk/QbSdk;->k:Z

    return-void
.end method

.method public static setQQBuildNumber(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/tencent/smtt/sdk/QbSdk;->A:Ljava/lang/String;

    return-void
.end method

.method public static setTBSInstallingStatus(Z)V
    .registers 1

    sput-boolean p0, Lcom/tencent/smtt/sdk/QbSdk;->G:Z

    return-void
.end method

.method public static setTbsListener(Lcom/tencent/smtt/sdk/TbsListener;)V
    .registers 1

    sput-object p0, Lcom/tencent/smtt/sdk/QbSdk;->D:Lcom/tencent/smtt/sdk/TbsListener;

    return-void
.end method

.method public static setTbsLogClient(Lcom/tencent/smtt/utils/TbsLogClient;)V
    .registers 1

    invoke-static {p0}, Lcom/tencent/smtt/utils/TbsLog;->setTbsLogClient(Lcom/tencent/smtt/utils/TbsLogClient;)Z

    return-void
.end method

.method public static setUploadCode(Landroid/content/Context;I)V
    .registers 6

    const/16 v0, 0x82

    if-lt p1, v0, :cond_1b

    const/16 v0, 0x8b

    if-gt p1, v0, :cond_1b

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v0

    iget-object v1, v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v2, "tbs_needdownload_code"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    const/16 v0, 0x96

    if-lt p1, v0, :cond_1a

    const/16 v0, 0x9f

    if-gt p1, v0, :cond_1a

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadUpload;

    move-result-object v0

    iget-object v1, v0, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->a:Ljava/util/Map;

    const-string v2, "tbs_startdownload_code"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/TbsDownloadUpload;->commit()V

    goto :goto_1a
.end method

.method public static startMiniQBToLoadUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Landroid/webkit/ValueCallback;)I
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    const/16 v1, 0x1f5

    invoke-virtual {v0, p0, v1}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;I)V

    if-nez p0, :cond_e

    const/16 v0, -0x64

    :goto_d
    return v0

    :cond_e
    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/bt;->a(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_7a

    if-eqz p0, :cond_36

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.nd.android.pandahome2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->getTbsVersion(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x638f

    if-ge v1, v2, :cond_36

    const/16 v0, -0x65

    goto :goto_d

    :cond_36
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/smtt/sdk/bu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Landroid/webkit/ValueCallback;)I

    move-result v0

    if-nez v0, :cond_63

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v1

    const/16 v2, 0x1f7

    invoke-virtual {v1, p0, v2}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;I)V

    :goto_4e
    const-string v1, "QbSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "startMiniQBToLoadUrl  ret = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_63
    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsLogReport;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsLogReport;

    move-result-object v1

    const/16 v2, 0x1f8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/tencent/smtt/sdk/TbsLogReport;->setLoadErrorCode(ILjava/lang/String;)V

    goto :goto_4e

    :cond_7a
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object v0

    const/16 v1, 0x1f6

    invoke-virtual {v0, p0, v1}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;I)V

    const-string v0, "QbSdk"

    const-string v1, "startMiniQBToLoadUrl  ret = -102"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x66

    goto :goto_d
.end method

.method public static startQBForDoc(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;Landroid/os/Bundle;)Z
    .registers 12

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    const-string v0, "ChannelID"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PosID"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p0

    move-object v1, p1

    move v2, p3

    move-object v3, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/tencent/smtt/sdk/a/d;->a(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/util/HashMap;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static startQBForVideo(Landroid/content/Context;Ljava/lang/String;I)Z
    .registers 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "ChannelID"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "PosID"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lcom/tencent/smtt/sdk/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)Z

    move-result v0

    return v0
.end method

.method public static startQBToLoadurl(Landroid/content/Context;Ljava/lang/String;ILcom/tencent/smtt/sdk/WebView;)Z
    .registers 11

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v0, "ChannelID"

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "PosID"

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_66

    :try_start_1c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.tencent.mm"

    if-eq v0, v3, :cond_33

    const-string v3, "com.tencent.mobileqq"

    if-ne v0, v3, :cond_66

    :cond_33
    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    if-eqz v0, :cond_66

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bu;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v0

    const-string v3, "com.tencent.smtt.webkit.WebViewList"

    const-string v4, "getCurrentMainWebviewJustForQQandWechat"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_66

    check-cast v0, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    if-eqz v0, :cond_66

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/tencent/smtt/sdk/WebView;
    :try_end_65
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_65} :catch_72

    move-object p3, v0

    :cond_66
    :goto_66
    const-string v0, "QbSdk.startQBToLoadurl"

    invoke-static {p0, p1, v2, v0, p3}, Lcom/tencent/smtt/sdk/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/tencent/smtt/sdk/WebView;)I

    move-result v0

    if-nez v0, :cond_70

    const/4 v0, 0x1

    :goto_6f
    return v0

    :cond_70
    move v0, v1

    goto :goto_6f

    :catch_72
    move-exception v0

    goto :goto_66
.end method

.method public static startQbOrMiniQBToLoadUrl(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Lcom/tencent/smtt/sdk/ValueCallback;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/tencent/smtt/sdk/ValueCallback",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-nez p0, :cond_7

    move v0, v6

    :goto_6
    return v0

    :cond_7
    invoke-static {}, Lcom/tencent/smtt/sdk/bt;->a()Lcom/tencent/smtt/sdk/bt;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/bt;->a(Landroid/content/Context;)V

    const-string v1, "QbSdk.startMiniQBToLoadUrl"

    if-eqz p2, :cond_39

    const-string v2, "5"

    const-string v3, "PosID"

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v2

    if-eqz v2, :cond_39

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/bu;->b()Lcom/tencent/smtt/export/external/DexLoader;

    move-result-object v2

    const-string v3, "com.tencent.tbs.tbsshell.WebCoreProxy"

    const-string v5, "getAdWebViewInfoFromX5Core"

    new-array v8, v6, [Ljava/lang/Class;

    new-array v9, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5, v8, v9}, Lcom/tencent/smtt/export/external/DexLoader;->invokeStaticMethod(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    :cond_39
    invoke-static {p0, p1, p2, v1, v4}, Lcom/tencent/smtt/sdk/a/d;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/String;Lcom/tencent/smtt/sdk/WebView;)I

    move-result v1

    if-eqz v1, :cond_6f

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->b()Z

    move-result v1

    if-eqz v1, :cond_71

    if-eqz p0, :cond_5f

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v2, "com.nd.android.pandahome2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->getTbsVersion(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x638f

    if-ge v1, v2, :cond_5f

    move v0, v6

    goto :goto_6

    :cond_5f
    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/bt;->c()Lcom/tencent/smtt/sdk/bu;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/tencent/smtt/sdk/bu;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Landroid/webkit/ValueCallback;)I

    move-result v0

    if-nez v0, :cond_71

    move v0, v7

    goto :goto_6

    :cond_6f
    move v0, v7

    goto :goto_6

    :cond_71
    move v0, v6

    goto :goto_6
.end method

.method public static unForceSysWebView()V
    .registers 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->b:Z

    const-string v0, "QbSdk"

    const-string v1, "sys WebView: unForceSysWebView called"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized unPreInit(Landroid/content/Context;)Z
    .registers 3

    const-class v0, Lcom/tencent/smtt/sdk/QbSdk;

    monitor-enter v0

    const/4 v1, 0x1

    monitor-exit v0

    return v1
.end method

.method public static useSoftWare()Z
    .registers 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    if-nez v0, :cond_8

    move v0, v1

    :goto_7
    return v0

    :cond_8
    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const-string v2, "useSoftWare"

    new-array v3, v1, [Ljava/lang/Class;

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_30

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->r:Ljava/lang/Object;

    const-string v2, "useSoftWare"

    new-array v3, v5, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v1

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/smtt/sdk/a;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v0, v2, v3, v4}, Lcom/tencent/smtt/utils/r;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_30
    if-nez v0, :cond_34

    move v0, v1

    goto :goto_7

    :cond_34
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_7
.end method
