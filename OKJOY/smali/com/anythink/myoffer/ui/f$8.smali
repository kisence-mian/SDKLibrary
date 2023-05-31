.class final Lcom/anythink/myoffer/ui/f$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/myoffer/ui/f;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/myoffer/ui/f;


# direct methods
.method constructor <init>(Lcom/anythink/myoffer/ui/f;)V
    .registers 2

    .prologue
    .line 545
    iput-object p1, p0, Lcom/anythink/myoffer/ui/f$8;->a:Lcom/anythink/myoffer/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .registers 7

    .prologue
    .line 548
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$8;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->g(Lcom/anythink/myoffer/ui/f;)Lcom/anythink/myoffer/ui/f$a;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 549
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$8;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->g(Lcom/anythink/myoffer/ui/f;)Lcom/anythink/myoffer/ui/f$a;

    move-result-object v0

    const-string v1, "40002"

    const-string v2, "Video player error!"

    invoke-static {v1, v2}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/myoffer/ui/f$a;->a(Lcom/anythink/network/myoffer/MyOfferError;)V

    .line 551
    :cond_19
    const/4 v0, 0x1

    return v0
.end method
