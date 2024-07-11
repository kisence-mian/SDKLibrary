.class final Lcom/tapjoy/internal/et$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/et;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/tapjoy/TJConnectListener;

.field final synthetic c:Lcom/tapjoy/internal/et;


# direct methods
.method constructor <init>(Lcom/tapjoy/internal/et;Landroid/content/Context;Lcom/tapjoy/TJConnectListener;)V
    .registers 4

    .line 86
    iput-object p1, p0, Lcom/tapjoy/internal/et$1;->c:Lcom/tapjoy/internal/et;

    iput-object p2, p0, Lcom/tapjoy/internal/et$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/tapjoy/internal/et$1;->b:Lcom/tapjoy/TJConnectListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectFailure()V
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/tapjoy/internal/et$1;->b:Lcom/tapjoy/TJConnectListener;

    if-eqz v0, :cond_7

    .line 115
    invoke-interface {v0}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V

    .line 117
    :cond_7
    return-void
.end method

.method public final onConnectSuccess()V
    .registers 4

    .line 90
    iget-object v0, p0, Lcom/tapjoy/internal/et$1;->c:Lcom/tapjoy/internal/et;

    new-instance v1, Lcom/tapjoy/TJCurrency;

    iget-object v2, p0, Lcom/tapjoy/internal/et$1;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tapjoy/TJCurrency;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/tapjoy/internal/et;->a(Lcom/tapjoy/internal/et;Lcom/tapjoy/TJCurrency;)Lcom/tapjoy/TJCurrency;

    .line 91
    iget-object v0, p0, Lcom/tapjoy/internal/et$1;->c:Lcom/tapjoy/internal/et;

    new-instance v1, Lcom/tapjoy/TapjoyCache;

    iget-object v2, p0, Lcom/tapjoy/internal/et$1;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tapjoy/TapjoyCache;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/tapjoy/internal/et;->a(Lcom/tapjoy/internal/et;Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TapjoyCache;

    .line 95
    :try_start_18
    iget-object v0, p0, Lcom/tapjoy/internal/et$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/tapjoy/TJEventOptimizer;->init(Landroid/content/Context;)V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_18 .. :try_end_1d} :catch_39
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_1d} :catch_2b

    .line 103
    nop

    .line 105
    iget-object v0, p0, Lcom/tapjoy/internal/et$1;->c:Lcom/tapjoy/internal/et;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tapjoy/internal/et;->a:Z

    .line 107
    iget-object v0, p0, Lcom/tapjoy/internal/et$1;->b:Lcom/tapjoy/TJConnectListener;

    if-eqz v0, :cond_2a

    .line 108
    invoke-interface {v0}, Lcom/tapjoy/TJConnectListener;->onConnectSuccess()V

    .line 110
    :cond_2a
    return-void

    .line 99
    :catch_2b
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TapjoyAPI"

    invoke-static {v1, v0}, Lcom/tapjoy/TapjoyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/tapjoy/internal/et$1;->onConnectFailure()V

    .line 102
    return-void

    .line 96
    :catch_39
    move-exception v0

    .line 97
    invoke-virtual {p0}, Lcom/tapjoy/internal/et$1;->onConnectFailure()V

    .line 98
    return-void
.end method
