.class Lcom/sigmob/sdk/videoAd/h$11;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/h;->e(Lcom/sigmob/sdk/base/models/BaseAdUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/sdk/videoAd/h;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/h;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/h$11;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$11;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v0}, Lcom/sigmob/sdk/videoAd/h;->s()V

    return-void
.end method
