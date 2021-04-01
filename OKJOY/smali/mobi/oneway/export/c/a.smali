.class public Lmobi/oneway/export/c/a;
.super Lmobi/oneway/export/c/b;

# interfaces
.implements Lmobi/oneway/export/AdListener/AdMonitor;


# instance fields
.field private g:Lmobi/oneway/export/AdListener/AdMonitor;


# direct methods
.method public constructor <init>(Lmobi/oneway/export/AdListener/AdMonitor;Lmobi/oneway/export/enums/AdType;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0, p2, p3, p4}, Lmobi/oneway/export/c/b;-><init>(Lmobi/oneway/export/enums/AdType;Ljava/lang/String;I)V

    iput-object p1, p0, Lmobi/oneway/export/c/a;->g:Lmobi/oneway/export/AdListener/AdMonitor;

    return-void
.end method


# virtual methods
.method public onAdClick(Ljava/lang/String;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmobi/oneway/export/c/a;->e:Lmobi/oneway/export/f/e;

    sget-object v1, Lmobi/oneway/export/enums/EventType;->click:Lmobi/oneway/export/enums/EventType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/f/e;->a(Lmobi/oneway/export/enums/EventType;Ljava/lang/String;)V

    iget-object v0, p0, Lmobi/oneway/export/c/a;->g:Lmobi/oneway/export/AdListener/AdMonitor;

    invoke-interface {v0, p1}, Lmobi/oneway/export/AdListener/AdMonitor;->onAdClick(Ljava/lang/String;)V

    return-void
.end method

.method public onAdClose(Ljava/lang/String;Lmobi/oneway/export/enums/OnewayAdCloseType;)V
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "type"    # Lmobi/oneway/export/enums/OnewayAdCloseType;

    .prologue
    iget-object v0, p0, Lmobi/oneway/export/c/a;->e:Lmobi/oneway/export/f/e;

    sget-object v1, Lmobi/oneway/export/enums/EventType;->close:Lmobi/oneway/export/enums/EventType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/f/e;->a(Lmobi/oneway/export/enums/EventType;Ljava/lang/String;)V

    iget-object v0, p0, Lmobi/oneway/export/c/a;->g:Lmobi/oneway/export/AdListener/AdMonitor;

    invoke-interface {v0, p1, p2}, Lmobi/oneway/export/AdListener/AdMonitor;->onAdClose(Ljava/lang/String;Lmobi/oneway/export/enums/OnewayAdCloseType;)V

    return-void
.end method

.method public onAdFinish(Ljava/lang/String;Lmobi/oneway/export/enums/OnewayAdCloseType;Ljava/lang/String;)V
    .registers 7
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "type"    # Lmobi/oneway/export/enums/OnewayAdCloseType;
    .param p3, "sessionId"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmobi/oneway/export/c/a;->e:Lmobi/oneway/export/f/e;

    sget-object v1, Lmobi/oneway/export/enums/EventType;->end:Lmobi/oneway/export/enums/EventType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/f/e;->a(Lmobi/oneway/export/enums/EventType;Ljava/lang/String;)V

    iget-object v0, p0, Lmobi/oneway/export/c/a;->g:Lmobi/oneway/export/AdListener/AdMonitor;

    invoke-interface {v0, p1, p2, p3}, Lmobi/oneway/export/AdListener/AdMonitor;->onAdFinish(Ljava/lang/String;Lmobi/oneway/export/enums/OnewayAdCloseType;Ljava/lang/String;)V

    return-void
.end method

.method public onAdReady()V
    .registers 4

    invoke-virtual {p0}, Lmobi/oneway/export/c/a;->a()V

    iget-object v0, p0, Lmobi/oneway/export/c/a;->e:Lmobi/oneway/export/f/e;

    sget-object v1, Lmobi/oneway/export/enums/EventType;->ready:Lmobi/oneway/export/enums/EventType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/f/e;->a(Lmobi/oneway/export/enums/EventType;Ljava/lang/String;)V

    invoke-virtual {p0}, Lmobi/oneway/export/c/a;->c()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lmobi/oneway/export/c/a;->g:Lmobi/oneway/export/AdListener/AdMonitor;

    invoke-interface {v0}, Lmobi/oneway/export/AdListener/AdMonitor;->onAdReady()V

    :cond_16
    return-void
.end method

.method public onAdShow(Ljava/lang/String;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmobi/oneway/export/c/a;->e:Lmobi/oneway/export/f/e;

    sget-object v1, Lmobi/oneway/export/enums/EventType;->show:Lmobi/oneway/export/enums/EventType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/f/e;->a(Lmobi/oneway/export/enums/EventType;Ljava/lang/String;)V

    iget-object v0, p0, Lmobi/oneway/export/c/a;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmobi/oneway/export/f/d;->b(Ljava/lang/String;Z)V

    iget-object v0, p0, Lmobi/oneway/export/c/a;->g:Lmobi/oneway/export/AdListener/AdMonitor;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lmobi/oneway/export/c/a;->g:Lmobi/oneway/export/AdListener/AdMonitor;

    invoke-interface {v0, p1}, Lmobi/oneway/export/AdListener/AdMonitor;->onAdShow(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public onSdkError(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Lmobi/oneway/export/enums/OnewaySdkError;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lmobi/oneway/export/c/a;->b()V

    iget-object v0, p0, Lmobi/oneway/export/c/a;->e:Lmobi/oneway/export/f/e;

    sget-object v1, Lmobi/oneway/export/enums/EventType;->adFail:Lmobi/oneway/export/enums/EventType;

    invoke-virtual {v0, v1, p1, p2}, Lmobi/oneway/export/f/e;->a(Lmobi/oneway/export/enums/EventType;Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V

    invoke-virtual {p0}, Lmobi/oneway/export/c/a;->d()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lmobi/oneway/export/c/a;->g:Lmobi/oneway/export/AdListener/AdMonitor;

    invoke-interface {v0, p1, p2}, Lmobi/oneway/export/AdListener/AdMonitor;->onSdkError(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V

    :cond_15
    return-void
.end method
