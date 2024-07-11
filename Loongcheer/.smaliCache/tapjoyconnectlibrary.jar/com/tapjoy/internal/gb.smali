.class abstract Lcom/tapjoy/internal/gb;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tapjoy/internal/gb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field volatile b:Lcom/tapjoy/internal/gb$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/gb<",
            "TR;>.a;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/tapjoy/internal/gb;Lcom/tapjoy/internal/gb$a;)V
    .registers 3

    .line 18
    nop

    .line 1104
    monitor-enter p0

    .line 1105
    :try_start_2
    iget-object v0, p0, Lcom/tapjoy/internal/gb;->b:Lcom/tapjoy/internal/gb$a;

    if-ne v0, p1, :cond_9

    .line 1106
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/tapjoy/internal/gb;->b:Lcom/tapjoy/internal/gb$a;

    .line 1108
    :cond_9
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_b

    throw p1
.end method


# virtual methods
.method protected abstract a(Landroid/content/Context;Lcom/tapjoy/TJPlacementListener;Ljava/lang/Object;)Lcom/tapjoy/TJPlacement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/tapjoy/TJPlacementListener;",
            "TR;)",
            "Lcom/tapjoy/TJPlacement;"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/Object;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Ljava/lang/String;"
        }
    .end annotation
.end method

.method protected a()Z
    .registers 2

    .line 71
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isFullScreenViewOpen()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    const/4 v0, 0x0

    return v0
.end method

.method protected a(Ljava/util/Observer;)Z
    .registers 4

    .line 85
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isFullScreenViewOpen()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 86
    sget-object v0, Lcom/tapjoy/internal/ft;->e:Lcom/tapjoy/internal/ft$a;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/ft$a;->addObserver(Ljava/util/Observer;)V

    .line 87
    invoke-static {}, Lcom/tapjoy/TapjoyConnectCore;->isFullScreenViewOpen()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 88
    return v1

    .line 90
    :cond_13
    sget-object v0, Lcom/tapjoy/internal/ft;->e:Lcom/tapjoy/internal/ft$a;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/ft$a;->deleteObserver(Ljava/util/Observer;)V

    .line 93
    :cond_18
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/hb;->e()Z

    move-result v0

    if-nez v0, :cond_37

    .line 94
    sget-object v0, Lcom/tapjoy/internal/ft;->c:Lcom/tapjoy/internal/ft$a;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/ft$a;->addObserver(Ljava/util/Observer;)V

    .line 95
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/internal/hb;->e()Z

    move-result v0

    if-nez v0, :cond_32

    .line 96
    return v1

    .line 98
    :cond_32
    sget-object v0, Lcom/tapjoy/internal/ft;->c:Lcom/tapjoy/internal/ft$a;

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/ft$a;->deleteObserver(Ljava/util/Observer;)V

    .line 100
    :cond_37
    const/4 p1, 0x1

    return p1
.end method

.method protected b(Ljava/lang/Object;)Lcom/tapjoy/internal/gb$a;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)",
            "Lcom/tapjoy/internal/gb<",
            "TR;>.a;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/tapjoy/internal/gb$a;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/internal/gb$a;-><init>(Lcom/tapjoy/internal/gb;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final c(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)Z"
        }
    .end annotation

    .line 41
    invoke-virtual {p0}, Lcom/tapjoy/internal/gb;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 42
    return v1

    .line 45
    :cond_8
    const/4 v0, 0x0

    .line 46
    monitor-enter p0

    .line 47
    :try_start_a
    iget-object v2, p0, Lcom/tapjoy/internal/gb;->b:Lcom/tapjoy/internal/gb$a;

    if-nez v2, :cond_14

    .line 48
    invoke-virtual {p0, p1}, Lcom/tapjoy/internal/gb;->b(Ljava/lang/Object;)Lcom/tapjoy/internal/gb$a;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/gb;->b:Lcom/tapjoy/internal/gb$a;

    .line 50
    :cond_14
    monitor-exit p0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_1d

    .line 51
    if-eqz v0, :cond_1c

    .line 52
    invoke-virtual {v0}, Lcom/tapjoy/internal/gb$a;->a()V

    .line 53
    const/4 p1, 0x1

    return p1

    .line 55
    :cond_1c
    return v1

    .line 50
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p1
.end method
