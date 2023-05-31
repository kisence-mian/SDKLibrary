.class final Lcom/anythink/myoffer/ui/f$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 531
    iput-object p1, p0, Lcom/anythink/myoffer/ui/f$7;->a:Lcom/anythink/myoffer/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .registers 4

    .prologue
    .line 534
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$7;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->B(Lcom/anythink/myoffer/ui/f;)V

    .line 535
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$7;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->C(Lcom/anythink/myoffer/ui/f;)Z

    .line 536
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$7;->a:Lcom/anythink/myoffer/ui/f;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/f$7;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v1}, Lcom/anythink/myoffer/ui/f;->A(Lcom/anythink/myoffer/ui/f;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/anythink/myoffer/ui/f;->a(Lcom/anythink/myoffer/ui/f;I)I

    .line 538
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$7;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->g(Lcom/anythink/myoffer/ui/f;)Lcom/anythink/myoffer/ui/f$a;

    move-result-object v0

    if-eqz v0, :cond_26

    .line 539
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$7;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->g(Lcom/anythink/myoffer/ui/f;)Lcom/anythink/myoffer/ui/f$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/myoffer/ui/f$a;->c()V

    .line 541
    :cond_26
    return-void
.end method
