.class Lcom/sigmob/windad/base/WindAdRequestController$23;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/base/WindAdRequestController;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/base/WindAdRequestController;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/base/WindAdRequestController;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$23;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$23;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {v0}, Lcom/sigmob/windad/base/WindAdRequestController;->e(Lcom/sigmob/windad/base/WindAdRequestController;)Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestShowLister;

    move-result-object v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$23;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {v0}, Lcom/sigmob/windad/base/WindAdRequestController;->e(Lcom/sigmob/windad/base/WindAdRequestController;)Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestShowLister;

    move-result-object v0

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController$23;->a:Lcom/sigmob/windad/base/WindAdRequestController;

    invoke-static {v1}, Lcom/sigmob/windad/base/WindAdRequestController;->c(Lcom/sigmob/windad/base/WindAdRequestController;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sigmob/windad/base/WindAdRequestController$WindAdRequestShowLister;->onVideoAdPlayEnd(Ljava/lang/String;)V

    :cond_17
    return-void
.end method