.class Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;
.super Ljava/lang/Object;
.source "TTDelegateActivity.java"

# interfaces
.implements Lcom/ss/android/a/a/c/c$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/downloadlib/activity/TTDelegateActivity;->c(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ss/android/downloadad/a/b/b;

.field final synthetic b:Lcom/ss/android/downloadlib/activity/TTDelegateActivity;


# direct methods
.method constructor <init>(Lcom/ss/android/downloadlib/activity/TTDelegateActivity;Lcom/ss/android/downloadad/a/b/b;)V
    .registers 3

    .line 480
    iput-object p1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->b:Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    iput-object p2, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->a:Lcom/ss/android/downloadad/a/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/DialogInterface;)V
    .registers 3

    .line 483
    iget-object v0, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->a:Lcom/ss/android/downloadad/a/b/b;

    invoke-static {v0}, Lcom/ss/android/downloadlib/b/a;->b(Lcom/ss/android/downloadad/a/b/b;)V

    .line 484
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 485
    iget-object p1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->b:Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    invoke-static {p1}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    .line 486
    return-void
.end method

.method public b(Landroid/content/DialogInterface;)V
    .registers 5

    .line 490
    invoke-static {}, Lcom/ss/android/downloadlib/e/a;->a()Lcom/ss/android/downloadlib/e/a;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->a:Lcom/ss/android/downloadad/a/b/b;

    const-string v2, "market_openapp_cancel"

    invoke-virtual {v0, v2, v1}, Lcom/ss/android/downloadlib/e/a;->a(Ljava/lang/String;Lcom/ss/android/downloadad/a/b/a;)V

    .line 491
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 492
    iget-object p1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->b:Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    invoke-static {p1}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    .line 493
    return-void
.end method

.method public c(Landroid/content/DialogInterface;)V
    .registers 2

    .line 497
    iget-object p1, p0, Lcom/ss/android/downloadlib/activity/TTDelegateActivity$2;->b:Lcom/ss/android/downloadlib/activity/TTDelegateActivity;

    invoke-static {p1}, Lcom/ss/android/socialbase/appdownloader/c;->a(Landroid/app/Activity;)V

    .line 498
    return-void
.end method
