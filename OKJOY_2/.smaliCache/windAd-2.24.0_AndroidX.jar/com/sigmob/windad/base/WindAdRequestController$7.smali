.class Lcom/sigmob/windad/base/WindAdRequestController$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/base/WindAdRequestController;->adapterLoad(Lcom/sigmob/sdk/common/models/ADStrategy;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/base/WindVideoAdAdapter;

.field final synthetic b:Lcom/sigmob/sdk/common/models/ADStrategy;

.field final synthetic c:Lcom/sigmob/windad/base/WindAdRequestController;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/base/WindAdRequestController;Lcom/sigmob/windad/base/WindVideoAdAdapter;Lcom/sigmob/sdk/common/models/ADStrategy;)V
    .registers 4

    iput-object p1, p0, Lcom/sigmob/windad/base/WindAdRequestController$7;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    iput-object p2, p0, Lcom/sigmob/windad/base/WindAdRequestController$7;->a:Lcom/sigmob/windad/base/WindVideoAdAdapter;

    iput-object p3, p0, Lcom/sigmob/windad/base/WindAdRequestController$7;->b:Lcom/sigmob/sdk/common/models/ADStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    iget-object v0, p0, Lcom/sigmob/windad/base/WindAdRequestController$7;->a:Lcom/sigmob/windad/base/WindVideoAdAdapter;

    iget-object v1, p0, Lcom/sigmob/windad/base/WindAdRequestController$7;->c:Lcom/sigmob/windad/base/WindAdRequestController;

    iget-object v1, v1, Lcom/sigmob/windad/base/WindAdRequestController;->g:Lcom/sigmob/windad/WindAdRequest;

    iget-object v2, p0, Lcom/sigmob/windad/base/WindAdRequestController$7;->b:Lcom/sigmob/sdk/common/models/ADStrategy;

    invoke-virtual {v0, v1, v2}, Lcom/sigmob/windad/base/WindVideoAdAdapter;->loadAd(Lcom/sigmob/windad/WindAdRequest;Lcom/sigmob/sdk/common/models/ADStrategy;)V

    return-void
.end method
