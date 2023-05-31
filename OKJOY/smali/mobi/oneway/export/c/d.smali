.class public Lmobi/oneway/export/c/d;
.super Lmobi/oneway/export/c/b;

# interfaces
.implements Lmobi/oneway/export/AdListener/OWInteractiveAdListener;


# instance fields
.field private g:Lmobi/oneway/export/AdListener/OWInteractiveAdListener;


# direct methods
.method public constructor <init>(Lmobi/oneway/export/AdListener/OWInteractiveAdListener;Lmobi/oneway/export/enums/AdType;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0, p2, p3, p4}, Lmobi/oneway/export/c/b;-><init>(Lmobi/oneway/export/enums/AdType;Ljava/lang/String;I)V

    iput-object p1, p0, Lmobi/oneway/export/c/d;->g:Lmobi/oneway/export/AdListener/OWInteractiveAdListener;

    return-void
.end method


# virtual methods
.method public onAdClose(Ljava/lang/String;Lmobi/oneway/export/enums/OnewayAdCloseType;)V
    .registers 6
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "type"    # Lmobi/oneway/export/enums/OnewayAdCloseType;

    .prologue
    iget-object v0, p0, Lmobi/oneway/export/c/d;->e:Lmobi/oneway/export/f/e;

    sget-object v1, Lmobi/oneway/export/enums/EventType;->close:Lmobi/oneway/export/enums/EventType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/f/e;->a(Lmobi/oneway/export/enums/EventType;Ljava/lang/String;)V

    iget-object v0, p0, Lmobi/oneway/export/c/d;->g:Lmobi/oneway/export/AdListener/OWInteractiveAdListener;

    invoke-interface {v0, p1, p2}, Lmobi/oneway/export/AdListener/OWInteractiveAdListener;->onAdClose(Ljava/lang/String;Lmobi/oneway/export/enums/OnewayAdCloseType;)V

    return-void
.end method

.method public onAdReady()V
    .registers 4

    invoke-virtual {p0}, Lmobi/oneway/export/c/d;->a()V

    iget-object v0, p0, Lmobi/oneway/export/c/d;->e:Lmobi/oneway/export/f/e;

    sget-object v1, Lmobi/oneway/export/enums/EventType;->ready:Lmobi/oneway/export/enums/EventType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/f/e;->a(Lmobi/oneway/export/enums/EventType;Ljava/lang/String;)V

    invoke-virtual {p0}, Lmobi/oneway/export/c/d;->c()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lmobi/oneway/export/c/d;->g:Lmobi/oneway/export/AdListener/OWInteractiveAdListener;

    invoke-interface {v0}, Lmobi/oneway/export/AdListener/OWInteractiveAdListener;->onAdReady()V

    :cond_16
    return-void
.end method

.method public onAdShow(Ljava/lang/String;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmobi/oneway/export/c/d;->e:Lmobi/oneway/export/f/e;

    sget-object v1, Lmobi/oneway/export/enums/EventType;->show:Lmobi/oneway/export/enums/EventType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/f/e;->a(Lmobi/oneway/export/enums/EventType;Ljava/lang/String;)V

    iget-object v0, p0, Lmobi/oneway/export/c/d;->g:Lmobi/oneway/export/AdListener/OWInteractiveAdListener;

    invoke-interface {v0, p1}, Lmobi/oneway/export/AdListener/OWInteractiveAdListener;->onAdShow(Ljava/lang/String;)V

    return-void
.end method

.method public onReward(Ljava/lang/String;)V
    .registers 5
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmobi/oneway/export/c/d;->e:Lmobi/oneway/export/f/e;

    sget-object v1, Lmobi/oneway/export/enums/EventType;->reward:Lmobi/oneway/export/enums/EventType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/f/e;->a(Lmobi/oneway/export/enums/EventType;Ljava/lang/String;)V

    iget-object v0, p0, Lmobi/oneway/export/c/d;->g:Lmobi/oneway/export/AdListener/OWInteractiveAdListener;

    invoke-interface {v0, p1}, Lmobi/oneway/export/AdListener/OWInteractiveAdListener;->onReward(Ljava/lang/String;)V

    return-void
.end method

.method public onSdkError(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V
    .registers 7
    .param p1, "error"    # Lmobi/oneway/export/enums/OnewaySdkError;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    invoke-virtual {p0}, Lmobi/oneway/export/c/d;->b()V

    iget-object v0, p0, Lmobi/oneway/export/c/d;->e:Lmobi/oneway/export/f/e;

    sget-object v1, Lmobi/oneway/export/enums/EventType;->adFail:Lmobi/oneway/export/enums/EventType;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/f/e;->a(Lmobi/oneway/export/enums/EventType;Ljava/lang/String;)V

    invoke-virtual {p0}, Lmobi/oneway/export/c/d;->d()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lmobi/oneway/export/c/d;->g:Lmobi/oneway/export/AdListener/OWInteractiveAdListener;

    invoke-interface {v0, p1, p2}, Lmobi/oneway/export/AdListener/OWInteractiveAdListener;->onSdkError(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V

    :cond_2c
    return-void
.end method
