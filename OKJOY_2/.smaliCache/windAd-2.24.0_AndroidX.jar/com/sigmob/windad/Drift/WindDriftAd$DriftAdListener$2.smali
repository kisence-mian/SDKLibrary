.class Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;->onDriftAdError(ILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    iput-object p1, p0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$2;->d:Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;

    iput p2, p0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$2;->a:I

    iput-object p3, p0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$2;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$2;->d:Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;

    iget-object v0, v0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAd;

    invoke-static {v0}, Lcom/sigmob/windad/Drift/WindDriftAd;->a(Lcom/sigmob/windad/Drift/WindDriftAd;)Lcom/sigmob/windad/Drift/WindDriftAdListener;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$2;->d:Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;

    iget-object v0, v0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAd;

    invoke-static {v0}, Lcom/sigmob/windad/Drift/WindDriftAd;->a(Lcom/sigmob/windad/Drift/WindDriftAd;)Lcom/sigmob/windad/Drift/WindDriftAdListener;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$2;->d:Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;

    iget-object v1, v1, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener;->a:Lcom/sigmob/windad/Drift/WindDriftAd;

    iget v2, p0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$2;->a:I

    iget-object v3, p0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$2;->b:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/sigmob/windad/Drift/WindDriftAd;->a(Lcom/sigmob/windad/Drift/WindDriftAd;ILjava/lang/String;)Lcom/sigmob/windad/WindAdAdapterError;

    move-result-object v1

    iget-object v2, p0, Lcom/sigmob/windad/Drift/WindDriftAd$DriftAdListener$2;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/sigmob/windad/Drift/WindDriftAdListener;->onDriftAdError(Lcom/sigmob/windad/WindAdAdapterError;Ljava/lang/String;)V

    :cond_23
    return-void
.end method
