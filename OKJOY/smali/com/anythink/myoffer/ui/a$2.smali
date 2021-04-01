.class final Lcom/anythink/myoffer/ui/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/myoffer/ui/a;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/myoffer/ui/a;


# direct methods
.method constructor <init>(Lcom/anythink/myoffer/ui/a;)V
    .registers 2

    .prologue
    .line 103
    iput-object p1, p0, Lcom/anythink/myoffer/ui/a$2;->a:Lcom/anythink/myoffer/ui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a$2;->a:Lcom/anythink/myoffer/ui/a;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/a;->a(Lcom/anythink/myoffer/ui/a;)Lcom/anythink/myoffer/ui/a$a;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 107
    iget-object v0, p0, Lcom/anythink/myoffer/ui/a$2;->a:Lcom/anythink/myoffer/ui/a;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/a;->a(Lcom/anythink/myoffer/ui/a;)Lcom/anythink/myoffer/ui/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/myoffer/ui/a$a;->b()V

    .line 109
    :cond_11
    return-void
.end method
