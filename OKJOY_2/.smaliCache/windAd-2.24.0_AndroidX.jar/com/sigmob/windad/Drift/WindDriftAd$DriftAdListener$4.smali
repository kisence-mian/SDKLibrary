.class Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;->onDriftAdClose(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$4;->b:Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;

    iput-object p2, p0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$4;->b:Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;

    iget-object v0, v0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAd;

    invoke-static {v0}, Lcom/sigmob/windad/Drift/WindDriftAd;->a(Lcom/sigmob/windad/Drift/WindDriftAd;)Lcom/sigmob/windad/Drift/WindDriftAdListener;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$4;->b:Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;

    iget-object v0, v0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAd;

    invoke-static {v0}, Lcom/sigmob/windad/Drift/WindDriftAd;->a(Lcom/sigmob/windad/Drift/WindDriftAd;)Lcom/sigmob/windad/Drift/WindDriftAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$4;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sigmob/windad/Drift/WindDriftAdListener;->onDriftAdClosed(Ljava/lang/String;)V

    :cond_17
    return-void
.end method
