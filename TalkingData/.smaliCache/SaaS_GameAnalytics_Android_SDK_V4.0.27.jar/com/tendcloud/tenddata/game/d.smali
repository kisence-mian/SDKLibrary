.class public Lcom/tendcloud/tenddata/game/d;
.super Ljava/lang/Object;
.source "td"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 18
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .registers 2

    .line 22
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .registers 3

    .line 28
    const/4 v0, 0x0

    :try_start_1
    sput-boolean v0, Lcom/tendcloud/tenddata/game/ab;->B:Z

    .line 31
    sget-object v0, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p1, v0}, Lcom/tendcloud/tenddata/game/ai;->b(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_9

    .line 37
    goto :goto_a

    .line 35
    :catchall_9
    move-exception p1

    .line 39
    :goto_a
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .registers 4

    .line 43
    const/4 v0, 0x1

    sput-boolean v0, Lcom/tendcloud/tenddata/game/ab;->D:Z

    .line 44
    sput-boolean v0, Lcom/tendcloud/tenddata/game/ab;->B:Z

    .line 48
    :try_start_5
    sget-object v1, Lcom/tendcloud/tenddata/game/a;->GAME:Lcom/tendcloud/tenddata/game/a;

    invoke-static {p1, v1}, Lcom/tendcloud/tenddata/game/ai;->a(Landroid/app/Activity;Lcom/tendcloud/tenddata/game/a;)V

    .line 55
    sput-boolean v0, Lcom/tendcloud/tenddata/game/ab;->m:Z
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_d

    .line 58
    goto :goto_e

    .line 56
    :catchall_d
    move-exception p1

    .line 59
    :goto_e
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .registers 3

    .line 63
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .registers 2

    .line 68
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .registers 2

    .line 74
    return-void
.end method
