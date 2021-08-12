.class final Lcom/anythink/basead/ui/PlayerView$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    .line 541
    iput-object p1, p0, Lcom/anythink/basead/ui/PlayerView$7;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 3

    .line 544
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$7;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->B(Lcom/anythink/basead/ui/PlayerView;)V

    .line 545
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$7;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->C(Lcom/anythink/basead/ui/PlayerView;)Z

    .line 546
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$7;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->A(Lcom/anythink/basead/ui/PlayerView;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/anythink/basead/ui/PlayerView;->a(Lcom/anythink/basead/ui/PlayerView;I)I

    .line 548
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$7;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->g(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/PlayerView$a;

    move-result-object p1

    if-eqz p1, :cond_24

    .line 549
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$7;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->g(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/PlayerView$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/basead/ui/PlayerView$a;->c()V

    .line 551
    :cond_24
    return-void
.end method
