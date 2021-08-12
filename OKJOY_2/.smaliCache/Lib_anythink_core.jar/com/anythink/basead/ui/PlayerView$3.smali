.class final Lcom/anythink/basead/ui/PlayerView$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/PlayerView;->f()V
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

    .line 413
    iput-object p1, p0, Lcom/anythink/basead/ui/PlayerView$3;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 416
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$3;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->g(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/PlayerView$a;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 417
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$3;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->g(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/PlayerView$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/basead/ui/PlayerView$a;->d()V

    .line 419
    :cond_11
    return-void
.end method
