.class final Lcom/anythink/myoffer/ui/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/myoffer/ui/e;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/myoffer/ui/e;


# direct methods
.method constructor <init>(Lcom/anythink/myoffer/ui/e;)V
    .registers 2

    .prologue
    .line 69
    iput-object p1, p0, Lcom/anythink/myoffer/ui/e$1;->a:Lcom/anythink/myoffer/ui/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 72
    iget-object v0, p0, Lcom/anythink/myoffer/ui/e$1;->a:Lcom/anythink/myoffer/ui/e;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/e;->a(Lcom/anythink/myoffer/ui/e;)Lcom/anythink/myoffer/ui/e$a;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 73
    iget-object v0, p0, Lcom/anythink/myoffer/ui/e$1;->a:Lcom/anythink/myoffer/ui/e;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/e;->a(Lcom/anythink/myoffer/ui/e;)Lcom/anythink/myoffer/ui/e$a;

    .line 75
    :cond_d
    return-void
.end method
