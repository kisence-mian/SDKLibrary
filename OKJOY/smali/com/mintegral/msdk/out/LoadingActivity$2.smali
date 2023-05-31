.class Lcom/mintegral/msdk/out/LoadingActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "LoadingActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/out/LoadingActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/out/LoadingActivity;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/out/LoadingActivity;)V
    .registers 2

    .prologue
    .line 50
    iput-object p1, p0, Lcom/mintegral/msdk/out/LoadingActivity$2;->a:Lcom/mintegral/msdk/out/LoadingActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .prologue
    .line 55
    iget-object v0, p0, Lcom/mintegral/msdk/out/LoadingActivity$2;->a:Lcom/mintegral/msdk/out/LoadingActivity;

    invoke-virtual {v0}, Lcom/mintegral/msdk/out/LoadingActivity;->finish()V

    .line 56
    return-void
.end method
