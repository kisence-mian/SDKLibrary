.class Lcom/ss/android/downloadlib/addownload/a/a$1;
.super Ljava/lang/Object;
.source "AdDownloadDialogManager.java"

# interfaces
.implements Lcom/ss/android/a/a/c/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/addownload/a/a;->a(Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/b/a;Lcom/ss/android/downloadlib/addownload/a/a$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadad/a/b/b;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/ss/android/downloadlib/addownload/b/a;

.field final synthetic d:Lcom/ss/android/downloadlib/addownload/a/a$a;

.field final synthetic e:Lcom/ss/android/downloadlib/addownload/a/a;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/addownload/a/a;Lcom/ss/android/downloadad/a/b/b;Landroid/content/Context;Lcom/ss/android/downloadlib/addownload/b/a;Lcom/ss/android/downloadlib/addownload/a/a$a;)V
    .registers 6

    .line 291
    iput-object p1, p0, Lcom/ss/android/downloadlib/addownload/a/a$1;->e:Lcom/ss/android/downloadlib/addownload/a/a;

    iput-object p2, p0, Lcom/ss/android/downloadlib/addownload/a/a$1;->a:Lcom/ss/android/downloadad/a/b/b;

    iput-object p3, p0, Lcom/ss/android/downloadlib/addownload/a/a$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/ss/android/downloadlib/addownload/a/a$1;->c:Lcom/ss/android/downloadlib/addownload/b/a;

    iput-object p5, p0, Lcom/ss/android/downloadlib/addownload/a/a$1;->d:Lcom/ss/android/downloadlib/addownload/a/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;)V
    .registers 5

    .line 294
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/a/a$1;->a:Lcom/ss/android/downloadad/a/b/b;

    const-string v2, "backdialog_install"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    .line 295
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/a$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/a/a$1;->c:Lcom/ss/android/downloadlib/addownload/b/a;

    iget-wide v1, v1, Lcom/ss/android/downloadlib/addownload/b/a;->a:J

    long-to-int v1, v1

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;I)Z

    .line 296
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 297
    return-void
.end method

.method public b(Landroid/content/DialogInterface;)V
    .registers 5

    .line 301
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/addownload/a/a$1;->a:Lcom/ss/android/downloadad/a/b/b;

    const-string v2, "backdialog_exit"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    .line 302
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/a$1;->d:Lcom/ss/android/downloadlib/addownload/a/a$a;

    if-eqz v0, :cond_12

    .line 303
    invoke-interface {v0}, Lcom/ss/android/downloadlib/addownload/a/a$a;->a()V

    .line 305
    :cond_12
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/a/a$1;->e:Lcom/ss/android/downloadlib/addownload/a/a;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/addownload/a/a;->b(Ljava/lang/String;)V

    .line 306
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 307
    return-void
.end method

.method public c(Landroid/content/DialogInterface;)V
    .registers 3

    .line 311
    iget-object p1, p0, Lcom/ss/android/downloadlib/addownload/a/a$1;->e:Lcom/ss/android/downloadlib/addownload/a/a;

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/ss/android/downloadlib/addownload/a/a;->b(Ljava/lang/String;)V

    .line 312
    return-void
.end method
