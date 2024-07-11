.class final Lcom/anythink/basead/ui/FullScreenAdView$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/anythink/basead/ui/PlayerView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/anythink/basead/ui/FullScreenAdView;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/anythink/basead/ui/FullScreenAdView;


# direct methods
.method constructor <init>(Lcom/anythink/basead/ui/FullScreenAdView;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    .line 177
    sget-object v0, Lcom/anythink/basead/ui/FullScreenAdView;->TAG:Ljava/lang/String;

    const-string v1, "onVideoPlayStart..."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/anythink/basead/ui/FullScreenAdView;->a(Lcom/anythink/basead/ui/FullScreenAdView;J)J

    .line 181
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-static {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->a(Lcom/anythink/basead/ui/FullScreenAdView;)V

    .line 182
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-static {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->b(Lcom/anythink/basead/ui/FullScreenAdView;)V

    .line 183
    return-void
.end method

.method public final a(I)V
    .registers 6

    .line 187
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-static {v0, p1}, Lcom/anythink/basead/ui/FullScreenAdView;->a(Lcom/anythink/basead/ui/FullScreenAdView;I)V

    .line 188
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-static {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->c(Lcom/anythink/basead/ui/FullScreenAdView;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-static {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->d(Lcom/anythink/basead/ui/FullScreenAdView;)Lcom/anythink/basead/ui/BannerView;

    move-result-object v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-static {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->e(Lcom/anythink/basead/ui/FullScreenAdView;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_31

    int-to-long v0, p1

    iget-object p1, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-static {p1}, Lcom/anythink/basead/ui/FullScreenAdView;->e(Lcom/anythink/basead/ui/FullScreenAdView;)J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-ltz p1, :cond_31

    .line 189
    iget-object p1, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-static {p1}, Lcom/anythink/basead/ui/FullScreenAdView;->f(Lcom/anythink/basead/ui/FullScreenAdView;)V

    .line 191
    :cond_31
    return-void
.end method

.method public final a(Lcom/anythink/basead/c/f;)V
    .registers 5

    .line 222
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->j()Lcom/anythink/basead/c/h;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/anythink/basead/ui/FullScreenAdView;->fillVideoEndRecord(Z)Lcom/anythink/basead/c/i;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/basead/c/h;->h:Lcom/anythink/basead/c/i;

    .line 224
    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    iget-object v1, v1, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    const/16 v2, 0x11

    invoke-static {v2, v1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 225
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-static {v0, p1}, Lcom/anythink/basead/ui/FullScreenAdView;->a(Lcom/anythink/basead/ui/FullScreenAdView;Lcom/anythink/basead/c/f;)V

    .line 226
    return-void
.end method

.method public final b()V
    .registers 3

    .line 195
    sget-object v0, Lcom/anythink/basead/ui/FullScreenAdView;->TAG:Ljava/lang/String;

    const-string v1, "onVideoPlayEnd..."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public final b(I)V
    .registers 4

    .line 230
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->j()Lcom/anythink/basead/c/h;

    move-result-object v0

    .line 231
    sparse-switch p1, :sswitch_data_3c

    goto :goto_3a

    .line 241
    :sswitch_a
    sget-object p1, Lcom/anythink/basead/ui/FullScreenAdView;->TAG:Ljava/lang/String;

    const-string v1, "onVideoProgress75......."

    invoke-static {p1, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const/4 p1, 0x4

    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    iget-object v1, v1, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-static {p1, v1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    goto :goto_3a

    .line 237
    :sswitch_1a
    sget-object p1, Lcom/anythink/basead/ui/FullScreenAdView;->TAG:Ljava/lang/String;

    const-string v1, "onVideoProgress50......."

    invoke-static {p1, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const/4 p1, 0x3

    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    iget-object v1, v1, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-static {p1, v1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 239
    return-void

    .line 233
    :sswitch_2a
    sget-object p1, Lcom/anythink/basead/ui/FullScreenAdView;->TAG:Ljava/lang/String;

    const-string v1, "onVideoProgress25......."

    invoke-static {p1, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const/4 p1, 0x2

    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    iget-object v1, v1, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-static {p1, v1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 235
    return-void

    .line 245
    :goto_3a
    return-void

    nop

    :sswitch_data_3c
    .sparse-switch
        0x19 -> :sswitch_2a
        0x32 -> :sswitch_1a
        0x4b -> :sswitch_a
    .end sparse-switch
.end method

.method public final c()V
    .registers 4

    .line 201
    sget-object v0, Lcom/anythink/basead/ui/FullScreenAdView;->TAG:Ljava/lang/String;

    const-string v1, "onVideoPlayCompletion..."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->j()Lcom/anythink/basead/c/h;

    move-result-object v0

    .line 205
    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    iget-object v1, v1, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    const/4 v2, 0x5

    invoke-static {v2, v1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 207
    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    iget-object v1, v1, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    const/16 v2, 0x1f

    invoke-static {v2, v1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 209
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-static {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->g(Lcom/anythink/basead/ui/FullScreenAdView;)Lcom/anythink/basead/f/b$b;

    move-result-object v0

    if-eqz v0, :cond_2f

    .line 210
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-static {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->g(Lcom/anythink/basead/ui/FullScreenAdView;)Lcom/anythink/basead/f/b$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/f/b$b;->c()V

    .line 213
    :cond_2f
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-static {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->g(Lcom/anythink/basead/ui/FullScreenAdView;)Lcom/anythink/basead/f/b$b;

    move-result-object v0

    if-eqz v0, :cond_40

    .line 214
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-static {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->g(Lcom/anythink/basead/ui/FullScreenAdView;)Lcom/anythink/basead/f/b$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/anythink/basead/f/b$b;->d()V

    .line 217
    :cond_40
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-static {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->h(Lcom/anythink/basead/ui/FullScreenAdView;)V

    .line 218
    return-void
.end method

.method public final d()V
    .registers 4

    .line 249
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-static {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->i(Lcom/anythink/basead/ui/FullScreenAdView;)Lcom/anythink/basead/ui/PlayerView;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 250
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-static {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->i(Lcom/anythink/basead/ui/FullScreenAdView;)Lcom/anythink/basead/ui/PlayerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/basead/ui/PlayerView;->stop()V

    .line 251
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->j()Lcom/anythink/basead/c/h;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/FullScreenAdView;->k()Lcom/anythink/basead/c/b;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/basead/c/h;->g:Lcom/anythink/basead/c/b;

    .line 253
    const/16 v1, 0x10

    iget-object v2, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    iget-object v2, v2, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-static {v1, v2, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 256
    :cond_28
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-static {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->h(Lcom/anythink/basead/ui/FullScreenAdView;)V

    .line 257
    return-void
.end method

.method public final e()V
    .registers 5

    .line 261
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-static {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->c(Lcom/anythink/basead/ui/FullScreenAdView;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-static {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->e(Lcom/anythink/basead/ui/FullScreenAdView;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_19

    .line 262
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-static {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->f(Lcom/anythink/basead/ui/FullScreenAdView;)V

    .line 264
    :cond_19
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->j()Lcom/anythink/basead/c/h;

    move-result-object v0

    .line 265
    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/FullScreenAdView;->k()Lcom/anythink/basead/c/b;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/basead/c/h;->g:Lcom/anythink/basead/c/b;

    .line 266
    const/16 v1, 0xe

    iget-object v2, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    iget-object v2, v2, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    invoke-static {v1, v2, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 268
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    iget-object v0, v0, Lcom/anythink/basead/ui/FullScreenAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    iget-object v0, v0, Lcom/anythink/basead/ui/FullScreenAdView;->f:Lcom/anythink/core/common/d/i;

    iget-object v0, v0, Lcom/anythink/core/common/d/i;->j:Lcom/anythink/core/common/d/j;

    invoke-virtual {v0}, Lcom/anythink/core/common/d/j;->k()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4a

    .line 269
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->g()V

    .line 271
    :cond_4a
    return-void
.end method

.method public final f()V
    .registers 4

    .line 275
    sget-object v0, Lcom/anythink/basead/ui/FullScreenAdView;->TAG:Ljava/lang/String;

    const-string v1, "onVideoMute..."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->j()Lcom/anythink/basead/c/h;

    move-result-object v0

    .line 277
    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/FullScreenAdView;->k()Lcom/anythink/basead/c/b;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/basead/c/h;->g:Lcom/anythink/basead/c/b;

    .line 278
    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    iget-object v1, v1, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    const/16 v2, 0xc

    invoke-static {v2, v1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 279
    return-void
.end method

.method public final g()V
    .registers 4

    .line 283
    sget-object v0, Lcom/anythink/basead/ui/FullScreenAdView;->TAG:Ljava/lang/String;

    const-string v1, "onVideoNoMute..."

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object v0, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-virtual {v0}, Lcom/anythink/basead/ui/FullScreenAdView;->j()Lcom/anythink/basead/c/h;

    move-result-object v0

    .line 285
    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    invoke-virtual {v1}, Lcom/anythink/basead/ui/FullScreenAdView;->k()Lcom/anythink/basead/c/b;

    move-result-object v1

    iput-object v1, v0, Lcom/anythink/basead/c/h;->g:Lcom/anythink/basead/c/b;

    .line 286
    iget-object v1, p0, Lcom/anythink/basead/ui/FullScreenAdView$2;->a:Lcom/anythink/basead/ui/FullScreenAdView;

    iget-object v1, v1, Lcom/anythink/basead/ui/FullScreenAdView;->g:Lcom/anythink/core/common/d/h;

    const/16 v2, 0xd

    invoke-static {v2, v1, v0}, Lcom/anythink/basead/a/a;->a(ILcom/anythink/core/common/d/h;Lcom/anythink/basead/c/h;)V

    .line 287
    return-void
.end method
