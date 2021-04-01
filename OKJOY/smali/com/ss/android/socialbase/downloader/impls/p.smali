.class public Lcom/ss/android/socialbase/downloader/impls/p;
.super Ljava/lang/Object;
.source "ProcessDownloadHandler.java"

# interfaces
.implements Lcom/ss/android/socialbase/downloader/downloader/n;


# instance fields
.field private final a:Lcom/ss/android/socialbase/downloader/impls/a;

.field private final b:Lcom/ss/android/socialbase/downloader/downloader/k;

.field private final c:Lcom/ss/android/socialbase/downloader/downloader/p;

.field private final d:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/p;-><init>(Z)V

    .line 47
    return-void
.end method

.method public constructor <init>(Z)V
    .registers 5

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->t()Lcom/ss/android/socialbase/downloader/impls/a;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    .line 51
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->p()Lcom/ss/android/socialbase/downloader/downloader/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    .line 52
    if-nez p1, :cond_25

    .line 53
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->q()Lcom/ss/android/socialbase/downloader/downloader/p;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/p;

    .line 57
    :goto_17
    invoke-static {}, Lcom/ss/android/socialbase/downloader/k/a;->b()Lcom/ss/android/socialbase/downloader/k/a;

    move-result-object v0

    const-string v1, "judge_service_alive"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/k/a;->b(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->d:Z

    .line 58
    return-void

    .line 55
    :cond_25
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->r()Lcom/ss/android/socialbase/downloader/downloader/p;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/p;

    goto :goto_17
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 177
    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 158
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_b

    .line 159
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 161
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public a()V
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_9

    .line 95
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/impls/a;->b()V

    .line 96
    :cond_9
    return-void
.end method

.method public a(I)V
    .registers 3

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_9

    .line 63
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->e(I)Z

    .line 64
    :cond_9
    return-void
.end method

.method public a(II)V
    .registers 5

    .prologue
    .line 389
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 390
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 391
    :cond_e
    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 392
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ss/android/socialbase/downloader/d/ag;

    .line 393
    if-eqz v0, :cond_e

    .line 394
    invoke-interface {v0, p2, p1}, Lcom/ss/android/socialbase/downloader/d/ag;->a(II)V

    goto :goto_e

    .line 399
    :cond_20
    return-void
.end method

.method public a(IIII)V
    .registers 6

    .prologue
    .line 353
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(IIII)V

    .line 354
    return-void
.end method

.method public a(IIIJ)V
    .registers 12

    .prologue
    .line 348
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(IIIJ)V

    .line 349
    return-void
.end method

.method public a(IIJ)V
    .registers 6

    .prologue
    .line 343
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(IIJ)V

    .line 344
    return-void
.end method

.method public a(IILcom/ss/android/socialbase/downloader/d/w;Lcom/ss/android/socialbase/downloader/b/h;Z)V
    .registers 12

    .prologue
    .line 202
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_e

    .line 203
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/impls/a;->b(IILcom/ss/android/socialbase/downloader/d/w;Lcom/ss/android/socialbase/downloader/b/h;Z)V

    .line 204
    :cond_e
    return-void
.end method

.method public a(ILandroid/app/Notification;)V
    .registers 4

    .prologue
    .line 224
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-eqz v0, :cond_9

    .line 225
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/p;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/p;->a(ILandroid/app/Notification;)V

    .line 226
    :cond_9
    return-void
.end method

.method public a(ILcom/ss/android/socialbase/downloader/d/z;)V
    .registers 4

    .prologue
    .line 423
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_9

    .line 424
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a;->a(ILcom/ss/android/socialbase/downloader/d/z;)V

    .line 425
    :cond_9
    return-void
.end method

.method public a(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(ILjava/util/List;)V

    .line 309
    return-void
.end method

.method public a(IZ)V
    .registers 4

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_9

    .line 69
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a;->a(IZ)Z

    .line 70
    :cond_9
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/d/ag;)V
    .registers 2

    .prologue
    .line 384
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Lcom/ss/android/socialbase/downloader/d/ag;)V

    .line 385
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/b;)V
    .registers 3

    .prologue
    .line 323
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Lcom/ss/android/socialbase/downloader/g/b;)V

    .line 324
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/d;)V
    .registers 7

    .prologue
    .line 265
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-eqz v0, :cond_a

    .line 266
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/p;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->b(Lcom/ss/android/socialbase/downloader/g/d;)V

    .line 271
    :cond_9
    :goto_9
    return-void

    .line 268
    :cond_a
    if-eqz p1, :cond_9

    .line 269
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->e()Lcom/ss/android/socialbase/downloader/d/x;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v2

    new-instance v3, Lcom/ss/android/socialbase/downloader/e/a;

    const/16 v0, 0x3eb

    const-string v4, "downloadServiceHandler is null"

    invoke-direct {v3, v0, v4}, Lcom/ss/android/socialbase/downloader/e/a;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    if-eqz v0, :cond_2f

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/d;->a()Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    :goto_2b
    invoke-static {v1, v2, v3, v0}, Lcom/ss/android/socialbase/downloader/h/a;->a(Lcom/ss/android/socialbase/downloader/d/x;Lcom/ss/android/socialbase/downloader/g/c;Lcom/ss/android/socialbase/downloader/e/a;I)V

    goto :goto_9

    :cond_2f
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method public a(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_9

    .line 108
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(Ljava/util/List;)V

    .line 109
    :cond_9
    return-void
.end method

.method public a(ZZ)V
    .registers 4

    .prologue
    .line 230
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-eqz v0, :cond_9

    .line 231
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/p;

    invoke-interface {v0, p2}, Lcom/ss/android/socialbase/downloader/downloader/p;->a(Z)V

    .line 232
    :cond_9
    return-void
.end method

.method public a(Lcom/ss/android/socialbase/downloader/g/c;)Z
    .registers 5

    .prologue
    .line 214
    if-nez p1, :cond_4

    .line 215
    const/4 v0, 0x0

    .line 219
    :cond_3
    :goto_3
    return v0

    .line 216
    :cond_4
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/ss/android/socialbase/downloader/m/f;->a(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 217
    if-eqz v0, :cond_3

    const/high16 v1, 0x2000000

    invoke-static {v1}, Lcom/ss/android/socialbase/downloader/m/c;->a(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 218
    invoke-virtual {p1}, Lcom/ss/android/socialbase/downloader/g/c;->g()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/ss/android/socialbase/downloader/impls/p;->b(IZ)V

    goto :goto_3
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 4

    .prologue
    .line 171
    invoke-static {p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 172
    invoke-virtual {p0, v0}, Lcom/ss/android/socialbase/downloader/impls/p;->h(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    if-eqz v0, :cond_b

    .line 101
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 102
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public b(IILcom/ss/android/socialbase/downloader/d/w;Lcom/ss/android/socialbase/downloader/b/h;Z)V
    .registers 12

    .prologue
    .line 208
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_e

    .line 209
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/ss/android/socialbase/downloader/impls/a;->a(IILcom/ss/android/socialbase/downloader/d/w;Lcom/ss/android/socialbase/downloader/b/h;Z)V

    .line 210
    :cond_e
    return-void
.end method

.method public b(ILjava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 368
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/k;->b(ILjava/util/List;)V

    .line 369
    return-void
.end method

.method public b(IZ)V
    .registers 4

    .prologue
    .line 190
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_9

    .line 191
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/impls/a;->b(IZ)V

    .line 192
    :cond_9
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/g/c;)V
    .registers 3

    .prologue
    .line 303
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->b(Lcom/ss/android/socialbase/downloader/g/c;)V

    .line 304
    return-void
.end method

.method public b(Lcom/ss/android/socialbase/downloader/g/d;)V
    .registers 3

    .prologue
    .line 275
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-eqz v0, :cond_9

    .line 276
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/p;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/p;->c(Lcom/ss/android/socialbase/downloader/g/d;)V

    .line 277
    :cond_9
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-eqz v0, :cond_b

    .line 237
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/p;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/p;->b()Z

    move-result v0

    .line 239
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public b(I)Z
    .registers 3

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_b

    .line 75
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->n(I)Z

    move-result v0

    .line 77
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public c(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    if-eqz v0, :cond_b

    .line 183
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 185
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public c(I)V
    .registers 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_9

    .line 83
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->f(I)Z

    .line 84
    :cond_9
    return-void
.end method

.method public c(IZ)V
    .registers 4

    .prologue
    .line 313
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(IZ)V

    .line 314
    return-void
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 244
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->C()Z

    move-result v0

    return v0
.end method

.method public c(Lcom/ss/android/socialbase/downloader/g/c;)Z
    .registers 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->a(Lcom/ss/android/socialbase/downloader/g/c;)Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    if-eqz v0, :cond_b

    .line 250
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->d(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 252
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public d()V
    .registers 1

    .prologue
    .line 294
    return-void
.end method

.method public d(I)V
    .registers 3

    .prologue
    .line 88
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_9

    .line 89
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->g(I)Z

    .line 90
    :cond_9
    return-void
.end method

.method public e(I)J
    .registers 7

    .prologue
    const-wide/16 v0, 0x0

    .line 113
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    if-nez v2, :cond_7

    .line 126
    :cond_6
    :goto_6
    return-wide v0

    .line 115
    :cond_7
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->b(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v2

    .line 116
    if-eqz v2, :cond_6

    .line 118
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->aV()I

    move-result v3

    .line 119
    const/4 v4, 0x1

    if-gt v3, v4, :cond_1b

    .line 120
    invoke-virtual {v2}, Lcom/ss/android/socialbase/downloader/g/c;->Z()J

    move-result-wide v0

    goto :goto_6

    .line 122
    :cond_1b
    iget-object v2, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v2, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->c(I)Ljava/util/List;

    move-result-object v2

    .line 123
    if-eqz v2, :cond_6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ne v4, v3, :cond_6

    .line 126
    invoke-static {v2}, Lcom/ss/android/socialbase/downloader/m/f;->b(Ljava/util/List;)J

    move-result-wide v0

    goto :goto_6
.end method

.method public e(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_b

    .line 258
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 260
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 298
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/k;->c()Z

    move-result v0

    return v0
.end method

.method public f(I)I
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 132
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-nez v1, :cond_6

    .line 137
    :cond_5
    :goto_5
    return v0

    .line 134
    :cond_6
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    invoke-virtual {v1, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->d(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v1

    .line 135
    if-eqz v1, :cond_5

    .line 137
    invoke-virtual {v1}, Lcom/ss/android/socialbase/downloader/g/c;->q()I

    move-result v0

    goto :goto_5
.end method

.method public f()V
    .registers 2

    .prologue
    .line 363
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0}, Lcom/ss/android/socialbase/downloader/downloader/k;->b()V

    .line 364
    return-void
.end method

.method public g()Z
    .registers 3

    .prologue
    const/4 v0, 0x0

    .line 373
    iget-boolean v1, p0, Lcom/ss/android/socialbase/downloader/impls/p;->d:Z

    if-eqz v1, :cond_12

    .line 375
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/p;

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/p;->c:Lcom/ss/android/socialbase/downloader/downloader/p;

    invoke-interface {v1}, Lcom/ss/android/socialbase/downloader/downloader/p;->a()Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    .line 378
    :cond_12
    return v0
.end method

.method public g(I)Z
    .registers 3

    .prologue
    .line 142
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_b

    .line 143
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->a(I)Z

    move-result v0

    .line 145
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public h(I)Lcom/ss/android/socialbase/downloader/g/c;
    .registers 3

    .prologue
    .line 150
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_b

    .line 151
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->d(I)Lcom/ss/android/socialbase/downloader/g/c;

    move-result-object v0

    .line 153
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public i(I)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->c(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j(I)V
    .registers 3

    .prologue
    .line 196
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_9

    .line 197
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->m(I)V

    .line 198
    :cond_9
    return-void
.end method

.method public k(I)V
    .registers 2

    .prologue
    .line 288
    invoke-static {p1}, Lcom/ss/android/socialbase/downloader/f/a;->a(I)V

    .line 289
    return-void
.end method

.method public l(I)Z
    .registers 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_b

    .line 282
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->k(I)Z

    move-result v0

    .line 283
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public m(I)I
    .registers 3

    .prologue
    .line 318
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/c;->a()Lcom/ss/android/socialbase/downloader/downloader/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/c;->a(I)I

    move-result v0

    return v0
.end method

.method public n(I)Z
    .registers 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->e(I)Z

    move-result v0

    return v0
.end method

.method public o(I)V
    .registers 3

    .prologue
    .line 338
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->d(I)V

    .line 339
    return-void
.end method

.method public p(I)Z
    .registers 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    invoke-interface {v0, p1}, Lcom/ss/android/socialbase/downloader/downloader/k;->f(I)Z

    move-result v0

    return v0
.end method

.method public q(I)Lcom/ss/android/socialbase/downloader/d/z;
    .registers 3

    .prologue
    .line 403
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_b

    .line 404
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->i(I)Lcom/ss/android/socialbase/downloader/d/z;

    move-result-object v0

    .line 405
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public r(I)Lcom/ss/android/socialbase/downloader/d/ac;
    .registers 4

    .prologue
    .line 410
    const/4 v0, 0x0

    .line 411
    iget-object v1, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v1, :cond_b

    .line 412
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->h(I)Lcom/ss/android/socialbase/downloader/d/ac;

    move-result-object v0

    .line 414
    :cond_b
    if-nez v0, :cond_11

    .line 416
    invoke-static {}, Lcom/ss/android/socialbase/downloader/downloader/b;->y()Lcom/ss/android/socialbase/downloader/d/ac;

    move-result-object v0

    .line 418
    :cond_11
    return-object v0
.end method

.method public s(I)Lcom/ss/android/socialbase/downloader/d/q;
    .registers 3

    .prologue
    .line 429
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    if-eqz v0, :cond_b

    .line 430
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/impls/p;->a:Lcom/ss/android/socialbase/downloader/impls/a;

    invoke-virtual {v0, p1}, Lcom/ss/android/socialbase/downloader/impls/a;->j(I)Lcom/ss/android/socialbase/downloader/d/q;

    move-result-object v0

    .line 431
    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method
