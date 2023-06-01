.class public Lcom/ssjj/fnsdk/core/FNUpdateManager;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ssjj/fnsdk/core/FNUpdateManager$a;,
        Lcom/ssjj/fnsdk/core/FNUpdateManager$b;,
        Lcom/ssjj/fnsdk/core/FNUpdateManager$c;
    }
.end annotation


# static fields
.field public static CODE_CHECK_HAS_UPDATE:I

.field public static CODE_CHECK_NO_UPDATE:I

.field public static CODE_CHECK_UPDATE_FAILED:I

.field public static CODE_UPDATE_CANCEL:I

.field public static CODE_UPDATE_FAILED:I

.field public static CODE_UPDATE_FINISH:I

.field public static CODE_UPDATE_START:I

.field private static a:Ljava/lang/String;

.field private static b:Lcom/ssjj/fnsdk/core/FNUpdateManager;

.field private static e:I

.field private static f:I

.field private static g:I

.field private static h:I


# instance fields
.field private c:Lcom/ssjj/fnsdk/core/FNUpdateManager$c;

.field private d:Landroid/app/AlertDialog;

.field private i:Z

.field private j:Landroid/app/AlertDialog;

.field private k:Landroid/widget/ProgressBar;

.field private l:I

.field private m:Lcom/ssjj/fnsdk/core/FNUpdateManager$b;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field public versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v0, 0x0

    sput v0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->CODE_CHECK_HAS_UPDATE:I

    const/4 v1, 0x1

    sput v1, Lcom/ssjj/fnsdk/core/FNUpdateManager;->CODE_CHECK_NO_UPDATE:I

    const/4 v2, 0x2

    sput v2, Lcom/ssjj/fnsdk/core/FNUpdateManager;->CODE_CHECK_UPDATE_FAILED:I

    const/16 v3, 0xa

    sput v3, Lcom/ssjj/fnsdk/core/FNUpdateManager;->CODE_UPDATE_START:I

    const/16 v3, 0xb

    sput v3, Lcom/ssjj/fnsdk/core/FNUpdateManager;->CODE_UPDATE_FINISH:I

    const/16 v3, 0xc

    sput v3, Lcom/ssjj/fnsdk/core/FNUpdateManager;->CODE_UPDATE_CANCEL:I

    const/16 v3, 0xd

    sput v3, Lcom/ssjj/fnsdk/core/FNUpdateManager;->CODE_UPDATE_FAILED:I

    const-string v3, "item"

    sput-object v3, Lcom/ssjj/fnsdk/core/FNUpdateManager;->a:Ljava/lang/String;

    new-instance v3, Lcom/ssjj/fnsdk/core/FNUpdateManager;

    invoke-direct {v3}, Lcom/ssjj/fnsdk/core/FNUpdateManager;-><init>()V

    sput-object v3, Lcom/ssjj/fnsdk/core/FNUpdateManager;->b:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    sput v0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->e:I

    sput v1, Lcom/ssjj/fnsdk/core/FNUpdateManager;->f:I

    sput v2, Lcom/ssjj/fnsdk/core/FNUpdateManager;->g:I

    const/4 v0, 0x3

    sput v0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->h:I

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->c:Lcom/ssjj/fnsdk/core/FNUpdateManager$c;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->d:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->i:Z

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->j:Landroid/app/AlertDialog;

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->k:Landroid/widget/ProgressBar;

    iput v1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->l:I

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->m:Lcom/ssjj/fnsdk/core/FNUpdateManager$b;

    const-string v0, "download_for_update"

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->n:Ljava/lang/String;

    const-string v0, "name_apk"

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->o:Ljava/lang/String;

    const-string v0, "name_tempapk"

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->p:Ljava/lang/String;

    const-string v0, "file_size"

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->q:Ljava/lang/String;

    const-string v0, "file_sign"

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->r:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->a:Ljava/lang/String;

    return-object v0
.end method

.method private a(JJ)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/UpdateUtil;->getStringSizeKBNoUnit(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p3, p4}, Lcom/ssjj/fnsdk/core/UpdateUtil;->getStringSize(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ")"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/FNUpdateManager;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->q:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/FNUpdateManager;JJ)Ljava/lang/String;
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->a(JJ)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/app/Activity;ILcom/ssjj/fnsdk/core/FNUpdateManager$a;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 11

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->e()V

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->f()V

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/UpdateUtil;->getAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->d:Landroid/app/AlertDialog;

    invoke-virtual {p3}, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->f()Z

    move-result v0

    if-eqz v0, :cond_19

    const-string v0, "\u9000\u51fa\u6e38\u620f"

    goto :goto_1b

    :cond_19
    const-string v0, "\u53d6\u6d88"

    :goto_1b
    invoke-virtual {p3}, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->b()Z

    move-result v1

    if-eqz v1, :cond_51

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->d:Landroid/app/AlertDialog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u4e0b\u8f7d\u5b8c\u6210 ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, p3, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->g:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/ssjj/fnsdk/core/UpdateUtil;->getStringSize(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const-string v0, "\u70b9\u51fb\u5b89\u88c5"

    const-string v1, "\u91cd\u65b0\u4e0b\u8f7d"

    const-string v2, "\u66f4\u65b0\u4e0b\u8f7d\u5b8c\u6210"

    goto :goto_61

    :cond_51
    invoke-virtual {p3}, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->c()Z

    move-result v1

    const-string v2, "\u66f4\u65b0\u63d0\u793a"

    if-eqz v1, :cond_5c

    const-string v1, "\u7ee7\u7eed\u4e0b\u8f7d"

    goto :goto_5e

    :cond_5c
    const-string v1, "\u7acb\u5373\u4e0b\u8f7d"

    :goto_5e
    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_61
    sget v3, Lcom/ssjj/fnsdk/core/FNUpdateManager;->f:I

    const-string v4, "\u91cd\u8bd5\u4e0b\u8f7d"

    if-ne p2, v3, :cond_6b

    const-string v2, "\u6821\u9a8c\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\u4e0b\u8f7d"

    :goto_69
    move-object v0, v4

    goto :goto_83

    :cond_6b
    sget v3, Lcom/ssjj/fnsdk/core/FNUpdateManager;->h:I

    if-ne p2, v3, :cond_72

    const-string v2, "\u91cd\u547d\u540d\u5931\u8d25"

    goto :goto_69

    :cond_72
    sget v3, Lcom/ssjj/fnsdk/core/FNUpdateManager;->g:I

    if-ne p2, v3, :cond_83

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->checkNet(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_7f

    const-string p2, "\u7f51\u7edc\u4e0d\u7a33\u5b9a\u6216\u5df2\u4e2d\u65ad\uff0c\u8bf7\u91cd\u8bd5"

    goto :goto_81

    :cond_7f
    const-string p2, "\u7f51\u7edc\u4e0d\u7a33\u5b9a\uff0c\u8bf7\u91cd\u8bd5"

    :goto_81
    move-object v2, p2

    goto :goto_69

    :cond_83
    :goto_83
    iget-object p2, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->d:Landroid/app/AlertDialog;

    invoke-virtual {p2, v2}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->d:Landroid/app/AlertDialog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p3, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->d:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v0, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->d:Landroid/app/AlertDialog;

    const/4 v0, -0x2

    invoke-virtual {p2, v0, v1, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->d:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->show()V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->d:Landroid/app/AlertDialog;

    invoke-virtual {p2, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    new-instance v1, Lcom/ssjj/fnsdk/core/f;

    invoke-direct {v1, p0, p3, p1, p4}, Lcom/ssjj/fnsdk/core/f;-><init>(Lcom/ssjj/fnsdk/core/FNUpdateManager;Lcom/ssjj/fnsdk/core/FNUpdateManager$a;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->d:Landroid/app/AlertDialog;

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p2

    new-instance v0, Lcom/ssjj/fnsdk/core/g;

    invoke-direct {v0, p0, p3, p1, p4}, Lcom/ssjj/fnsdk/core/g;-><init>(Lcom/ssjj/fnsdk/core/FNUpdateManager;Lcom/ssjj/fnsdk/core/FNUpdateManager$a;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->d:Landroid/app/AlertDialog;

    new-instance p2, Lcom/ssjj/fnsdk/core/h;

    invoke-direct {p2, p0, p3, p4}, Lcom/ssjj/fnsdk/core/h;-><init>(Lcom/ssjj/fnsdk/core/FNUpdateManager;Lcom/ssjj/fnsdk/core/FNUpdateManager$a;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->d:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const p2, 0x102000b

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_f0

    const/16 p2, 0xf

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setAutoLinkMask(I)V

    :cond_f0
    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->d:Landroid/app/AlertDialog;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p3, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->c:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->d:Landroid/app/AlertDialog;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setCancelable(Z)V

    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/FNUpdateManager$a;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 6

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/UpdateUtil;->getAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "\u60a8\u786e\u5b9a\u8981\u5220\u9664\u7f13\u5b58\u5305\u91cd\u65b0\u4e0b\u8f7d\u5417?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    new-instance v1, Lcom/ssjj/fnsdk/core/i;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/ssjj/fnsdk/core/i;-><init>(Lcom/ssjj/fnsdk/core/FNUpdateManager;Lcom/ssjj/fnsdk/core/FNUpdateManager$a;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    const/4 p1, -0x1

    const-string p2, "\u5220\u9664\u5e76\u4e0b\u8f7d"

    invoke-virtual {v0, p1, p2, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    new-instance p1, Lcom/ssjj/fnsdk/core/j;

    invoke-direct {p1, p0}, Lcom/ssjj/fnsdk/core/j;-><init>(Lcom/ssjj/fnsdk/core/FNUpdateManager;)V

    const/4 p2, -0x2

    const-string p3, "\u8fd4\u56de"

    invoke-virtual {v0, p2, p3, p1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;J)V
    .registers 7

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->n:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, p3, p4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->n:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->o:Ljava/lang/String;

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->p:Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "del last: "

    if-eqz v0, :cond_3d

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3d

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :cond_3d
    if-eqz v1, :cond_63

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_63

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_63

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->i(Ljava/lang/String;)V

    :cond_63
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->o:Ljava/lang/String;

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->p:Ljava/lang/String;

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/FNUpdateManager;I)V
    .registers 2

    iput p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->l:I

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/FNUpdateManager;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/FNUpdateManager$a;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->b(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/FNUpdateManager$a;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/FNUpdateManager;Landroid/content/Context;Ljava/lang/String;J)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->a(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic a(Lcom/ssjj/fnsdk/core/FNUpdateManager;Lcom/ssjj/fnsdk/core/FNUpdateManager$b;)V
    .registers 2

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->m:Lcom/ssjj/fnsdk/core/FNUpdateManager$b;

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .registers 1

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->b(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic b()I
    .registers 1

    sget v0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->f:I

    return v0
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;J)J
    .registers 7

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->n:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, p2, p3, p4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    return-wide p1
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/FNUpdateManager;)Landroid/app/AlertDialog;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->d:Landroid/app/AlertDialog;

    return-object p0
.end method

.method private b(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/FNUpdateManager$a;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 12

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->e()V

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->f()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->l:I

    const/4 v1, 0x0

    if-nez p2, :cond_14

    const-string p1, "item\u4e3a\u7a7a"

    sget p2, Lcom/ssjj/fnsdk/core/FNUpdateManager;->CODE_UPDATE_FAILED:I

    invoke-interface {p3, p2, p1, v1}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void

    :cond_14
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_40

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_NOT_FOUND_SDCARD:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    if-eqz p3, :cond_3f

    sget p1, Lcom/ssjj/fnsdk/core/FNUpdateManager;->CODE_UPDATE_FAILED:I

    iget-object p2, p2, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->a:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-interface {p3, p1, v1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_3f
    return-void

    :cond_40
    invoke-static {p1}, Lcom/ssjj/fnsdk/core/UpdateUtil;->getAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const-string v3, "\u8fde\u63a5\u4e2d\uff0c\u6574\u7a0d\u5019..."

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Landroid/widget/FrameLayout;

    invoke-direct {v3, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x2

    invoke-direct {v4, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/high16 v4, 0x41200000    # 10.0f

    invoke-static {p1, v4}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dp2px(Landroid/content/Context;F)I

    move-result v4

    const/high16 v7, 0x41a00000    # 20.0f

    invoke-static {p1, v7}, Lcom/ssjj/fnsdk/core/SsjjFNUtility;->dp2px(Landroid/content/Context;F)I

    move-result v7

    invoke-virtual {v3, v4, v7, v4, v7}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    new-instance v4, Landroid/widget/ProgressBar;

    const v7, 0x1010078

    invoke-direct {v4, p1, v1, v7}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v4, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v4, v0}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->k:Landroid/widget/ProgressBar;

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v5, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v4, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->k:Landroid/widget/ProgressBar;

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Ljava/lang/StringBuilder;

    sget-object v4, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_CANCEL:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->j:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->j:Landroid/app/AlertDialog;

    invoke-virtual {v0, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    new-instance v1, Lcom/ssjj/fnsdk/core/k;

    invoke-direct {v1, p0, p2, p1, p3}, Lcom/ssjj/fnsdk/core/k;-><init>(Lcom/ssjj/fnsdk/core/FNUpdateManager;Lcom/ssjj/fnsdk/core/FNUpdateManager$a;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->c(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/FNUpdateManager$a;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    iget-boolean p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->i:Z

    if-nez p1, :cond_c5

    sget p1, Lcom/ssjj/fnsdk/core/FNUpdateManager;->CODE_UPDATE_START:I

    const-string v0, "\u5f00\u59cb\u4e0b\u8f7d"

    iget-object p2, p2, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->a:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    invoke-interface {p3, p1, v0, p2}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->i:Z

    :cond_c5
    return-void
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->n:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static synthetic b(Lcom/ssjj/fnsdk/core/FNUpdateManager;Landroid/app/Activity;Lcom/ssjj/fnsdk/core/FNUpdateManager$a;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->a(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/FNUpdateManager$a;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

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

.method static synthetic c()I
    .registers 1

    sget v0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->h:I

    return v0
.end method

.method private c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->n:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private c(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/FNUpdateManager$a;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 15

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->g()V

    iget-object v0, p2, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->g:Ljava/lang/String;

    iget-object v1, p2, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->h:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->k:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_73

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->r:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {p0, p1, v1, v2}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p2, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->q:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->b(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_73

    new-instance v0, Ljava/io/File;

    iget-object v5, p2, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->h:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v5

    cmp-long v0, v5, v1

    if-lez v0, :cond_73

    cmp-long v0, v5, v3

    if-eqz v0, :cond_73

    invoke-direct {p0, v5, v6, v3, v4}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->a(JJ)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/ssjj/fnsdk/lang/SsjjFNLang;->MSG_UPDATING:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->j:Landroid/app/AlertDialog;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->k:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_73

    const-wide/16 v1, 0x64

    mul-long v5, v5, v1

    div-long/2addr v5, v3

    long-to-int v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_73
    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->r:Ljava/lang/String;

    iget-object v1, p2, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->d:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/ssjj/fnsdk/core/l;

    iget-object v6, p2, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->b:Ljava/lang/String;

    iget-object v7, p2, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->h:Ljava/lang/String;

    iget-object v8, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->k:Landroid/widget/ProgressBar;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p0

    move-object v5, p1

    move-object v9, p2

    move-object v10, p3

    invoke-direct/range {v2 .. v10}, Lcom/ssjj/fnsdk/core/l;-><init>(Lcom/ssjj/fnsdk/core/FNUpdateManager;Lcom/ssjj/fnsdk/core/FNUpdateManager;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/widget/ProgressBar;Lcom/ssjj/fnsdk/core/FNUpdateManager$a;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->m:Lcom/ssjj/fnsdk/core/FNUpdateManager$b;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic c(Lcom/ssjj/fnsdk/core/FNUpdateManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->e()V

    return-void
.end method

.method static synthetic d()I
    .registers 1

    sget v0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->g:I

    return v0
.end method

.method static synthetic d(Lcom/ssjj/fnsdk/core/FNUpdateManager;)Landroid/app/AlertDialog;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->j:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic e(Lcom/ssjj/fnsdk/core/FNUpdateManager;)I
    .registers 1

    iget p0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->l:I

    return p0
.end method

.method private e()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->d:Landroid/app/AlertDialog;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->d:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->d:Landroid/app/AlertDialog;

    :cond_12
    return-void
.end method

.method private f()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->j:Landroid/app/AlertDialog;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->j:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->j:Landroid/app/AlertDialog;

    :cond_12
    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->g()V

    return-void
.end method

.method static synthetic f(Lcom/ssjj/fnsdk/core/FNUpdateManager;)V
    .registers 1

    invoke-direct {p0}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->f()V

    return-void
.end method

.method static synthetic g(Lcom/ssjj/fnsdk/core/FNUpdateManager;)Landroid/widget/ProgressBar;
    .registers 1

    iget-object p0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->k:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private g()V
    .registers 3

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->m:Lcom/ssjj/fnsdk/core/FNUpdateManager$b;

    if-eqz v0, :cond_17

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->d:Z

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->m:Lcom/ssjj/fnsdk/core/FNUpdateManager$b;

    invoke-virtual {v0}, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->m:Lcom/ssjj/fnsdk/core/FNUpdateManager$b;

    invoke-virtual {v0, v1}, Lcom/ssjj/fnsdk/core/FNUpdateManager$b;->cancel(Z)Z

    :cond_14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->m:Lcom/ssjj/fnsdk/core/FNUpdateManager$b;

    :cond_17
    return-void
.end method

.method public static getInstance()Lcom/ssjj/fnsdk/core/FNUpdateManager;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->b:Lcom/ssjj/fnsdk/core/FNUpdateManager;

    return-object v0
.end method


# virtual methods
.method public getUpdateInfo(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->i:Z

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->c:Lcom/ssjj/fnsdk/core/FNUpdateManager$c;

    const/4 v2, 0x0

    if-eqz v1, :cond_12

    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$c;->d:Z

    iget-object v1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->c:Lcom/ssjj/fnsdk/core/FNUpdateManager$c;

    invoke-virtual {v1, v3}, Lcom/ssjj/fnsdk/core/FNUpdateManager$c;->cancel(Z)Z

    iput-object v2, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->c:Lcom/ssjj/fnsdk/core/FNUpdateManager$c;

    :cond_12
    new-instance v1, Lcom/ssjj/fnsdk/core/FNUpdateManager$c;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/ssjj/fnsdk/core/FNUpdateManager$c;-><init>(Lcom/ssjj/fnsdk/core/FNUpdateManager;Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNListener;Lcom/ssjj/fnsdk/core/FNUpdateManager$c;)V

    iput-object v1, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->c:Lcom/ssjj/fnsdk/core/FNUpdateManager$c;

    new-array p1, v0, [Ljava/lang/String;

    invoke-virtual {v1, p1}, Lcom/ssjj/fnsdk/core/FNUpdateManager$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public install(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 8

    const-string v0, "update install err: "

    if-nez p2, :cond_17

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "data\u53c2\u6570\u4e3a\u7a7a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    return-void

    :cond_17
    sget-object v1, Lcom/ssjj/fnsdk/core/FNUpdateManager;->a:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->getObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    const/4 v1, 0x0

    const-string v2, "\u5b89\u88c5\u53d6\u6d88\uff1a"

    if-nez p2, :cond_4b

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "\u8bf7\u539f\u6837\u56de\u4f20data\u53c2\u6570"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_4b
    iget-object v3, p2, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->g:Ljava/lang/String;

    if-eqz v3, :cond_63

    new-instance v3, Ljava/io/File;

    iget-object v4, p2, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->g:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_5d

    goto :goto_63

    :cond_5d
    iget-object p2, p2, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->g:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/ssjj/fnsdk/core/UpdateUtil;->installApk(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_63
    :goto_63
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u627e\u4e0d\u5230apk\u6587\u4ef6\uff1a"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p2, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;->g:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showUpdateDialog(Landroid/app/Activity;ILcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 6

    const/4 v0, 0x0

    iput v0, p0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->l:I

    if-nez p3, :cond_d

    const-string p1, "\u63a5\u53e3data\u53c2\u6570\u4e3a\u7a7a"

    :goto_7
    sget p2, Lcom/ssjj/fnsdk/core/FNUpdateManager;->CODE_UPDATE_FAILED:I

    invoke-interface {p4, p2, p1, p3}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    return-void

    :cond_d
    sget-object v0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->a:Ljava/lang/String;

    invoke-virtual {p3, v0}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->getObj(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ssjj/fnsdk/core/FNUpdateManager$a;

    if-nez v0, :cond_1a

    const-string p1, "\u8bf7\u539f\u6837\u56de\u4f20data\u53c2\u6570"

    goto :goto_7

    :cond_1a
    invoke-direct {p0, p1, p2, v0, p4}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->a(Landroid/app/Activity;ILcom/ssjj/fnsdk/core/FNUpdateManager$a;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method

.method public showUpdateDialog(Landroid/app/Activity;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 5

    sget v0, Lcom/ssjj/fnsdk/core/FNUpdateManager;->e:I

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/ssjj/fnsdk/core/FNUpdateManager;->showUpdateDialog(Landroid/app/Activity;ILcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    return-void
.end method
