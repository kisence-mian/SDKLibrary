.class final Lcom/tapjoy/FiveRocksIntegration$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/internal/go;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/FiveRocksIntegration$1;->e(Ljava/lang/String;)Lcom/tapjoy/internal/go;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/tapjoy/FiveRocksIntegration$1;


# direct methods
.method constructor <init>(Lcom/tapjoy/FiveRocksIntegration$1;Ljava/lang/String;)V
    .registers 3

    .line 93
    iput-object p1, p0, Lcom/tapjoy/FiveRocksIntegration$1$1;->b:Lcom/tapjoy/FiveRocksIntegration$1;

    iput-object p2, p0, Lcom/tapjoy/FiveRocksIntegration$1$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 98
    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->b()Lcom/tapjoy/internal/au;

    move-result-object v0

    monitor-enter v0

    .line 99
    :try_start_5
    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->b()Lcom/tapjoy/internal/au;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/FiveRocksIntegration$1$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/au;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/TJPlacement;

    .line 100
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_24

    .line 101
    if-eqz v1, :cond_23

    .line 1066
    iget-object v0, v1, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJPlacementListener;

    .line 101
    if-eqz v0, :cond_23

    .line 102
    new-instance v0, Lcom/tapjoy/FiveRocksIntegration$1$1$1;

    invoke-direct {v0, p0, p1}, Lcom/tapjoy/FiveRocksIntegration$1$1$1;-><init>(Lcom/tapjoy/FiveRocksIntegration$1$1;Ljava/lang/String;)V

    .line 123
    nop

    .line 2066
    iget-object p1, v1, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJPlacementListener;

    .line 123
    invoke-interface {p1, v1, v0, p2}, Lcom/tapjoy/TJPlacementListener;->onPurchaseRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;)V

    .line 125
    :cond_23
    return-void

    .line 100
    :catchall_24
    move-exception p1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .registers 8

    .line 131
    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->b()Lcom/tapjoy/internal/au;

    move-result-object v0

    monitor-enter v0

    .line 132
    :try_start_5
    invoke-static {}, Lcom/tapjoy/FiveRocksIntegration;->b()Lcom/tapjoy/internal/au;

    move-result-object v1

    iget-object v2, p0, Lcom/tapjoy/FiveRocksIntegration$1$1;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tapjoy/internal/au;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tapjoy/TJPlacement;

    .line 133
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_24

    .line 134
    if-eqz v1, :cond_23

    .line 3066
    iget-object v0, v1, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJPlacementListener;

    .line 134
    if-eqz v0, :cond_23

    .line 135
    new-instance v0, Lcom/tapjoy/FiveRocksIntegration$1$1$2;

    invoke-direct {v0, p0, p1, p4}, Lcom/tapjoy/FiveRocksIntegration$1$1$2;-><init>(Lcom/tapjoy/FiveRocksIntegration$1$1;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    nop

    .line 4066
    iget-object p1, v1, Lcom/tapjoy/TJPlacement;->a:Lcom/tapjoy/TJPlacementListener;

    .line 156
    invoke-interface {p1, v1, v0, p2, p3}, Lcom/tapjoy/TJPlacementListener;->onRewardRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;I)V

    .line 158
    :cond_23
    return-void

    .line 133
    :catchall_24
    move-exception p1

    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1
.end method
