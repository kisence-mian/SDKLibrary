.class public final Lcom/mintegral/msdk/interstitial/c/a$c;
.super Ljava/lang/Object;
.source "InterstitialController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/interstitial/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/interstitial/c/a;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/interstitial/c/a;)V
    .registers 2

    .prologue
    .line 586
    iput-object p1, p0, Lcom/mintegral/msdk/interstitial/c/a$c;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    .prologue
    .line 601
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$c;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->f(Lcom/mintegral/msdk/interstitial/c/a;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 606
    :goto_5
    return-void

    .line 603
    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 591
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$c;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0, p1}, Lcom/mintegral/msdk/interstitial/c/a;->a(Lcom/mintegral/msdk/interstitial/c/a;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_6

    .line 595
    :goto_5
    return-void

    .line 593
    :catch_6
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 612
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$c;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->c(Lcom/mintegral/msdk/interstitial/c/a;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 613
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$c;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->c(Lcom/mintegral/msdk/interstitial/c/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 618
    :cond_12
    :goto_12
    return-void

    .line 616
    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 623
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$c;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->c(Lcom/mintegral/msdk/interstitial/c/a;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 624
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$c;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->c(Lcom/mintegral/msdk/interstitial/c/a;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 629
    :cond_12
    :goto_12
    return-void

    .line 627
    :catch_13
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method
