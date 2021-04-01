.class final Lcom/ss/android/socialbase/appdownloader/j$1;
.super Ljava/lang/Object;
.source "NotificationPermissionHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/j;->a(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/c/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 93
    const/4 v2, 0x4

    if-ne p2, v2, :cond_f

    .line 94
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_e

    .line 95
    invoke-static {v1}, Lcom/ss/android/socialbase/appdownloader/j;->a(Z)V

    .line 99
    :cond_e
    :goto_e
    return v0

    :cond_f
    move v0, v1

    goto :goto_e
.end method
