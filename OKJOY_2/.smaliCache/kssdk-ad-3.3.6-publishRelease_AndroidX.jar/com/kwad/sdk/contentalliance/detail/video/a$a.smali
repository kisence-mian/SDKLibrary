.class Lcom/kwad/sdk/contentalliance/detail/video/a$a;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/contentalliance/detail/video/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/kwad/sdk/contentalliance/detail/video/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/kwad/sdk/contentalliance/detail/video/a;)V
    .registers 3

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/kwad/sdk/contentalliance/detail/video/a$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/contentalliance/detail/video/a;

    if-eqz v0, :cond_d

    invoke-static {v0}, Lcom/kwad/sdk/contentalliance/detail/video/a;->g(Lcom/kwad/sdk/contentalliance/detail/video/a;)V

    :cond_d
    return-void
.end method
