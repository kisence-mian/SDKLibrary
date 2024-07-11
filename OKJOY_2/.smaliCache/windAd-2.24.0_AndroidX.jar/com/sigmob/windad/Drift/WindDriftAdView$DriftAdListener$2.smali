.class Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;->onDriftAdReceive(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener$2;->b:Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;

    iput-object p2, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener$2;->b:Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;

    iget-object v0, v0, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAdView;

    iget-object v0, v0, Lcom/sigmob/windad/Drift/WindDriftAdView;->a:Lcom/sigmob/windad/Drift/WindDriftAdListener;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener$2;->b:Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;

    iget-object v0, v0, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAdView;

    iget-object v0, v0, Lcom/sigmob/windad/Drift/WindDriftAdView;->a:Lcom/sigmob/windad/Drift/WindDriftAdListener;

    new-instance v1, Lcom/sigmob/windad/WindAdAdapterError;

    sget-object v2, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v2}, Lcom/sigmob/windad/WindAdError;->getErrorCode()I

    move-result v2

    sget-object v3, Lcom/sigmob/windad/WindAdError;->ERROR_SIGMOB_FILE_DOWNLOAD:Lcom/sigmob/windad/WindAdError;

    invoke-virtual {v3}, Lcom/sigmob/windad/WindAdError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/sigmob/windad/WindAdAdapterError;-><init>(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/sigmob/windad/Drift/WindDriftAdView$DriftAdListener$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/sigmob/windad/Drift/WindDriftAdListener;->onDriftAdError(Lcom/sigmob/windad/WindAdAdapterError;Ljava/lang/String;)V

    :cond_24
    return-void
.end method
