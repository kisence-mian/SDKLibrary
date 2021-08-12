.class Lcom/sigmob/sdk/videoAd/h$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sigmob/sdk/base/common/s$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sigmob/sdk/videoAd/h$6;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/sigmob/sdk/videoAd/h$6;


# direct methods
.method constructor <init>(Lcom/sigmob/sdk/videoAd/h$6;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/sigmob/sdk/videoAd/h$6$1;->b:Lcom/sigmob/sdk/videoAd/h$6;

    iput-object p2, p0, Lcom/sigmob/sdk/videoAd/h$6$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 3

    instance-of v0, p1, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;

    iget-object v0, p0, Lcom/sigmob/sdk/videoAd/h$6$1;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sigmob/sdk/common/mta/PointEntitySigmob;->setUrl(Ljava/lang/String;)V

    :cond_b
    return-void
.end method
