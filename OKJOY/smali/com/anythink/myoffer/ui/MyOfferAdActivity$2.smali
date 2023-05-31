.class final Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/myoffer/ui/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/myoffer/ui/MyOfferAdActivity;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;


# direct methods
.method constructor <init>(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)V
    .registers 2

    .prologue
    .line 219
    iput-object p1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 222
    sget-object v0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a:Ljava/lang/String;

    const-string v1, "onVideoPlayStart..."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->c(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)V

    .line 225
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->d(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)V

    .line 226
    return-void
.end method

.method public final a(I)V
    .registers 6

    .prologue
    .line 233
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->e(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/ui/a;

    move-result-object v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->f(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_24

    int-to-long v0, p1

    iget-object v2, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v2}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->f(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_24

    .line 234
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->g(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)V

    .line 236
    :cond_24
    return-void
.end method

.method public final a(Lcom/anythink/network/myoffer/MyOfferError;)V
    .registers 3

    .prologue
    .line 262
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v0, p1}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a(Lcom/anythink/myoffer/ui/MyOfferAdActivity;Lcom/anythink/network/myoffer/MyOfferError;)V

    .line 263
    return-void
.end method

.method public final b()V
    .registers 3

    .prologue
    .line 240
    sget-object v0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a:Ljava/lang/String;

    const-string v1, "onVideoPlayEnd..."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    return-void
.end method

.method public final b(I)V
    .registers 4

    .prologue
    .line 267
    sparse-switch p1, :sswitch_data_4a

    .line 281
    :goto_3
    return-void

    .line 269
    :sswitch_4
    sget-object v0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a:Ljava/lang/String;

    const-string v1, "onVideoProgress25......."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v1}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->h(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/myoffer/c/a;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 273
    :sswitch_1b
    sget-object v0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a:Ljava/lang/String;

    const-string v1, "onVideoProgress50......."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v1}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->h(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/myoffer/c/a;->s()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 277
    :sswitch_32
    sget-object v0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a:Ljava/lang/String;

    const-string v1, "onVideoProgress75......."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v1}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->h(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/myoffer/c/a;->t()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a(Ljava/lang/String;)V

    goto :goto_3

    .line 267
    nop

    :sswitch_data_4a
    .sparse-switch
        0x19 -> :sswitch_4
        0x32 -> :sswitch_1b
        0x4b -> :sswitch_32
    .end sparse-switch
.end method

.method public final c()V
    .registers 3

    .prologue
    .line 246
    sget-object v0, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a:Ljava/lang/String;

    const-string v1, "onVideoPlayCompletion..."

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    iget-object v1, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v1}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->h(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/myoffer/c/a;->u()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->i(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/e/a/c$b;

    move-result-object v0

    if-eqz v0, :cond_27

    .line 250
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->i(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/e/a/c$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/myoffer/e/a/c$b;->c()V

    .line 253
    :cond_27
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->i(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/e/a/c$b;

    move-result-object v0

    if-eqz v0, :cond_38

    .line 254
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->i(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/e/a/c$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/myoffer/e/a/c$b;->d()V

    .line 257
    :cond_38
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->j(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)V

    .line 258
    return-void
.end method

.method public final d()V
    .registers 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->k(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/ui/f;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 286
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->k(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/ui/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/myoffer/ui/f;->d()V

    .line 288
    :cond_11
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->j(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)V

    .line 289
    return-void
.end method

.method public final e()V
    .registers 5

    .prologue
    .line 293
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->f(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 294
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->g(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)V

    .line 297
    :cond_11
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->b(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/c/c;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->b(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)Lcom/anythink/myoffer/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/myoffer/c/c;->a()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2b

    .line 298
    iget-object v0, p0, Lcom/anythink/myoffer/ui/MyOfferAdActivity$2;->a:Lcom/anythink/myoffer/ui/MyOfferAdActivity;

    invoke-static {v0}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a(Lcom/anythink/myoffer/ui/MyOfferAdActivity;)V

    .line 300
    :cond_2b
    return-void
.end method
