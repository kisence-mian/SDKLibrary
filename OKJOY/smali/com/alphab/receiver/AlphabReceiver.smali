.class public Lcom/alphab/receiver/AlphabReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AlphabReceiver.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5

    .prologue
    .line 14
    :try_start_0
    new-instance v0, Lcom/alphab/receiver/a;

    invoke-direct {v0, p2}, Lcom/alphab/receiver/a;-><init>(Landroid/content/Intent;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    .line 20
    :cond_5
    :goto_5
    return-void

    .line 15
    :catch_6
    move-exception v0

    .line 16
    sget-boolean v1, Lcom/mintegral/msdk/MIntegralConstans;->DEBUG:Z

    if-eqz v1, :cond_5

    .line 17
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_5
.end method
