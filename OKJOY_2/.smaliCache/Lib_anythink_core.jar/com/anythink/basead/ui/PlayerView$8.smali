.class final Lcom/anythink/basead/ui/PlayerView$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/PlayerView;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/PlayerView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/PlayerView;)V
    .registers 2

    .line 555
    iput-object p1, p0, Lcom/anythink/basead/ui/PlayerView$8;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onError(Landroid/media/MediaPlayer;II)Z
    .registers 4

    .line 558
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$8;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->g(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/PlayerView$a;

    move-result-object p1

    if-eqz p1, :cond_19

    .line 559
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$8;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->g(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/PlayerView$a;

    move-result-object p1

    const-string p2, "40002"

    const-string p3, "Video player error!"

    invoke-static {p2, p3}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/anythink/basead/ui/PlayerView$a;->a(Lcom/anythink/basead/c/f;)V

    .line 561
    :cond_19
    const/4 p1, 0x1

    return p1
.end method
