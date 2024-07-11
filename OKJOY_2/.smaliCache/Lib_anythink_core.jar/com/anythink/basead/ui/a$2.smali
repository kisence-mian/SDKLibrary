.class final Lcom/anythink/basead/ui/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/a;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/a;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/anythink/basead/ui/a$2;->a:Lcom/anythink/basead/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/anythink/basead/ui/a$2;->a:Lcom/anythink/basead/ui/a;

    invoke-static {v0}, Lcom/anythink/basead/ui/a;->a(Lcom/anythink/basead/ui/a;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 67
    iget-object v0, p0, Lcom/anythink/basead/ui/a$2;->a:Lcom/anythink/basead/ui/a;

    invoke-static {v0}, Lcom/anythink/basead/ui/a;->a(Lcom/anythink/basead/ui/a;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 68
    iget-object v0, p0, Lcom/anythink/basead/ui/a$2;->a:Lcom/anythink/basead/ui/a;

    invoke-static {v0}, Lcom/anythink/basead/ui/a;->b(Lcom/anythink/basead/ui/a;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/basead/ui/a$2;->a:Lcom/anythink/basead/ui/a;

    invoke-static {v1}, Lcom/anythink/basead/ui/a;->a(Lcom/anythink/basead/ui/a;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 69
    return-void
.end method
