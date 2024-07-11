.class final Lcom/anythink/basead/ui/PlayerView$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/PlayerView;-><init>(Landroid/view/ViewGroup;Lcom/anythink/basead/ui/PlayerView$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/PlayerView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/PlayerView;Landroid/os/Looper;)V
    .registers 3

    .line 107
    iput-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 111
    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p1}, Lcom/anythink/basead/ui/PlayerView;->a(Lcom/anythink/basead/ui/PlayerView;I)I

    .line 113
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->a(Lcom/anythink/basead/ui/PlayerView;)I

    move-result p1

    if-gtz p1, :cond_10

    .line 114
    return-void

    .line 118
    :cond_10
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->b(Lcom/anythink/basead/ui/PlayerView;)Landroid/widget/ImageView;

    move-result-object p1

    if-nez p1, :cond_3a

    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->c(Lcom/anythink/basead/ui/PlayerView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-ltz p1, :cond_3a

    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->a(Lcom/anythink/basead/ui/PlayerView;)I

    move-result p1

    int-to-long v0, p1

    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->c(Lcom/anythink/basead/ui/PlayerView;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_3a

    .line 119
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-virtual {p1}, Lcom/anythink/basead/ui/PlayerView;->showCloseButton()V

    .line 122
    :cond_3a
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->d(Lcom/anythink/basead/ui/PlayerView;)Z

    move-result p1

    if-nez p1, :cond_60

    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->e(Lcom/anythink/basead/ui/PlayerView;)Z

    move-result p1

    if-nez p1, :cond_60

    .line 123
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->f(Lcom/anythink/basead/ui/PlayerView;)Z

    .line 124
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->g(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/PlayerView$a;

    move-result-object p1

    if-eqz p1, :cond_60

    .line 125
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->g(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/PlayerView$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/anythink/basead/ui/PlayerView$a;->a()V

    .line 129
    :cond_60
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->g(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/PlayerView$a;

    move-result-object p1

    if-eqz p1, :cond_77

    .line 130
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->g(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/PlayerView$a;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {v0}, Lcom/anythink/basead/ui/PlayerView;->a(Lcom/anythink/basead/ui/PlayerView;)I

    move-result v0

    invoke-interface {p1, v0}, Lcom/anythink/basead/ui/PlayerView$a;->a(I)V

    .line 133
    :cond_77
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->h(Lcom/anythink/basead/ui/PlayerView;)Z

    move-result p1

    if-nez p1, :cond_a6

    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->a(Lcom/anythink/basead/ui/PlayerView;)I

    move-result p1

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {v0}, Lcom/anythink/basead/ui/PlayerView;->i(Lcom/anythink/basead/ui/PlayerView;)I

    move-result v0

    if-lt p1, v0, :cond_a6

    .line 134
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->j(Lcom/anythink/basead/ui/PlayerView;)Z

    .line 135
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->g(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/PlayerView$a;

    move-result-object p1

    if-eqz p1, :cond_103

    .line 136
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->g(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/PlayerView$a;

    move-result-object p1

    const/16 v0, 0x19

    invoke-interface {p1, v0}, Lcom/anythink/basead/ui/PlayerView$a;->b(I)V

    goto :goto_103

    .line 138
    :cond_a6
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->k(Lcom/anythink/basead/ui/PlayerView;)Z

    move-result p1

    if-nez p1, :cond_d5

    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->a(Lcom/anythink/basead/ui/PlayerView;)I

    move-result p1

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {v0}, Lcom/anythink/basead/ui/PlayerView;->l(Lcom/anythink/basead/ui/PlayerView;)I

    move-result v0

    if-lt p1, v0, :cond_d5

    .line 139
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->m(Lcom/anythink/basead/ui/PlayerView;)Z

    .line 140
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->g(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/PlayerView$a;

    move-result-object p1

    if-eqz p1, :cond_103

    .line 141
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->g(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/PlayerView$a;

    move-result-object p1

    const/16 v0, 0x32

    invoke-interface {p1, v0}, Lcom/anythink/basead/ui/PlayerView$a;->b(I)V

    goto :goto_103

    .line 143
    :cond_d5
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->n(Lcom/anythink/basead/ui/PlayerView;)Z

    move-result p1

    if-nez p1, :cond_103

    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->a(Lcom/anythink/basead/ui/PlayerView;)I

    move-result p1

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {v0}, Lcom/anythink/basead/ui/PlayerView;->o(Lcom/anythink/basead/ui/PlayerView;)I

    move-result v0

    if-lt p1, v0, :cond_103

    .line 144
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->p(Lcom/anythink/basead/ui/PlayerView;)Z

    .line 145
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->g(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/PlayerView$a;

    move-result-object p1

    if-eqz p1, :cond_103

    .line 146
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->g(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/PlayerView$a;

    move-result-object p1

    const/16 v0, 0x4b

    invoke-interface {p1, v0}, Lcom/anythink/basead/ui/PlayerView$a;->b(I)V

    .line 150
    :cond_103
    :goto_103
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->q(Lcom/anythink/basead/ui/PlayerView;)V

    .line 151
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->r(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/CountDownView;

    move-result-object p1

    if-eqz p1, :cond_12b

    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->r(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/CountDownView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/basead/ui/CountDownView;->isShown()Z

    move-result p1

    if-eqz p1, :cond_12b

    .line 152
    iget-object p1, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {p1}, Lcom/anythink/basead/ui/PlayerView;->r(Lcom/anythink/basead/ui/PlayerView;)Lcom/anythink/basead/ui/CountDownView;

    move-result-object p1

    iget-object v0, p0, Lcom/anythink/basead/ui/PlayerView$1;->a:Lcom/anythink/basead/ui/PlayerView;

    invoke-static {v0}, Lcom/anythink/basead/ui/PlayerView;->a(Lcom/anythink/basead/ui/PlayerView;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/anythink/basead/ui/CountDownView;->refresh(I)V

    .line 154
    :cond_12b
    return-void
.end method
