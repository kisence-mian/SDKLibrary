.class final Lcom/anythink/basead/ui/EndCardView$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/EndCardView;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/EndCardView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/EndCardView;)V
    .registers 2

    .line 159
    iput-object p1, p0, Lcom/anythink/basead/ui/EndCardView$4;->a:Lcom/anythink/basead/ui/EndCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 162
    iget-object p1, p0, Lcom/anythink/basead/ui/EndCardView$4;->a:Lcom/anythink/basead/ui/EndCardView;

    invoke-static {p1}, Lcom/anythink/basead/ui/EndCardView;->c(Lcom/anythink/basead/ui/EndCardView;)Lcom/anythink/basead/ui/EndCardView$a;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 163
    iget-object p1, p0, Lcom/anythink/basead/ui/EndCardView$4;->a:Lcom/anythink/basead/ui/EndCardView;

    invoke-static {p1}, Lcom/anythink/basead/ui/EndCardView;->c(Lcom/anythink/basead/ui/EndCardView;)Lcom/anythink/basead/ui/EndCardView$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/basead/ui/EndCardView$a;->b()V

    .line 165
    :cond_11
    return-void
.end method