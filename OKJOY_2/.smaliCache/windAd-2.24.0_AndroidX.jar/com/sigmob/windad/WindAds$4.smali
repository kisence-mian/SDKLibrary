.class Lcom/sigmob/windad/WindAds$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/windad/WindAds;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/sigmob/windad/WindAds;


# direct methods
.method constructor <init>(Lcom/sigmob/windad/WindAds;)V
    .registers 2

    iput-object p1, p0, Lcom/sigmob/windad/WindAds$4;->a:Lcom/sigmob/windad/WindAds;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    invoke-static {}, Lcom/sigmob/sdk/common/mta/BuriedPointManager;->getInstance()Lcom/sigmob/sdk/common/mta/BuriedPointManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sigmob/sdk/common/mta/BuriedPointManager;->sendPoint()Ljava/lang/String;

    return-void
.end method
