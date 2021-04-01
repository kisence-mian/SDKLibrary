.class final Lcom/anythink/myoffer/ui/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/myoffer/ui/d;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/myoffer/ui/d;


# direct methods
.method constructor <init>(Lcom/anythink/myoffer/ui/d;)V
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lcom/anythink/myoffer/ui/d$2;->a:Lcom/anythink/myoffer/ui/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 59
    iget-object v0, p0, Lcom/anythink/myoffer/ui/d$2;->a:Lcom/anythink/myoffer/ui/d;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/d;->a(Lcom/anythink/myoffer/ui/d;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 60
    iget-object v0, p0, Lcom/anythink/myoffer/ui/d$2;->a:Lcom/anythink/myoffer/ui/d;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/d;->a(Lcom/anythink/myoffer/ui/d;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 61
    iget-object v0, p0, Lcom/anythink/myoffer/ui/d$2;->a:Lcom/anythink/myoffer/ui/d;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/d;->b(Lcom/anythink/myoffer/ui/d;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/myoffer/ui/d$2;->a:Lcom/anythink/myoffer/ui/d;

    invoke-static {v1}, Lcom/anythink/myoffer/ui/d;->a(Lcom/anythink/myoffer/ui/d;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 62
    return-void
.end method
