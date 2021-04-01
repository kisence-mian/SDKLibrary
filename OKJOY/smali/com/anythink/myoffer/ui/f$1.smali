.class final Lcom/anythink/myoffer/ui/f$1;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/myoffer/ui/f;-><init>(Landroid/view/ViewGroup;Lcom/anythink/myoffer/ui/f$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/myoffer/ui/f;


# direct methods
.method constructor <init>(Lcom/anythink/myoffer/ui/f;Landroid/os/Looper;)V
    .registers 3

    .prologue
    .line 102
    iput-object p1, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .registers 6

    .prologue
    .line 106
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v0, v1}, Lcom/anythink/myoffer/ui/f;->a(Lcom/anythink/myoffer/ui/f;I)I

    .line 108
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->a(Lcom/anythink/myoffer/ui/f;)I

    move-result v0

    if-gtz v0, :cond_10

    .line 151
    :cond_f
    :goto_f
    return-void

    .line 113
    :cond_10
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->b(Lcom/anythink/myoffer/ui/f;)Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->c(Lcom/anythink/myoffer/ui/f;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3a

    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->a(Lcom/anythink/myoffer/ui/f;)I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v2}, Lcom/anythink/myoffer/ui/f;->c(Lcom/anythink/myoffer/ui/f;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3a

    .line 114
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-virtual {v0}, Lcom/anythink/myoffer/ui/f;->a()V

    .line 117
    :cond_3a
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->d(Lcom/anythink/myoffer/ui/f;)Z

    move-result v0

    if-nez v0, :cond_60

    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->e(Lcom/anythink/myoffer/ui/f;)Z

    move-result v0

    if-nez v0, :cond_60

    .line 118
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->f(Lcom/anythink/myoffer/ui/f;)Z

    .line 119
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->g(Lcom/anythink/myoffer/ui/f;)Lcom/anythink/myoffer/ui/f$a;

    move-result-object v0

    if-eqz v0, :cond_60

    .line 120
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->g(Lcom/anythink/myoffer/ui/f;)Lcom/anythink/myoffer/ui/f$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/myoffer/ui/f$a;->a()V

    .line 124
    :cond_60
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->g(Lcom/anythink/myoffer/ui/f;)Lcom/anythink/myoffer/ui/f$a;

    move-result-object v0

    if-eqz v0, :cond_77

    .line 125
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->g(Lcom/anythink/myoffer/ui/f;)Lcom/anythink/myoffer/ui/f$a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v1}, Lcom/anythink/myoffer/ui/f;->a(Lcom/anythink/myoffer/ui/f;)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/anythink/myoffer/ui/f$a;->a(I)V

    .line 128
    :cond_77
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->h(Lcom/anythink/myoffer/ui/f;)Z

    move-result v0

    if-nez v0, :cond_cf

    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->a(Lcom/anythink/myoffer/ui/f;)I

    move-result v0

    iget-object v1, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v1}, Lcom/anythink/myoffer/ui/f;->i(Lcom/anythink/myoffer/ui/f;)I

    move-result v1

    if-lt v0, v1, :cond_cf

    .line 129
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->j(Lcom/anythink/myoffer/ui/f;)Z

    .line 130
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->g(Lcom/anythink/myoffer/ui/f;)Lcom/anythink/myoffer/ui/f$a;

    move-result-object v0

    if-eqz v0, :cond_a5

    .line 131
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->g(Lcom/anythink/myoffer/ui/f;)Lcom/anythink/myoffer/ui/f$a;

    move-result-object v0

    const/16 v1, 0x19

    invoke-interface {v0, v1}, Lcom/anythink/myoffer/ui/f$a;->b(I)V

    .line 147
    :cond_a5
    :goto_a5
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->q(Lcom/anythink/myoffer/ui/f;)V

    .line 148
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->r(Lcom/anythink/myoffer/ui/f;)Lcom/anythink/myoffer/ui/b;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->r(Lcom/anythink/myoffer/ui/f;)Lcom/anythink/myoffer/ui/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/myoffer/ui/b;->isShown()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 149
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->r(Lcom/anythink/myoffer/ui/f;)Lcom/anythink/myoffer/ui/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v1}, Lcom/anythink/myoffer/ui/f;->a(Lcom/anythink/myoffer/ui/f;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/ui/b;->b(I)V

    goto/16 :goto_f

    .line 134
    :cond_cf
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->k(Lcom/anythink/myoffer/ui/f;)Z

    move-result v0

    if-nez v0, :cond_fe

    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->a(Lcom/anythink/myoffer/ui/f;)I

    move-result v0

    iget-object v1, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v1}, Lcom/anythink/myoffer/ui/f;->l(Lcom/anythink/myoffer/ui/f;)I

    move-result v1

    if-lt v0, v1, :cond_fe

    .line 135
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->m(Lcom/anythink/myoffer/ui/f;)Z

    .line 136
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->g(Lcom/anythink/myoffer/ui/f;)Lcom/anythink/myoffer/ui/f$a;

    move-result-object v0

    if-eqz v0, :cond_a5

    .line 137
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->g(Lcom/anythink/myoffer/ui/f;)Lcom/anythink/myoffer/ui/f$a;

    move-result-object v0

    const/16 v1, 0x32

    invoke-interface {v0, v1}, Lcom/anythink/myoffer/ui/f$a;->b(I)V

    goto :goto_a5

    .line 140
    :cond_fe
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->n(Lcom/anythink/myoffer/ui/f;)Z

    move-result v0

    if-nez v0, :cond_a5

    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->a(Lcom/anythink/myoffer/ui/f;)I

    move-result v0

    iget-object v1, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v1}, Lcom/anythink/myoffer/ui/f;->o(Lcom/anythink/myoffer/ui/f;)I

    move-result v1

    if-lt v0, v1, :cond_a5

    .line 141
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->p(Lcom/anythink/myoffer/ui/f;)Z

    .line 142
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->g(Lcom/anythink/myoffer/ui/f;)Lcom/anythink/myoffer/ui/f$a;

    move-result-object v0

    if-eqz v0, :cond_a5

    .line 143
    iget-object v0, p0, Lcom/anythink/myoffer/ui/f$1;->a:Lcom/anythink/myoffer/ui/f;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/f;->g(Lcom/anythink/myoffer/ui/f;)Lcom/anythink/myoffer/ui/f$a;

    move-result-object v0

    const/16 v1, 0x4b

    invoke-interface {v0, v1}, Lcom/anythink/myoffer/ui/f$a;->b(I)V

    goto/16 :goto_a5
.end method
