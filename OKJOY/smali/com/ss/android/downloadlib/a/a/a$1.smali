.class Lcom/ss/android/downloadlib/a/a/a$1;
.super Ljava/lang/Object;
.source "AdDownloadDialogManager.java"

# interfaces
.implements Lcom/ss/android/a/a/c/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/a/a/a;->a(Landroid/content/Context;Lcom/ss/android/downloadlib/a/b/a;Lcom/ss/android/downloadlib/a/a/a$a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadad/a/b/a;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/ss/android/downloadlib/a/b/a;

.field final synthetic d:Lcom/ss/android/downloadlib/a/a/a$a;

.field final synthetic e:Lcom/ss/android/downloadlib/a/a/a;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/a/a/a;Lcom/ss/android/downloadad/a/b/a;Landroid/content/Context;Lcom/ss/android/downloadlib/a/b/a;Lcom/ss/android/downloadlib/a/a/a$a;)V
    .registers 6

    .prologue
    .line 257
    iput-object p1, p0, Lcom/ss/android/downloadlib/a/a/a$1;->e:Lcom/ss/android/downloadlib/a/a/a;

    iput-object p2, p0, Lcom/ss/android/downloadlib/a/a/a$1;->a:Lcom/ss/android/downloadad/a/b/a;

    iput-object p3, p0, Lcom/ss/android/downloadlib/a/a/a$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/ss/android/downloadlib/a/a/a$1;->c:Lcom/ss/android/downloadlib/a/b/a;

    iput-object p5, p0, Lcom/ss/android/downloadlib/a/a/a$1;->d:Lcom/ss/android/downloadlib/a/a/a$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;)V
    .registers 6

    .prologue
    .line 260
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v1, "backdialog_install"

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/a/a$1;->a:Lcom/ss/android/downloadad/a/b/a;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    .line 261
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a/a$1;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/a/a$1;->c:Lcom/ss/android/downloadlib/a/b/a;

    iget-wide v2, v1, Lcom/ss/android/downloadlib/a/b/a;->a:J

    long-to-int v1, v2

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/appdownloader/d;->a(Landroid/content/Context;I)Z

    .line 262
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 263
    return-void
.end method

.method public b(Landroid/content/DialogInterface;)V
    .registers 5

    .prologue
    .line 267
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v1, "backdialog_exit"

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/a/a$1;->a:Lcom/ss/android/downloadad/a/b/a;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    .line 268
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a/a$1;->d:Lcom/ss/android/downloadlib/a/a/a$a;

    if-eqz v0, :cond_14

    .line 269
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a/a$1;->d:Lcom/ss/android/downloadlib/a/a/a$a;

    invoke-interface {v0}, Lcom/ss/android/downloadlib/a/a/a$a;->a()V

    .line 271
    :cond_14
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a/a$1;->e:Lcom/ss/android/downloadlib/a/a/a;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/a/a/a;->b(Ljava/lang/String;)V

    .line 272
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 273
    return-void
.end method

.method public c(Landroid/content/DialogInterface;)V
    .registers 4

    .prologue
    .line 277
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a/a$1;->e:Lcom/ss/android/downloadlib/a/a/a;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/ss/android/downloadlib/a/a/a;->b(Ljava/lang/String;)V

    .line 278
    return-void
.end method
