.class public final Lcom/tapjoy/internal/dd;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/dd$a;
    }
.end annotation


# static fields
.field private static d:Lcom/tapjoy/internal/dd;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lcom/tapjoy/internal/dd$a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/tapjoy/internal/dd;

    invoke-direct {v0}, Lcom/tapjoy/internal/dd;-><init>()V

    sput-object v0, Lcom/tapjoy/internal/dd;->d:Lcom/tapjoy/internal/dd;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/tapjoy/internal/dd;
    .registers 1

    sget-object v0, Lcom/tapjoy/internal/dd;->d:Lcom/tapjoy/internal/dd;

    return-object v0
.end method

.method private a(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/tapjoy/internal/dd;->b:Z

    if-eq v0, p1, :cond_16

    iput-boolean p1, p0, Lcom/tapjoy/internal/dd;->b:Z

    iget-boolean v0, p0, Lcom/tapjoy/internal/dd;->a:Z

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/tapjoy/internal/dd;->b()V

    iget-object v0, p0, Lcom/tapjoy/internal/dd;->c:Lcom/tapjoy/internal/dd$a;

    if-eqz v0, :cond_16

    xor-int/lit8 p1, p1, 0x1

    invoke-interface {v0, p1}, Lcom/tapjoy/internal/dd$a;->a(Z)V

    :cond_16
    return-void
.end method


# virtual methods
.method public final b()V
    .registers 4

    iget-boolean v0, p0, Lcom/tapjoy/internal/dd;->b:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {}, Lcom/tapjoy/internal/dc;->a()Lcom/tapjoy/internal/dc;

    move-result-object v1

    .line 3000
    iget-object v1, v1, Lcom/tapjoy/internal/dc;->a:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tapjoy/internal/cx;

    .line 4000
    iget-object v2, v2, Lcom/tapjoy/internal/cx;->c:Lcom/tapjoy/internal/dt;

    invoke-virtual {v2, v0}, Lcom/tapjoy/internal/dt;->a(Z)V

    goto :goto_12

    :cond_24
    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .registers 8

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x10

    if-lt p1, v0, :cond_51

    .line 1000
    new-instance p1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {p1}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>()V

    invoke-static {p1}, Landroid/app/ActivityManager;->getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    iget p1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v0, 0x64

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_18

    const/4 p1, 0x1

    goto :goto_19

    :cond_18
    const/4 p1, 0x0

    :goto_19
    invoke-static {}, Lcom/tapjoy/internal/dc;->a()Lcom/tapjoy/internal/dc;

    move-result-object v0

    .line 2000
    iget-object v0, v0, Lcom/tapjoy/internal/dc;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x1

    :cond_28
    :goto_28
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tapjoy/internal/cx;

    invoke-virtual {v4}, Lcom/tapjoy/internal/cx;->d()Z

    move-result v5

    if-eqz v5, :cond_28

    invoke-virtual {v4}, Lcom/tapjoy/internal/cx;->c()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_28

    invoke-virtual {v4}, Landroid/view/View;->hasWindowFocus()Z

    move-result v4

    if-eqz v4, :cond_28

    const/4 v3, 0x0

    goto :goto_28

    :cond_48
    if-eqz p1, :cond_4d

    if-eqz v3, :cond_4d

    goto :goto_4e

    :cond_4d
    const/4 v1, 0x0

    :goto_4e
    invoke-direct {p0, v1}, Lcom/tapjoy/internal/dd;->a(Z)V

    :cond_51
    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .registers 2

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/tapjoy/internal/dd;->a(Z)V

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    return-void
.end method
