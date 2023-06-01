.class public Lcom/ssjj/fnsdk/core/FNDialog;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/ssjj/fnsdk/core/FNDialog;


# instance fields
.field private b:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ssjj/fnsdk/core/FNDialog;->a:Lcom/ssjj/fnsdk/core/FNDialog;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNDialog;->b:Landroid/app/ProgressDialog;

    return-void
.end method

.method public static getDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
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

.method public static getInstance()Lcom/ssjj/fnsdk/core/FNDialog;
    .registers 1

    sget-object v0, Lcom/ssjj/fnsdk/core/FNDialog;->a:Lcom/ssjj/fnsdk/core/FNDialog;

    if-nez v0, :cond_b

    new-instance v0, Lcom/ssjj/fnsdk/core/FNDialog;

    invoke-direct {v0}, Lcom/ssjj/fnsdk/core/FNDialog;-><init>()V

    sput-object v0, Lcom/ssjj/fnsdk/core/FNDialog;->a:Lcom/ssjj/fnsdk/core/FNDialog;

    :cond_b
    sget-object v0, Lcom/ssjj/fnsdk/core/FNDialog;->a:Lcom/ssjj/fnsdk/core/FNDialog;

    return-object v0
.end method

.method public static showConfirmDialog(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4

    invoke-static {p0}, Lcom/ssjj/fnsdk/core/FNDialog;->getDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance p1, Lcom/ssjj/fnsdk/core/d;

    invoke-direct {p1}, Lcom/ssjj/fnsdk/core/d;-><init>()V

    invoke-virtual {p0, p3, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public hideLoadingDialog()V
    .registers 2

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNDialog;->b:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNDialog;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNDialog;->b:Landroid/app/ProgressDialog;

    :cond_12
    return-void
.end method

.method public showLoadingDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/ssjj/fnsdk/core/FNDialog;->showLoadingDialog(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public showLoadingDialog(Landroid/app/Activity;Ljava/lang/String;Landroid/content/DialogInterface$OnCancelListener;)V
    .registers 5

    invoke-virtual {p0}, Lcom/ssjj/fnsdk/core/FNDialog;->hideLoadingDialog()V

    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ssjj/fnsdk/core/FNDialog;->b:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNDialog;->b:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNDialog;->b:Landroid/app/ProgressDialog;

    if-nez p3, :cond_1b

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    goto :goto_24

    :cond_1b
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/FNDialog;->b:Landroid/app/ProgressDialog;

    invoke-virtual {p1, p3}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    :goto_24
    return-void
.end method

.method public updateLoadingDialog(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/FNDialog;->b:Landroid/app/ProgressDialog;

    if-nez v0, :cond_8

    invoke-virtual {p0, p1, p2}, Lcom/ssjj/fnsdk/core/FNDialog;->showLoadingDialog(Landroid/app/Activity;Ljava/lang/String;)V

    goto :goto_b

    :cond_8
    invoke-virtual {v0, p2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_b
    return-void
.end method
