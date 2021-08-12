.class public Lcom/ss/android/socialbase/appdownloader/f;
.super Ljava/lang/Object;
.source "AppTaskBuilder.java"


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:Z

.field private E:Ljava/lang/String;

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Lcom/ss/android/socialbase/downloader/constants/f;

.field private K:I

.field private L:I

.field private M:Z

.field private N:Lcom/ss/android/socialbase/downloader/depend/z;

.field private O:Lcom/ss/android/socialbase/downloader/depend/n;

.field private P:Lcom/ss/android/socialbase/appdownloader/c/e;

.field private Q:Lcom/ss/android/socialbase/downloader/depend/t;

.field private R:Lcom/ss/android/socialbase/downloader/depend/r;

.field private S:Z

.field private T:Lcom/ss/android/socialbase/downloader/depend/ah;

.field private U:Z

.field private V:Lorg/json/JSONObject;

.field private W:Ljava/lang/String;

.field private X:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/depend/m;",
            ">;"
        }
    .end annotation
.end field

.field private Y:I

.field private Z:J

.field private a:Landroid/app/Activity;

.field private aa:I

.field private ab:Z

.field private ac:Ljava/lang/String;

.field private ad:[I

.field private b:Landroid/content/Context;

.field private c:Ljava/lang/String;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;"
        }
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

.field private n:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Z

.field private r:Lcom/ss/android/socialbase/downloader/downloader/f;

.field private s:Lcom/ss/android/socialbase/downloader/downloader/g;

.field private t:Lcom/ss/android/socialbase/downloader/downloader/q;

.field private u:Lcom/ss/android/socialbase/downloader/notification/a;

.field private v:Z

.field private w:Z

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->i:Z

    .line 44
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ss/android/socialbase/appdownloader/f;->j:Z

    .line 45
    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->k:Z

    .line 46
    iput-boolean v1, p0, Lcom/ss/android/socialbase/appdownloader/f;->l:Z

    .line 50
    const-string v1, "application/vnd.android.package-archive"

    iput-object v1, p0, Lcom/ss/android/socialbase/appdownloader/f;->p:Ljava/lang/String;

    .line 62
    const/4 v1, 0x5

    iput v1, p0, Lcom/ss/android/socialbase/appdownloader/f;->B:I

    .line 66
    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->F:Z

    .line 70
    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/f;->a:Lcom/ss/android/socialbase/downloader/constants/f;

    iput-object v1, p0, Lcom/ss/android/socialbase/appdownloader/f;->J:Lcom/ss/android/socialbase/downloader/constants/f;

    .line 71
    const/16 v1, 0x96

    iput v1, p0, Lcom/ss/android/socialbase/appdownloader/f;->K:I

    .line 73
    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->M:Z

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ss/android/socialbase/appdownloader/f;->X:Ljava/util/List;

    .line 92
    iput-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->ab:Z

    .line 105
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->b:Landroid/content/Context;

    .line 106
    iput-object p2, p0, Lcom/ss/android/socialbase/appdownloader/f;->c:Ljava/lang/String;

    .line 107
    return-void
.end method


# virtual methods
.method public A()Z
    .registers 2

    .line 218
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->D:Z

    return v0
.end method

.method public B()Ljava/lang/String;
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->E:Ljava/lang/String;

    return-object v0
.end method

.method public C()Z
    .registers 2

    .line 226
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->F:Z

    return v0
.end method

.method public D()Z
    .registers 2

    .line 230
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->G:Z

    return v0
.end method

.method public E()Lcom/ss/android/socialbase/downloader/downloader/q;
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->t:Lcom/ss/android/socialbase/downloader/downloader/q;

    return-object v0
.end method

.method public F()I
    .registers 2

    .line 238
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->K:I

    return v0
.end method

.method public G()I
    .registers 2

    .line 242
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->L:I

    return v0
.end method

.method public H()Z
    .registers 2

    .line 246
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->H:Z

    return v0
.end method

.method public I()Z
    .registers 2

    .line 250
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->I:Z

    return v0
.end method

.method public J()Z
    .registers 2

    .line 254
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->M:Z

    return v0
.end method

.method public K()Z
    .registers 2

    .line 258
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->S:Z

    return v0
.end method

.method public L()Lcom/ss/android/socialbase/downloader/constants/f;
    .registers 2

    .line 262
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->J:Lcom/ss/android/socialbase/downloader/constants/f;

    return-object v0
.end method

.method public M()Z
    .registers 2

    .line 266
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->A:Z

    return v0
.end method

.method public N()Ljava/lang/String;
    .registers 2

    .line 270
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->f:Ljava/lang/String;

    return-object v0
.end method

.method public O()Lcom/ss/android/socialbase/downloader/depend/z;
    .registers 2

    .line 274
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->N:Lcom/ss/android/socialbase/downloader/depend/z;

    return-object v0
.end method

.method public P()Lcom/ss/android/socialbase/downloader/depend/n;
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->O:Lcom/ss/android/socialbase/downloader/depend/n;

    return-object v0
.end method

.method public Q()Lcom/ss/android/socialbase/appdownloader/c/e;
    .registers 2

    .line 282
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->P:Lcom/ss/android/socialbase/appdownloader/c/e;

    return-object v0
.end method

.method public R()Lcom/ss/android/socialbase/downloader/depend/t;
    .registers 2

    .line 286
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->Q:Lcom/ss/android/socialbase/downloader/depend/t;

    return-object v0
.end method

.method public S()Lcom/ss/android/socialbase/downloader/depend/ah;
    .registers 2

    .line 290
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->T:Lcom/ss/android/socialbase/downloader/depend/ah;

    return-object v0
.end method

.method public T()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/depend/m;",
            ">;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->X:Ljava/util/List;

    return-object v0
.end method

.method public U()Z
    .registers 2

    .line 297
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->U:Z

    return v0
.end method

.method public V()I
    .registers 2

    .line 301
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->Y:I

    return v0
.end method

.method public W()J
    .registers 3

    .line 305
    iget-wide v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->Z:J

    return-wide v0
.end method

.method public X()Z
    .registers 2

    .line 309
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->ab:Z

    return v0
.end method

.method public Y()Ljava/lang/String;
    .registers 2

    .line 313
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->ac:Ljava/lang/String;

    return-object v0
.end method

.method public Z()[I
    .registers 2

    .line 317
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->ad:[I

    return-object v0
.end method

.method public a()Landroid/app/Activity;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public a(J)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 3

    .line 427
    iput-wide p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->z:J

    .line 428
    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/constants/f;)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 492
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->J:Lcom/ss/android/socialbase/downloader/constants/f;

    .line 493
    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 362
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->m:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    .line 363
    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/depend/m;)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 4

    .line 597
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->X:Ljava/util/List;

    monitor-enter v0

    .line 598
    if-eqz p1, :cond_15

    :try_start_5
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/f;->X:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    goto :goto_15

    .line 601
    :cond_e
    iget-object v1, p0, Lcom/ss/android/socialbase/appdownloader/f;->X:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 602
    monitor-exit v0

    .line 603
    return-object p0

    .line 599
    :cond_15
    :goto_15
    monitor-exit v0

    return-object p0

    .line 602
    :catchall_17
    move-exception p1

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw p1
.end method

.method public a(Lcom/ss/android/socialbase/downloader/depend/r;)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 583
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->R:Lcom/ss/android/socialbase/downloader/depend/r;

    .line 584
    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/depend/t;)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 517
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->Q:Lcom/ss/android/socialbase/downloader/depend/t;

    .line 518
    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/downloader/f;)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 392
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->r:Lcom/ss/android/socialbase/downloader/downloader/f;

    .line 393
    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/downloader/g;)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 387
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->s:Lcom/ss/android/socialbase/downloader/downloader/g;

    .line 388
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 321
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->e:Ljava/lang/String;

    .line 322
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;)",
            "Lcom/ss/android/socialbase/appdownloader/f;"
        }
    .end annotation

    .line 336
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->h:Ljava/util/List;

    .line 337
    return-object p0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 592
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->V:Lorg/json/JSONObject;

    .line 593
    return-object p0
.end method

.method public a(Z)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 341
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->i:Z

    .line 342
    return-object p0
.end method

.method public a(I)V
    .registers 2

    .line 194
    iput p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->aa:I

    .line 195
    return-void
.end method

.method public aa()Ljava/lang/String;
    .registers 2

    .line 561
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->W:Ljava/lang/String;

    return-object v0
.end method

.method public ab()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 570
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->d:Ljava/util/List;

    return-object v0
.end method

.method public ac()Lcom/ss/android/socialbase/downloader/depend/r;
    .registers 2

    .line 579
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->R:Lcom/ss/android/socialbase/downloader/depend/r;

    return-object v0
.end method

.method public ad()Lorg/json/JSONObject;
    .registers 2

    .line 588
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->V:Lorg/json/JSONObject;

    return-object v0
.end method

.method public b()Landroid/content/Context;
    .registers 2

    .line 114
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->b:Landroid/content/Context;

    return-object v0
.end method

.method public b(I)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 432
    iput p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->B:I

    .line 433
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 326
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->f:Ljava/lang/String;

    .line 327
    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/android/socialbase/appdownloader/f;"
        }
    .end annotation

    .line 574
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->d:Ljava/util/List;

    .line 575
    return-object p0
.end method

.method public b(Z)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 352
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->j:Z

    .line 353
    return-object p0
.end method

.method public c(I)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 437
    iput p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->C:I

    .line 438
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 331
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->g:Ljava/lang/String;

    .line 332
    return-object p0
.end method

.method public c(Z)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 357
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->l:Z

    .line 358
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 118
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(I)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 477
    iput p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->K:I

    .line 478
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 372
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->o:Ljava/lang/String;

    .line 373
    return-object p0
.end method

.method public d(Z)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 382
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->q:Z

    .line 383
    return-object p0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(I)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 482
    iput p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->L:I

    .line 483
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 377
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->p:Ljava/lang/String;

    .line 378
    return-object p0
.end method

.method public e(Z)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 407
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->v:Z

    .line 408
    return-object p0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->g:Ljava/lang/String;

    return-object v0
.end method

.method public f(I)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 565
    iput p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->Y:I

    .line 566
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 417
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->x:Ljava/lang/String;

    .line 418
    return-object p0
.end method

.method public f(Z)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 412
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->w:Z

    .line 413
    return-object p0
.end method

.method public f()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;"
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->h:Ljava/util/List;

    return-object v0
.end method

.method public g(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 422
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->y:Ljava/lang/String;

    .line 423
    return-object p0
.end method

.method public g(Z)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 442
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->D:Z

    .line 443
    return-object p0
.end method

.method public g()Z
    .registers 2

    .line 134
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->i:Z

    return v0
.end method

.method public h(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 447
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->E:Ljava/lang/String;

    .line 448
    return-object p0
.end method

.method public h(Z)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 452
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->S:Z

    .line 453
    return-object p0
.end method

.method public h()Z
    .registers 2

    .line 138
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->j:Z

    return v0
.end method

.method public i(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 546
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->ac:Ljava/lang/String;

    .line 547
    return-object p0
.end method

.method public i(Z)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 457
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->F:Z

    .line 458
    return-object p0
.end method

.method public i()Z
    .registers 2

    .line 142
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->k:Z

    return v0
.end method

.method public j(Ljava/lang/String;)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 556
    iput-object p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->W:Ljava/lang/String;

    .line 557
    return-object p0
.end method

.method public j(Z)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 462
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->G:Z

    .line 463
    return-object p0
.end method

.method public j()Z
    .registers 2

    .line 146
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->l:Z

    return v0
.end method

.method public k(Z)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 467
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->H:Z

    .line 468
    return-object p0
.end method

.method public k()Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->m:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    return-object v0
.end method

.method public l(Z)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 472
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->I:Z

    .line 473
    return-object p0
.end method

.method public l()Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->n:Lcom/ss/android/socialbase/downloader/depend/IDownloadListener;

    return-object v0
.end method

.method public m(Z)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 487
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->M:Z

    .line 488
    return-object p0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->o:Ljava/lang/String;

    return-object v0
.end method

.method public n(Z)Lcom/ss/android/socialbase/appdownloader/f;
    .registers 2

    .line 497
    iput-boolean p1, p0, Lcom/ss/android/socialbase/appdownloader/f;->A:Z

    .line 498
    return-object p0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->p:Ljava/lang/String;

    return-object v0
.end method

.method public o()Z
    .registers 2

    .line 166
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->q:Z

    return v0
.end method

.method public p()Lcom/ss/android/socialbase/downloader/notification/a;
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->u:Lcom/ss/android/socialbase/downloader/notification/a;

    return-object v0
.end method

.method public q()Lcom/ss/android/socialbase/downloader/downloader/g;
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->s:Lcom/ss/android/socialbase/downloader/downloader/g;

    return-object v0
.end method

.method public r()Lcom/ss/android/socialbase/downloader/downloader/f;
    .registers 2

    .line 178
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->r:Lcom/ss/android/socialbase/downloader/downloader/f;

    return-object v0
.end method

.method public s()Z
    .registers 2

    .line 182
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->v:Z

    return v0
.end method

.method public t()Z
    .registers 2

    .line 186
    iget-boolean v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->w:Z

    return v0
.end method

.method public u()I
    .registers 2

    .line 190
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->aa:I

    return v0
.end method

.method public v()Ljava/lang/String;
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->x:Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .registers 2

    .line 202
    iget-object v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->y:Ljava/lang/String;

    return-object v0
.end method

.method public x()J
    .registers 3

    .line 206
    iget-wide v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->z:J

    return-wide v0
.end method

.method public y()I
    .registers 2

    .line 210
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->B:I

    return v0
.end method

.method public z()I
    .registers 2

    .line 214
    iget v0, p0, Lcom/ss/android/socialbase/appdownloader/f;->C:I

    return v0
.end method
