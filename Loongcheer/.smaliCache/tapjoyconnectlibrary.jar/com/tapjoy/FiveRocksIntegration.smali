.class public Lcom/tapjoy/FiveRocksIntegration;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/tapjoy/internal/au;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tapjoy/internal/au<",
            "Ljava/lang/String;",
            "Lcom/tapjoy/TJPlacement;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 12
    new-instance v0, Lcom/tapjoy/internal/au;

    invoke-direct {v0}, Lcom/tapjoy/internal/au;-><init>()V

    sput-object v0, Lcom/tapjoy/FiveRocksIntegration;->a:Lcom/tapjoy/internal/au;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()V
    .registers 3

    .line 1060
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v0

    .line 1155
    iget-boolean v1, v0, Lcom/tapjoy/internal/hb;->c:Z

    const/4 v2, 0x1

    if-eq v1, v2, :cond_b

    .line 1156
    iput-boolean v2, v0, Lcom/tapjoy/internal/hb;->c:Z

    .line 2028
    :cond_b
    new-instance v0, Lcom/tapjoy/FiveRocksIntegration$1;

    invoke-direct {v0}, Lcom/tapjoy/FiveRocksIntegration$1;-><init>()V

    .line 18
    nop

    .line 2527
    invoke-static {}, Lcom/tapjoy/internal/hb;->a()Lcom/tapjoy/internal/hb;

    move-result-object v1

    .line 2951
    invoke-static {v0}, Lcom/tapjoy/internal/hc;->a(Lcom/tapjoy/internal/gq;)Lcom/tapjoy/internal/hc;

    move-result-object v0

    iput-object v0, v1, Lcom/tapjoy/internal/hb;->o:Lcom/tapjoy/internal/hc;

    .line 19
    return-void
.end method

.method public static addPlacementCallback(Ljava/lang/String;Lcom/tapjoy/TJPlacement;)V
    .registers 4
    .param p0, "placement"    # Ljava/lang/String;
    .param p1, "p"    # Lcom/tapjoy/TJPlacement;

    .line 22
    sget-object v0, Lcom/tapjoy/FiveRocksIntegration;->a:Lcom/tapjoy/internal/au;

    monitor-enter v0

    .line 23
    :try_start_3
    sget-object v1, Lcom/tapjoy/FiveRocksIntegration;->a:Lcom/tapjoy/internal/au;

    invoke-virtual {v1, p0, p1}, Lcom/tapjoy/internal/au;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    monitor-exit v0

    return-void

    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method static synthetic b()Lcom/tapjoy/internal/au;
    .registers 1

    .line 10
    sget-object v0, Lcom/tapjoy/FiveRocksIntegration;->a:Lcom/tapjoy/internal/au;

    return-object v0
.end method
