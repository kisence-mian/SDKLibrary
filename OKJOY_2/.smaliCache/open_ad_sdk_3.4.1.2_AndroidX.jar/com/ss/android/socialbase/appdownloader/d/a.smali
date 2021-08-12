.class public Lcom/ss/android/socialbase/appdownloader/d/a;
.super Lcom/ss/android/socialbase/appdownloader/c/b;
.source "DefaultAlertDialogBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/socialbase/appdownloader/d/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/app/AlertDialog$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Lcom/ss/android/socialbase/appdownloader/c/b;-><init>()V

    .line 22
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/a;->a:Landroid/app/AlertDialog$Builder;

    .line 23
    return-void
.end method


# virtual methods
.method public a()Lcom/ss/android/socialbase/appdownloader/c/k;
    .registers 3

    .line 76
    new-instance v0, Lcom/ss/android/socialbase/appdownloader/d/a$a;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/d/a;->a:Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, v1}, Lcom/ss/android/socialbase/appdownloader/d/a$a;-><init>(Landroid/app/AlertDialog$Builder;)V

    return-object v0
.end method

.method public a(I)Lcom/ss/android/socialbase/appdownloader/c/l;
    .registers 3

    .line 27
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/a;->a:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_7

    .line 28
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 29
    :cond_7
    return-object p0
.end method

.method public a(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ss/android/socialbase/appdownloader/c/l;
    .registers 4

    .line 41
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/a;->a:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_7

    .line 42
    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 43
    :cond_7
    return-object p0
.end method

.method public a(Landroid/content/DialogInterface$OnCancelListener;)Lcom/ss/android/socialbase/appdownloader/c/l;
    .registers 3

    .line 69
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/a;->a:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_7

    .line 70
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 71
    :cond_7
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/c/l;
    .registers 3

    .line 34
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/a;->a:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_7

    .line 35
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 36
    :cond_7
    return-object p0
.end method

.method public b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/ss/android/socialbase/appdownloader/c/l;
    .registers 4

    .line 55
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/a;->a:Landroid/app/AlertDialog$Builder;

    if-eqz v0, :cond_7

    .line 56
    invoke-virtual {v0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 57
    :cond_7
    return-object p0
.end method
