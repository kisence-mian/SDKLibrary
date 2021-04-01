.class public Lcom/ss/android/socialbase/appdownloader/g;
.super Ljava/lang/Object;
.source "AppTaskBuilder.java"


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:Ljava/lang/String;

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Lcom/ss/android/socialbase/downloader/b/g;

.field private J:I

.field private K:I

.field private L:Z

.field private M:Lcom/ss/android/socialbase/downloader/d/x;

.field private N:Lcom/ss/android/socialbase/downloader/d/l;

.field private O:Lcom/ss/android/socialbase/appdownloader/c/e;

.field private P:Lcom/ss/android/socialbase/downloader/d/q;

.field private Q:Lcom/ss/android/socialbase/downloader/d/p;

.field private R:Z

.field private S:Lcom/ss/android/socialbase/downloader/d/ac;

.field private T:Z

.field private U:Lorg/json/JSONObject;

.field private a:Landroid/app/Activity;

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/e;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lcom/ss/android/socialbase/downloader/d/w;

.field private n:Lcom/ss/android/socialbase/downloader/d/w;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Lcom/ss/android/socialbase/downloader/downloader/h;

.field private s:Lcom/ss/android/socialbase/downloader/downloader/i;

.field private t:Lcom/ss/android/socialbase/downloader/downloader/r;

.field private u:Lcom/ss/android/socialbase/downloader/notification/a;

.field private v:Z

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-boolean v1, p0, Lcom/ss/android/socialbase/appdownloader/g;->i:Z

    .line 41
    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->j:Z

    .line 42
    iput-boolean v1, p0, Lcom/ss/android/socialbase/appdownloader/g;->k:Z

    .line 43
    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->l:Z

    .line 47
    const-string v0, "application/vnd.android.package-archive"

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->p:Ljava/lang/String;

    .line 58
    const/4 v0, 0x5

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->A:I

    .line 66
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/g;->a:Lcom/ss/android/socialbase/downloader/b/g;

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->I:Lcom/ss/android/socialbase/downloader/b/g;

    .line 67
    const/16 v0, 0x96

    iput v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->J:I

    .line 69
    iput-boolean v1, p0, Lcom/ss/android/socialbase/appdownloader/g;->L:Z

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->b:Landroid/content/Context;

    .line 82
    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/g;->c:Ljava/lang/String;

    .line 83
    return-void
.end method


# virtual methods
.method public A()Z
    .registers 2

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->E:Z

    return v0
.end method

.method public B()Z
    .registers 2

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->F:Z

    return v0
.end method

.method public C()Lcom/ss/android/socialbase/downloader/downloader/r;
    .registers 2

    .prologue
    .line 198
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->t:Lcom/ss/android/socialbase/downloader/downloader/r;

    return-object v0
.end method

.method public D()I
    .registers 2

    .prologue
    .line 202
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->J:I

    return v0
.end method

.method public E()I
    .registers 2

    .prologue
    .line 206
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->K:I

    return v0
.end method

.method public F()Z
    .registers 2

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->G:Z

    return v0
.end method

.method public G()Z
    .registers 2

    .prologue
    .line 214
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->H:Z

    return v0
.end method

.method public H()Z
    .registers 2

    .prologue
    .line 218
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->L:Z

    return v0
.end method

.method public I()Z
    .registers 2

    .prologue
    .line 222
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->R:Z

    return v0
.end method

.method public J()Lcom/ss/android/socialbase/downloader/b/g;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->I:Lcom/ss/android/socialbase/downloader/b/g;

    return-object v0
.end method

.method public K()Z
    .registers 2

    .prologue
    .line 230
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->z:Z

    return v0
.end method

.method public L()Ljava/lang/String;
    .registers 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->f:Ljava/lang/String;

    return-object v0
.end method

.method public M()Lcom/ss/android/socialbase/downloader/d/x;
    .registers 2

    .prologue
    .line 238
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->M:Lcom/ss/android/socialbase/downloader/d/x;

    return-object v0
.end method

.method public N()Lcom/ss/android/socialbase/downloader/d/l;
    .registers 2

    .prologue
    .line 242
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->N:Lcom/ss/android/socialbase/downloader/d/l;

    return-object v0
.end method

.method public O()Lcom/ss/android/socialbase/appdownloader/c/e;
    .registers 2

    .prologue
    .line 246
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->O:Lcom/ss/android/socialbase/appdownloader/c/e;

    return-object v0
.end method

.method public P()Lcom/ss/android/socialbase/downloader/d/q;
    .registers 2

    .prologue
    .line 250
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->P:Lcom/ss/android/socialbase/downloader/d/q;

    return-object v0
.end method

.method public Q()Lcom/ss/android/socialbase/downloader/d/ac;
    .registers 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->S:Lcom/ss/android/socialbase/downloader/d/ac;

    return-object v0
.end method

.method public R()Z
    .registers 2

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->T:Z

    return v0
.end method

.method public S()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->d:Ljava/util/List;

    return-object v0
.end method

.method public T()Lcom/ss/android/socialbase/downloader/d/p;
    .registers 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->Q:Lcom/ss/android/socialbase/downloader/d/p;

    return-object v0
.end method

.method public U()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 495
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->U:Lorg/json/JSONObject;

    return-object v0
.end method

.method public a()Landroid/app/Activity;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public a(I)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 367
    iput p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->A:I

    .line 368
    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/b/g;)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 427
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->I:Lcom/ss/android/socialbase/downloader/b/g;

    .line 428
    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/d/p;)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 490
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->Q:Lcom/ss/android/socialbase/downloader/d/p;

    .line 491
    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/d/q;)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 452
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->P:Lcom/ss/android/socialbase/downloader/d/q;

    .line 453
    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/d/w;)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 302
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->m:Lcom/ss/android/socialbase/downloader/d/w;

    .line 303
    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/downloader/h;)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 332
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->r:Lcom/ss/android/socialbase/downloader/downloader/h;

    .line 333
    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/downloader/i;)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 327
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->s:Lcom/ss/android/socialbase/downloader/downloader/i;

    .line 328
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 262
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->e:Ljava/lang/String;

    .line 263
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/e;",
            ">;)",
            "Lcom/ss/android/socialbase/appdownloader/g;"
        }
    .end annotation

    .prologue
    .line 277
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->h:Ljava/util/List;

    .line 278
    return-object p0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 499
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->U:Lorg/json/JSONObject;

    .line 500
    return-object p0
.end method

.method public a(Z)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 282
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->i:Z

    .line 283
    return-object p0
.end method

.method public b()Landroid/content/Context;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->b:Landroid/content/Context;

    return-object v0
.end method

.method public b(I)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 372
    iput p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->B:I

    .line 373
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 267
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->f:Ljava/lang/String;

    .line 268
    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/android/socialbase/appdownloader/g;"
        }
    .end annotation

    .prologue
    .line 481
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->d:Ljava/util/List;

    .line 482
    return-object p0
.end method

.method public b(Z)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 292
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->j:Z

    .line 293
    return-object p0
.end method

.method public c(I)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 412
    iput p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->J:I

    .line 413
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 272
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->g:Ljava/lang/String;

    .line 273
    return-object p0
.end method

.method public c(Z)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 297
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->l:Z

    .line 298
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 417
    iput p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->K:I

    .line 418
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 312
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->o:Ljava/lang/String;

    .line 313
    return-object p0
.end method

.method public d(Z)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 322
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->q:Z

    .line 323
    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 317
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->p:Ljava/lang/String;

    .line 318
    return-object p0
.end method

.method public e(Z)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 347
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->v:Z

    .line 348
    return-object p0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 357
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->x:Ljava/lang/String;

    .line 358
    return-object p0
.end method

.method public f(Z)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 352
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->w:Z

    .line 353
    return-object p0
.end method

.method public f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->h:Ljava/util/List;

    return-object v0
.end method

.method public g(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 362
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->y:Ljava/lang/String;

    .line 363
    return-object p0
.end method

.method public g(Z)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 377
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->C:Z

    .line 378
    return-object p0
.end method

.method public g()Z
    .registers 2

    .prologue
    .line 110
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->i:Z

    return v0
.end method

.method public h(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 382
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->D:Ljava/lang/String;

    .line 383
    return-object p0
.end method

.method public h(Z)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 387
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->R:Z

    .line 388
    return-object p0
.end method

.method public h()Z
    .registers 2

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->j:Z

    return v0
.end method

.method public i(Z)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 392
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->E:Z

    .line 393
    return-object p0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->k:Z

    return v0
.end method

.method public j(Z)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 397
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->F:Z

    .line 398
    return-object p0
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 122
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->l:Z

    return v0
.end method

.method public k(Z)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 402
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->G:Z

    .line 403
    return-object p0
.end method

.method public k()Lcom/ss/android/socialbase/downloader/d/w;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->m:Lcom/ss/android/socialbase/downloader/d/w;

    return-object v0
.end method

.method public l(Z)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 407
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->H:Z

    .line 408
    return-object p0
.end method

.method public l()Lcom/ss/android/socialbase/downloader/d/w;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->n:Lcom/ss/android/socialbase/downloader/d/w;

    return-object v0
.end method

.method public m(Z)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 422
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->L:Z

    .line 423
    return-object p0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->o:Ljava/lang/String;

    return-object v0
.end method

.method public n(Z)Lcom/ss/android/socialbase/appdownloader/g;
    .registers 2

    .prologue
    .line 432
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/g;->z:Z

    .line 433
    return-object p0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->p:Ljava/lang/String;

    return-object v0
.end method

.method public o()Z
    .registers 2

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->q:Z

    return v0
.end method

.method public p()Lcom/ss/android/socialbase/downloader/notification/a;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->u:Lcom/ss/android/socialbase/downloader/notification/a;

    return-object v0
.end method

.method public q()Lcom/ss/android/socialbase/downloader/downloader/i;
    .registers 2

    .prologue
    .line 150
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->s:Lcom/ss/android/socialbase/downloader/downloader/i;

    return-object v0
.end method

.method public r()Lcom/ss/android/socialbase/downloader/downloader/h;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->r:Lcom/ss/android/socialbase/downloader/downloader/h;

    return-object v0
.end method

.method public s()Z
    .registers 2

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->v:Z

    return v0
.end method

.method public t()Z
    .registers 2

    .prologue
    .line 162
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->w:Z

    return v0
.end method

.method public u()Ljava/lang/String;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->x:Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .registers 2

    .prologue
    .line 170
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->y:Ljava/lang/String;

    return-object v0
.end method

.method public w()I
    .registers 2

    .prologue
    .line 174
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->A:I

    return v0
.end method

.method public x()I
    .registers 2

    .prologue
    .line 178
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->B:I

    return v0
.end method

.method public y()Z
    .registers 2

    .prologue
    .line 182
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->C:Z

    return v0
.end method

.method public z()Ljava/lang/String;
    .registers 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/g;->D:Ljava/lang/String;

    return-object v0
.end method
