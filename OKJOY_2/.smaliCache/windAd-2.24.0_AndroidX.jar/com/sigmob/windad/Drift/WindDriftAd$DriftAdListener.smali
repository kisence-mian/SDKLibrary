.class final Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sigmob/windad/Drift/WindDriftAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DriftAdListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/Drift/WindDriftAd;


# direct methods
.method private constructor <init>(Lcom/sigmob/windad/Drift/WindDriftAd;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sigmob/windad/Drift/WindDriftAd;Lcom/sigmob/windad/Drift/WindDriftAd$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;-><init>(Lcom/sigmob/windad/Drift/WindDriftAd;)V

    return-void
.end method


# virtual methods
.method public onDriftAdClose(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAd;

    invoke-static {v0}, Lcom/sigmob/windad/Drift/WindDriftAd;->b(Lcom/sigmob/windad/Drift/WindDriftAd;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$4;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$4;-><init>(Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDriftAdError(ILjava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAd;

    invoke-static {v0}, Lcom/sigmob/windad/Drift/WindDriftAd;->c(Lcom/sigmob/windad/Drift/WindDriftAd;)Lcom/sigmob/sdk/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/a/b;->d()V

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAd;

    invoke-static {v0}, Lcom/sigmob/windad/Drift/WindDriftAd;->b(Lcom/sigmob/windad/Drift/WindDriftAd;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$2;-><init>(Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;ILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDriftAdPresent(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAd;

    invoke-static {v0}, Lcom/sigmob/windad/Drift/WindDriftAd;->b(Lcom/sigmob/windad/Drift/WindDriftAd;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$3;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$3;-><init>(Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDriftAdReceive(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAd;

    invoke-static {v0}, Lcom/sigmob/windad/Drift/WindDriftAd;->b(Lcom/sigmob/windad/Drift/WindDriftAd;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$1;

    invoke-direct {v1, p0, p1}, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$1;-><init>(Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
