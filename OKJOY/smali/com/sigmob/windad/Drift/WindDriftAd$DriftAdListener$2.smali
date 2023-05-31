.class Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;->onDriftAdError(Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/base/models/SigmobError;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;Lcom/sigmob/sdk/base/models/SigmobError;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$2;->c:Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;

    iput-object p2, p0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$2;->a:Lcom/sigmob/sdk/base/models/SigmobError;

    iput-object p3, p0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$2;->c:Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;

    iget-object v0, v0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAd;

    invoke-static {v0}, Lcom/sigmob/windad/Drift/WindDriftAd;->a(Lcom/sigmob/windad/Drift/WindDriftAd;)Lcom/sigmob/windad/Drift/WindDriftAdListener;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$2;->c:Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;

    iget-object v0, v0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAd;

    invoke-static {v0}, Lcom/sigmob/windad/Drift/WindDriftAd;->a(Lcom/sigmob/windad/Drift/WindDriftAd;)Lcom/sigmob/windad/Drift/WindDriftAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$2;->c:Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;

    iget-object v1, v1, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAd;

    iget-object v2, p0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$2;->a:Lcom/sigmob/sdk/base/models/SigmobError;

    invoke-static {v1, v2}, Lcom/sigmob/windad/Drift/WindDriftAd;->a(Lcom/sigmob/windad/Drift/WindDriftAd;Lcom/sigmob/sdk/base/models/SigmobError;)Lcom/sigmob/windad/WindAdError;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/sigmob/windad/Drift/WindDriftAdListener;->onDriftAdError(Lcom/sigmob/windad/WindAdError;Ljava/lang/String;)V

    :cond_21
    return-void
.end method
