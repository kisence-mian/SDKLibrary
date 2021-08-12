.class Lcom/sigmob/sdk/videoAd/h$16;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/h;->C()V
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

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/h$16;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 7

    instance-of v0, p1, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;

    if-eqz v0, :cond_61

    check-cast p1, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h$16;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/h;->z(Lcom/sigmob/sdk/videoAd/h;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "duration_seq"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h$16;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/h;->A(Lcom/sigmob/sdk/videoAd/h;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sigmob/sdk/videoAd/h;->a(Lcom/sigmob/sdk/videoAd/h;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_time_seq"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h$16;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/h;->B(Lcom/sigmob/sdk/videoAd/h;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "skip_state"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sigmob/sdk/videoAd/h$16;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-virtual {v3}, Lcom/sigmob/sdk/videoAd/h;->q()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%.2f"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "video_duration"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/sigmob/sdk/videoAd/h$16;->a:Lcom/sigmob/sdk/videoAd/h;

    invoke-static {v1}, Lcom/sigmob/sdk/videoAd/h;->C(Lcom/sigmob/sdk/videoAd/h;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "endcard_loading_state"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setOptions(Ljava/util/Map;)V

    :cond_61
    return-void
.end method
