.class Lcom/ss/android/socialbase/appdownloader/d/a$a;
.super Ljava/lang/Object;
.source "DefaultAlertDialogBuilder.java"

# interfaces
.implements Lcom/ss/android/socialbase/appdownloader/c/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/appdownloader/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>(Landroid/app/AlertDialog$Builder;)V
    .registers 3

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    if-eqz p1, :cond_b

    .line 85
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/a$a;->a:Landroid/app/AlertDialog;

    .line 86
    :cond_b
    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/a$a;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_9

    .line 91
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/a$a;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 92
    :cond_9
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/a$a;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_b

    .line 103
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/d/a$a;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    .line 104
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
