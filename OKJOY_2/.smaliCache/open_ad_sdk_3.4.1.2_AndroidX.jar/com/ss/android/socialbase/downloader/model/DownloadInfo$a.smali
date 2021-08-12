.class public Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:J

.field private C:Z

.field private D:Ljava/lang/String;

.field private E:Z

.field private F:Z

.field private G:Lcom/ss/android/socialbase/downloader/constants/f;

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Ljava/lang/String;

.field private L:J

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Lorg/json/JSONObject;

.field private Q:Z

.field private R:Ljava/lang/String;

.field private S:[I

.field private T:I

.field private U:Z

.field private V:Z

.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

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

.field private i:I

.field private j:[Ljava/lang/String;

.field private k:[I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:I

.field private q:I

.field private r:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Z

.field private y:Z

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 2583
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->o:Z

    .line 2528
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->x:Z

    .line 2537
    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/f;->a:Lcom/ss/android/socialbase/downloader/constants/f;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->G:Lcom/ss/android/socialbase/downloader/constants/f;

    .line 2549
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->N:Z

    .line 2565
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->Q:Z

    .line 2584
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 2586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2519
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->o:Z

    .line 2528
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->x:Z

    .line 2537
    sget-object v1, Lcom/ss/android/socialbase/downloader/constants/f;->a:Lcom/ss/android/socialbase/downloader/constants/f;

    iput-object v1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->G:Lcom/ss/android/socialbase/downloader/constants/f;

    .line 2549
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->N:Z

    .line 2565
    iput-boolean v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->Q:Z

    .line 2587
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->c:Ljava/lang/String;

    .line 2588
    return-void
.end method

.method static synthetic A(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .registers 1

    .line 2503
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->y:Z

    return p0
.end method

.method static synthetic B(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;
    .registers 1

    .line 2503
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->z:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic C(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;
    .registers 1

    .line 2503
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->A:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic D(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .registers 1

    .line 2503
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->E:Z

    return p0
.end method

.method static synthetic E(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .registers 1

    .line 2503
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->F:Z

    return p0
.end method

.method static synthetic F(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Lcom/ss/android/socialbase/downloader/constants/f;
    .registers 1

    .line 2503
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->G:Lcom/ss/android/socialbase/downloader/constants/f;

    return-object p0
.end method

.method static synthetic G(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .registers 1

    .line 2503
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->H:Z

    return p0
.end method

.method static synthetic H(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .registers 1

    .line 2503
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->I:Z

    return p0
.end method

.method static synthetic I(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .registers 1

    .line 2503
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->N:Z

    return p0
.end method

.method static synthetic J(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .registers 1

    .line 2503
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->O:Z

    return p0
.end method

.method static synthetic K(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .registers 1

    .line 2503
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->J:Z

    return p0
.end method

.method static synthetic L(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;
    .registers 1

    .line 2503
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->K:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic M(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)J
    .registers 3

    .line 2503
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->L:J

    return-wide v0
.end method

.method static synthetic N(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .registers 1

    .line 2503
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->M:Z

    return p0
.end method

.method static synthetic O(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Lorg/json/JSONObject;
    .registers 1

    .line 2503
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->P:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic P(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)J
    .registers 3

    .line 2503
    iget-wide v0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->B:J

    return-wide v0
.end method

.method static synthetic Q(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)I
    .registers 1

    .line 2503
    iget p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->T:I

    return p0
.end method

.method static synthetic R(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .registers 1

    .line 2503
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->Q:Z

    return p0
.end method

.method static synthetic S(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;
    .registers 1

    .line 2503
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->R:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic T(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)[I
    .registers 1

    .line 2503
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->S:[I

    return-object p0
.end method

.method static synthetic U(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .registers 1

    .line 2503
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->U:Z

    return p0
.end method

.method static synthetic V(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .registers 1

    .line 2503
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->V:Z

    return p0
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;
    .registers 1

    .line 2503
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;
    .registers 1

    .line 2503
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;
    .registers 1

    .line 2503
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;
    .registers 1

    .line 2503
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->d:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic e(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;
    .registers 1

    .line 2503
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;
    .registers 1

    .line 2503
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .registers 1

    .line 2503
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->f:Z

    return p0
.end method

.method static synthetic h(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/util/List;
    .registers 1

    .line 2503
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic i(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)I
    .registers 1

    .line 2503
    iget p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->i:I

    return p0
.end method

.method static synthetic j(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)I
    .registers 1

    .line 2503
    iget p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->l:I

    return p0
.end method

.method static synthetic k(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)I
    .registers 1

    .line 2503
    iget p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->m:I

    return p0
.end method

.method static synthetic l(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .registers 1

    .line 2503
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->n:Z

    return p0
.end method

.method static synthetic m(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)[Ljava/lang/String;
    .registers 1

    .line 2503
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->j:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)[I
    .registers 1

    .line 2503
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->k:[I

    return-object p0
.end method

.method static synthetic o(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .registers 1

    .line 2503
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->o:Z

    return p0
.end method

.method static synthetic p(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)I
    .registers 1

    .line 2503
    iget p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->p:I

    return p0
.end method

.method static synthetic q(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)I
    .registers 1

    .line 2503
    iget p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->q:I

    return p0
.end method

.method static synthetic r(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/util/List;
    .registers 1

    .line 2503
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->r:Ljava/util/List;

    return-object p0
.end method

.method static synthetic s(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .registers 1

    .line 2503
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->s:Z

    return p0
.end method

.method static synthetic t(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;
    .registers 1

    .line 2503
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->t:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic u(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .registers 1

    .line 2503
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->u:Z

    return p0
.end method

.method static synthetic v(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .registers 1

    .line 2503
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->C:Z

    return p0
.end method

.method static synthetic w(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Ljava/lang/String;
    .registers 1

    .line 2503
    iget-object p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->D:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic x(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .registers 1

    .line 2503
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->v:Z

    return p0
.end method

.method static synthetic y(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .registers 1

    .line 2503
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->w:Z

    return p0
.end method

.method static synthetic z(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;)Z
    .registers 1

    .line 2503
    iget-boolean p0, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->x:Z

    return p0
.end method


# virtual methods
.method public a(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2631
    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->i:I

    .line 2632
    return-object p0
.end method

.method public a(J)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 3

    .line 2727
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->B:J

    .line 2728
    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/constants/f;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2752
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->G:Lcom/ss/android/socialbase/downloader/constants/f;

    .line 2753
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2591
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->a:Ljava/lang/String;

    .line 2592
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/ss/android/socialbase/downloader/model/c;",
            ">;)",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;"
        }
    .end annotation

    .line 2626
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->h:Ljava/util/List;

    .line 2627
    return-object p0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2782
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->P:Lorg/json/JSONObject;

    .line 2783
    return-object p0
.end method

.method public a(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2621
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->f:Z

    .line 2622
    return-object p0
.end method

.method public a([I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2642
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->k:[I

    .line 2643
    return-object p0
.end method

.method public a([Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2637
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->j:[Ljava/lang/String;

    .line 2638
    return-object p0
.end method

.method public a()Lcom/ss/android/socialbase/downloader/model/DownloadInfo;
    .registers 3

    .line 2832
    new-instance v0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ss/android/socialbase/downloader/model/DownloadInfo;-><init>(Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;Lcom/ss/android/socialbase/downloader/model/DownloadInfo$1;)V

    return-object v0
.end method

.method public b(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2647
    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->l:I

    .line 2648
    return-object p0
.end method

.method public b(J)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 3

    .line 2812
    iput-wide p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->L:J

    .line 2813
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2596
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->b:Ljava/lang/String;

    .line 2597
    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;"
        }
    .end annotation

    .line 2677
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->r:Ljava/util/List;

    .line 2678
    return-object p0
.end method

.method public b(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2657
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->n:Z

    .line 2658
    return-object p0
.end method

.method public b([I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2797
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->S:[I

    .line 2798
    return-object p0
.end method

.method public c(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2652
    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->m:I

    .line 2653
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2601
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->c:Ljava/lang/String;

    .line 2602
    return-object p0
.end method

.method public c(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2662
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->o:Z

    .line 2663
    return-object p0
.end method

.method public d(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2667
    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->p:I

    .line 2668
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2606
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->d:Ljava/lang/String;

    .line 2607
    return-object p0
.end method

.method public d(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2687
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->u:Z

    .line 2688
    return-object p0
.end method

.method public e(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2672
    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->q:I

    .line 2673
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2611
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->e:Ljava/lang/String;

    .line 2612
    return-object p0
.end method

.method public e(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2692
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->s:Z

    .line 2693
    return-object p0
.end method

.method public f(I)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2807
    iput p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->T:I

    .line 2808
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2616
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->g:Ljava/lang/String;

    .line 2617
    return-object p0
.end method

.method public f(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2697
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->v:Z

    .line 2698
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2682
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->t:Ljava/lang/String;

    .line 2683
    return-object p0
.end method

.method public g(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2702
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->w:Z

    .line 2703
    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2717
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->z:Ljava/lang/String;

    .line 2718
    return-object p0
.end method

.method public h(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2707
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->x:Z

    .line 2708
    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2722
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->A:Ljava/lang/String;

    .line 2723
    return-object p0
.end method

.method public i(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2712
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->y:Z

    .line 2713
    return-object p0
.end method

.method public j(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2737
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->D:Ljava/lang/String;

    .line 2738
    return-object p0
.end method

.method public j(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2732
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->C:Z

    .line 2733
    return-object p0
.end method

.method public k(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2792
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->R:Ljava/lang/String;

    .line 2793
    return-object p0
.end method

.method public k(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2742
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->E:Z

    .line 2743
    return-object p0
.end method

.method public l(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2802
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->K:Ljava/lang/String;

    .line 2803
    return-object p0
.end method

.method public l(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2747
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->F:Z

    .line 2748
    return-object p0
.end method

.method public m(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2757
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->H:Z

    .line 2758
    return-object p0
.end method

.method public n(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2762
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->I:Z

    .line 2763
    return-object p0
.end method

.method public o(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2767
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->J:Z

    .line 2768
    return-object p0
.end method

.method public p(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2772
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->N:Z

    .line 2773
    return-object p0
.end method

.method public q(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2777
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->O:Z

    .line 2778
    return-object p0
.end method

.method public r(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2787
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->Q:Z

    .line 2788
    return-object p0
.end method

.method public s(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2817
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->M:Z

    .line 2818
    return-object p0
.end method

.method public t(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2822
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->U:Z

    .line 2823
    return-object p0
.end method

.method public u(Z)Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;
    .registers 2

    .line 2827
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/model/DownloadInfo$a;->V:Z

    .line 2828
    return-object p0
.end method
