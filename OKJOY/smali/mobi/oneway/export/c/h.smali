.class public Lmobi/oneway/export/c/h;
.super Lmobi/oneway/export/c/b;

# interfaces
.implements Lmobi/oneway/export/AdListener/OWSplashAdListener;


# instance fields
.field private g:Lmobi/oneway/export/AdListener/OWSplashAdListener;


# direct methods
.method public constructor <init>(Lmobi/oneway/export/AdListener/OWSplashAdListener;Lmobi/oneway/export/enums/AdType;Ljava/lang/String;I)V
    .registers 5

    invoke-direct {p0, p2, p3, p4}, Lmobi/oneway/export/c/b;-><init>(Lmobi/oneway/export/enums/AdType;Ljava/lang/String;I)V

    iput-object p1, p0, Lmobi/oneway/export/c/h;->g:Lmobi/oneway/export/AdListener/OWSplashAdListener;

    return-void
.end method


# virtual methods
.method public onAdClick()V
    .registers 4

    iget-object v0, p0, Lmobi/oneway/export/c/h;->e:Lmobi/oneway/export/f/e;

    sget-object v1, Lmobi/oneway/export/enums/EventType;->click:Lmobi/oneway/export/enums/EventType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/f/e;->a(Lmobi/oneway/export/enums/EventType;Ljava/lang/String;)V

    iget-object v0, p0, Lmobi/oneway/export/c/h;->g:Lmobi/oneway/export/AdListener/OWSplashAdListener;

    invoke-interface {v0}, Lmobi/oneway/export/AdListener/OWSplashAdListener;->onAdClick()V

    return-void
.end method

.method public onAdError(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Lmobi/oneway/export/enums/OnewaySdkError;
    .param p2, "err"    # Ljava/lang/String;

    .prologue
    iget-object v0, p0, Lmobi/oneway/export/c/h;->e:Lmobi/oneway/export/f/e;

    sget-object v1, Lmobi/oneway/export/enums/EventType;->adFail:Lmobi/oneway/export/enums/EventType;

    invoke-virtual {v0, v1, p1, p2}, Lmobi/oneway/export/f/e;->a(Lmobi/oneway/export/enums/EventType;Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V

    iget-object v0, p0, Lmobi/oneway/export/c/h;->g:Lmobi/oneway/export/AdListener/OWSplashAdListener;

    invoke-interface {v0, p1, p2}, Lmobi/oneway/export/AdListener/OWSplashAdListener;->onAdError(Lmobi/oneway/export/enums/OnewaySdkError;Ljava/lang/String;)V

    return-void
.end method

.method public onAdFinish()V
    .registers 4

    iget-object v0, p0, Lmobi/oneway/export/c/h;->e:Lmobi/oneway/export/f/e;

    sget-object v1, Lmobi/oneway/export/enums/EventType;->end:Lmobi/oneway/export/enums/EventType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/f/e;->a(Lmobi/oneway/export/enums/EventType;Ljava/lang/String;)V

    iget-object v0, p0, Lmobi/oneway/export/c/h;->g:Lmobi/oneway/export/AdListener/OWSplashAdListener;

    invoke-interface {v0}, Lmobi/oneway/export/AdListener/OWSplashAdListener;->onAdFinish()V

    return-void
.end method

.method public onAdShow()V
    .registers 4

    iget-object v0, p0, Lmobi/oneway/export/c/h;->e:Lmobi/oneway/export/f/e;

    sget-object v1, Lmobi/oneway/export/enums/EventType;->show:Lmobi/oneway/export/enums/EventType;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lmobi/oneway/export/f/e;->a(Lmobi/oneway/export/enums/EventType;Ljava/lang/String;)V

    iget-object v0, p0, Lmobi/oneway/export/c/h;->g:Lmobi/oneway/export/AdListener/OWSplashAdListener;

    invoke-interface {v0}, Lmobi/oneway/export/AdListener/OWSplashAdListener;->onAdShow()V

    return-void
.end method
