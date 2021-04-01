.class public Lcom/qq/e/ads/RewardvideoLandscapeADActivity;
.super Lcom/qq/e/ads/ADActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/qq/e/ads/ADActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    invoke-super {p0, p1}, Lcom/qq/e/ads/ADActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qq/e/ads/RewardvideoLandscapeADActivity;->setRequestedOrientation(I)V

    return-void
.end method
