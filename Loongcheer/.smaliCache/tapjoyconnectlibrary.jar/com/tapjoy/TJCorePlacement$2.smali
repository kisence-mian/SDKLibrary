.class final Lcom/tapjoy/TJCorePlacement$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tapjoy/TJAdUnit$TJAdUnitVideoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tapjoy/TJCorePlacement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tapjoy/TJCorePlacement;


# direct methods
.method constructor <init>(Lcom/tapjoy/TJCorePlacement;)V
    .registers 2

    .line 118
    iput-object p1, p0, Lcom/tapjoy/TJCorePlacement$2;->a:Lcom/tapjoy/TJCorePlacement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onVideoCompleted()V
    .registers 3

    .line 129
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$2;->a:Lcom/tapjoy/TJCorePlacement;

    const-string v1, "SHOW"

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    .line 130
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getVideoListener()Lcom/tapjoy/TJPlacementVideoListener;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 131
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getVideoListener()Lcom/tapjoy/TJPlacementVideoListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tapjoy/TJPlacementVideoListener;->onVideoComplete(Lcom/tapjoy/TJPlacement;)V

    .line 133
    :cond_17
    return-void
.end method

.method public final onVideoError(Ljava/lang/String;)V
    .registers 4
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$2;->a:Lcom/tapjoy/TJCorePlacement;

    const-string v1, "SHOW"

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getVideoListener()Lcom/tapjoy/TJPlacementVideoListener;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 139
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getVideoListener()Lcom/tapjoy/TJPlacementVideoListener;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Lcom/tapjoy/TJPlacementVideoListener;->onVideoError(Lcom/tapjoy/TJPlacement;Ljava/lang/String;)V

    .line 141
    :cond_17
    return-void
.end method

.method public final onVideoStart()V
    .registers 3

    .line 121
    iget-object v0, p0, Lcom/tapjoy/TJCorePlacement$2;->a:Lcom/tapjoy/TJCorePlacement;

    const-string v1, "SHOW"

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJCorePlacement;->a(Ljava/lang/String;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    .line 122
    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getVideoListener()Lcom/tapjoy/TJPlacementVideoListener;

    move-result-object v1

    if-eqz v1, :cond_17

    .line 123
    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->getVideoListener()Lcom/tapjoy/TJPlacementVideoListener;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/tapjoy/TJPlacementVideoListener;->onVideoStart(Lcom/tapjoy/TJPlacement;)V

    .line 125
    :cond_17
    return-void
.end method
