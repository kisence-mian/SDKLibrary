.class final Lcom/ss/android/socialbase/appdownloader/e/d$3;
.super Ljava/lang/Object;
.source "NotificationPermissionHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/e/d;->a(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/c/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/ss/android/socialbase/appdownloader/c/n;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/c/n;)V
    .registers 3

    .line 77
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/e/d$3;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/e/d$3;->b:Lcom/ss/android/socialbase/appdownloader/c/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    .line 80
    iget-object p2, p0, Lcom/ss/android/socialbase/appdownloader/e/d$3;->a:Landroid/app/Activity;

    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/e/d$3;->b:Lcom/ss/android/socialbase/appdownloader/c/n;

    invoke-static {p2, v0}, Lcom/ss/android/socialbase/appdownloader/e/d;->b(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/c/n;)V

    .line 81
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 82
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/ss/android/socialbase/appdownloader/e/d;->a(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 83
    return-void
.end method
