.class public Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache$Holder;
    }
.end annotation


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/kwad/sdk/core/video/videoview/b;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache;->a:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache;-><init>()V

    return-void
.end method

.method public static a()Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache;
    .registers 1

    sget-object v0, Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache$Holder;->INSTANCE:Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache$Holder;

    invoke-virtual {v0}, Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache$Holder;->getInstance()Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/kwad/sdk/core/video/videoview/b;)V
    .registers 4

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache;->a:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/kwad/sdk/core/video/videoview/b;
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/video/videoview/b;

    if-eqz v0, :cond_14

    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/kwad/sdk/core/video/videoview/AdVideoPlayerViewCache;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    return-object v1
.end method
