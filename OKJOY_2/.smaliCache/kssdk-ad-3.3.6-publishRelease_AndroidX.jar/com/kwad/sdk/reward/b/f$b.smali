.class Lcom/kwad/sdk/reward/b/f$b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/core/webview/jshandler/k$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/reward/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/kwad/sdk/reward/b/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/kwad/sdk/reward/b/f;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/kwad/sdk/reward/b/f$b;->a:I

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kwad/sdk/reward/b/f$b;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(I)V
    .registers 4

    iput p1, p0, Lcom/kwad/sdk/reward/b/f$b;->a:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePageStatus mPageState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RewardPlayablePresenter"

    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/kwad/sdk/reward/b/f$b;->b:Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_32

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/kwad/sdk/reward/b/f;

    invoke-static {p1}, Lcom/kwad/sdk/reward/b/f;->e(Lcom/kwad/sdk/reward/b/f;)Lcom/kwad/sdk/core/response/model/AdTemplate;

    move-result-object p1

    iget v0, p0, Lcom/kwad/sdk/reward/b/f$b;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    if-eqz p1, :cond_32

    invoke-static {p1}, Lcom/kwad/sdk/core/report/b;->n(Lcom/kwad/sdk/core/response/model/AdTemplate;)V

    :cond_32
    return-void
.end method

.method public a()Z
    .registers 3

    iget v0, p0, Lcom/kwad/sdk/reward/b/f$b;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    goto :goto_7

    :cond_6
    const/4 v1, 0x0

    :goto_7
    return v1
.end method
