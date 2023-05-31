.class public Lcom/ss/android/downloadlib/b/a;
.super Ljava/lang/Object;
.source "DefaultDownloadUIFactory.java"

# interfaces
.implements Lcom/ss/android/a/a/a/j;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/ss/android/a/a/c/c;)Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 43
    if-nez p0, :cond_4

    .line 44
    const/4 v0, 0x0

    .line 77
    :cond_3
    :goto_3
    return-object v0

    .line 46
    :cond_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/ss/android/a/a/c/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/ss/android/a/a/c/c;->b:Ljava/lang/String;

    .line 47
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/a/a/c/c;->c:Ljava/lang/String;

    .line 48
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/a/a/c/c;->d:Ljava/lang/String;

    new-instance v2, Lcom/ss/android/downloadlib/b/a$2;

    invoke-direct {v2, p0}, Lcom/ss/android/downloadlib/b/a$2;-><init>(Lcom/ss/android/a/a/c/c;)V

    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/a/a/c/c;->e:Ljava/lang/String;

    new-instance v2, Lcom/ss/android/downloadlib/b/a$1;

    invoke-direct {v2, p0}, Lcom/ss/android/downloadlib/b/a$1;-><init>(Lcom/ss/android/a/a/c/c;)V

    .line 57
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 65
    iget-boolean v1, p0, Lcom/ss/android/a/a/c/c;->f:Z

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 66
    new-instance v1, Lcom/ss/android/downloadlib/b/a$3;

    invoke-direct {v1, p0}, Lcom/ss/android/downloadlib/b/a$3;-><init>(Lcom/ss/android/a/a/c/c;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 74
    iget-object v1, p0, Lcom/ss/android/a/a/c/c;->g:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 75
    iget-object v1, p0, Lcom/ss/android/a/a/c/c;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3
.end method


# virtual methods
.method public a(ILandroid/content/Context;Lcom/ss/android/a/a/b/c;Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)V
    .registers 8
    .param p2    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-static {p2, p4, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 27
    return-void
.end method

.method public b(Lcom/ss/android/a/a/c/c;)Landroid/app/Dialog;
    .registers 3
    .param p1    # Lcom/ss/android/a/a/c/c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 31
    invoke-static {p1}, Lcom/ss/android/downloadlib/b/a;->a(Lcom/ss/android/a/a/c/c;)Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method
