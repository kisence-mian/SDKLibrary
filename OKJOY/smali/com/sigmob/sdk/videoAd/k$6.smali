.class Lcom/sigmob/sdk/videoAd/k$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/k;->J()V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/k;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/k;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/k$6;->a:Lcom/sigmob/sdk/videoAd/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/k$6;->a:Lcom/sigmob/sdk/videoAd/k;

    const-string v1, "com.sigmob.action.interstitial.click"

    invoke-static {v0, v1}, Lcom/sigmob/sdk/videoAd/k;->c(Lcom/sigmob/sdk/videoAd/k;Ljava/lang/String;)V

    return-void
.end method
