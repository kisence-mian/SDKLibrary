.class Lcom/sigmob/windad/base/WindAdRequestController$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/base/WindAdRequestController;->h()V
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/base/WindAdRequestController;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/base/WindAdRequestController;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$8;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$8;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {v0}, Lcom/sigmob/windad/base/WindAdRequestController;->b(Lcom/sigmob/windad/base/WindAdRequestController;)Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$8;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {v0}, Lcom/sigmob/windad/base/WindAdRequestController;->b(Lcom/sigmob/windad/base/WindAdRequestController;)Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController$8;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {v1}, Lcom/sigmob/windad/base/WindAdRequestController;->a(Lcom/sigmob/windad/base/WindAdRequestController;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestLoadLister;->onVideoAdLoadSuccess(Ljava/lang/String;)V

    :cond_17
    return-void
.end method
