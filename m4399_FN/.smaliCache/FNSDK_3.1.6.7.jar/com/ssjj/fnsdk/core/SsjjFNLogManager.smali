.class public final Lcom/ssjj/fnsdk/core/SsjjFNLogManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/SsjjFNLogManager$a;,
        Lcom/ssjj/fnsdk/core/SsjjFNLogManager$CheckOrderListener;,
        Lcom/ssjj/fnsdk/core/SsjjFNLogManager$PayNotifyUrlListener;,
        Lcom/ssjj/fnsdk/core/SsjjFNLogManager$b;,
        Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempBindTask;,
        Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;,
        Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;,
        Lcom/ssjj/fnsdk/core/SsjjFNLogManager$d;
    }
.end annotation


# static fields
.field public static final GET_URL_TYPE_INVITE:Ljava/lang/String; = "invite"

.field public static final GET_URL_TYPE_PUZZLE:Ljava/lang/String; = "puzzle"

.field public static final GET_URL_TYPE_SHARE:Ljava/lang/String; = "share"

.field private static H:Ljava/lang/String; = null

.field private static I:Ljava/lang/String; = null

.field private static J:Ljava/util/Timer; = null

.field private static K:Ljava/util/Timer; = null

.field private static L:Ljava/util/Timer; = null

.field private static N:Ljava/util/concurrent/ExecutorService; = null

.field public static final STATE_BACKGROUND:I = 0x2

.field public static final STATE_FOREGROUND:I = 0x1

.field public static UP_IMAGE_TYPE_ICON:Ljava/lang/String;

.field public static UP_IMAGE_TYPE_PIC:Ljava/lang/String;

.field private static ai:Ljava/util/concurrent/ExecutorService;

.field private static d:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

.field public static fnGameId:Ljava/lang/String;

.field public static fnPlatId:Ljava/lang/String;

.field public static fnPlatTag:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:Ljava/lang/String;


# instance fields
.field private final A:Ljava/lang/String;

.field private B:Ljava/lang/String;

.field private C:Ljava/lang/String;

.field private D:Ljava/lang/String;

.field private E:Ljava/lang/String;

.field private F:Ljava/lang/String;

.field private G:Ljava/lang/String;

.field private final M:Ljava/util/concurrent/ScheduledExecutorService;

.field private O:J

.field private P:Ljava/lang/String;

.field private final Q:I

.field private final R:I

.field private S:Ljava/lang/String;

.field private T:Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;

.field private U:Ljava/lang/String;

.field private V:Ljava/lang/String;

.field private W:Ljava/lang/String;

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private final Z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected a:Z

.field private aa:Z

.field private ab:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ac:Lcom/ssjj/fnsdk/core/entity/FNOauthData;

.field private ad:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;

.field private ae:Ljava/lang/String;

.field private af:Ljava/lang/String;

.field private ag:Z

.field private ah:Z

.field private aj:Ljava/util/Random;

.field protected b:I

.field private final c:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private f:Landroid/content/SharedPreferences;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:J

.field private p:Lcom/ssjj/fnsdk/core/SsjjFNListener;

.field private q:Lcom/ssjj/fnsdk/core/SsjjFNParams;

.field private final r:I

.field private s:J

.field private t:I

.field private u:I

.field private final v:Ljava/lang/String;

.field private final w:Ljava/lang/String;

.field private final x:Ljava/lang/String;

.field private final y:Ljava/lang/String;

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;-><init>()V

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    const-string v0, "platform_5"

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->g:Ljava/lang/String;

    const-string v0, "ssjjsylocalplatformid"

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->h:Ljava/lang/String;

    const-string v0, "demo"

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatTag:Ljava/lang/String;

    const-string v0, "0"

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->H:Ljava/lang/String;

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->I:Ljava/lang/String;

    const/4 v0, 0x5

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->N:Ljava/util/concurrent/ExecutorService;

    const-string v1, "1"

    sput-object v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->UP_IMAGE_TYPE_ICON:Ljava/lang/String;

    const-string v1, "2"

    sput-object v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->UP_IMAGE_TYPE_PIC:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ai:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private constructor <init>()V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->f:Landroid/content/SharedPreferences;

    const-string v1, ""

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j:Ljava/lang/String;

    const-string v2, "3.1.6.7"

    iput-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->k:Ljava/lang/String;

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->l:Ljava/lang/String;

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->m:Ljava/lang/String;

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->n:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->o:J

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->p:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    new-instance v4, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v4}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    iput-object v4, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->q:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    const/4 v4, 0x0

    iput v4, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->r:I

    iput-wide v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->s:J

    const/4 v2, 0x5

    iput v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->t:I

    iput v4, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->u:I

    const-string v2, "-2"

    iput-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->v:Ljava/lang/String;

    const-string v2, "-1"

    iput-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->w:Ljava/lang/String;

    const-string v2, "1"

    iput-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->x:Ljava/lang/String;

    sget-object v2, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_NET_ERROR:Ljava/lang/String;

    iput-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->y:Ljava/lang/String;

    const v2, 0xf4241

    iput v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->z:I

    const-string v2, "info_log"

    iput-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->A:Ljava/lang/String;

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->B:Ljava/lang/String;

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->C:Ljava/lang/String;

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->D:Ljava/lang/String;

    const-string v2, "0"

    iput-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->E:Ljava/lang/String;

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->F:Ljava/lang/String;

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->G:Ljava/lang/String;

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(I)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v3

    iput-object v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->M:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->O:J

    iput-boolean v4, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a:Z

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->P:Ljava/lang/String;

    const/4 v3, 0x1

    iput v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->Q:I

    const/4 v5, 0x2

    iput v5, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->R:I

    iput v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->b:I

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->S:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->T:Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->U:Ljava/lang/String;

    iput-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->V:Ljava/lang/String;

    iput-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->W:Ljava/lang/String;

    iput-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->X:Ljava/lang/String;

    iput-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->Y:Ljava/lang/String;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->Z:Ljava/util/List;

    iput-boolean v4, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->aa:Z

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ab:Landroid/os/AsyncTask;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ac:Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ad:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ae:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->af:Ljava/lang/String;

    iput-boolean v4, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ag:Z

    iput-boolean v4, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ah:Z

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->aj:Ljava/util/Random;

    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_LOG:Ljava/lang/String;

    return-object v0
.end method

.method private a(I)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_6
    if-lt v1, p1, :cond_d

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_d
    iget-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->aj:Ljava/util/Random;

    const-string v3, "0123456789abcdef"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ssjj/fnsdk/core/SsjjFNException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/ssjj/fnsdk/core/SsjjFNException;
        }
    .end annotation

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ae:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_184

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ae:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    goto/16 :goto_184

    :cond_12
    new-instance v0, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ae:Ljava/lang/String;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->af:Ljava/lang/String;

    const-string v3, "logType"

    invoke-virtual {v0, v3, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "game"

    invoke-virtual {v0, p1, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "platform"

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getRawFNPid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "device"

    const-string v3, "android"

    invoke-virtual {v0, p1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->B:Ljava/lang/String;

    if-nez p1, :cond_3b

    const-string p1, "0"

    :cond_3b
    const-string v4, "server"

    invoke-virtual {v0, v4, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->F:Ljava/lang/String;

    const-string v4, ""

    if-nez p1, :cond_47

    move-object p1, v4

    :cond_47
    const-string v5, "role_id"

    invoke-virtual {v0, v5, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->C:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_56

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->D:Ljava/lang/String;

    :cond_56
    if-nez p1, :cond_59

    move-object p1, v4

    :cond_59
    const-string v5, "account_name"

    invoke-virtual {v0, v5, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "did"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, p1, v5}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "game_version"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getAppVersion()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, p1, v5}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "screen"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getScreen()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, p1, v5}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez p1, :cond_7f

    move-object p1, v4

    goto :goto_81

    :cond_7f
    sget-object p1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_81
    const-string v5, "device_name"

    invoke-virtual {v0, v5, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "os"

    invoke-virtual {v0, p1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez p1, :cond_91

    move-object p1, v4

    goto :goto_93

    :cond_91
    sget-object p1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_93
    const-string v3, "os_version"

    invoke-virtual {v0, v3, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "mno"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getMno()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "nm"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getNm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "totalNum"

    invoke-virtual {v0, p3, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "time"

    invoke-virtual {v0, p3, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p3, "version"

    const-string v3, "1.1"

    invoke-virtual {v0, p3, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    const/4 v3, 0x3

    invoke-direct {p0, v3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-direct {p0, v3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "flag"

    invoke-virtual {v0, p3, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fngid"

    sget-object p3, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    invoke-virtual {v0, p1, p3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fnpid"

    sget-object p3, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_platformId:Ljava/lang/String;

    invoke-virtual {v0, p1, p3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fnpidraw"

    sget-object p3, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    invoke-virtual {v0, p1, p3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "channel"

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->V:Ljava/lang/String;

    invoke-virtual {v0, p1, p3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "channelSy"

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->U:Ljava/lang/String;

    invoke-virtual {v0, p1, p3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sdk_version"

    const-string p3, "3.1.6.7"

    invoke-virtual {v0, p1, p3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fillParam(Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e:Landroid/content/Context;

    if-nez p1, :cond_147

    move-object p1, v4

    goto :goto_14b

    :cond_147
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    :goto_14b
    const-string p3, "pkg"

    invoke-virtual {v0, p3, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "desc"

    invoke-virtual {v0, p1, v4}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "data"

    invoke-virtual {v0, p1, p2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "aHR0cDovLw=="

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "LWxvZy40Mzk5ZGF0YS5jb20vc2RrX2xvZy8="

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e:Landroid/content/Context;

    const-string p3, "POST"

    invoke-static {p2, p1, p3, v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->openUrl(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_184
    :goto_184
    const-string p1, "ttag or tkey is empty"

    return-object p1
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;I)V
    .registers 2

    iput p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->t:I

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;J)V
    .registers 3

    iput-wide p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->o:J

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Landroid/os/AsyncTask;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ab:Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ad:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Lorg/json/JSONObject;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Lorg/json/JSONObject;I)V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->aa:Z

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONArray;)V
    .registers 5

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ah:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    :try_start_5
    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$b;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;Lorg/json/JSONArray;Lcom/ssjj/fnsdk/core/SsjjFNLogManager$b;)V

    sget-object p1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ai:Ljava/util/concurrent/ExecutorService;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-static {p1, v0, p2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->execAsyncTask(Ljava/util/concurrent/Executor;Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_13} :catch_14

    goto :goto_18

    :catch_14
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_18
    return-void
.end method

.method private a(Lorg/json/JSONObject;I)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->P:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_24

    :try_start_6
    const-string v0, "L3N5cy9ibG9jay9tbWNibGswL2RldmljZS9jaWQ="

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_11

    goto :goto_1a

    :catchall_11
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    move-object v0, v1

    :goto_1a
    if-nez v0, :cond_1e

    move-object v0, v1

    goto :goto_22

    :cond_1e
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :goto_22
    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->P:Ljava/lang/String;

    :cond_24
    sget-object v0, Landroid/os/Build;->SERIAL:Ljava/lang/String;

    if-nez v0, :cond_29

    goto :goto_2d

    :cond_29
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    :goto_2d
    const/4 v0, 0x1

    if-ne p2, v0, :cond_3d

    :try_start_30
    const-string p2, "sdid"

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->P:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "snum"

    :goto_39
    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_4b

    :cond_3d
    const-string p2, "f1"

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->P:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "f2"
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_46} :catch_47

    goto :goto_39

    :catch_47
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4b
    return-void
.end method

.method private a(Landroid/content/Context;Z)Z
    .registers 12

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "."

    const-string v4, "_"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->c(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_ad

    array-length v2, p1

    const/4 v3, 0x0

    :goto_35
    if-lt v0, v2, :cond_39

    move v0, v3

    goto :goto_ad

    :cond_39
    aget-object v4, p1, v0

    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ".Android/data/com.ssjj.fnsdk/bin/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_62

    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    :cond_62
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_8b

    const/4 v3, 0x1

    :cond_8b
    if-eqz p2, :cond_aa

    if-nez v4, :cond_aa

    :try_start_8f
    invoke-virtual {v5}, Ljava/io/File;->createNewFile()Z
    :try_end_92
    .catch Ljava/io/IOException; {:try_start_8f .. :try_end_92} :catch_93

    goto :goto_aa

    :catch_93
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "save fnpid: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :cond_aa
    :goto_aa
    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :cond_ad
    :goto_ad
    return v0
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Landroid/content/Context;Ljava/util/List;)[Ljava/lang/String;
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "META-INF/"

    const-string v1, ""

    const/4 v2, 0x0

    if-eqz p2, :cond_15b

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_15b

    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    new-array v6, v5, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/4 v7, 0x0

    :try_start_20
    new-instance v8, Ljava/util/zip/ZipFile;

    invoke-direct {v8, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_25} :catch_ff
    .catchall {:try_start_20 .. :try_end_25} :catchall_fd

    :try_start_25
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v7

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "walk start "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->Z:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    :cond_41
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-nez v9, :cond_48

    goto :goto_76

    :cond_48
    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/zip/ZipEntry;

    invoke-virtual {v9}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_41

    iget-object v10, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->Z:Ljava/util/List;

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v10, 0x0

    :goto_64
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v11

    if-lt v10, v11, :cond_90

    const/4 v9, 0x0

    :goto_6b
    if-lt v9, v5, :cond_6f

    const/4 v9, 0x1

    goto :goto_74

    :cond_6f
    aget-object v10, v6, v9

    if-nez v10, :cond_8d

    const/4 v9, 0x0

    :goto_74
    if-eqz v9, :cond_41

    :goto_76
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "walk "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V
    :try_end_88
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_88} :catch_fa
    .catchall {:try_start_25 .. :try_end_88} :catchall_f7

    :try_start_88
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_8b
    .catch Ljava/io/IOException; {:try_start_88 .. :try_end_8b} :catch_109

    goto/16 :goto_10d

    :cond_8d
    add-int/lit8 v9, v9, 0x1

    goto :goto_6b

    :cond_90
    :try_start_90
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_f3

    aput-object v9, v6, v10

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    const-string v12, "/"

    invoke-virtual {v11, v12, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    const-string v12, "\\"

    invoke-virtual {v11, v12, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    invoke-interface {p2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v6, v10

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "found "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v12, v6, v10

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V
    :try_end_f3
    .catch Ljava/io/IOException; {:try_start_90 .. :try_end_f3} :catch_fa
    .catchall {:try_start_90 .. :try_end_f3} :catchall_f7

    :cond_f3
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_64

    :catchall_f7
    move-exception p1

    move-object v7, v8

    goto :goto_150

    :catch_fa
    move-exception p1

    move-object v7, v8

    goto :goto_100

    :catchall_fd
    move-exception p1

    goto :goto_150

    :catch_ff
    move-exception p1

    :goto_100
    :try_start_100
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_103
    .catchall {:try_start_100 .. :try_end_103} :catchall_fd

    if-eqz v7, :cond_10d

    :try_start_105
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_108
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_108} :catch_109

    goto :goto_10d

    :catch_109
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_10d
    :goto_10d
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    if-lt v2, p1, :cond_131

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "time "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-object v6

    :cond_131
    aget-object p1, v6, v2

    if-nez p1, :cond_14d

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "not found "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :cond_14d
    add-int/lit8 v2, v2, 0x1

    goto :goto_10d

    :goto_150
    if-eqz v7, :cond_15a

    :try_start_152
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_155
    .catch Ljava/io/IOException; {:try_start_152 .. :try_end_155} :catch_156

    goto :goto_15a

    :catch_156
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_15a
    :goto_15a
    throw p1

    :cond_15b
    :goto_15b
    new-array p1, v2, [Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->V:Ljava/lang/String;

    return-object p0
.end method

.method private b()V
    .registers 7

    new-instance v0, Ljava/util/Timer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Timer;-><init>(Z)V

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->L:Ljava/util/Timer;

    new-instance v1, Lcom/ssjj/fnsdk/core/aq;

    invoke-direct {v1, p0}, Lcom/ssjj/fnsdk/core/aq;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)V

    const-wide/16 v2, 0x3e8

    const-wide/16 v4, 0x3e8

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Landroid/content/Context;Z)Z

    return-void
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;I)V
    .registers 2

    iput p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->u:I

    return-void
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;J)V
    .registers 3

    iput-wide p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->s:J

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->l:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->i(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->U:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .registers 7

    sget-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_INIT_INFO:Ljava/lang/String;

    new-instance v1, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    :try_start_12
    const-string v3, "time"

    invoke-virtual {v1, v3, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "flag"

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "6dm1165332e914ec281e7676d451f242"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->M:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/ssjj/fnsdk/core/bb;

    invoke-direct {v3, p0, v0, v1}, Lcom/ssjj/fnsdk/core/bb;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x0

    invoke-interface {v2, v3, v4, v5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_46
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->m:Ljava/lang/String;

    return-void
.end method

.method private static c(Landroid/content/Context;)[Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    const-string v1, "storage"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getVolumePaths"

    invoke-virtual {v1, v2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1b

    move-object v0, p0

    goto :goto_1c

    :catch_1b
    move-exception p0

    :goto_1c
    if-nez v0, :cond_32

    const/4 p0, 0x1

    :try_start_1f
    new-array p0, p0, [Ljava/lang/String;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, p0, v2
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2c} :catch_2e

    move-object v0, p0

    goto :goto_32

    :catch_2e
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_32
    :goto_32
    return-object v0
.end method

.method static synthetic d(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e:Landroid/content/Context;

    return-object p0
.end method

.method private d(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;
    :try_end_10
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_10} :catch_11

    goto :goto_13

    :catch_11
    move-exception p1

    const/4 p1, 0x0

    :goto_13
    return-object p1
.end method

.method private d()V
    .registers 4

    const-string v0, "start fncfg"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Lcom/ssjj/fnsdk/core/bn;

    invoke-direct {v2, p0, v0, v1}, Lcom/ssjj/fnsdk/core/bn;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;J)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->execAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->n:Ljava/lang/String;

    return-void
.end method

.method private e()V
    .registers 9

    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->J:Ljava/util/Timer;

    const/4 v1, 0x1

    if-nez v0, :cond_19

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2, v1}, Ljava/util/Timer;-><init>(Z)V

    sput-object v2, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->J:Ljava/util/Timer;

    new-instance v3, Lcom/ssjj/fnsdk/core/ar;

    invoke-direct {v3, p0}, Lcom/ssjj/fnsdk/core/ar;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)V

    const-wide/16 v4, 0x0

    const-wide/32 v6, 0x493e0

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_19
    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->K:Ljava/util/Timer;

    if-nez v0, :cond_35

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2, v1}, Ljava/util/Timer;-><init>(Z)V

    sput-object v2, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->K:Ljava/util/Timer;

    new-instance v3, Lcom/ssjj/fnsdk/core/as;

    invoke-direct {v3, p0}, Lcom/ssjj/fnsdk/core/as;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)V

    const-wide/16 v4, 0x7d0

    iget v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->t:I

    mul-int/lit16 v0, v0, 0x3e8

    mul-int/lit8 v0, v0, 0x3c

    int-to-long v6, v0

    invoke-virtual/range {v2 .. v7}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_35
    return-void
.end method

.method private e(Landroid/content/Context;)V
    .registers 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v3, "sychannel"

    :try_start_6
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const/16 v6, 0x80

    invoke-virtual {v0, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_14
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_14} :catch_16

    move-object v5, v0

    goto :goto_18

    :catch_16
    move-exception v0

    const/4 v5, 0x0

    :goto_18
    if-eqz v5, :cond_84

    iget-object v0, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_67

    :try_start_1e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v7, "com.ssjj.fnsdk.PLAT_CHANNEL"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_33} :catch_62

    :try_start_33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v8, "com.ssjjsy.channelId"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_48
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_48} :catch_60

    :try_start_48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v9, "com.ssjj.fnsdk.ydchannel"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_5d
    .catch Ljava/lang/Exception; {:try_start_48 .. :try_end_5d} :catch_5e

    goto :goto_6a

    :catch_5e
    move-exception v0

    goto :goto_65

    :catch_60
    move-exception v0

    goto :goto_64

    :catch_62
    move-exception v0

    const/4 v6, 0x0

    :goto_64
    const/4 v7, 0x0

    :goto_65
    const/4 v0, 0x0

    goto :goto_6a

    :cond_67
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_6a
    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    move-object v5, v0

    goto :goto_89

    :cond_84
    const-wide/16 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_89
    const-string v0, "fnchannel"

    const/4 v10, 0x0

    invoke-virtual {v2, v0, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "channel_inf_sy"

    const-string v13, ""

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v16, v5

    const-wide/16 v4, -0x1

    const-string v10, "channel_inf_time"

    invoke-interface {v11, v10, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    const-string v15, "channel_inf_file_list"

    move-object/from16 v19, v6

    const-string v6, "channel_inf_all"

    move-object/from16 v20, v7

    const-string v7, "channel_inf_yd"

    move-object/from16 v21, v13

    const-string v13, "channel_inf_fn"

    move-object/from16 v22, v15

    const-string v15, "ydchannel"

    cmp-long v23, v8, v4

    if-eqz v23, :cond_23a

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "sychannel_"

    if-eqz v14, :cond_e3

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-nez v23, :cond_cc

    goto :goto_e3

    :cond_cc
    move-object/from16 v23, v6

    new-instance v6, Ljava/lang/StringBuilder;

    move-object/from16 v24, v12

    const-string v12, "sp sy: "

    invoke-direct {v6, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_ea

    :cond_e3
    :goto_e3
    move-object/from16 v23, v6

    move-object/from16 v24, v12

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_ea
    const-string v6, "fnchannel_"

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v12, "ydchannel_"

    invoke-interface {v4, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v25, v14

    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->getInstance()Lcom/ssjj/fnsdk/core/log2/ChannelGetter;

    move-result-object v26

    move-object/from16 v27, v7

    invoke-virtual/range {v26 .. v26}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->onGetChannelInMetaInfPrefix()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_110

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_110

    invoke-interface {v14, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_110
    invoke-static {}, Lcom/ssjj/fnsdk/core/ap;->a()Lcom/ssjj/fnsdk/core/ap;

    move-result-object v7

    invoke-virtual {v7}, Lcom/ssjj/fnsdk/core/ap;->b()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_123

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v26

    if-lez v26, :cond_123

    invoke-interface {v14, v7}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_123
    invoke-interface {v4, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {v1, v2, v4}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Landroid/content/Context;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_16b

    const/16 p1, 0x0

    const/4 v7, 0x0

    const/16 v18, 0x0

    :goto_135
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    if-lt v7, v14, :cond_140

    move-object/from16 v5, p1

    move-object/from16 v14, v25

    goto :goto_170

    :cond_140
    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v14, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_153

    aget-object v14, v2, v7

    move-object/from16 v25, v14

    :cond_150
    :goto_150
    move-object/from16 v14, p1

    goto :goto_166

    :cond_153
    invoke-virtual {v14, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_15e

    aget-object v14, v2, v7

    move-object/from16 v18, v14

    goto :goto_150

    :cond_15e
    invoke-virtual {v14, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_150

    aget-object v14, v2, v7

    :goto_166
    add-int/lit8 v7, v7, 0x1

    move-object/from16 p1, v14

    goto :goto_135

    :cond_16b
    move-object/from16 v14, v25

    const/4 v5, 0x0

    const/16 v18, 0x0

    :goto_170
    new-instance v6, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v6}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const/4 v7, 0x0

    :goto_176
    array-length v12, v2

    if-lt v7, v12, :cond_20d

    invoke-virtual {v6}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->toJson()Ljava/lang/String;

    move-result-object v2

    :try_start_17d
    new-instance v4, Lorg/json/JSONObject;

    invoke-virtual/range {p0 .. p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getApkExtDataStr()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_198

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_198

    move-object/from16 v18, v0

    :cond_198
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a9

    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1a9

    move-object v14, v0

    :cond_1a9
    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1bc

    invoke-virtual {v4, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j(Ljava/lang/String;)Z

    move-result v3
    :try_end_1b7
    .catch Ljava/lang/Exception; {:try_start_17d .. :try_end_1b7} :catch_1bb

    if-nez v3, :cond_1bc

    move-object v5, v0

    goto :goto_1bc

    :catch_1bb
    move-exception v0

    :cond_1bc
    :goto_1bc
    invoke-direct {v1, v14}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c5

    move-object/from16 v0, v20

    goto :goto_1c6

    :cond_1c5
    move-object v0, v14

    :goto_1c6
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3, v10, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    if-nez v18, :cond_1d3

    move-object/from16 v4, v21

    goto :goto_1d5

    :cond_1d3
    move-object/from16 v4, v18

    :goto_1d5
    invoke-interface {v3, v13, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    if-nez v5, :cond_1de

    move-object/from16 v4, v21

    goto :goto_1df

    :cond_1de
    move-object v4, v5

    :goto_1df
    move-object/from16 v12, v27

    invoke-interface {v3, v12, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    if-nez v0, :cond_1e9

    move-object/from16 v0, v21

    :cond_1e9
    move-object/from16 v4, v24

    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    if-nez v2, :cond_1f4

    move-object/from16 v3, v21

    goto :goto_1f5

    :cond_1f4
    move-object v3, v2

    :goto_1f5
    move-object/from16 v4, v23

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct/range {p0 .. p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->g()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v4, v22

    invoke-interface {v0, v4, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object/from16 v0, v18

    move-object/from16 v7, v21

    goto :goto_25b

    :cond_20d
    move-object/from16 v17, v3

    move-object/from16 p1, v5

    move-object/from16 v3, v22

    move-object/from16 v5, v23

    move-object/from16 v12, v27

    move-wide/from16 v22, v8

    move-object/from16 v8, v24

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    move-object/from16 v24, v0

    aget-object v0, v2, v7

    invoke-virtual {v6, v9, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, v24

    move-object/from16 v24, v8

    move-wide/from16 v8, v22

    move-object/from16 v22, v3

    move-object/from16 v23, v5

    move-object/from16 v3, v17

    move-object/from16 v5, p1

    goto/16 :goto_176

    :cond_23a
    move-object v5, v6

    move-object v8, v12

    move-object/from16 v3, v22

    move-object v12, v7

    move-object/from16 v7, v21

    invoke-interface {v11, v13, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-interface {v11, v12, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v11, v8, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-interface {v11, v5, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v11, v3, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->f(Ljava/lang/String;)V

    move-object v5, v0

    move-object/from16 v0, v18

    :goto_25b
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "inf fn: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "inf sy: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "inf yd: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    const-string v3, "null"

    if-eqz v0, :cond_2a7

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2a7

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2a7

    move-object v6, v0

    goto :goto_2a9

    :cond_2a7
    move-object/from16 v6, v19

    :goto_2a9
    if-eqz v5, :cond_2bc

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2bc

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2bc

    goto :goto_2be

    :cond_2bc
    move-object/from16 v5, v16

    :goto_2be
    if-eqz v14, :cond_2d1

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_2d1

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2d1

    goto :goto_2d3

    :cond_2d1
    move-object/from16 v14, v20

    :goto_2d3
    const-string v0, "0"

    if-eqz v6, :cond_2e7

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2e7

    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2e8

    :cond_2e7
    move-object v6, v0

    :cond_2e8
    if-eqz v5, :cond_2fa

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2fa

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2fb

    :cond_2fa
    move-object v5, v0

    :cond_2fb
    if-eqz v14, :cond_30d

    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_30d

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_30e

    :cond_30d
    move-object v14, v7

    :cond_30e
    const-string v0, "channel_"

    invoke-virtual {v14, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_31e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v14, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    :cond_31e
    const-string v0, "channel"

    invoke-interface {v11, v0, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-eqz v8, :cond_334

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_340

    :cond_334
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4, v0, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v4, v6

    :cond_340
    invoke-interface {v11, v15, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_354

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_360

    :cond_354
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, v15, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-object v0, v5

    :cond_360
    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->getInstance()Lcom/ssjj/fnsdk/core/log2/ChannelGetter;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->onGetChannelInMetaInf(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/ap;->a()Lcom/ssjj/fnsdk/core/ap;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/ssjj/fnsdk/core/ap;->a(Ljava/lang/String;)V

    iput-object v6, v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->V:Ljava/lang/String;

    iput-object v4, v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->W:Ljava/lang/String;

    iput-object v14, v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->U:Ljava/lang/String;

    iput-object v5, v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->X:Ljava/lang/String;

    iput-object v0, v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->Y:Ljava/lang/String;

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic e(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ag:Z

    return p0
.end method

.method public static varargs execAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Params:",
            "Ljava/lang/Object;",
            "Progress:",
            "Ljava/lang/Object;",
            "Result:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/AsyncTask<",
            "TParams;TProgress;TResult;>;[TParams;)V"
        }
    .end annotation

    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->N:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->execAsyncTask(Ljava/util/concurrent/Executor;Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method public static varargs execAsyncTask(Ljava/util/concurrent/Executor;Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Params:",
            "Ljava/lang/Object;",
            "Progress:",
            "Ljava/lang/Object;",
            "Result:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/AsyncTask<",
            "TParams;TProgress;TResult;>;[TParams;)V"
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1, p0, p2}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception p0

    invoke-virtual {p1, p2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_8
    return-void
.end method

.method static synthetic f(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->o:J

    return-wide v0
.end method

.method private f()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/FNApkExDatTool;->getFNApkExDat(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->T:Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;

    return-void
.end method

.method private f(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->Z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    const-string v0, ","

    const-string v1, "|"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1b
    if-lt v1, v0, :cond_1e

    goto :goto_28

    :cond_1e
    aget-object v2, p1, v1

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->Z:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    :cond_28
    :goto_28
    return-void
.end method

.method static synthetic g(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->s:J

    return-wide v0
.end method

.method private g()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->Z:Ljava/util/List;

    if-eqz v0, :cond_30

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_b

    goto :goto_30

    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->Z:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_21

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    :cond_30
    :goto_30
    const-string v0, ""

    return-object v0
.end method

.method private g(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_16

    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_16

    const/4 p1, 0x1

    return p1

    :cond_16
    const/4 p1, 0x0

    return p1
.end method

.method public static getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d:Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    return-object v0
.end method

.method private static h(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    if-nez p0, :cond_4

    const-string p0, ""

    :cond_4
    return-object p0
.end method

.method static synthetic h(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->b()V

    return-void
.end method

.method static synthetic i(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Lcom/ssjj/fnsdk/core/SsjjFNParams;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->q:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    return-object p0
.end method

.method private i(Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public static invokePayNotifyUrl(Landroid/content/Context;IILjava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Lcom/ssjj/fnsdk/core/SsjjFNLogManager$PayNotifyUrlListener;)V
    .registers 14

    new-instance v7, Lcom/ssjj/fnsdk/core/ba;

    move-object v0, v7

    move v1, p1

    move-object v2, p0

    move-object v3, p3

    move-object v4, p4

    move v5, p2

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/ssjj/fnsdk/core/ba;-><init>(ILandroid/content/Context;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;ILcom/ssjj/fnsdk/core/SsjjFNLogManager$PayNotifyUrlListener;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/String;

    invoke-static {v7, p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->execAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic j(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->W:Ljava/lang/String;

    return-object p0
.end method

.method private j(Ljava/lang/String;)Z
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

.method static synthetic k(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->E:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Landroid/content/SharedPreferences;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->f:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic m(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)I
    .registers 1

    iget p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->u:I

    return p0
.end method

.method static synthetic o(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->y:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .registers 6

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->H:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->O:J

    sget-object v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->N:Ljava/util/concurrent/ExecutorService;

    if-eqz v1, :cond_20

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v1

    if-nez v1, :cond_20

    sget-object v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->N:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_20
    const/4 v1, 0x5

    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    sput-object v2, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->N:Ljava/util/concurrent/ExecutorService;

    sget-object v2, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ai:Ljava/util/concurrent/ExecutorService;

    if-eqz v2, :cond_36

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_36

    sget-object v2, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ai:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    :cond_36
    invoke-static {v1}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    sput-object v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ai:Ljava/util/concurrent/ExecutorService;

    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->getInstance()Lcom/ssjj/fnsdk/core/StatManager;

    move-result-object v1

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/ssjj/fnsdk/core/StatManager;->init(Landroid/content/Context;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->getInstance()Lcom/ssjj/fnsdk/core/update/util/FindEmulator;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->init(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e:Landroid/content/Context;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->getApkSign(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->I:Ljava/lang/String;

    const-string v1, "fnsdk_ttag"

    invoke-static {p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_63

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ae:Ljava/lang/String;

    goto :goto_68

    :cond_63
    const-string v1, "not found fnsdk_ttag"

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :goto_68
    const-string v1, "fnsdk_tkey"

    invoke-static {p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_77

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->af:Ljava/lang/String;

    goto :goto_7c

    :cond_77
    const-string v1, "not found fnsdk_tkey"

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :goto_7c
    const-string v1, "fnsdk_tlog_enable"

    invoke-static {p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->getStringId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_a2

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v3, "true"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9e

    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9a

    goto :goto_9e

    :cond_9a
    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->setTLogEnable(Z)V

    goto :goto_a7

    :cond_9e
    :goto_9e
    invoke-virtual {p0, v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->setTLogEnable(Z)V

    goto :goto_a7

    :cond_a2
    const-string v0, "not found fnsdk_tlog_enable"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :goto_a7
    iput-boolean v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a:Z

    invoke-static {}, Lcom/ssjj/fnsdk/core/stat/FNStat;->getInstance()Lcom/ssjj/fnsdk/core/stat/FNStat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/stat/FNStat;->init(Landroid/content/Context;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 12

    const-string v0, "android"

    if-nez p1, :cond_c

    const-string p1, "dataStr = null"

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-interface {p2, v1, p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void

    :cond_c
    new-instance v1, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    :try_start_11
    sget-object v2, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    sget-object v3, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j(Ljava/lang/String;)Z

    move-result v4
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_19} :catch_104

    const-string v5, "0"

    if-nez v4, :cond_23

    :try_start_1d
    invoke-virtual {v5, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    :cond_23
    sget-object v2, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_platformId:Ljava/lang/String;

    :cond_25
    invoke-direct {p0, v3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_31

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_33

    :cond_31
    sget-object v3, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_gameId:Ljava/lang/String;

    :cond_33
    iget-object v4, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e:Landroid/content/Context;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_35} :catch_104

    const-string v5, ""

    if-nez v4, :cond_3b

    move-object v4, v5

    goto :goto_3f

    :cond_3b
    :try_start_3b
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    :goto_3f
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "fnpid"

    invoke-virtual {v1, v7, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "fngid"

    invoke-virtual {v1, v7, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "data"

    invoke-virtual {v1, v7, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "pkg"

    invoke-virtual {v1, v7, v4}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "fnchannel"

    iget-object v8, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->V:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "sychannel"

    iget-object v8, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->U:Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "did"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "ts"

    invoke-virtual {v1, v7, v6}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->V:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "FN"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "sign"

    invoke-virtual {v1, v2, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "appVersion"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getAppVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sdkVersion"

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->k:Ljava/lang/String;

    invoke-virtual {v1, p1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "osVersion"

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v2, :cond_ca

    move-object v2, v5

    goto :goto_cc

    :cond_ca
    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_cc
    invoke-virtual {v1, p1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "device"

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v2, :cond_d6

    goto :goto_d8

    :cond_d6
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_d8
    invoke-virtual {v1, p1, v5}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "screen"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getScreen()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "mno"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getMno()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "nm"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getNm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fillParam(Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)V

    const-string p1, "os"

    invoke-virtual {v1, p1, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "deviceType"

    invoke-virtual {v1, p1, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_3b .. :try_end_103} :catch_104

    goto :goto_108

    :catch_104
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_108
    new-instance p1, Lcom/ssjj/fnsdk/core/bg;

    invoke-direct {p1, p0, v1, p2}, Lcom/ssjj/fnsdk/core/bg;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->execAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method public callbackServerTime()V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCallbackServerTime, eventTime="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->o:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", listener is null ? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->p:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const/4 v2, 0x0

    if-nez v1, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->o:J

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-lez v5, :cond_a4

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->p:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz v3, :cond_a4

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const-string v1, "serverTimeMS"

    const-string v3, "serverTime"

    const/16 v4, 0xa

    if-ne v0, v4, :cond_69

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->q:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    iget-wide v4, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->o:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->q:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    new-instance v3, Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->o:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "000"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_80

    :cond_69
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->q:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    iget-wide v5, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->o:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->q:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    iget-wide v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->o:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    :goto_80
    invoke-virtual {v0, v1, v3}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCallbackServerTime, data="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->q:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->p:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    const-string v1, ""

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->q:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-interface {v0, v2, v1, v3}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_a4
    return-void
.end method

.method public checkImage(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 5

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$a;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Landroid/content/Context;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->execAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method public checkOrderSpecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNLogManager$CheckOrderListener;)V
    .registers 15

    const-string v0, "uid"

    invoke-virtual {p5, v0, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "orderId"

    invoke-virtual {p5, p1, p2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "callback_info"

    invoke-virtual {p5, p1, p3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "serverId"

    invoke-virtual {p5, p1, p4}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fnsdk"

    const-string p2, "fnsdk: checkOrderSpecial"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    new-instance p2, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$d;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e:Landroid/content/Context;

    const-string v3, "GET"

    move-object v0, p2

    move-object v2, p6

    move-object v4, p5

    move-object v5, p1

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Ljava/util/Timer;Lcom/ssjj/fnsdk/core/SsjjFNLogManager$CheckOrderListener;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x4e20

    move-object v0, p1

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method public downloadActiveLog()V
    .registers 6

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "downloadActiveLog hw cancel"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "download_activity.php"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->M:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/ssjj/fnsdk/core/bm;

    invoke-direct {v3, p0, v1, v0}, Lcom/ssjj/fnsdk/core/bm;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public downloadActiveSmallLog()V
    .registers 6

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const-string v0, "downloadActiveSmallLog hw cancel"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "download_activity_small.php"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->M:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/ssjj/fnsdk/core/bq;

    invoke-direct {v3, p0, v1, v0}, Lcom/ssjj/fnsdk/core/bq;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public emulatorStr()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->getInstance()Lcom/ssjj/fnsdk/core/update/util/FindEmulator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/update/util/FindEmulator;->isEmulator()Z

    move-result v0

    if-eqz v0, :cond_d

    const-string v0, "1"

    goto :goto_f

    :cond_d
    const-string v0, "0"

    :goto_f
    return-object v0
.end method

.method public fillJson(Lorg/json/JSONObject;)V
    .registers 5

    :try_start_0
    const-string v0, "sim"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->emulatorStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "kts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->isOverseaPlatform()Z

    move-result v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_44

    const-string v1, "did"

    if-nez v0, :cond_2d

    :try_start_25
    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_48

    :cond_2d
    const-string v0, "0000000000000"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "dsign"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->de(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->de(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_48
    return-void
.end method

.method public fillParam(Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)V
    .registers 5

    :try_start_0
    const-string v0, "sim"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->emulatorStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "kts"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->I:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->isOverseaPlatform()Z

    move-result v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_44

    const-string v1, "did"

    if-nez v0, :cond_2d

    :try_start_25
    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    :cond_2d
    const-string v0, "0000000000000"

    invoke-virtual {p1, v1, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "dsign"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->de(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->de(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_43} :catch_44

    goto :goto_48

    :catch_44
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_48
    return-void
.end method

.method public fillSS(Lorg/json/JSONObject;)V
    .registers 3

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Lorg/json/JSONObject;I)V

    return-void
.end method

.method public getApkExData()Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->T:Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;

    return-object v0
.end method

.method public getApkExtDataStr()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->T:Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget-object v0, v0, Lcom/ssjj/fnsdk/core/FNApkExDatTool$FNApkExDat;->data:Ljava/lang/String;

    :goto_8
    return-object v0
.end method

.method public getAppVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j:Ljava/lang/String;

    return-object v0
.end method

.method public getCfgKey(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNCfg2;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getCfgKeyCache(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNCfg2;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getChannel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->V:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomUpdateKey()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/ssjj/fnsdk/core/ap;->a()Lcom/ssjj/fnsdk/core/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/ap;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomUpdateValue()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lcom/ssjj/fnsdk/core/ap;->a()Lcom/ssjj/fnsdk/core/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/ap;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInitTime()J
    .registers 3

    iget-wide v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->O:J

    return-wide v0
.end method

.method public getIpInfo(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 6

    invoke-static {}, Lcom/ssjj/fnsdk/core/http/FNHttp;->create()Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    move-result-object v0

    sget-object v1, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_GET_IP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->url(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    move-result-object v0

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->method(Ljava/lang/String;)Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->connTimeout(I)Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->readTimeout(I)Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    move-result-object v0

    new-instance v1, Lcom/ssjj/fnsdk/core/bi;

    invoke-direct {v1, p0, p2}, Lcom/ssjj/fnsdk/core/bi;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->beforeRequestAsync(Lcom/ssjj/fnsdk/core/http/FNHttpBeforeRequestListener;)Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    move-result-object p2

    new-instance v0, Lcom/ssjj/fnsdk/core/bj;

    invoke-direct {v0, p0}, Lcom/ssjj/fnsdk/core/bj;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;)V

    invoke-virtual {p2, v0}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->afterRequestAsync(Lcom/ssjj/fnsdk/core/http/FNHttpAfterRequestListener;)Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    move-result-object p2

    new-instance v0, Lcom/ssjj/fnsdk/core/bk;

    invoke-direct {v0, p0, p3}, Lcom/ssjj/fnsdk/core/bk;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    invoke-virtual {p2, v0}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->onResponse(Lcom/ssjj/fnsdk/core/http/FNHttpOnResponseListener;)Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/ssjj/fnsdk/core/http/FNHttpProcessor;->exec(Landroid/content/Context;)V

    return-void
.end method

.method public getLastOrderIdAndClearForDJCZ()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->S:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginSuccUid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->D:Ljava/lang/String;

    return-object v0
.end method

.method public getMetaInfFileList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->Z:Ljava/util/List;

    return-object v0
.end method

.method public getMno()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->n:Ljava/lang/String;

    return-object v0
.end method

.method public getNm()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->m:Ljava/lang/String;

    return-object v0
.end method

.method public getOauthSuccUid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->C:Ljava/lang/String;

    return-object v0
.end method

.method public getOldChannel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->W:Ljava/lang/String;

    return-object v0
.end method

.method public getOldYdChannel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->Y:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId(Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;Ljava/lang/String;Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;)Ljava/lang/String;
    .registers 15

    const-string v0, "android"

    const-string v1, "1"

    const-string v2, "0"

    new-instance v8, Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListenerImpl;

    invoke-direct {v8, p3}, Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListenerImpl;-><init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;)V

    sget-object v5, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_ORDER:Ljava/lang/String;

    iget-wide v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->o:J

    const-wide/16 v9, 0x0

    cmp-long p3, v3, v9

    if-lez p3, :cond_1a

    const-wide/16 v6, 0x3e8

    mul-long v3, v3, v6

    goto :goto_1e

    :cond_1a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    :goto_1e
    invoke-static {v3, v4}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->createOrderId(J)Ljava/lang/String;

    move-result-object p3

    sget-object v3, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    const-string v4, "59"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x4

    sub-int/2addr v3, v4

    invoke-virtual {p3, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p3

    :cond_36
    iput-object p3, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->S:Ljava/lang/String;

    new-instance v6, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v6}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    :try_start_3d
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "GAME ID UC"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v3, "gameId"

    sget-object v4, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "serverId"

    iget-object v4, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->serverId:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "platformId"

    sget-object v4, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "areaId"

    invoke-virtual {v6, v3, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "uid"

    iget-object v4, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->uid:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "nickname"

    invoke-virtual {v6, v3, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "did"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "appVersion"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getAppVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v3, v4}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "sdkVersion"

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->k:Ljava/lang/String;

    invoke-virtual {v6, v3, v4}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "os"

    invoke-virtual {v6, v3, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "osVersion"

    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_9b
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_9b} :catch_128

    const-string v7, ""

    if-nez v4, :cond_a1

    move-object v4, v7

    goto :goto_a3

    :cond_a1
    :try_start_a1
    sget-object v4, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_a3
    invoke-virtual {v6, v3, v4}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "device"

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v4, :cond_ae

    move-object v4, v7

    goto :goto_b0

    :cond_ae
    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_b0
    invoke-virtual {v6, v3, v4}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "deviceType"

    invoke-virtual {v6, v3, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "screen"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getScreen()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mno"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getMno()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nm"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getNm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v0, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "roleLevel"

    iget-object v3, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->level:Ljava/lang/String;

    invoke-virtual {v6, v0, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "before"

    invoke-virtual {v6, v0, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rmbCount"

    iget-object v3, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->price:Ljava/lang/String;

    invoke-virtual {v6, v0, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "goodsId"

    invoke-virtual {v6, v0, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "goodsCount"

    iget-object v2, p1, Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;->productCount:Ljava/lang/String;

    invoke-virtual {v6, v0, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "payType"

    invoke-virtual {v6, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "orderId"

    invoke-virtual {v6, v0, p3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "extraInformation"

    invoke-virtual {v6, v0, p2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "channel"

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->V:Ljava/lang/String;

    invoke-virtual {v6, p2, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "channelOld"

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->W:Ljava/lang/String;

    invoke-virtual {v6, p2, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "channelSy"

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->U:Ljava/lang/String;

    invoke-virtual {v6, p2, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fillParam(Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)V

    const-string p2, "pkgName"

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e:Landroid/content/Context;

    if-nez v0, :cond_120

    goto :goto_124

    :cond_120
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    :goto_124
    invoke-virtual {v6, p2, v7}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_127
    .catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_127} :catch_128

    goto :goto_129

    :catch_128
    move-exception p2

    :goto_129
    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->M:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/ssjj/fnsdk/core/ay;

    move-object v3, v0

    move-object v4, p0

    move-object v7, p1

    invoke-direct/range {v3 .. v8}, Lcom/ssjj/fnsdk/core/ay;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Lcom/ssjj/fnsdk/core/entity/SsjjFNProduct;Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p2, v0, v9, v10, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-object p3
.end method

.method public getOrderId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;)V
    .registers 19

    const-string v1, "1"

    const-string v2, "0"

    const-string v4, "1"

    const-string v5, "0"

    const-string v6, "1"

    const-string v8, "0"

    const-string v9, "1"

    move-object v0, p0

    move-object/from16 v3, p3

    move-object v7, p1

    move-object v10, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v0 .. v12}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getOrderId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;)V

    return-void
.end method

.method public getOrderId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;)V
    .registers 29

    move-object/from16 v1, p0

    move-object/from16 v0, p7

    move-object/from16 v2, p10

    const-string v3, "android"

    new-instance v4, Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListenerImpl;

    move-object/from16 v5, p12

    invoke-direct {v4, v5}, Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListenerImpl;-><init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;)V

    sget-object v5, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_ORDER:Ljava/lang/String;

    iget-wide v6, v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->o:J

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-lez v10, :cond_1e

    const-wide/16 v10, 0x3e8

    mul-long v6, v6, v10

    goto :goto_22

    :cond_1e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    :goto_22
    invoke-static {v6, v7}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->createOrderId(J)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    const-string v10, "59"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3a

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    const/4 v10, 0x4

    sub-int/2addr v7, v10

    invoke-virtual {v6, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    :cond_3a
    iput-object v6, v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->S:Ljava/lang/String;

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v12, "orderId"

    invoke-virtual {v7, v12, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v13, v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->c:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "gameOrderId: "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Lcom/ssjj/fnsdk/core/SsjjFNDebugUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v4, v7}, Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;->onCompleted(Landroid/os/Bundle;)V

    new-instance v7, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v7}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    :try_start_79
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "GAME ID UC"

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v14, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v10, "gameId"

    sget-object v13, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    invoke-virtual {v7, v10, v13}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "serverId"

    invoke-virtual {v7, v10, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "platformId"

    sget-object v13, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    invoke-virtual {v7, v10, v13}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "areaId"

    move-object/from16 v13, p9

    invoke-virtual {v7, v10, v13}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "uid"

    invoke-virtual {v7, v10, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "nickname"

    move-object/from16 v13, p8

    invoke-virtual {v7, v10, v13}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "did"

    invoke-virtual/range {p0 .. p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v10, v13}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "appVersion"

    invoke-virtual/range {p0 .. p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getAppVersion()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v7, v10, v13}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "sdkVersion"

    iget-object v13, v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->k:Ljava/lang/String;

    invoke-virtual {v7, v10, v13}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "os"

    invoke-virtual {v7, v10, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "osVersion"

    sget-object v13, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_d7} :catch_191

    const-string v14, ""

    if-nez v13, :cond_dd

    move-object v13, v14

    goto :goto_df

    :cond_dd
    :try_start_dd
    sget-object v13, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_df
    invoke-virtual {v7, v10, v13}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "device"

    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v13, :cond_ea

    move-object v13, v14

    goto :goto_ec

    :cond_ea
    sget-object v13, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_ec
    invoke-virtual {v7, v10, v13}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v10, "deviceType"

    invoke-virtual {v7, v10, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "screen"

    invoke-virtual/range {p0 .. p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getScreen()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v3, v10}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "mno"

    invoke-virtual/range {p0 .. p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getMno()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v3, v10}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "nm"

    invoke-virtual/range {p0 .. p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getNm()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v3, v10}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "roleLevel"

    move-object/from16 v10, p1

    invoke-virtual {v7, v3, v10}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "before"

    move-object/from16 v10, p2

    invoke-virtual {v7, v3, v10}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "rmbCount"

    move-object/from16 v10, p3

    invoke-virtual {v7, v3, v10}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "goodsId"

    move-object/from16 v10, p4

    invoke-virtual {v7, v3, v10}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "goodsCount"

    move-object/from16 v10, p5

    invoke-virtual {v7, v3, v10}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "payType"

    move-object/from16 v10, p6

    invoke-virtual {v7, v3, v10}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v12, v6}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "extraInfo"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "SSJJ"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v2, p11

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v3, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "channel"

    iget-object v2, v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->V:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "channelOld"

    iget-object v2, v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->W:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "channelSy"

    iget-object v2, v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->U:Ljava/lang/String;

    invoke-virtual {v7, v0, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fillParam(Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)V

    const-string v0, "pkgName"

    iget-object v2, v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e:Landroid/content/Context;

    if-nez v2, :cond_189

    goto :goto_18d

    :cond_189
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v14

    :goto_18d
    invoke-virtual {v7, v0, v14}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_190
    .catch Ljava/lang/Exception; {:try_start_dd .. :try_end_190} :catch_191

    goto :goto_192

    :catch_191
    move-exception v0

    :goto_192
    iget-object v0, v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->M:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/ssjj/fnsdk/core/ax;

    invoke-direct {v2, v1, v5, v7, v4}, Lcom/ssjj/fnsdk/core/ax;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;)V

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v8, v9, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public getOrderIdSpecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;)V
    .registers 19

    const-string v1, "1"

    const-string v2, "0"

    const-string v4, "1"

    const-string v5, "0"

    const-string v6, "1"

    const-string v8, "0"

    const-string v9, "1"

    move-object v0, p0

    move-object/from16 v3, p3

    move-object v7, p1

    move-object v10, p2

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    invoke-virtual/range {v0 .. v12}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getOrderIdSpecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;)V

    return-void
.end method

.method public getOrderIdSpecial(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;)V
    .registers 24

    move-object v1, p0

    const-string v0, "android"

    new-instance v2, Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListenerImpl;

    move-object/from16 v3, p12

    invoke-direct {v2, v3}, Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListenerImpl;-><init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;)V

    sget-object v3, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_ORDER_SPECIAL:Ljava/lang/String;

    iget-wide v4, v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->o:J

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-lez v8, :cond_19

    const-wide/16 v8, 0x3e8

    mul-long v4, v4, v8

    goto :goto_1d

    :cond_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    :goto_1d
    invoke-static {v4, v5}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->createOrderId(J)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    const-string v8, "59"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v8, 0x4

    sub-int/2addr v5, v8

    invoke-virtual {v4, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    :cond_35
    iput-object v4, v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->S:Ljava/lang/String;

    new-instance v5, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v5}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    :try_start_3c
    const-string v8, "ext"

    move-object/from16 v9, p11

    invoke-virtual {v5, v8, v9}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "gameId"

    sget-object v9, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "serverId"

    move-object/from16 v9, p10

    invoke-virtual {v5, v8, v9}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "platformId"

    sget-object v9, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "areaId"

    move-object/from16 v9, p9

    invoke-virtual {v5, v8, v9}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "uid"

    move-object/from16 v9, p7

    invoke-virtual {v5, v8, v9}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "nickname"

    move-object/from16 v9, p8

    invoke-virtual {v5, v8, v9}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "did"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "appVersion"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getAppVersion()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "sdkVersion"

    iget-object v9, v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->k:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "os"

    invoke-virtual {v5, v8, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "osVersion"

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_8f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_8f} :catch_119

    const-string v10, ""

    if-nez v9, :cond_95

    move-object v9, v10

    goto :goto_97

    :cond_95
    :try_start_95
    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_97
    invoke-virtual {v5, v8, v9}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "device"

    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v9, :cond_a2

    move-object v9, v10

    goto :goto_a4

    :cond_a2
    sget-object v9, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_a4
    invoke-virtual {v5, v8, v9}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "deviceType"

    invoke-virtual {v5, v8, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "screen"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getScreen()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mno"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getMno()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nm"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getNm()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "roleLevel"

    move-object v8, p1

    invoke-virtual {v5, v0, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "before"

    move-object v8, p2

    invoke-virtual {v5, v0, p2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "rmbCount"

    move-object v8, p3

    invoke-virtual {v5, v0, p3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "goodsId"

    move-object v8, p4

    invoke-virtual {v5, v0, p4}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "goodsCount"

    move-object/from16 v8, p5

    invoke-virtual {v5, v0, v8}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "payType"

    move-object/from16 v8, p6

    invoke-virtual {v5, v0, v8}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "orderId"

    invoke-virtual {v5, v0, v4}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "channel"

    iget-object v4, v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->V:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "channelOld"

    iget-object v4, v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->W:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "channelSy"

    iget-object v4, v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->U:Ljava/lang/String;

    invoke-virtual {v5, v0, v4}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fillParam(Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)V

    const-string v0, "pkgName"

    iget-object v4, v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e:Landroid/content/Context;

    if-nez v4, :cond_111

    goto :goto_115

    :cond_111
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    :goto_115
    invoke-virtual {v5, v0, v10}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_118} :catch_119

    goto :goto_11a

    :catch_119
    move-exception v0

    :goto_11a
    iget-object v0, v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->M:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lcom/ssjj/fnsdk/core/az;

    invoke-direct {v4, p0, v3, v5, v2}, Lcom/ssjj/fnsdk/core/az;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Lcom/ssjj/fnsdk/core/listener/SsjjFNOrderListener;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v6, v7, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public getOverseaId()I
    .registers 2

    sget v0, Lcom/ssjj/fnsdk/core/EnvConfigRes;->overseaId:I

    return v0
.end method

.method public getPkgName()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->H:Ljava/lang/String;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1b

    :cond_e
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e:Landroid/content/Context;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_19

    :cond_17
    const-string v0, ""

    :goto_19
    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->H:Ljava/lang/String;

    :cond_1b
    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->H:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->F:Ljava/lang/String;

    return-object v0
.end method

.method public getRoleName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->G:Ljava/lang/String;

    return-object v0
.end method

.method public getSDKVersion()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->k:Ljava/lang/String;

    return-object v0
.end method

.method public getScreen()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->l:Ljava/lang/String;

    return-object v0
.end method

.method public getServerId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->B:Ljava/lang/String;

    return-object v0
.end method

.method public getServerTime()J
    .registers 3

    iget-wide v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->o:J

    return-wide v0
.end method

.method public getShareData(Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 9

    const-string v0, "android"

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_c

    const-string p1, "params = null"

    invoke-interface {p2, v2, p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void

    :cond_c
    new-instance v3, Lcom/ssjj/fnsdk/core/entity/LoginData;

    invoke-direct {v3, p1}, Lcom/ssjj/fnsdk/core/entity/LoginData;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    invoke-virtual {v3}, Lcom/ssjj/fnsdk/core/entity/LoginData;->getErrMsg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_34

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_34

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u8f93\u5165\u53c2\u6570\u6709\u8bef\uff0c\u8bf7\u91cd\u65b0\u8bbe\u503c\uff1a"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v2, p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void

    :cond_34
    new-instance v1, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    const/4 v2, 0x0

    :try_start_3a
    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->map()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_46
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_11e

    const-string p1, "fnpid"

    sget-object v3, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_platformId:Ljava/lang/String;

    invoke-virtual {v1, p1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fnpidraw"

    sget-object v3, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    invoke-virtual {v1, p1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "clientId"

    sget-object v3, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    invoke-virtual {v1, p1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "deviceId"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "appVersion"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getAppVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sdkVersion"

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->k:Ljava/lang/String;

    invoke-virtual {v1, p1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "osVersion"

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_7e} :catch_135

    const-string v4, ""

    if-nez v3, :cond_84

    move-object v3, v4

    goto :goto_86

    :cond_84
    :try_start_84
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_86
    invoke-virtual {v1, p1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "device"

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v3, :cond_91

    move-object v3, v4

    goto :goto_93

    :cond_91
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_93
    invoke-virtual {v1, p1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "screen"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getScreen()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "mno"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getMno()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "nm"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getNm()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "channel"

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->V:Ljava/lang/String;

    invoke-virtual {v1, p1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "channelSy"

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->U:Ljava/lang/String;

    invoke-virtual {v1, p1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fillParam(Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)V

    const-string p1, "pkgName"

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e:Landroid/content/Context;

    if-nez v3, :cond_c9

    goto :goto_cd

    :cond_c9
    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    :goto_cd
    invoke-virtual {v1, p1, v4}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "os"

    invoke-virtual {v1, p1, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "deviceType"

    invoke-virtual {v1, p1, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_e9
    if-lt v4, v3, :cond_114

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_f2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_106

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "sign"

    invoke-virtual {v1, v0, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_139

    :cond_106
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f2

    :cond_114
    invoke-virtual {v1, v4}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->getKey(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_e9

    :cond_11e
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_133
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_133} :catch_135

    goto/16 :goto_46

    :catch_135
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_139
    new-instance p1, Lcom/ssjj/fnsdk/core/bd;

    invoke-direct {p1, p0, v1, p2}, Lcom/ssjj/fnsdk/core/bd;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    new-array p2, v2, [Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->execAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method public getShareUrl(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/LoginData;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 28

    move-object/from16 v11, p0

    move-object/from16 v10, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v5, p5

    const-string v2, "android"

    iget-object v3, v11, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e:Landroid/content/Context;

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_18

    const-string v0, "\u8bf7\u5148\u521d\u59cb\u5316\u8702\u9e1fsdk"

    invoke-interface {v5, v6, v0, v4}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void

    :cond_18
    if-nez v1, :cond_20

    const-string v0, "loginData is null"

    invoke-interface {v5, v6, v0, v4}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void

    :cond_20
    invoke-virtual/range {p3 .. p3}, Lcom/ssjj/fnsdk/core/entity/LoginData;->getErrMsg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_43

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_43

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8f93\u5165\u6709\u8bef\uff0c\u8bf7\u91cd\u65b0\u8bbe\u503c\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v6, v0, v4}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void

    :cond_43
    invoke-static/range {p4 .. p4}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v11, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "fncache_"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v12, 0x0

    invoke-virtual {v4, v6, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    new-instance v4, Ljava/lang/StringBuilder;

    sget-object v7, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "#"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v8, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v1, Lcom/ssjj/fnsdk/core/entity/LoginData;->uid:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v1, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleId:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v1, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v1, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleLevel:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v1, Lcom/ssjj/fnsdk/core/entity/LoginData;->serverId:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v1, Lcom/ssjj/fnsdk/core/entity/LoginData;->serverName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->de(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "tg_last_params"

    const-string v9, ""

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    iget-boolean v8, v11, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->aa:Z

    if-nez v8, :cond_192

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18b

    const-string v4, "tg_last_time"

    move-object/from16 p4, v7

    const-wide/16 v7, 0x0

    invoke-interface {v6, v4, v7, v8}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    sub-long v7, v13, v7

    const-wide/32 v15, 0x6ddd00

    cmp-long v4, v7, v15

    if-gez v4, :cond_188

    const-string v4, "tg_url"

    invoke-interface {v6, v4, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "tg_qrcode"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "tg_qrdata"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v15, "tg_fullurl"

    invoke-interface {v6, v15, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v12, "tg_fullurl_qrdata"

    invoke-interface {v6, v12, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-wide/from16 v17, v13

    const-string v13, "tg_iconurl"

    invoke-interface {v6, v13, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "tg_title"

    invoke-interface {v6, v14, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v19, v2

    const-string v2, "tg_desc"

    invoke-interface {v6, v2, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v4, :cond_13e

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-gtz v20, :cond_156

    :cond_13e
    if-eqz v8, :cond_14a

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-gtz v20, :cond_156

    :cond_14a
    if-eqz v7, :cond_1b0

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_1b0

    :cond_156
    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;-><init>()V

    const-string v1, "url"

    invoke-virtual {v0, v1, v4}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "qrcode"

    invoke-virtual {v0, v1, v7}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "qrdata"

    invoke-virtual {v0, v1, v8}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fullurl"

    invoke-virtual {v0, v1, v15}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fullurlQRData"

    invoke-virtual {v0, v1, v12}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "iconurl"

    invoke-virtual {v0, v1, v13}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    invoke-virtual {v0, v1, v14}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "desc"

    invoke-virtual {v0, v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->add(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-interface {v5, v1, v9, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void

    :cond_188
    move-object/from16 v19, v2

    goto :goto_18f

    :cond_18b
    move-object/from16 v19, v2

    move-object/from16 p4, v7

    :goto_18f
    move-wide/from16 v17, v13

    goto :goto_1b0

    :cond_192
    move-object/from16 v19, v2

    move-object/from16 p4, v7

    move-wide/from16 v17, v13

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "first get "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " url"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :cond_1b0
    :goto_1b0
    new-instance v4, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v4}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    sget-object v2, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_GET_SHARE:Ljava/lang/String;

    const-string v7, "invite"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "headImage"

    if-eqz v7, :cond_1d0

    sget-object v2, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_GET_INVITE:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/ssjj/fnsdk/core/entity/LoginData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1ca

    goto :goto_1f9

    :cond_1ca
    :goto_1ca
    move-object/from16 v21, v7

    move-object v7, v2

    move-object/from16 v2, v21

    goto :goto_1fb

    :cond_1d0
    const-string v7, "puzzle"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1f9

    sget-object v2, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_GET_PUZZLE:Ljava/lang/String;

    invoke-virtual {v1, v8}, Lcom/ssjj/fnsdk/core/entity/LoginData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1e1

    move-object v7, v9

    :cond_1e1
    const-string v8, "puzzleType"

    invoke-virtual {v1, v8}, Lcom/ssjj/fnsdk/core/entity/LoginData;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1ca

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_1ca

    const-string v12, "puzzle_type"

    invoke-virtual {v4, v12, v8}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1ca

    :cond_1f9
    :goto_1f9
    move-object v7, v2

    move-object v2, v9

    :goto_1fb
    :try_start_1fb
    const-string v8, "uid"

    iget-object v12, v1, Lcom/ssjj/fnsdk/core/entity/LoginData;->uid:Ljava/lang/String;

    invoke-virtual {v4, v8, v12}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "roleId"

    iget-object v12, v1, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleId:Ljava/lang/String;

    invoke-virtual {v4, v8, v12}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "roleName"

    iget-object v12, v1, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleName:Ljava/lang/String;

    invoke-virtual {v4, v8, v12}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "roleLevel"

    iget-object v12, v1, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleLevel:Ljava/lang/String;

    invoke-virtual {v4, v8, v12}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "serverName"

    iget-object v12, v1, Lcom/ssjj/fnsdk/core/entity/LoginData;->serverName:Ljava/lang/String;

    invoke-virtual {v4, v8, v12}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "serverId"

    iget-object v12, v1, Lcom/ssjj/fnsdk/core/entity/LoginData;->serverId:Ljava/lang/String;

    invoke-virtual {v4, v8, v12}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "fnpid"

    sget-object v12, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_platformId:Ljava/lang/String;

    invoke-virtual {v4, v8, v12}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "fnpidraw"

    sget-object v12, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    invoke-virtual {v4, v8, v12}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleId:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, v1, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleName:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v12, v1, Lcom/ssjj/fnsdk/core/entity/LoginData;->uid:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v12, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_platformId:Ljava/lang/String;

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/entity/LoginData;->serverName:Ljava/lang/String;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v8, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v8, "sign"

    invoke-virtual {v4, v8, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "callback_info"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v1, v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_290

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_290

    const-string v1, "head_image"

    invoke-virtual {v4, v1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_290
    const-string v1, "client_id"

    sget-object v2, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    invoke-virtual {v4, v1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "device_id"

    invoke-virtual/range {p0 .. p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v11, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2ab

    const-string v1, "invite_type"

    invoke-virtual {v4, v1, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2ab
    const-string v0, "gameId"

    sget-object v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "platformId"

    sget-object v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "did"

    invoke-virtual/range {p0 .. p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "appVersion"

    invoke-virtual/range {p0 .. p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sdkVersion"

    iget-object v1, v11, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->k:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "osVersion"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    if-nez v1, :cond_2da

    move-object v1, v9

    goto :goto_2dc

    :cond_2da
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_2dc
    invoke-virtual {v4, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "device"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v1, :cond_2e7

    move-object v1, v9

    goto :goto_2e9

    :cond_2e7
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_2e9
    invoke-virtual {v4, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "screen"

    invoke-virtual/range {p0 .. p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "mno"

    invoke-virtual/range {p0 .. p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getMno()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nm"

    invoke-virtual/range {p0 .. p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getNm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "channel"

    iget-object v1, v11, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->V:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "channelOld"

    iget-object v1, v11, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->W:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "channelSy"

    iget-object v1, v11, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->U:Ljava/lang/String;

    invoke-virtual {v4, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v11, v4}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fillParam(Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)V

    const-string v0, "pkgName"

    iget-object v1, v11, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e:Landroid/content/Context;

    if-nez v1, :cond_326

    goto :goto_32a

    :cond_326
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    :goto_32a
    invoke-virtual {v4, v0, v9}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "nickname"

    const-string v1, "0"

    invoke-virtual {v4, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "areaId"

    const-string v1, "1"

    invoke-virtual {v4, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "os"

    move-object/from16 v1, v19

    invoke-virtual {v4, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "deviceType"

    invoke-virtual {v4, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_347
    .catch Ljava/lang/Exception; {:try_start_1fb .. :try_end_347} :catch_348

    goto :goto_349

    :catch_348
    move-exception v0

    :goto_349
    new-instance v0, Lcom/ssjj/fnsdk/core/bc;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v7

    move-object/from16 v5, p5

    move-object/from16 v7, p4

    move-wide/from16 v8, v17

    move-object/from16 v10, p1

    invoke-direct/range {v1 .. v10}, Lcom/ssjj/fnsdk/core/bc;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Lcom/ssjj/fnsdk/core/SsjjFNListener;Landroid/content/SharedPreferences;Ljava/lang/String;JLjava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->execAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method public getSyChannel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->U:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->C:Ljava/lang/String;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->E:Ljava/lang/String;

    return-object v0
.end method

.method public getYdChannel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->X:Ljava/lang/String;

    return-object v0
.end method

.method public getmDid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->i:Ljava/lang/String;

    return-object v0
.end method

.method public isCfgKeyCacheForce(Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNCfg2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->b(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isCfgKeyForce(Ljava/lang/String;)Z
    .registers 3

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNCfg2;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNCfg2;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isExistFNPid(Landroid/content/Context;)Z
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Landroid/content/Context;Z)Z

    move-result p1

    return p1
.end method

.method public isOverseaPlatform()Z
    .registers 2

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getOverseaId()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method public logAppOpen()V
    .registers 6

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->getInstance()Lcom/ssjj/fnsdk/core/log2/ChannelGetter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/log2/ChannelGetter;->init()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/ap;->a()Lcom/ssjj/fnsdk/core/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/ap;->e()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->init()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->getInstance()Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->isForceDisableOpenAppLog()Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "Force disable open app log."

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_24
    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->getInstance()Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->isEnableLog2()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->getInstance()Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->logAppOpen()V

    :cond_35
    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->getInstance()Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->isDisableLog1()Z

    move-result v0

    if-eqz v0, :cond_4a

    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->getInstance()Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->isEnableLog2()Z

    move-result v0

    if-eqz v0, :cond_4a

    return-void

    :cond_4a
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    const-string v0, "logAppOpen hw cancel"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_5a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "activity_open.php"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->M:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/ssjj/fnsdk/core/bo;

    invoke-direct {v3, p0, v1, v0}, Lcom/ssjj/fnsdk/core/bo;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public logAppOpen(Landroid/content/Context;)V
    .registers 7

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->c()V

    sget-object v0, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_platformId:Ljava/lang/String;

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    sget-object v0, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_platformTag:Ljava/lang/String;

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatTag:Ljava/lang/String;

    sget-object v0, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_gameId:Ljava/lang/String;

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->H:Ljava/lang/String;

    const-string v0, "info_log"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->f:Landroid/content/SharedPreferences;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v2, "window"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    :try_start_3c
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Ljava/lang/String;)V
    :try_end_49
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3c .. :try_end_49} :catch_4a

    goto :goto_4e

    :catch_4a
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_4e
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->getNM(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->c(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->getMno(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->d(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->b(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Zm5zZGsuc2RrLmRlYnVn"

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_b0

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNDebugUtils;->openDebug()V

    :cond_b0
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->f()V

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->logAppOpen()V

    return-void
.end method

.method public logBeforeLogin()V
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->b(Landroid/content/Context;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/ap;->a()Lcom/ssjj/fnsdk/core/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/ap;->f()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->getInstance()Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->isEnableLog2()Z

    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->getInstance()Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->isDisableLog1()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->getInstance()Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->isEnableLog2()Z

    move-result v0

    if-eqz v0, :cond_28

    return-void

    :cond_28
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    const-string v0, "logBeforeLogin hw cancel"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "activity_before_login.php"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->M:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/ssjj/fnsdk/core/bp;

    invoke-direct {v3, p0, v1, v0}, Lcom/ssjj/fnsdk/core/bp;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public logCreateRole(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const-string v0, "android"

    const-string v1, "0"

    invoke-static {}, Lcom/ssjj/fnsdk/core/ap;->a()Lcom/ssjj/fnsdk/core/ap;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/ssjj/fnsdk/core/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->getInstance()Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->isEnableLog2()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->getInstance()Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->logCreateRole(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->getInstance()Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->isDisableLog1()Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->getInstance()Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->isEnableLog2()Z

    move-result v2

    if-eqz v2, :cond_31

    return-void

    :cond_31
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_41

    const-string p1, "logCreateRole hw cancel"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_41
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "user_create_role.php"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    :try_start_6d
    const-string v6, "eventId"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ip"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "did"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "appVersion"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getAppVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "sdkVersion"

    iget-object v7, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->k:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "uid"

    invoke-virtual {v4, v6, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "nickname"

    invoke-virtual {v4, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "platformId"

    sget-object v6, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    invoke-virtual {v4, p2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "gameId"

    sget-object v6, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    invoke-virtual {v4, p2, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "areaId"

    invoke-virtual {v4, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "serverId"

    invoke-virtual {v4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "os"

    invoke-virtual {v4, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "osVersion"

    sget-object p3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_bb} :catch_181

    const-string v1, ""

    if-nez p3, :cond_c1

    move-object p3, v1

    goto :goto_c3

    :cond_c1
    :try_start_c1
    sget-object p3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_c3
    invoke-virtual {v4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "device"

    sget-object p3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez p3, :cond_ce

    move-object p3, v1

    goto :goto_d0

    :cond_ce
    sget-object p3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_d0
    invoke-virtual {v4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "deviceType"

    invoke-virtual {v4, p2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "screen"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getScreen()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "mno"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getMno()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "nm"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getNm()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "eventTime"

    iget-wide v6, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->o:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "roleName"

    invoke-virtual {v4, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "channel"

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->V:Ljava/lang/String;

    invoke-virtual {v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "channelOld"

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->W:Ljava/lang/String;

    invoke-virtual {v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "channelSy"

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->U:Ljava/lang/String;

    invoke-virtual {v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "username"

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->E:Ljava/lang/String;

    invoke-virtual {v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, v4}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fillJson(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    invoke-direct {p0, v4, p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Lorg/json/JSONObject;I)V

    const-string p1, "pkgName"

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e:Landroid/content/Context;

    if-nez p2, :cond_12e

    move-object p2, v1

    goto :goto_132

    :cond_12e
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    :goto_132
    invoke-virtual {v4, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "roleId"

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->F:Ljava/lang/String;

    if-nez p2, :cond_13c

    goto :goto_13d

    :cond_13c
    move-object v1, p2

    :goto_13d
    invoke-virtual {v4, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "CreatRoleLog data: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    const-string p2, "time"

    invoke-virtual {v3, p2, v5}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "flag"

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string v0, "6dm1165332e914ec281e7676d451f242"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p2, p3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "data"

    invoke-virtual {v3, p2, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_180
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_180} :catch_181

    goto :goto_182

    :catch_181
    move-exception p1

    :goto_182
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->M:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p2, Lcom/ssjj/fnsdk/core/at;

    invoke-direct {p2, p0, v2, v3}, Lcom/ssjj/fnsdk/core/at;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)V

    const-wide/16 v0, 0x0

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, v0, v1, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public logEnterGame(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    const-string v0, "android"

    const-string v1, "roleLevel"

    const-string v2, "0"

    invoke-static {}, Lcom/ssjj/fnsdk/core/ap;->a()Lcom/ssjj/fnsdk/core/ap;

    move-result-object v3

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-virtual/range {v3 .. v8}, Lcom/ssjj/fnsdk/core/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->F:Ljava/lang/String;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->G:Ljava/lang/String;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->B:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_20

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->B:Ljava/lang/String;

    :cond_20
    sget-object v3, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_ENTER_GAME:Ljava/lang/String;

    new-instance v4, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v4}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    :try_start_37
    const-string v7, "uid"

    iget-object v8, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->C:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "roleId"

    invoke-virtual {v5, v7, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "roleName"

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "serverName"

    invoke-virtual {v5, p1, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "serverId"

    invoke-virtual {v5, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "fnpid"

    sget-object p2, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_platformId:Ljava/lang/String;

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "fnpidraw"

    sget-object p2, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "eventId"

    invoke-virtual {v5, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "ip"

    invoke-virtual {v5, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "nickname"

    invoke-virtual {v5, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "did"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "appVersion"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getAppVersion()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "sdkVersion"

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->k:Ljava/lang/String;

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "platformId"

    sget-object p2, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "gameId"

    sget-object p2, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "areaId"

    invoke-virtual {v5, p1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "os"

    invoke-virtual {v5, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "osVersion"

    sget-object p2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_a7
    .catch Ljava/lang/Exception; {:try_start_37 .. :try_end_a7} :catch_16b

    const-string p4, ""

    if-nez p2, :cond_ad

    move-object p2, p4

    goto :goto_af

    :cond_ad
    :try_start_ad
    sget-object p2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_af
    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "device"

    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez p2, :cond_ba

    move-object p2, p4

    goto :goto_bc

    :cond_ba
    sget-object p2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_bc
    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "deviceType"

    invoke-virtual {v5, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "screen"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getScreen()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "mno"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getMno()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "nm"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getNm()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "eventTime"

    iget-wide v7, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->o:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "channel"

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->V:Ljava/lang/String;

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "channelOld"

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->W:Ljava/lang/String;

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "channelSy"

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->U:Ljava/lang/String;

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "username"

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->E:Ljava/lang/String;

    invoke-virtual {v5, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, v5}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fillJson(Lorg/json/JSONObject;)V

    const/4 p1, 0x1

    invoke-direct {p0, v5, p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Lorg/json/JSONObject;I)V

    const-string p1, "pkgName"

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e:Landroid/content/Context;

    if-nez p2, :cond_114

    goto :goto_118

    :cond_114
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p4

    :goto_118
    invoke-virtual {v5, p1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->f:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->c:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "RoleLevelLog data: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ssjj/fnsdk/core/SsjjFNDebugUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "time"

    invoke-virtual {v4, p2, v6}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "flag"

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string p4, "6dm1165332e914ec281e7676d451f242"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p2, p3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "data"

    invoke-virtual {v4, p2, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16a
    .catch Ljava/lang/Exception; {:try_start_ad .. :try_end_16a} :catch_16b

    goto :goto_16c

    :catch_16b
    move-exception p1

    :goto_16c
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->M:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p2, Lcom/ssjj/fnsdk/core/av;

    invoke-direct {p2, p0, v3, v4}, Lcom/ssjj/fnsdk/core/av;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)V

    const-wide/16 p3, 0x0

    sget-object p5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, p3, p4, p5}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public logGiftCodeActive(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 24

    move-object v12, p0

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "logLoginFinish hw cancel"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "gift_code.php"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v9, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v9}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    iget-object v13, v12, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->M:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v14, Lcom/ssjj/fnsdk/core/bh;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/ssjj/fnsdk/core/bh;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    const-wide/16 v0, 0x0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v13, v14, v0, v1, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public logLoginFinish(Ljava/lang/String;)V
    .registers 6

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->C:Ljava/lang/String;

    invoke-static {}, Lcom/ssjj/fnsdk/core/ap;->a()Lcom/ssjj/fnsdk/core/ap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/ap;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->getInstance()Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->isEnableLog2()Z

    move-result v0

    if-eqz v0, :cond_1e

    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->getInstance()Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->logLoginFinish(Ljava/lang/String;)V

    :cond_1e
    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->getInstance()Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->isDisableLog1()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->getInstance()Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->isEnableLog2()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-static {}, Lcom/ssjj/fnsdk/core/stat/FNStat;->getInstance()Lcom/ssjj/fnsdk/core/stat/FNStat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/stat/FNStat;->sendAllLog()V

    return-void

    :cond_3a
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4a

    const-string p1, "logLoginFinish hw cancel"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_4a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "user_login.php"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->M:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/ssjj/fnsdk/core/bl;

    invoke-direct {v3, p0, p1, v1, v0}, Lcom/ssjj/fnsdk/core/bl;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v2, v3, v0, v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    invoke-static {}, Lcom/ssjj/fnsdk/core/stat/FNStat;->getInstance()Lcom/ssjj/fnsdk/core/stat/FNStat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/stat/FNStat;->sendAllLog()V

    return-void
.end method

.method public logRoleLevel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    const-string v0, "roleLevel"

    const-string v1, "android"

    const-string v2, "0"

    invoke-static {}, Lcom/ssjj/fnsdk/core/ap;->a()Lcom/ssjj/fnsdk/core/ap;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/ssjj/fnsdk/core/ap;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->getInstance()Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->isEnableLog2()Z

    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->getInstance()Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->isDisableLog1()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->getInstance()Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->isEnableLog2()Z

    move-result v3

    if-eqz v3, :cond_29

    return-void

    :cond_29
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_39

    const-string p1, "logRoleLevel hw cancel"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "role_level.php"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v4}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    :try_start_65
    const-string v7, "eventId"

    invoke-virtual {v5, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "ip"

    invoke-virtual {v5, v7, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "did"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "appVersion"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getAppVersion()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "sdkVersion"

    iget-object v8, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->k:Ljava/lang/String;

    invoke-virtual {v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v7, "uid"

    invoke-virtual {v5, v7, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "nickname"

    invoke-virtual {v5, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "platformId"

    sget-object v7, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    invoke-virtual {v5, p2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "gameId"

    sget-object v7, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    invoke-virtual {v5, p2, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "areaId"

    invoke-virtual {v5, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "serverId"

    invoke-virtual {v5, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "os"

    invoke-virtual {v5, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "osVersion"

    sget-object p3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_65 .. :try_end_b3} :catch_17a

    const-string v2, ""

    if-nez p3, :cond_b9

    move-object p3, v2

    goto :goto_bb

    :cond_b9
    :try_start_b9
    sget-object p3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_bb
    invoke-virtual {v5, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "device"

    sget-object p3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez p3, :cond_c6

    move-object p3, v2

    goto :goto_c8

    :cond_c6
    sget-object p3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_c8
    invoke-virtual {v5, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "deviceType"

    invoke-virtual {v5, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "screen"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getScreen()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "mno"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getMno()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "nm"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getNm()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "eventTime"

    iget-wide v7, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->o:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v5, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v5, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "channel"

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->V:Ljava/lang/String;

    invoke-virtual {v5, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "channelOld"

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->W:Ljava/lang/String;

    invoke-virtual {v5, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "channelSy"

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->U:Ljava/lang/String;

    invoke-virtual {v5, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "username"

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->E:Ljava/lang/String;

    invoke-virtual {v5, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, v5}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fillJson(Lorg/json/JSONObject;)V

    const/4 p2, 0x1

    invoke-direct {p0, v5, p2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Lorg/json/JSONObject;I)V

    const-string p2, "pkgName"

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e:Landroid/content/Context;

    if-nez p3, :cond_123

    goto :goto_127

    :cond_123
    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_127
    invoke-virtual {v5, p2, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->f:Landroid/content/SharedPreferences;

    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->c:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "RoleLevelLog data: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/ssjj/fnsdk/core/SsjjFNDebugUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "time"

    invoke-virtual {v4, p2, v6}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "flag"

    new-instance p3, Ljava/lang/StringBuffer;

    invoke-direct {p3, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    const-string v0, "6dm1165332e914ec281e7676d451f242"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v4, p2, p3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "data"

    invoke-virtual {v4, p2, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_179} :catch_17a

    goto :goto_17b

    :catch_17a
    move-exception p1

    :goto_17b
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->M:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p2, Lcom/ssjj/fnsdk/core/au;

    invoke-direct {p2, p0, v3, v4}, Lcom/ssjj/fnsdk/core/au;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)V

    const-wide/16 v0, 0x0

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, p2, v0, v1, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public logSelectServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 15

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->B:Ljava/lang/String;

    invoke-static {}, Lcom/ssjj/fnsdk/core/ap;->a()Lcom/ssjj/fnsdk/core/ap;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ssjj/fnsdk/core/ap;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->getInstance()Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->isEnableLog2()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->getInstance()Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->logSelectServer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->getInstance()Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->isDisableLog1()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->getInstance()Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->isEnableLog2()Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e()V

    return-void

    :cond_32
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_42

    const-string p1, "logSelectServer hw cancel"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "user_server_login.php"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v7, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v7}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->M:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v9, Lcom/ssjj/fnsdk/core/br;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p1

    invoke-direct/range {v1 .. v8}, Lcom/ssjj/fnsdk/core/br;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Ljava/lang/String;)V

    const-wide/16 p1, 0x0

    sget-object p3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v9, p1, p2, p3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e()V

    return-void
.end method

.method public logUserOnline(Ljava/lang/String;)V
    .registers 12

    const-string v0, "android"

    const-string v1, "0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "user_online.php"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/ssjj/fnsdk/core/ap;->a()Lcom/ssjj/fnsdk/core/ap;

    move-result-object v3

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->C:Ljava/lang/String;

    iget-object v5, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->B:Ljava/lang/String;

    invoke-virtual {v3, p1, v4, v5}, Lcom/ssjj/fnsdk/core/ap;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->getInstance()Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->isEnableLog2()Z

    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->getInstance()Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->isDisableLog1()Z

    move-result v3

    if-eqz v3, :cond_42

    invoke-static {}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->getInstance()Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ssjj/fnsdk/core/log2/FNLog2Manager;->isEnableLog2()Z

    move-result v3

    if-eqz v3, :cond_42

    return-void

    :cond_42
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_52

    const-string p1, "logUserOnline hw cancel"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_52
    new-instance v3, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v3}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    :try_start_67
    const-string v6, "eventId"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "ip"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "did"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "appVersion"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getAppVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "sdkVersion"

    iget-object v7, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->k:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "uid"

    iget-object v7, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->C:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "nickname"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "platformId"

    sget-object v7, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "gameId"

    sget-object v7, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v6, "areaId"

    invoke-virtual {v4, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "serverId"

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->B:Ljava/lang/String;

    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "os"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "osVersion"

    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_b9
    .catch Ljava/lang/Exception; {:try_start_67 .. :try_end_b9} :catch_176

    const-string v7, ""

    if-nez v6, :cond_bf

    move-object v6, v7

    goto :goto_c1

    :cond_bf
    :try_start_bf
    sget-object v6, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_c1
    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device"

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v6, :cond_cc

    move-object v6, v7

    goto :goto_ce

    :cond_cc
    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_ce
    invoke-virtual {v4, v1, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceType"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "screen"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "mno"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getMno()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "nm"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getNm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "eventTime"

    iget-wide v8, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->o:J

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "onlineData"

    invoke-virtual {v4, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "channel"

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->V:Ljava/lang/String;

    invoke-virtual {v4, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "channelOld"

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->W:Ljava/lang/String;

    invoke-virtual {v4, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "channelSy"

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->U:Ljava/lang/String;

    invoke-virtual {v4, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "username"

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->E:Ljava/lang/String;

    invoke-virtual {v4, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, v4}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fillJson(Lorg/json/JSONObject;)V

    const-string p1, "onlineState"

    iget v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->b:I

    invoke-virtual {v4, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "pkgName"

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e:Landroid/content/Context;

    if-nez v0, :cond_12e

    goto :goto_132

    :cond_12e
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    :goto_132
    invoke-virtual {v4, p1, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "logUserOnline: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    const-string v0, "time"

    invoke-virtual {v3, v0, v5}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "flag"

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "6dm1165332e914ec281e7676d451f242"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-virtual {v3, v0, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_175
    .catch Ljava/lang/Exception; {:try_start_bf .. :try_end_175} :catch_176

    goto :goto_177

    :catch_176
    move-exception p1

    :goto_177
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->M:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v0, Lcom/ssjj/fnsdk/core/aw;

    invoke-direct {v0, p0, v2, v3}, Lcom/ssjj/fnsdk/core/aw;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)V

    const-wide/16 v1, 0x0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0, v1, v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method public onSetOauthData(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 3

    new-instance p1, Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    invoke-direct {p1, p2}, Lcom/ssjj/fnsdk/core/entity/FNOauthData;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ac:Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    return-void
.end method

.method public recordEvent(Ljava/lang/String;)V
    .registers 3

    invoke-static {}, Lcom/ssjj/fnsdk/core/stat/FNStat;->getInstance()Lcom/ssjj/fnsdk/core/stat/FNStat;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/stat/FNStat;->recordEvent(Ljava/lang/String;)V

    return-void
.end method

.method public recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/ssjj/fnsdk/core/stat/FNStat;->getInstance()Lcom/ssjj/fnsdk/core/stat/FNStat;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/stat/FNStat;->recordEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public release()V
    .registers 4

    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->J:Ljava/util/Timer;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    sput-object v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->J:Ljava/util/Timer;

    :cond_a
    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->K:Ljava/util/Timer;

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    sput-object v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->K:Ljava/util/Timer;

    :cond_13
    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->L:Ljava/util/Timer;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    sput-object v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->L:Ljava/util/Timer;

    :cond_1c
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->aa:Z

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->c:Ljava/lang/String;

    const-string v2, "release now"

    invoke-static {v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNDebugUtils;->debug(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a:Z

    return-void
.end method

.method public reportIllegalImage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 17

    sget-object v7, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_REPOET:Ljava/lang/String;

    new-instance v9, Lcom/ssjj/fnsdk/core/bf;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p1

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/ssjj/fnsdk/core/bf;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-static {v9, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->execAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method public sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->getInstance()Lcom/ssjj/fnsdk/core/StatManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/StatManager;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/ssjj/fnsdk/core/StatManager;->getInstance()Lcom/ssjj/fnsdk/core/StatManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/ssjj/fnsdk/core/StatManager;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFNLogCustom(Ljava/lang/Object;)V
    .registers 3

    invoke-static {}, Lcom/ssjj/fnsdk/core/ap;->a()Lcom/ssjj/fnsdk/core/ap;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/ap;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public setGetServerTimeListener(Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->p:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    return-void
.end method

.method public setLoginSuccUid(Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->D:Ljava/lang/String;

    return-void
.end method

.method public setRoleId(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->F:Ljava/lang/String;

    return-void
.end method

.method public setTLogDebug(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ag:Z

    return-void
.end method

.method public setTLogEnable(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ah:Z

    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .registers 2

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->E:Ljava/lang/String;

    return-void
.end method

.method public tlog(ILjava/lang/String;J)V
    .registers 8

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ah:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-gtz v2, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    :cond_f
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p2, :cond_1c

    const-string p2, ""

    :cond_1c
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    move-result-object p1

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    const-string p2, "1"

    invoke-direct {p0, p2, p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method public tlog(Ljava/lang/String;Ljava/lang/String;JJI)V
    .registers 11

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ah:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-gtz v2, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    :cond_f
    cmp-long v2, p5, v0

    if-gtz v2, :cond_17

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p5

    :cond_17
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v1, ""

    if-nez p1, :cond_21

    move-object p1, v1

    :cond_21
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p2, :cond_28

    move-object p2, v1

    :cond_28
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, p5, p6}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    const-string p2, "3"

    invoke-direct {p0, p2, p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method public tlog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 9

    iget-boolean v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ah:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-wide/16 v0, 0x0

    cmp-long v2, p4, v0

    if-gtz v2, :cond_f

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    :cond_f
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    const-string v1, ""

    if-nez p1, :cond_19

    move-object p1, v1

    :cond_19
    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p2, :cond_20

    move-object p2, v1

    :cond_20
    invoke-virtual {p1, p2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1, p4, p5}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    move-result-object p1

    if-nez p3, :cond_2b

    move-object p3, v1

    :cond_2b
    invoke-virtual {p1, p3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {p2, p1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    const-string p2, "2"

    invoke-direct {p0, p2, p1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->a(Ljava/lang/String;Lorg/json/JSONArray;)V

    return-void
.end method

.method public upFCode(Lcom/ssjj/fnsdk/core/entity/LoginData;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 14

    const-string v0, "android"

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e:Landroid/content/Context;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_e

    const-string p1, "\u8bf7\u5148\u521d\u59cb\u5316\u8702\u9e1fsdk"

    invoke-interface {p3, v3, p1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void

    :cond_e
    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/entity/LoginData;->getErrMsg()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->g(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2f

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "\nfCode: "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_2f
    if-eqz v1, :cond_4e

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4e

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u8f93\u5165\u6709\u8bef\uff0c\u8bf7\u91cd\u65b0\u8bbe\u503c\uff1a"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v3, p1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void

    :cond_4e
    sget-object v6, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_UP_FCODE:Ljava/lang/String;

    new-instance v7, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;

    invoke-direct {v7}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;-><init>()V

    :try_start_55
    const-string v1, "uid"

    iget-object v2, p1, Lcom/ssjj/fnsdk/core/entity/LoginData;->uid:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "roleId"

    iget-object v2, p1, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleId:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "roleName"

    iget-object v2, p1, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleName:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "roleLevel"

    iget-object v2, p1, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleLevel:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "serverName"

    iget-object v2, p1, Lcom/ssjj/fnsdk/core/entity/LoginData;->serverName:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "serverId"

    iget-object v2, p1, Lcom/ssjj/fnsdk/core/entity/LoginData;->serverId:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fnpid"

    sget-object v2, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_platformId:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "fnpidraw"

    sget-object v2, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    invoke-virtual {v7, v1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleId:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/ssjj/fnsdk/core/entity/LoginData;->roleName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/ssjj/fnsdk/core/entity/LoginData;->uid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_platformId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p1, p1, Lcom/ssjj/fnsdk/core/entity/LoginData;->serverName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "sign"

    invoke-virtual {v7, v1, p1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "fcode"

    invoke-virtual {v7, p1, p2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "device_id"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, p1, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "client_id"

    sget-object v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    invoke-virtual {v7, p1, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "gameId"

    sget-object v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnGameId:Ljava/lang/String;

    invoke-virtual {v7, p1, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "platformId"

    sget-object v1, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    invoke-virtual {v7, p1, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "did"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, p1, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "appVersion"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getAppVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, p1, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sdkVersion"

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->k:Ljava/lang/String;

    invoke-virtual {v7, p1, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "osVersion"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
    :try_end_103
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_103} :catch_16e

    const-string v2, ""

    if-nez v1, :cond_109

    move-object v1, v2

    goto :goto_10b

    :cond_109
    :try_start_109
    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    :goto_10b
    invoke-virtual {v7, p1, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "device"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    if-nez v1, :cond_116

    move-object v1, v2

    goto :goto_118

    :cond_116
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    :goto_118
    invoke-virtual {v7, p1, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "screen"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getScreen()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, p1, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "mno"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getMno()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, p1, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "nm"

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getNm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, p1, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "channel"

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->V:Ljava/lang/String;

    invoke-virtual {v7, p1, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "channelSy"

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->U:Ljava/lang/String;

    invoke-virtual {v7, p1, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fillParam(Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;)V

    const-string p1, "pkgName"

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->e:Landroid/content/Context;

    if-nez v1, :cond_14e

    goto :goto_152

    :cond_14e
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_152
    invoke-virtual {v7, p1, v2}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "nickname"

    const-string v1, "0"

    invoke-virtual {v7, p1, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "areaId"

    const-string v1, "1"

    invoke-virtual {v7, p1, v1}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "os"

    invoke-virtual {v7, p1, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "deviceType"

    invoke-virtual {v7, p1, v0}, Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;->add(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_16d
    .catch Ljava/lang/Exception; {:try_start_109 .. :try_end_16d} :catch_16e

    goto :goto_16f

    :catch_16e
    move-exception p1

    :goto_16f
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ab:Landroid/os/AsyncTask;

    if-eqz p1, :cond_176

    invoke-virtual {p1, v3}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_176
    new-instance p1, Lcom/ssjj/fnsdk/core/be;

    move-object v4, p1

    move-object v5, p0

    move-object v8, p3

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/ssjj/fnsdk/core/be;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Ljava/lang/String;Lcom/ssjj/fnsdk/core/entity/SsjjFNParameters;Lcom/ssjj/fnsdk/core/SsjjFNListener;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ab:Landroid/os/AsyncTask;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->execAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void
.end method

.method public uploadImage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 16

    sget-object v6, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->UP_IMAGE_TYPE_ICON:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->uploadImage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method public uploadImage(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 25

    move-object/from16 v12, p0

    move-object/from16 v7, p4

    move-object/from16 v11, p8

    iget-object v0, v12, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ad:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_15

    iput-boolean v2, v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->e:Z

    iget-object v0, v12, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ad:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;

    invoke-virtual {v0, v2}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;->cancel(Z)Z

    iput-object v1, v12, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ad:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;

    :cond_15
    iget-object v0, v12, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ac:Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    if-nez v0, :cond_21

    if-eqz v11, :cond_20

    const-string v0, "\u8bf7\u5148\u8c03\u7528 SsjjFNSDK.getInstance().setOauthData(activity, oauthJson); \u63a5\u53e3"

    invoke-interface {v11, v2, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_20
    return-void

    :cond_21
    iget-object v3, v0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->uid:Ljava/lang/String;

    invoke-direct {v12, v3}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_111

    const-string v0, "0"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_33

    goto/16 :goto_111

    :cond_33
    move-object/from16 v5, p2

    invoke-direct {v12, v5}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->j(Ljava/lang/String;)Z

    move-result v0

    const/4 v13, 0x0

    if-eqz v0, :cond_cc

    if-eqz v7, :cond_49

    array-length v0, v7

    if-nez v0, :cond_cc

    if-eqz v11, :cond_48

    const-string v0, "fileBuf \u957f\u5ea6\u4e3a0"

    invoke-interface {v11, v2, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_48
    return-void

    :cond_49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, p3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_78

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6587\u4ef6\u4e0d\u5b58\u5728\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v11, :cond_77

    invoke-interface {v11, v2, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_77
    return-void

    :cond_78
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v4, ".bmp"

    const-string v9, ".jpeg"

    const-string v10, ".jpg"

    const-string v14, ".png"

    const-string v15, ".gif"

    filled-new-array {v10, v14, v15, v4, v9}, [Ljava/lang/String;

    move-result-object v9

    const/4 v4, 0x0

    :goto_8f
    const/4 v10, 0x5

    if-lt v4, v10, :cond_94

    const/4 v4, 0x0

    goto :goto_9d

    :cond_94
    aget-object v10, v9, v4

    invoke-virtual {v8, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_c9

    const/4 v4, 0x1

    :goto_9d
    if-nez v4, :cond_a7

    if-eqz v11, :cond_a6

    const-string v0, "\u683c\u5f0f\u6709\u8bef\uff0c\u8bf7\u4f7f\u7528jpg/png/gif\u683c\u5f0f"

    invoke-interface {v11, v2, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_a6
    return-void

    :cond_a7
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/32 v14, 0x200000

    cmp-long v4, v8, v14

    if-lez v4, :cond_c7

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6587\u4ef6\u8fc7\u5927\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v11, :cond_c6

    invoke-interface {v11, v2, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_c6
    return-void

    :cond_c7
    move-object v6, v0

    goto :goto_cf

    :cond_c9
    add-int/lit8 v4, v4, 0x1

    goto :goto_8f

    :cond_cc
    move-object/from16 v4, p3

    move-object v6, v4

    :goto_cf
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "p"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, v12, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ac:Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    if-eqz v1, :cond_f2

    iget-object v1, v1, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->fntoken:Ljava/lang/String;

    invoke-direct {v12, v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->i(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f2

    iget-object v0, v12, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ac:Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->fntoken:Ljava/lang/String;

    :cond_f2
    move-object v4, v0

    new-instance v14, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;

    move-object v0, v14

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    invoke-direct/range {v0 .. v11}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    iput-object v14, v12, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->ad:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$c;

    new-array v0, v13, [Ljava/lang/String;

    invoke-static {v14, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->execAsyncTask(Landroid/os/AsyncTask;[Ljava/lang/Object;)V

    return-void

    :cond_111
    :goto_111
    if-eqz v11, :cond_118

    const-string v0, "\u60a8\u672a\u767b\u5f55\u6216\u767b\u5f55\u5931\u8d25"

    invoke-interface {v11, v2, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_118
    return-void
.end method
