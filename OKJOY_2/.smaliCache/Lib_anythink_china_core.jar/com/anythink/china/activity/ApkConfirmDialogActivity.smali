.class public Lcom/anythink/china/activity/ApkConfirmDialogActivity;
.super Landroid/app/Activity;


# static fields
.field public static a:Ljava/lang/String;

.field private static b:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/lang/Runnable;
    .registers 1

    .line 18
    sget-object v0, Lcom/anythink/china/activity/ApkConfirmDialogActivity;->b:Ljava/lang/Runnable;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V
    .registers 3

    .line 57
    sput-object p1, Lcom/anythink/china/activity/ApkConfirmDialogActivity;->a:Ljava/lang/String;

    .line 58
    sput-object p2, Lcom/anythink/china/activity/ApkConfirmDialogActivity;->b:Ljava/lang/Runnable;

    .line 60
    new-instance p1, Landroid/content/Intent;

    const-class p2, Lcom/anythink/china/activity/ApkConfirmDialogActivity;

    invoke-direct {p1, p0, p2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 61
    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 63
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 28
    :try_start_3
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u4e0b\u8f7d"

    .line 29
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u7acb\u5373\u4e0b\u8f7d\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/anythink/china/activity/ApkConfirmDialogActivity;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u786e\u5b9a"

    new-instance v1, Lcom/anythink/china/activity/ApkConfirmDialogActivity$2;

    invoke-direct {v1, p0}, Lcom/anythink/china/activity/ApkConfirmDialogActivity$2;-><init>(Lcom/anythink/china/activity/ApkConfirmDialogActivity;)V

    .line 31
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "\u53d6\u6d88"

    new-instance v1, Lcom/anythink/china/activity/ApkConfirmDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/anythink/china/activity/ApkConfirmDialogActivity$1;-><init>(Lcom/anythink/china/activity/ApkConfirmDialogActivity;)V

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 48
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V
    :try_end_4b
    .catchall {:try_start_3 .. :try_end_4b} :catchall_4c

    .line 53
    return-void

    .line 51
    :catchall_4c
    move-exception p1

    .line 52
    invoke-virtual {p0}, Lcom/anythink/china/activity/ApkConfirmDialogActivity;->finish()V

    .line 54
    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 77
    const/4 v0, 0x0

    sput-object v0, Lcom/anythink/china/activity/ApkConfirmDialogActivity;->a:Ljava/lang/String;

    .line 78
    sput-object v0, Lcom/anythink/china/activity/ApkConfirmDialogActivity;->b:Ljava/lang/Runnable;

    .line 80
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 81
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    .line 69
    const/4 v0, 0x4

    if-ne v0, p1, :cond_5

    .line 70
    const/4 p1, 0x1

    return p1

    .line 72
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
