.class final Lcom/tapjoy/internal/et$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tapjoy/internal/et;->a(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJConnectListener;)Z
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

    .line 157
    iput-object p1, p0, Lcom/tapjoy/internal/et$2;->c:Lcom/tapjoy/internal/et;

    iput-object p2, p0, Lcom/tapjoy/internal/et$2;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/tapjoy/internal/et$2;->b:Lcom/tapjoy/TJConnectListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnectFailure()V
    .registers 2

    .line 171
    iget-object v0, p0, Lcom/tapjoy/internal/et$2;->b:Lcom/tapjoy/TJConnectListener;

    if-eqz v0, :cond_7

    .line 172
    invoke-interface {v0}, Lcom/tapjoy/TJConnectListener;->onConnectFailure()V

    .line 174
    :cond_7
    return-void
.end method

.method public final onConnectSuccess()V
    .registers 4

    .line 160
    iget-object v0, p0, Lcom/tapjoy/internal/et$2;->c:Lcom/tapjoy/internal/et;

    new-instance v1, Lcom/tapjoy/TapjoyCache;

    iget-object v2, p0, Lcom/tapjoy/internal/et$2;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/tapjoy/TapjoyCache;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/tapjoy/internal/et;->a(Lcom/tapjoy/internal/et;Lcom/tapjoy/TapjoyCache;)Lcom/tapjoy/TapjoyCache;

    .line 162
    iget-object v0, p0, Lcom/tapjoy/internal/et$2;->c:Lcom/tapjoy/internal/et;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/tapjoy/internal/et;->b:Z

    .line 164
    iget-object v0, p0, Lcom/tapjoy/internal/et$2;->b:Lcom/tapjoy/TJConnectListener;

    if-eqz v0, :cond_18

    .line 165
    invoke-interface {v0}, Lcom/tapjoy/TJConnectListener;->onConnectSuccess()V

    .line 167
    :cond_18
    return-void
.end method
