.class public Lcom/ssjj/fnsdk/core/SsjjFNTempManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;
    }
.end annotation


# static fields
.field public static CODE_CANCEL_BIND:I = 0x0

.field public static CODE_START_BIND:I = 0x0

.field public static final KEY_TEMP_NAME:Ljava/lang/String; = "temp_name"

.field public static final KEY_TEMP_UID:Ljava/lang/String; = "temp_uid"

.field private static a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;


# instance fields
.field private b:Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

.field private c:Ljava/lang/String;

.field private d:Landroid/app/Activity;

.field private e:Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListener;

.field private f:Ljava/lang/String;

.field private g:Lcom/ssjj/fnsdk/core/entity/FNOauthData;

.field private h:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;

.field private i:J

.field private j:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempBindTask;

.field private k:Landroid/app/AlertDialog;

.field private l:Z

.field private m:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

.field private n:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

.field private o:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

.field private p:Ljava/lang/String;

.field private q:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    const/16 v0, 0x64

    sput v0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->CODE_START_BIND:I

    const/16 v0, 0x65

    sput v0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->CODE_CANCEL_BIND:I

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b:Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    const-string v1, ""

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d:Landroid/app/Activity;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->e:Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListener;

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->g:Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->h:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->i:J

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->j:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempBindTask;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->k:Landroid/app/AlertDialog;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->l:Z

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->m:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    new-instance v2, Lcom/ssjj/fnsdk/core/bz;

    invoke-direct {v2, p0}, Lcom/ssjj/fnsdk/core/bz;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)V

    iput-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->n:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    new-instance v2, Lcom/ssjj/fnsdk/core/cm;

    invoke-direct {v2, p0}, Lcom/ssjj/fnsdk/core/cm;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)V

    iput-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->o:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->q:Ljava/util/Timer;

    return-void
.end method

.method private a()I
    .registers 2

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->d:Lcom/ssjj/fnsdk/core/SsjjFNConfig$a;

    if-nez v0, :cond_b

    const/16 v0, 0x708

    goto :goto_d

    :cond_b
    iget v0, v0, Lcom/ssjj/fnsdk/core/SsjjFNConfig$a;->b:I

    :goto_d
    mul-int/lit16 v0, v0, 0x3e8

    return v0
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Landroid/app/Activity;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d:Landroid/app/Activity;

    return-object p0
.end method

.method private a(Landroid/content/Context;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;
    .registers 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_a
    if-lt v3, v2, :cond_2b

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "read "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1

    :cond_2b
    aget-object v4, p1, v3

    invoke-static {v4}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5a

    invoke-direct {p0, v4}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5a

    new-instance p1, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    invoke-direct {p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;-><init>()V

    invoke-virtual {p1, v4}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;->a(Ljava/lang/String;)V

    return-object p1

    :cond_5a
    add-int/lit8 v3, v3, 0x1

    goto :goto_a
.end method

.method private a(Landroid/app/Activity;I)V
    .registers 5

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->cancelShowBindDelay()V

    const/4 v0, 0x1

    if-ge p2, v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->hasTempLogin()Z

    move-result v0

    if-nez v0, :cond_13

    const-string p1, "checkBindDelay cancel: temp not login"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "bind delay "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->q:Ljava/util/Timer;

    new-instance v1, Lcom/ssjj/fnsdk/core/cj;

    invoke-direct {v1, p0, p1}, Lcom/ssjj/fnsdk/core/cj;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Landroid/app/Activity;)V

    int-to-long p1, p2

    invoke-virtual {v0, v1, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 5

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d:Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->cancelBindDialog()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->l:Z

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->getDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u6e29\u99a8\u63d0\u793a"

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/ssjj/fnsdk/core/cs;

    invoke-direct {p2, p0, p3}, Lcom/ssjj/fnsdk/core/cs;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    const-string v0, "\u7acb\u5373\u7ed1\u5b9a"

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance p2, Lcom/ssjj/fnsdk/core/ct;

    invoke-direct {p2, p0, p3}, Lcom/ssjj/fnsdk/core/ct;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->k:Landroid/app/AlertDialog;

    new-instance p2, Lcom/ssjj/fnsdk/core/cd;

    invoke-direct {p2, p0}, Lcom/ssjj/fnsdk/core/cd;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->k:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 14

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d:Landroid/app/Activity;

    const-string v0, "temp_bind_do"

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->cancelTempLogin()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNDialog;->getInstance()Lcom/ssjj/fnsdk/core/FNDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d:Landroid/app/Activity;

    const-string v2, "\u6b63\u5728\u7ed1\u5b9a..."

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4}, Lcom/ssjj/fnsdk/core/FNDialog;->showLoadingDialog(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v8, Lcom/ssjj/fnsdk/core/cp;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lcom/ssjj/fnsdk/core/cp;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;Ljava/lang/String;)V

    iput-object v8, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->j:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempBindTask;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempBindTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private a(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;)V
    .registers 9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_a
    if-lt v3, v2, :cond_2a

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "save "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "ms"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_2a
    aget-object v4, p1, v3

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->saveFile(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_a
.end method

.method private a(Landroid/content/Context;Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 5

    const-string v0, "temp_bind_oauth_start"

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Ljava/lang/String;)V

    new-instance v0, Lcom/ssjj/fnsdk/core/cl;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/ssjj/fnsdk/core/cl;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/cl;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 6

    if-eqz p1, :cond_15

    const-string v0, "fntempinfo"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_1a

    :cond_15
    const-string p1, "save pref err: context is null"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    :goto_1a
    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Landroid/app/AlertDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->k:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;)V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b:Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Lcom/ssjj/fnsdk/core/entity/FNOauthData;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->g:Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;)V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->m:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->l:Z

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;ZLjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(ZLjava/lang/String;)V

    return-void
.end method

.method private a(Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;)V
    .registers 6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->l:Z

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v1

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->m:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    invoke-virtual {v1, v2}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->setUserListener(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;)V

    if-nez p1, :cond_1f

    const-string p1, "temp_bind_login_succ_user_null"

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d:Landroid/app/Activity;

    const-string v1, "\u7ed1\u5b9a\u5931\u8d25\uff1a\u767b\u5f55\u7528\u6237\u4e3a\u7a7a"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1f
    const-string v0, "temp_bind_login_succ"

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNDialog;->getInstance()Lcom/ssjj/fnsdk/core/FNDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d:Landroid/app/Activity;

    const-string v2, "\u6b63\u5728\u7ed1\u5b9a..."

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ssjj/fnsdk/core/FNDialog;->showLoadingDialog(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d:Landroid/app/Activity;

    new-instance v1, Lcom/ssjj/fnsdk/core/ce;

    invoke-direct {v1, p0}, Lcom/ssjj/fnsdk/core/ce;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)V

    invoke-direct {p0, v0, p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Landroid/content/Context;Lcom/ssjj/fnsdk/core/entity/SsjjFNUser;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->p:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNDialog;->getInstance()Lcom/ssjj/fnsdk/core/FNDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/FNDialog;->hideLoadingDialog()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d:Landroid/app/Activity;

    const-string p2, "\u7ed1\u5b9a\u5931\u8d25\uff1abindUid\u4e3a\u7a7a"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "bind err: bindUid is empty"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d(Landroid/app/Activity;)V

    return-void

    :cond_26
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b:Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    if-nez v0, :cond_47

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNDialog;->getInstance()Lcom/ssjj/fnsdk/core/FNDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/FNDialog;->hideLoadingDialog()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d:Landroid/app/Activity;

    const-string p2, "\u7ed1\u5b9a\u5931\u8d25\uff1a\u6e38\u5ba2\u672a\u767b\u5f55"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "bind err: tempUser is null"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d(Landroid/app/Activity;)V

    return-void

    :cond_47
    iget-object v0, v0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;->tempUid:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNDialog;->getInstance()Lcom/ssjj/fnsdk/core/FNDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/FNDialog;->hideLoadingDialog()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d:Landroid/app/Activity;

    const-string p2, "\u7ed1\u5b9a\u5931\u8d25\uff1a\u6e38\u5ba2uid\u4e3a\u7a7a"

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    const-string p1, "bind err: tempUser.tempUid is empty"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d(Landroid/app/Activity;)V

    return-void

    :cond_6c
    if-eqz p1, :cond_84

    const-string p1, "temp_bind_check_bind_succ"

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d:Landroid/app/Activity;

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b:Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    iget-object p2, p2, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;->tempUid:Ljava/lang/String;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->p:Ljava/lang/String;

    new-instance v1, Lcom/ssjj/fnsdk/core/ch;

    invoke-direct {v1, p0}, Lcom/ssjj/fnsdk/core/ch;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto :goto_ad

    :cond_84
    const-string p1, "temp_bind_check_bind_fail"

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNDialog;->getInstance()Lcom/ssjj/fnsdk/core/FNDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ssjj/fnsdk/core/FNDialog;->hideLoadingDialog()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d(Landroid/app/Activity;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7ed1\u5b9a\u5931\u8d25\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "\u77e5\u9053\u4e86"

    const-string v1, "\u6e29\u99a8\u63d0\u793a"

    invoke-static {p1, v1, p2, v0}, Lcom/ssjj/fnsdk/core/FNDialog;->showConfirmDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :goto_ad
    const-string p1, ""

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->p:Ljava/lang/String;

    return-void
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->m:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    return-object p0
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Landroid/app/Activity;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->c(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->p:Ljava/lang/String;

    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 6

    const-string v0, "fntempinfo"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method private b(Ljava/lang/String;)Z
    .registers 3

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_16

    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_16

    const/4 p1, 0x0

    return p1

    :cond_16
    const/4 p1, 0x1

    return p1
.end method

.method private b(Landroid/content/Context;)[Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic c(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b:Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    return-object p0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_gameId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_platformId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->encryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    goto :goto_50

    :catch_37
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "err: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    const-string p1, ""

    :goto_50
    return-object p1
.end method

.method private c(Landroid/app/Activity;)V
    .registers 4

    sget-object v0, Lcom/ssjj/fnsdk/core/FNMsg;->MSG_BIND_DELAY:Ljava/lang/String;

    const-string v1, "temp_show_bind_dlg_delay"

    invoke-virtual {p0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Ljava/lang/String;)V

    new-instance v1, Lcom/ssjj/fnsdk/core/cr;

    invoke-direct {v1, p0, p1}, Lcom/ssjj/fnsdk/core/cr;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Landroid/app/Activity;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 9

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_6
    if-lt v1, v0, :cond_9

    return-void

    :cond_9
    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1f

    :try_start_15
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_1a} :catch_1b

    goto :goto_20

    :catch_1b
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1f
    const/4 v4, 0x0

    :goto_20
    if-nez v4, :cond_27

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :cond_27
    :try_start_27
    invoke-virtual {v4, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_27 .. :try_end_2a} :catch_2b

    goto :goto_2f

    :catch_2b
    move-exception v3

    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2f
    if-nez v4, :cond_34

    const-string v3, ""

    goto :goto_38

    :cond_34
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_38
    invoke-static {v2, v3}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->saveFile(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method private c(Landroid/content/Context;)[Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v1, p1}, [Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private d(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    new-instance p1, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_gameId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_platformId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic d(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->f:Ljava/lang/String;

    return-object p0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_gameId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_platformId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->decryptAES(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    goto :goto_50

    :catch_37
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "err: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    const-string p1, ""

    :goto_50
    return-object p1
.end method

.method private d(Landroid/app/Activity;)V
    .registers 4

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->o:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->setUserListener(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->a(Landroid/app/Activity;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNSDK;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->m:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    invoke-virtual {p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNSDK;->setUserListener(Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;)V

    return-void
.end method

.method private d(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 8

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_6
    if-lt v1, v0, :cond_9

    return p3

    :cond_9
    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_29

    :try_start_15
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v3, p2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p3
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_15 .. :try_end_24} :catch_25

    :cond_24
    return p3

    :catch_25
    move-exception v2

    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_29
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method static synthetic e(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/entity/FNOauthData;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->g:Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    return-object p0
.end method

.method private e(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    new-instance p1, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_gameId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/ssjj/fnsdk/platform/FNConfig;->fn_platformId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getmDid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x31

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic f(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListener;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->e:Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListener;

    return-object p0
.end method

.method private f(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "Ly5mbmRhdGEvYmluLw=="

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_2d
    return-object p1
.end method

.method private g(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Zm5kYXRh"

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "L2Jpbg=="

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dd(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_34

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_34
    return-object p1
.end method

.method static synthetic g(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static getInstance()Lcom/ssjj/fnsdk/core/SsjjFNTempManager;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    if-nez v0, :cond_b

    new-instance v0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;-><init>()V

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    :cond_b
    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a:Lcom/ssjj/fnsdk/core/SsjjFNTempManager;

    return-object v0
.end method

.method static synthetic h(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->n:Lcom/ssjj/fnsdk/core/listener/SsjjFNUserListener;

    return-object p0
.end method


# virtual methods
.method protected a(Landroid/app/Activity;)V
    .registers 4

    const-string v0, "temp_show_bind_dlg_pay"

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/ssjj/fnsdk/core/FNMsg;->MSG_BIND_WHEN_PAY:Ljava/lang/String;

    new-instance v1, Lcom/ssjj/fnsdk/core/cq;

    invoke-direct {v1, p0, p1}, Lcom/ssjj/fnsdk/core/cq;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Landroid/app/Activity;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .registers 3

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getChannel()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "send "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object p2

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d:Landroid/app/Activity;

    sget-object v2, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->fnPlatId:Ljava/lang/String;

    invoke-virtual {p2, v1, v2, p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->sendEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected b(Landroid/app/Activity;)V
    .registers 3

    new-instance v0, Lcom/ssjj/fnsdk/core/ci;

    invoke-direct {v0, p0, p1}, Lcom/ssjj/fnsdk/core/ci;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public cancelBindDialog()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->k:Landroid/app/AlertDialog;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->k:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->k:Landroid/app/AlertDialog;

    :cond_12
    return-void
.end method

.method public cancelBindLogin()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->j:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempBindTask;

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempBindTask;->d:Z

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->j:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempBindTask;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempBindTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->j:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempBindTask;

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempBindTask;->cancel(Z)Z

    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->j:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempBindTask;

    :cond_17
    return-void
.end method

.method public cancelShowBindDelay()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->q:Ljava/util/Timer;

    if-eqz v0, :cond_f

    :try_start_4
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_c
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->q:Ljava/util/Timer;

    :cond_f
    return-void
.end method

.method public cancelTempLogin()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->h:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->d:Z

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->h:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->h:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->cancel(Z)Z

    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->h:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;

    :cond_17
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->i:J

    return-void
.end method

.method public checkAndSaveNormalLoginFlag(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b:Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    if-nez v0, :cond_8

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Landroid/content/Context;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    move-result-object v0

    :cond_8
    if-nez v0, :cond_e

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->saveEverNormalLoginFlag(Landroid/content/Context;Z)V

    :cond_e
    return-void
.end method

.method public checkAuto(Landroid/content/Context;)Z
    .registers 4

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->hasTempLogin()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    const-string v0, "tempauto"

    invoke-direct {p0, p1, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    :cond_d
    return v1
.end method

.method public checkCanPay()Z
    .registers 4

    const-string v0, "checkCanPay"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b:Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    iget-boolean v0, v0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;->hasBind:Z

    if-nez v0, :cond_15

    const-string v0, "temp not bind"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_16

    :cond_15
    const/4 v0, 0x1

    :goto_16
    iget-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->g:Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    if-eqz v2, :cond_2e

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->isTempUser()Z

    move-result v2

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->g:Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    invoke-virtual {v2}, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->hasBind()Z

    move-result v2

    if-nez v2, :cond_2e

    const-string v0, "oauth not bind"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    goto :goto_2f

    :cond_2e
    move v1, v0

    :goto_2f
    return v1
.end method

.method public clearBind(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Landroid/content/Context;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    move-result-object v0

    if-eqz v0, :cond_c

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;->hasBind:Z

    invoke-direct {p0, p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;)V

    :cond_c
    return-void
.end method

.method public clearFlag(Landroid/content/Context;)V
    .registers 6

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->setTempAuto(Landroid/content/Context;Z)V

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->c(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    :goto_9
    if-lt v0, v1, :cond_c

    return-void

    :cond_c
    aget-object v2, p1, v0

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_1c
    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public clearTemp(Landroid/content/Context;)V
    .registers 6

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_6
    if-lt v1, v0, :cond_9

    return-void

    :cond_9
    aget-object v2, p1, v1

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public getBindType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b:Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    if-nez v0, :cond_7

    const-string v0, ""

    goto :goto_9

    :cond_7
    iget-object v0, v0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;->bindType:Ljava/lang/String;

    :goto_9
    return-object v0
.end method

.method public getTempUser()Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b:Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    return-object v0
.end method

.method public hasTemp(Landroid/content/Context;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Landroid/content/Context;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    goto :goto_12

    :cond_8
    iget-object p1, p1, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;->tempUid:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_12

    :cond_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method

.method public hasTempLogin()Z
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b:Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;->isAvail()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    return v0

    :cond_c
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/app/Activity;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d:Landroid/app/Activity;

    return-void
.end method

.method public logout()V
    .registers 3

    const-string v0, "temp logout"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->setTempAuto(Landroid/content/Context;Z)V

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->reset()V

    return-void
.end method

.method public needShowTempLoginButton(Landroid/app/Activity;)Z
    .registers 8

    const-string v0, "needShowTempLoginButton"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/SsjjFNConfig;->d:Lcom/ssjj/fnsdk/core/SsjjFNConfig$a;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b:Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    const-string v2, "has bind"

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v0, :cond_34

    const-string v0, "not get cfg"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    if-nez v1, :cond_1e

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Landroid/content/Context;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    move-result-object v1

    :cond_1e
    if-eqz v1, :cond_2e

    iget-boolean p1, v1, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;->hasBind:Z

    if-eqz p1, :cond_28

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return v4

    :cond_28
    const-string p1, "not bind"

    :goto_2a
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return v3

    :cond_2e
    const-string p1, "no temp"

    :goto_30
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return v4

    :cond_34
    const-string v5, "1"

    iget-object v0, v0, Lcom/ssjj/fnsdk/core/SsjjFNConfig$a;->a:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_55

    const-string v0, "cfg disable"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    if-nez v1, :cond_49

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Landroid/content/Context;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    move-result-object v1

    :cond_49
    if-eqz v1, :cond_52

    iget-boolean p1, v1, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;->hasBind:Z

    if-nez p1, :cond_52

    const-string p1, "has temp not bind"

    goto :goto_2a

    :cond_52
    const-string p1, "no temp yet"

    goto :goto_30

    :cond_55
    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->hasTempLogin()Z

    move-result v0

    if-eqz v0, :cond_5e

    const-string p1, "bindding"

    goto :goto_30

    :cond_5e
    if-nez v1, :cond_64

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Landroid/content/Context;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    move-result-object v1

    :cond_64
    if-eqz v1, :cond_6e

    iget-boolean v0, v1, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;->hasBind:Z

    if-eqz v0, :cond_6e

    invoke-static {v2}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return v4

    :cond_6e
    if-nez v1, :cond_79

    invoke-virtual {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->readEverNormalLoginFlag(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_79

    const-string p1, "has normal login"

    goto :goto_30

    :cond_79
    return v3
.end method

.method public onSetCheckBindResult(ZLjava/lang/String;)V
    .registers 5

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->hasTempLogin()Z

    move-result v0

    if-nez v0, :cond_c

    const-string p1, "onSetCheckBindResult cancel: temp not login"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d:Landroid/app/Activity;

    if-eqz v0, :cond_18

    new-instance v1, Lcom/ssjj/fnsdk/core/cg;

    invoke-direct {v1, p0, p1, p2}, Lcom/ssjj/fnsdk/core/cg;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;ZLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_18
    return-void
.end method

.method public onSetOauthData(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->hasTempLogin()Z

    move-result v0

    if-nez v0, :cond_c

    const-string p1, "temp setOauthData cancel: temp not login"

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    return-void

    :cond_c
    const-string v0, "temp setOauthData"

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    new-instance v0, Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    invoke-direct {v0, p2}, Lcom/ssjj/fnsdk/core/entity/FNOauthData;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->g:Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->isTempUser()Z

    move-result p2

    if-eqz p2, :cond_2d

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->g:Lcom/ssjj/fnsdk/core/entity/FNOauthData;

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/entity/FNOauthData;->hasBind()Z

    move-result p2

    if-nez p2, :cond_2d

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Landroid/app/Activity;I)V

    :cond_2d
    return-void
.end method

.method public readEverNormalLoginFlag(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "ever_normal_login"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public readEverTempLoginFlag(Landroid/content/Context;)Z
    .registers 4

    const-string v0, "ever_temp_login"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method public release()V
    .registers 1

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->cancelShowBindDelay()V

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->cancelTempLogin()V

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->cancelBindLogin()V

    return-void
.end method

.method public reset()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->b:Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->l:Z

    return-void
.end method

.method public saveEverNormalLoginFlag(Landroid/content/Context;Z)V
    .registers 4

    const-string v0, "ever_normal_login"

    invoke-direct {p0, p1, v0, p2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->c(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public saveEverTempLoginFlag(Landroid/content/Context;Z)V
    .registers 4

    const-string v0, "ever_temp_login"

    invoke-direct {p0, p1, v0, p2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->c(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public setBindLoginType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->f:Ljava/lang/String;

    return-void
.end method

.method public setCheckBindListener(Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListener;)V
    .registers 3

    new-instance v0, Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListenerImpl;

    invoke-direct {v0, p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListenerImpl;-><init>(Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListener;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->e:Lcom/ssjj/fnsdk/core/listener/SsjjFNCheckBindListener;

    return-void
.end method

.method public setTempAuto(Landroid/content/Context;Z)V
    .registers 4

    const-string v0, "tempauto"

    invoke-direct {p0, p1, v0, p2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public tempLogin(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->tempLogin(Landroid/app/Activity;ZLcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method public tempLogin(Landroid/app/Activity;ZLcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 15

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d:Landroid/app/Activity;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->i:J

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    cmp-long v4, v2, v8

    if-lez v4, :cond_24

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x4e20

    cmp-long v4, v0, v2

    if-gez v4, :cond_24

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->h:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;

    if-eqz v0, :cond_24

    const-string v0, "\u6b63\u5728\u767b\u5f55\uff0c\u8bf7\u7a0d\u5019..."

    invoke-static {p1, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_24
    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->reset()V

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Landroid/content/Context;)Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;

    move-result-object v7

    if-nez v7, :cond_33

    const-string v0, "temp_login_start_first"

    :goto_2f
    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Ljava/lang/String;)V

    goto :goto_3b

    :cond_33
    if-eqz p2, :cond_38

    const-string v0, "temp_login_start_auto"

    goto :goto_2f

    :cond_38
    const-string v0, "temp_login_start"

    goto :goto_2f

    :goto_3b
    if-eqz v7, :cond_50

    iget-boolean v0, v7, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;->hasBind:Z

    if-eqz v0, :cond_50

    const-string v0, "temp_login_fail_local_has_bind"

    invoke-virtual {p0, v0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->a(Ljava/lang/String;)V

    if-eqz p3, :cond_4f

    const-string v0, "\u6e38\u5ba2\u5e10\u53f7\u5df2\u88ab\u7ed1\u5b9a\uff0c\u8bf7\u7528\u7ed1\u5b9a\u7684\u5e10\u53f7\u767b\u5f55~"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p3, v2, v0, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_4f
    return-void

    :cond_50
    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->cancelTempLogin()V

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNDialog;->getInstance()Lcom/ssjj/fnsdk/core/FNDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->d:Landroid/app/Activity;

    new-instance v2, Lcom/ssjj/fnsdk/core/cn;

    invoke-direct {v2, p0, p3}, Lcom/ssjj/fnsdk/core/cn;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    const-string v3, "\u6e38\u5ba2\u767b\u5f55\u4e2d..."

    invoke-virtual {v0, v1, v3, v2}, Lcom/ssjj/fnsdk/core/FNDialog;->showLoadingDialog(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->i:J

    new-instance v8, Lcom/ssjj/fnsdk/core/co;

    invoke-static {}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager;->getInstance()Lcom/ssjj/fnsdk/core/SsjjFNLogManager;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-nez v7, :cond_77

    const-string v0, ""

    goto :goto_79

    :cond_77
    iget-object v0, v7, Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;->tempUid:Ljava/lang/String;

    :goto_79
    move-object v4, v0

    move-object v0, v8

    move-object v1, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lcom/ssjj/fnsdk/core/co;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNTempManager;Lcom/ssjj/fnsdk/core/SsjjFNLogManager;Landroid/content/Context;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNListener;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNTempManager$TempUser;)V

    iput-object v8, p0, Lcom/ssjj/fnsdk/core/SsjjFNTempManager;->h:Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;

    new-array v0, v10, [Ljava/lang/String;

    invoke-virtual {v8, v0}, Lcom/ssjj/fnsdk/core/SsjjFNLogManager$TempLoginTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
