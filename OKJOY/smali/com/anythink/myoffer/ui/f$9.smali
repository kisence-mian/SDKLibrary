.class final Lcom/anythink/myoffer/ui/f$9;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/myoffer/ui/f;->s()V
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
    .line 573
    iput-object p1, p0, Lcom/anythink/myoffer/ui/f$9;->a:Lcom/anythink/myoffer/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 576
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$9;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->g(Lcom/anythink/myoffer/ui/f;)Lcom/anythink/myoffer/ui/f$a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 577
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$9;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->g(Lcom/anythink/myoffer/ui/f;)Lcom/anythink/myoffer/ui/f$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/myoffer/ui/f$a;->e()V

    .line 579
    :cond_11
    return-void
.end method
