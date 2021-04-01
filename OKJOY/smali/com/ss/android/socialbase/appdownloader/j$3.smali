.class final Lcom/ss/android/socialbase/appdownloader/j$3;
.super Ljava/lang/Object;
.source "NotificationPermissionHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/j;->a(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/c/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/ss/android/socialbase/appdownloader/c/m;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/c/m;)V
    .registers 3

    .prologue
    .line 76
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/j$3;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/j$3;->b:Lcom/ss/android/socialbase/appdownloader/c/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    .prologue
    .line 79
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/j$3;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/j$3;->b:Lcom/ss/android/socialbase/appdownloader/c/m;

    invoke-static {v0, v1}, Lcom/ss/android/socialbase/appdownloader/j;->b(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/c/m;)V

    .line 80
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 81
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/ss/android/socialbase/appdownloader/j;->a(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 82
    return-void
.end method
