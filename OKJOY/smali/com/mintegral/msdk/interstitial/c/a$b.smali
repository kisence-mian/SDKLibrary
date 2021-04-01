.class public final Lcom/mintegral/msdk/interstitial/c/a$b;
.super Ljava/lang/Object;
.source "InterstitialController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/interstitial/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/interstitial/c/a;

.field private b:Lcom/mintegral/msdk/interstitial/a/a;


# direct methods
.method public constructor <init>(Lcom/mintegral/msdk/interstitial/c/a;Lcom/mintegral/msdk/interstitial/a/a;)V
    .registers 3

    .prologue
    .line 484
    iput-object p1, p0, Lcom/mintegral/msdk/interstitial/c/a$b;->a:Lcom/mintegral/msdk/interstitial/c/a;

    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    iput-object p2, p0, Lcom/mintegral/msdk/interstitial/c/a$b;->b:Lcom/mintegral/msdk/interstitial/a/a;

    .line 487
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 492
    :try_start_0
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$b;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->b(Lcom/mintegral/msdk/interstitial/c/a;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CommonCancelTimeTask"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 493
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$b;->b:Lcom/mintegral/msdk/interstitial/a/a;

    if-eqz v0, :cond_27

    .line 494
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$b;->b:Lcom/mintegral/msdk/interstitial/a/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/interstitial/a/a;->d()Z

    move-result v0

    .line 495
    if-eqz v0, :cond_28

    .line 498
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$b;->a:Lcom/mintegral/msdk/interstitial/c/a;

    const-string v1, "load timeout"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/interstitial/c/a;->a(Lcom/mintegral/msdk/interstitial/c/a;Ljava/lang/String;)V

    .line 504
    :cond_1e
    :goto_1e
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$b;->b:Lcom/mintegral/msdk/interstitial/a/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/interstitial/a/a;->a(Lcom/mintegral/msdk/interstitial/c/a$a;)V

    .line 505
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$b;->b:Lcom/mintegral/msdk/interstitial/a/a;

    .line 510
    :cond_27
    :goto_27
    return-void

    .line 500
    :cond_28
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$b;->a:Lcom/mintegral/msdk/interstitial/c/a;

    invoke-static {v0}, Lcom/mintegral/msdk/interstitial/c/a;->a(Lcom/mintegral/msdk/interstitial/c/a;)Lcom/mintegral/msdk/out/InterstitialListener;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 501
    iget-object v0, p0, Lcom/mintegral/msdk/interstitial/c/a$b;->a:Lcom/mintegral/msdk/interstitial/c/a;

    const-string v1, "load timeout"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/interstitial/c/a;->b(Lcom/mintegral/msdk/interstitial/c/a;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_38

    goto :goto_1e

    .line 508
    :catch_38
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27
.end method
