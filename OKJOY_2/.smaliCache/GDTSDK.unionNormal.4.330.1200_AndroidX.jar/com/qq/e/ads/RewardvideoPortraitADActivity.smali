.class public Lcom/qq/e/ads/RewardvideoPortraitADActivity;
.super Lcom/qq/e/ads/ADActivity;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/qq/e/ads/ADActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/qq/e/ads/ADActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/qq/e/ads/RewardvideoPortraitADActivity;->setRequestedOrientation(I)V

    return-void
.end method
