.class public Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;
.super Ljava/lang/Object;
.source "LibUIFactory.java"

# interfaces
.implements Lcom/ss/android/a/a/a/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->a:Ljava/lang/ref/WeakReference;

    .line 36
    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/ss/android/a/a/c/c;)Landroid/app/AlertDialog;
    .registers 5

    .line 81
    iget v0, p2, Lcom/ss/android/a/a/c/c;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->b(Landroid/app/Activity;Lcom/ss/android/a/a/c/c;)Landroid/app/AlertDialog;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 84
    return-object p1

    .line 87
    :cond_d
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_16

    .line 88
    const-string v0, "Theme.Dialog.TTDownload"

    goto :goto_18

    :cond_16
    const-string v0, "Theme.Dialog.TTDownloadOld"

    :goto_18
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/ac;->g(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 89
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    iget-object p1, p2, Lcom/ss/android/a/a/c/c;->b:Ljava/lang/String;

    .line 90
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p2, Lcom/ss/android/a/a/c/c;->c:Ljava/lang/String;

    .line 91
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p2, Lcom/ss/android/a/a/c/c;->d:Ljava/lang/String;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e$3;

    invoke-direct {v1, p0, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e$3;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;Lcom/ss/android/a/a/c/c;)V

    .line 92
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p2, Lcom/ss/android/a/a/c/c;->e:Ljava/lang/String;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e$2;

    invoke-direct {v1, p0, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e$2;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;Lcom/ss/android/a/a/c/c;)V

    .line 100
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e$1;

    invoke-direct {v0, p0, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e$1;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;Lcom/ss/android/a/a/c/c;)V

    .line 107
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 115
    iget-object v0, p2, Lcom/ss/android/a/a/c/c;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_55

    .line 116
    iget-object p2, p2, Lcom/ss/android/a/a/c/c;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    .line 118
    :cond_55
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 121
    return-object p1
.end method

.method private b(Landroid/app/Activity;Lcom/ss/android/a/a/c/c;)Landroid/app/AlertDialog;
    .registers 4

    .line 125
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/e;

    invoke-direct {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/e;-><init>(Landroid/content/Context;)V

    iget-object p1, p2, Lcom/ss/android/a/a/c/c;->b:Ljava/lang/String;

    .line 126
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/e;

    move-result-object p1

    iget-object v0, p2, Lcom/ss/android/a/a/c/c;->c:Ljava/lang/String;

    .line 127
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->b(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/e;

    move-result-object p1

    iget-object v0, p2, Lcom/ss/android/a/a/c/c;->d:Ljava/lang/String;

    .line 128
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->c(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/e;

    move-result-object p1

    iget-object v0, p2, Lcom/ss/android/a/a/c/c;->e:Ljava/lang/String;

    .line 129
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->d(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/widget/e;

    move-result-object p1

    iget-object v0, p2, Lcom/ss/android/a/a/c/c;->g:Landroid/graphics/drawable/Drawable;

    .line 130
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a(Landroid/graphics/drawable/Drawable;)Lcom/bytedance/sdk/openadsdk/core/widget/e;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e$5;

    invoke-direct {v0, p0, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e$5;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;Lcom/ss/android/a/a/c/c;)V

    .line 131
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a(Lcom/bytedance/sdk/openadsdk/core/widget/e$a;)Lcom/bytedance/sdk/openadsdk/core/widget/e;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e$4;

    invoke-direct {v0, p0, p2}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e$4;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;Lcom/ss/android/a/a/c/c;)V

    .line 146
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/openadsdk/core/widget/e;->a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/bytedance/sdk/openadsdk/core/widget/e;

    move-result-object p1

    .line 125
    return-object p1
.end method

.method private c(Lcom/ss/android/a/a/c/c;)V
    .registers 8

    .line 157
    new-instance v5, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e$6;

    invoke-direct {v5, p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e$6;-><init>(Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;Lcom/ss/android/a/a/c/c;)V

    .line 180
    iget v0, p1, Lcom/ss/android/a/a/c/c;->j:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 181
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/ss/android/a/a/c/c;->b:Ljava/lang/String;

    iget-object v2, p1, Lcom/ss/android/a/a/c/c;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/ss/android/a/a/c/c;->d:Ljava/lang/String;

    iget-object v4, p1, Lcom/ss/android/a/a/c/c;->e:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;)V

    goto :goto_2d

    .line 187
    :cond_1e
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/ss/android/a/a/c/c;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/ss/android/a/a/c/c;->c:Ljava/lang/String;

    invoke-static {v0, v1, p1, v5}, Lcom/bytedance/sdk/openadsdk/utils/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/utils/g$a;)V

    .line 190
    :goto_2d
    return-void
.end method


# virtual methods
.method public a(Lcom/ss/android/a/a/c/c;)Landroid/app/AlertDialog;
    .registers 4

    .line 62
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 63
    return-object v0

    .line 66
    :cond_4
    iget-object v1, p1, Lcom/ss/android/a/a/c/c;->a:Landroid/content/Context;

    if-eqz v1, :cond_17

    iget-object v1, p1, Lcom/ss/android/a/a/c/c;->a:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    if-eqz v1, :cond_17

    .line 67
    iget-object v0, p1, Lcom/ss/android/a/a/c/c;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->a(Landroid/app/Activity;Lcom/ss/android/a/a/c/c;)Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 69
    :cond_17
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->c(Lcom/ss/android/a/a/c/c;)V

    .line 72
    return-object v0
.end method

.method public a(ILandroid/content/Context;Lcom/ss/android/a/a/b/c;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .registers 7

    .line 51
    :try_start_0
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_e

    .line 52
    const/4 p1, 0x0

    invoke-static {p2, p4, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 56
    :cond_e
    goto :goto_2c

    .line 54
    :catch_f
    move-exception p1

    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "showToastWithDuration e "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LibUIFactory"

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    :goto_2c
    return-void
.end method

.method public synthetic b(Lcom/ss/android/a/a/c/c;)Landroid/app/Dialog;
    .registers 2

    .line 30
    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/downloadnew/a/a/e;->a(Lcom/ss/android/a/a/c/c;)Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
