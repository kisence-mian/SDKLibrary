.class Lcom/ss/android/downloadlib/a/a/a$2;
.super Ljava/lang/Object;
.source "AdDownloadDialogManager.java"

# interfaces
.implements Lcom/ss/android/a/a/c/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/a/a/a;->a(Landroid/content/Context;Lcom/ss/android/downloadlib/a/b/a;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/ss/android/downloadad/a/b/a;

.field final synthetic c:Lcom/ss/android/downloadlib/a/a/a;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/a/a/a;Landroid/content/Context;Lcom/ss/android/downloadad/a/b/a;)V
    .registers 4

    .prologue
    .line 367
    iput-object p1, p0, Lcom/ss/android/downloadlib/a/a/a$2;->c:Lcom/ss/android/downloadlib/a/a/a;

    iput-object p2, p0, Lcom/ss/android/downloadlib/a/a/a$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/ss/android/downloadlib/a/a/a$2;->b:Lcom/ss/android/downloadad/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;)V
    .registers 5

    .prologue
    .line 370
    iget-object v0, p0, Lcom/ss/android/downloadlib/a/a/a$2;->c:Lcom/ss/android/downloadlib/a/a/a;

    iget-object v1, p0, Lcom/ss/android/downloadlib/a/a/a$2;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/a/a$2;->b:Lcom/ss/android/downloadad/a/b/a;

    invoke-static {v0, v1, v2}, Lcom/ss/android/downloadlib/a/a/a;->a(Lcom/ss/android/downloadlib/a/a/a;Landroid/content/Context;Lcom/ss/android/downloadad/a/b/a;)V

    .line 371
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 372
    return-void
.end method

.method public b(Landroid/content/DialogInterface;)V
    .registers 5

    .prologue
    .line 376
    invoke-static {}, Lcom/ss/android/downloadlib/d/a;->a()Lcom/ss/android/downloadlib/d/a;

    move-result-object v0

    const-string v1, "market_openapp_cancel"

    iget-object v2, p0, Lcom/ss/android/downloadlib/a/a/a$2;->b:Lcom/ss/android/downloadad/a/b/a;

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/downloadlib/d/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    .line 377
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 378
    return-void
.end method

.method public c(Landroid/content/DialogInterface;)V
    .registers 2

    .prologue
    .line 383
    return-void
.end method
