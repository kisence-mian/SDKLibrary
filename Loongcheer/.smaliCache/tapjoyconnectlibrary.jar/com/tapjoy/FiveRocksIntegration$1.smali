.class final Lcom/tapjoy/FiveRocksIntegration$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/gq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/FiveRocksIntegration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private e(Ljava/lang/String;)Lcom/tapjoy/internal/go;
    .registers 3

    .line 93
    new-instance v0, Lcom/tapjoy/FiveRocksIntegration$1$1;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/FiveRocksIntegration$1$1;-><init>(Lcom/tapjoy/FiveRocksIntegration$1;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 2

    .line 33
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/tapjoy/internal/gn;)V
    .registers 3

    .line 65
    if-eqz p2, :cond_a

    .line 66
    nop

    .line 67
    invoke-direct {p0, p1}, Lcom/tapjoy/FiveRocksIntegration$1;->e(Ljava/lang/String;)Lcom/tapjoy/internal/go;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/tapjoy/internal/gn;->a(Lcom/tapjoy/internal/go;)V

    .line 69
    :cond_a
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/gn;)V
    .registers 5

    .line 74
    if-eqz p3, :cond_a

    .line 75
    nop

    .line 76
    invoke-direct {p0, p1}, Lcom/tapjoy/FiveRocksIntegration$1;->e(Ljava/lang/String;)Lcom/tapjoy/internal/go;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/tapjoy/internal/gn;->a(Lcom/tapjoy/internal/go;)V

    .line 80
    :cond_a
    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->b()Lcom/tapjoy/internal/au;

    move-result-object p3

    monitor-enter p3

    .line 81
    :try_start_f
    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->b()Lcom/tapjoy/internal/au;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tapjoy/internal/au;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/TJPlacement;

    .line 82
    monitor-exit p3
    :try_end_1a
    .catchall {:try_start_f .. :try_end_1a} :catchall_2b

    .line 83
    if-eqz p1, :cond_2a

    .line 84
    invoke-static {p2}, Lcom/tapjoy/TapjoyConnectCore;->viewDidClose(Ljava/lang/String;)V

    .line 85
    nop

    .line 5066
    iget-object p2, p1, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJPlacementListener;

    .line 85
    if-eqz p2, :cond_2a

    .line 86
    nop

    .line 6066
    iget-object p2, p1, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJPlacementListener;

    .line 86
    invoke-interface {p2, p1}, Lcom/tapjoy/TJPlacementListener;->onContentDismiss(Lcom/tapjoy/TJPlacement;)V

    .line 89
    :cond_2a
    return-void

    .line 82
    :catchall_2b
    move-exception p1

    :try_start_2c
    monitor-exit p3
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public final b(Ljava/lang/String;)V
    .registers 4

    .line 38
    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->b()Lcom/tapjoy/internal/au;

    move-result-object v0

    monitor-enter v0

    .line 39
    :try_start_5
    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->b()Lcom/tapjoy/internal/au;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/au;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/TJPlacement;

    .line 40
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_1d

    .line 41
    if-eqz p1, :cond_1c

    .line 1066
    iget-object v0, p1, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJPlacementListener;

    .line 41
    if-eqz v0, :cond_1c

    .line 42
    nop

    .line 2066
    iget-object v0, p1, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJPlacementListener;

    .line 42
    invoke-interface {v0, p1}, Lcom/tapjoy/TJPlacementListener;->onContentReady(Lcom/tapjoy/TJPlacement;)V

    .line 44
    :cond_1c
    return-void

    .line 40
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public final c(Ljava/lang/String;)V
    .registers 4

    .line 49
    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->b()Lcom/tapjoy/internal/au;

    move-result-object v0

    monitor-enter v0

    .line 50
    :try_start_5
    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->b()Lcom/tapjoy/internal/au;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tapjoy/internal/au;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tapjoy/TJPlacement;

    .line 51
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_5 .. :try_end_10} :catchall_1d

    .line 52
    if-eqz p1, :cond_1c

    .line 3066
    iget-object v0, p1, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJPlacementListener;

    .line 52
    if-eqz v0, :cond_1c

    .line 53
    nop

    .line 4066
    iget-object v0, p1, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJPlacementListener;

    .line 53
    invoke-interface {v0, p1}, Lcom/tapjoy/TJPlacementListener;->onContentShow(Lcom/tapjoy/TJPlacement;)V

    .line 55
    :cond_1c
    return-void

    .line 51
    :catchall_1d
    move-exception p1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public final d(Ljava/lang/String;)V
    .registers 2

    .line 60
    return-void
.end method
