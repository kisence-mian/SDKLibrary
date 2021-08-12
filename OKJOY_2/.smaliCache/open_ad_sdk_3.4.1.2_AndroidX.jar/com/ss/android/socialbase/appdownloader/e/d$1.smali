.class final Lcom/ss/android/socialbase/appdownloader/e/d$1;
.super Ljava/lang/Object;
.source "NotificationPermissionHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ss/android/socialbase/appdownloader/e/d;->a(Landroid/app/Activity;Lcom/ss/android/socialbase/appdownloader/c/n;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 5

    .line 94
    const/4 p1, 0x0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_f

    .line 95
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_e

    .line 96
    invoke-static {p1}, Lcom/ss/android/socialbase/appdownloader/e/d;->a(Z)V

    .line 98
    :cond_e
    return p3

    .line 100
    :cond_f
    return p1
.end method
