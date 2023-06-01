.class public Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager$a;
    }
.end annotation


# static fields
.field private static l:Ljava/lang/String;

.field private static m:Ljava/lang/String;

.field private static n:Ljava/lang/String;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Landroid/app/AlertDialog;

.field private k:Landroid/app/AlertDialog;

.field private o:Ljava/lang/String;

.field private p:Landroid/widget/ProgressBar;

.field private q:I

.field private r:J

.field private s:J

.field private t:Ljava/lang/Thread;

.field private u:Z

.field private v:Landroid/os/Handler;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, ""

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->l:Ljava/lang/String;

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->m:Ljava/lang/String;

    sput-object v0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->n:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->URL_UPDATE:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->c:Ljava/lang/String;

    const-string v0, "download_for_update"

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->d:Ljava/lang/String;

    const-string v0, "name_apk"

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->e:Ljava/lang/String;

    const-string v0, "name_tempapk"

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->f:Ljava/lang/String;

    sget-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_NEW_UPDATE:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->g:Ljava/lang/String;

    sget-object v0, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_FORCE_UPDATE:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->h:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->o:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->u:Z

    new-instance v0, Lcom/ssjj/fnsdk/core/cu;

    invoke-direct {v0, p0}, Lcom/ssjj/fnsdk/core/cu;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->v:Landroid/os/Handler;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_CANCEL:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->w:Ljava/lang/String;

    new-instance v0, Lcom/ssjj/fnsdk/core/cx;

    invoke-direct {v0, p0}, Lcom/ssjj/fnsdk/core/cx;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->x:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Landroid/app/AlertDialog;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->k:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->m:Ljava/lang/String;

    return-object v0
.end method

.method private a(J)Ljava/lang/String;
    .registers 5

    const-wide/16 v0, 0x400

    div-long/2addr p1, v0

    long-to-int p2, p1

    const/16 p1, 0x400

    if-le p2, p1, :cond_1d

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    int-to-float p2, p2

    const/high16 v0, 0x44800000    # 1024.0f

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    const/4 v0, 0x0

    aput-object p2, p1, v0

    const-string p2, "%.2fM"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "k"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;J)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;I)V
    .registers 2

    iput p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->q:I

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->b(Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->u:Z

    return-void
.end method

.method private a(Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V
    .registers 6

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->getAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    if-nez v0, :cond_3d

    sget-object v3, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_FOUND_NEW_VERSION:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->g:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_58

    :cond_3d
    sget-object v3, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_DOWNLOAD_FINISH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_PLEASE_INSTALL:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_6d

    sget-object v3, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_INSTALL:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_76

    :cond_6d
    sget-object v3, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_UPDATE:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_76
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ssjj/fnsdk/core/db;

    invoke-direct {v3, p0, v0, p1}, Lcom/ssjj/fnsdk/core/db;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;ZLcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_EXIT:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/ssjj/fnsdk/core/dc;

    invoke-direct {v2, p0, p1}, Lcom/ssjj/fnsdk/core/dc;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->j:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->l:Ljava/lang/String;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager$a;)V
    .registers 4

    new-instance p2, Lcom/ssjj/fnsdk/core/da;

    invoke-direct {p2, p0, p1, p3}, Lcom/ssjj/fnsdk/core/da;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager$a;)V

    invoke-virtual {p2}, Lcom/ssjj/fnsdk/core/da;->start()V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    array-length v0, p1

    array-length v1, p2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_4a

    const/4 v1, 0x0

    :goto_11
    if-lt v1, v0, :cond_14

    goto :goto_52

    :cond_14
    aget-object v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v5, p2, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ge v4, v5, :cond_2b

    return v2

    :cond_2b
    aget-object v4, p1, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    aget-object v5, p2, v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v4, v5, :cond_42

    return v3

    :cond_42
    add-int/lit8 v4, v0, -0x1

    if-ne v1, v4, :cond_47

    return v3

    :cond_47
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_4a
    if-le v0, v1, :cond_4e

    move v4, v1

    goto :goto_4f

    :cond_4e
    move v4, v0

    :goto_4f
    const/4 v5, 0x0

    :goto_50
    if-lt v5, v4, :cond_53

    :goto_52
    return v3

    :cond_53
    aget-object v6, p1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v7, p2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ge v6, v7, :cond_6a

    return v2

    :cond_6a
    aget-object v6, p1, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v7, p2, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v6, v7, :cond_81

    return v3

    :cond_81
    add-int/lit8 v6, v4, -0x1

    if-ne v5, v6, :cond_89

    if-le v0, v1, :cond_88

    return v3

    :cond_88
    return v2

    :cond_89
    add-int/lit8 v5, v5, 0x1

    goto :goto_50
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->s:J

    return-wide v0
.end method

.method static synthetic b()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;J)V
    .registers 3

    iput-wide p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->s:J

    return-void
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a(Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V

    return-void
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->h:Ljava/lang/String;

    return-void
.end method

.method private b(Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V
    .registers 6

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->m:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->getAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    if-nez v0, :cond_34

    sget-object v3, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_FOUND_NEW_VERSION:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->n:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->g:Ljava/lang/String;

    goto :goto_53

    :cond_34
    sget-object v3, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_DOWNLOAD_FINISH:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_PLEASE_INSTALL:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_53
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    if-eqz v0, :cond_64

    sget-object v3, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_INSTALL:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_6d

    :cond_64
    sget-object v3, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_UPDATE:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_6d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ssjj/fnsdk/core/dd;

    invoke-direct {v3, p0, v0, p1}, Lcom/ssjj/fnsdk/core/dd;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;ZLcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_NEXT_TIME:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/ssjj/fnsdk/core/de;

    invoke-direct {v2, p0, p1}, Lcom/ssjj/fnsdk/core/de;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->j:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic b(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->m:Ljava/lang/String;

    return-void
.end method

.method static synthetic c(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)J
    .registers 3

    iget-wide v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->r:J

    return-wide v0
.end method

.method private c()V
    .registers 3

    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->x:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->t:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic c(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;J)V
    .registers 3

    iput-wide p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->r:J

    return-void
.end method

.method static synthetic c(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->d(Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V

    return-void
.end method

.method static synthetic c(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->i:Ljava/lang/String;

    return-void
.end method

.method private c(Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V
    .registers 11

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_NOT_FOUND_SDCARD:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    if-eqz p1, :cond_2a

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onNotSDCard()V

    :cond_2a
    return-void

    :cond_2b
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->getAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_VERSION_UPDATE:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a:Landroid/content/Context;

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v3, v6}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dp2px(Landroid/content/Context;F)I

    move-result v3

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a:Landroid/content/Context;

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v6, v7}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dp2px(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v2, v3, v6, v3, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/ProgressBar;

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a:Landroid/content/Context;

    const/4 v7, 0x0

    const v8, 0x1010078

    invoke-direct {v3, v6, v7, v8}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->p:Landroid/widget/ProgressBar;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_CANCEL:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/ssjj/fnsdk/core/cv;

    invoke-direct {v3, p0, p1}, Lcom/ssjj/fnsdk/core/cv;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->k:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    if-eqz p1, :cond_b1

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onNormalUpdateLoading()V

    :cond_b1
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->c()V

    return-void
.end method

.method static synthetic c(Ljava/lang/String;)V
    .registers 1

    sput-object p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->n:Ljava/lang/String;

    return-void
.end method

.method static synthetic d(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Landroid/widget/ProgressBar;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->p:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private d()V
    .registers 4

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->l:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->m:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_18

    return-void

    :cond_18
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a:Landroid/content/Context;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ssjj/fnsdk/core/UpdateUtil;->installApk(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->c(Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V

    return-void
.end method

.method private d(Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V
    .registers 11

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2b

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_NOT_FOUND_SDCARD:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    if-eqz p1, :cond_2a

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onNotSDCard()V

    :cond_2a
    return-void

    :cond_2b
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->getAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_VERSION_UPDATE:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a:Landroid/content/Context;

    const/high16 v6, 0x41200000    # 10.0f

    invoke-static {v3, v6}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dp2px(Landroid/content/Context;F)I

    move-result v3

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a:Landroid/content/Context;

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {v6, v7}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dp2px(Landroid/content/Context;F)I

    move-result v6

    invoke-virtual {v2, v3, v6, v3, v6}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    new-instance v3, Landroid/widget/ProgressBar;

    iget-object v6, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a:Landroid/content/Context;

    const/4 v7, 0x0

    const v8, 0x1010078

    invoke-direct {v3, v6, v7, v8}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->p:Landroid/widget/ProgressBar;

    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v6}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->p:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->w:Ljava/lang/String;

    new-instance v3, Lcom/ssjj/fnsdk/core/cw;

    invoke-direct {v3, p0, p1}, Lcom/ssjj/fnsdk/core/cw;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->k:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    if-eqz p1, :cond_a4

    invoke-interface {p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onForceUpdateLoading()V

    :cond_a4
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->c()V

    return-void
.end method

.method static synthetic e(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)I
    .registers 1

    iget p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->q:I

    return p0
.end method

.method static synthetic f(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->d()V

    return-void
.end method

.method static synthetic g(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    return-object p0
.end method

.method public static getAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .registers 9

    const/4 v0, 0x0

    :try_start_1
    const-class v1, Landroid/app/AlertDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_a
    if-lt v4, v2, :cond_d

    goto :goto_42

    :cond_d
    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "Builder"

    invoke-virtual {v6, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3e

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    aput-object v4, v2, v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v2, v6

    invoke-virtual {v5, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v3

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v6

    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog$Builder;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_3c} :catch_41

    move-object v0, v1

    goto :goto_42

    :cond_3e
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :catch_41
    move-exception v1

    :goto_42
    if-nez v0, :cond_49

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    :cond_49
    return-object v0
.end method

.method static synthetic h(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic i(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic j(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic k(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic m(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->v:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic n(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->u:Z

    return p0
.end method

.method static synthetic o(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->c:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public checkUpdateInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V
    .registers 6

    :try_start_0
    invoke-static {}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->getInstance()Lcom/ssjj/fnsdk/core/update/FNUpdateManager;

    move-result-object p2

    check-cast p1, Landroid/app/Activity;

    new-instance p3, Lcom/ssjj/fnsdk/core/cy;

    invoke-direct {p3, p0, p4}, Lcom/ssjj/fnsdk/core/cy;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0, p3}, Lcom/ssjj/fnsdk/core/update/FNUpdateManager;->checkUpdate(Landroid/app/Activity;ZLcom/ssjj/fnsdk/core/SsjjFNListener;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_2a

    :catch_10
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p4, :cond_2a

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;->onException(Ljava/lang/String;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public checkUpdateInfo000(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;)V
    .registers 6

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a:Landroid/content/Context;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->b:Lcom/ssjj/fnsdk/core/listener/SsjjFNUpdateListener;

    const/4 p4, 0x0

    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->o:Ljava/lang/String;
    :try_end_17
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_1c
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->checkNet(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2c

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->v:Landroid/os/Handler;

    const/16 p2, 0x11

    :goto_28
    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_6a

    :cond_2c
    :try_start_2c
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    new-instance p4, Lcom/ssjj/fnsdk/core/cz;

    invoke-direct {p4, p0, p2, p1}, Lcom/ssjj/fnsdk/core/cz;-><init>(Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, p4}, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->a(Ljava/lang/String;Ljava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager$a;)V
    :try_end_4a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_4a} :catch_4b

    goto :goto_6a

    :catch_4b
    move-exception p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "update err: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/SsjjFNUpdateManager;->v:Landroid/os/Handler;

    const/16 p2, 0xe

    goto :goto_28

    :goto_6a
    return-void
.end method
