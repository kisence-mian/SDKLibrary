.class public final Lcom/appsflyer/internal/ah;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appsflyer/internal/ah$e;
    }
.end annotation


# static fields
.field public static AFInAppEventType:Lcom/appsflyer/internal/ah$e;

.field public static AFKeystoreWrapper:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 21
    const-wide/16 v0, 0x1f4

    sput-wide v0, Lcom/appsflyer/internal/ah;->AFKeystoreWrapper:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static AFInAppEventType(Landroid/content/Context;Lcom/appsflyer/internal/ah$e;)V
    .registers 3

    .line 24
    sput-object p1, Lcom/appsflyer/internal/ah;->AFInAppEventType:Lcom/appsflyer/internal/ah$e;

    .line 25
    new-instance v0, Lcom/appsflyer/internal/ah$1;

    invoke-direct {v0, p1}, Lcom/appsflyer/internal/ah$1;-><init>(Lcom/appsflyer/internal/ah$e;)V

    .line 101
    instance-of p1, p0, Landroid/app/Activity;

    if-eqz p1, :cond_11

    move-object p1, p0

    check-cast p1, Landroid/app/Activity;

    invoke-interface {v0, p1}, Landroid/app/Application$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    .line 102
    :cond_11
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Application;

    .line 103
    invoke-virtual {p0, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 104
    return-void
.end method
