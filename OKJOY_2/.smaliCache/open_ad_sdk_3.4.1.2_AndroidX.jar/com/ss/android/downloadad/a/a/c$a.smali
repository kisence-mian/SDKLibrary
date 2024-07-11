.class public final Lcom/ss/android/downloadad/a/a/c$a;
.super Ljava/lang/Object;
.source "AdDownloadModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/downloadad/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private C:Lcom/ss/android/socialbase/downloader/depend/t;

.field private D:Ljava/lang/String;

.field private E:J

.field private F:I

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private a:J

.field private b:J

.field private c:Z

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/ss/android/a/a/c/b;

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lorg/json/JSONObject;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Lorg/json/JSONObject;

.field private s:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:I

.field private x:Ljava/lang/String;

.field private y:Lcom/ss/android/a/a/c/f;

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 773
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 731
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c$a;->c:Z

    .line 743
    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c$a;->o:Z

    .line 744
    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c$a;->p:Z

    .line 745
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/ss/android/downloadad/a/a/c$a;->q:Z

    .line 747
    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c$a;->s:Z

    .line 768
    const/4 v0, 0x2

    iput v0, p0, Lcom/ss/android/downloadad/a/a/c$a;->F:I

    .line 774
    return-void
.end method

.method static synthetic A(Lcom/ss/android/downloadad/a/a/c$a;)Lcom/ss/android/a/a/c/f;
    .registers 1

    .line 726
    iget-object p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->y:Lcom/ss/android/a/a/c/f;

    return-object p0
.end method

.method static synthetic B(Lcom/ss/android/downloadad/a/a/c$a;)Z
    .registers 1

    .line 726
    iget-boolean p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->B:Z

    return p0
.end method

.method static synthetic C(Lcom/ss/android/downloadad/a/a/c$a;)Lcom/ss/android/socialbase/downloader/depend/t;
    .registers 1

    .line 726
    iget-object p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->C:Lcom/ss/android/socialbase/downloader/depend/t;

    return-object p0
.end method

.method static synthetic D(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;
    .registers 1

    .line 726
    iget-object p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->D:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic E(Lcom/ss/android/downloadad/a/a/c$a;)J
    .registers 3

    .line 726
    iget-wide v0, p0, Lcom/ss/android/downloadad/a/a/c$a;->E:J

    return-wide v0
.end method

.method static synthetic F(Lcom/ss/android/downloadad/a/a/c$a;)I
    .registers 1

    .line 726
    iget p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->F:I

    return p0
.end method

.method static synthetic G(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;
    .registers 1

    .line 726
    iget-object p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->G:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic H(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;
    .registers 1

    .line 726
    iget-object p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->H:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/ss/android/downloadad/a/a/c$a;)J
    .registers 3

    .line 726
    iget-wide v0, p0, Lcom/ss/android/downloadad/a/a/c$a;->a:J

    return-wide v0
.end method

.method static synthetic b(Lcom/ss/android/downloadad/a/a/c$a;)J
    .registers 3

    .line 726
    iget-wide v0, p0, Lcom/ss/android/downloadad/a/a/c$a;->b:J

    return-wide v0
.end method

.method static synthetic c(Lcom/ss/android/downloadad/a/a/c$a;)Z
    .registers 1

    .line 726
    iget-boolean p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->c:Z

    return p0
.end method

.method static synthetic d(Lcom/ss/android/downloadad/a/a/c$a;)I
    .registers 1

    .line 726
    iget p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->d:I

    return p0
.end method

.method static synthetic e(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;
    .registers 1

    .line 726
    iget-object p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic f(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;
    .registers 1

    .line 726
    iget-object p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic g(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;
    .registers 1

    .line 726
    iget-object p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->g:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic h(Lcom/ss/android/downloadad/a/a/c$a;)Lcom/ss/android/a/a/c/b;
    .registers 1

    .line 726
    iget-object p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->h:Lcom/ss/android/a/a/c/b;

    return-object p0
.end method

.method static synthetic i(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/util/List;
    .registers 1

    .line 726
    iget-object p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->i:Ljava/util/List;

    return-object p0
.end method

.method static synthetic j(Lcom/ss/android/downloadad/a/a/c$a;)Lorg/json/JSONObject;
    .registers 1

    .line 726
    iget-object p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->j:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic k(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;
    .registers 1

    .line 726
    iget-object p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->k:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic l(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/util/List;
    .registers 1

    .line 726
    iget-object p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->z:Ljava/util/List;

    return-object p0
.end method

.method static synthetic m(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;
    .registers 1

    .line 726
    iget-object p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->A:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic n(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;
    .registers 1

    .line 726
    iget-object p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->l:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic o(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;
    .registers 1

    .line 726
    iget-object p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->m:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic p(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/util/Map;
    .registers 1

    .line 726
    iget-object p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->n:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic q(Lcom/ss/android/downloadad/a/a/c$a;)Z
    .registers 1

    .line 726
    iget-boolean p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->o:Z

    return p0
.end method

.method static synthetic r(Lcom/ss/android/downloadad/a/a/c$a;)Z
    .registers 1

    .line 726
    iget-boolean p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->p:Z

    return p0
.end method

.method static synthetic s(Lcom/ss/android/downloadad/a/a/c$a;)Z
    .registers 1

    .line 726
    iget-boolean p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->q:Z

    return p0
.end method

.method static synthetic t(Lcom/ss/android/downloadad/a/a/c$a;)Lorg/json/JSONObject;
    .registers 1

    .line 726
    iget-object p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->r:Lorg/json/JSONObject;

    return-object p0
.end method

.method static synthetic u(Lcom/ss/android/downloadad/a/a/c$a;)Z
    .registers 1

    .line 726
    iget-boolean p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->s:Z

    return p0
.end method

.method static synthetic v(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;
    .registers 1

    .line 726
    iget-object p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->t:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic w(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;
    .registers 1

    .line 726
    iget-object p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->u:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic x(Lcom/ss/android/downloadad/a/a/c$a;)Z
    .registers 1

    .line 726
    iget-boolean p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->v:Z

    return p0
.end method

.method static synthetic y(Lcom/ss/android/downloadad/a/a/c$a;)I
    .registers 1

    .line 726
    iget p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->w:I

    return p0
.end method

.method static synthetic z(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;
    .registers 1

    .line 726
    iget-object p0, p0, Lcom/ss/android/downloadad/a/a/c$a;->x:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/ss/android/downloadad/a/a/c$a;
    .registers 2

    .line 811
    iput p1, p0, Lcom/ss/android/downloadad/a/a/c$a;->d:I

    .line 812
    return-object p0
.end method

.method public a(J)Lcom/ss/android/downloadad/a/a/c$a;
    .registers 3

    .line 796
    iput-wide p1, p0, Lcom/ss/android/downloadad/a/a/c$a;->a:J

    .line 797
    return-object p0
.end method

.method public a(Lcom/ss/android/a/a/c/b;)Lcom/ss/android/downloadad/a/a/c$a;
    .registers 2

    .line 831
    iput-object p1, p0, Lcom/ss/android/downloadad/a/a/c$a;->h:Lcom/ss/android/a/a/c/b;

    .line 832
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;
    .registers 2

    .line 816
    iput-object p1, p0, Lcom/ss/android/downloadad/a/a/c$a;->e:Ljava/lang/String;

    .line 817
    return-object p0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/ss/android/downloadad/a/a/c$a;
    .registers 2

    .line 841
    iput-object p1, p0, Lcom/ss/android/downloadad/a/a/c$a;->j:Lorg/json/JSONObject;

    .line 842
    return-object p0
.end method

.method public a(Z)Lcom/ss/android/downloadad/a/a/c$a;
    .registers 2

    .line 806
    iput-boolean p1, p0, Lcom/ss/android/downloadad/a/a/c$a;->c:Z

    .line 807
    return-object p0
.end method

.method public a()Lcom/ss/android/downloadad/a/a/c;
    .registers 3

    .line 971
    new-instance v0, Lcom/ss/android/downloadad/a/a/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ss/android/downloadad/a/a/c;-><init>(Lcom/ss/android/downloadad/a/a/c$a;Lcom/ss/android/downloadad/a/a/c$1;)V

    return-object v0
.end method

.method public b(I)Lcom/ss/android/downloadad/a/a/c$a;
    .registers 2

    .line 931
    iput p1, p0, Lcom/ss/android/downloadad/a/a/c$a;->w:I

    .line 932
    return-object p0
.end method

.method public b(J)Lcom/ss/android/downloadad/a/a/c$a;
    .registers 3

    .line 801
    iput-wide p1, p0, Lcom/ss/android/downloadad/a/a/c$a;->b:J

    .line 802
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;
    .registers 2

    .line 821
    iput-object p1, p0, Lcom/ss/android/downloadad/a/a/c$a;->f:Ljava/lang/String;

    .line 822
    return-object p0
.end method

.method public b(Z)Lcom/ss/android/downloadad/a/a/c$a;
    .registers 2

    .line 891
    iput-boolean p1, p0, Lcom/ss/android/downloadad/a/a/c$a;->p:Z

    .line 892
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;
    .registers 2

    .line 826
    iput-object p1, p0, Lcom/ss/android/downloadad/a/a/c$a;->g:Ljava/lang/String;

    .line 827
    return-object p0
.end method

.method public c(Z)Lcom/ss/android/downloadad/a/a/c$a;
    .registers 2

    .line 926
    iput-boolean p1, p0, Lcom/ss/android/downloadad/a/a/c$a;->v:Z

    .line 927
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;
    .registers 2

    .line 846
    iput-object p1, p0, Lcom/ss/android/downloadad/a/a/c$a;->k:Ljava/lang/String;

    .line 847
    return-object p0
.end method

.method public d(Z)Lcom/ss/android/downloadad/a/a/c$a;
    .registers 2

    .line 946
    iput-boolean p1, p0, Lcom/ss/android/downloadad/a/a/c$a;->B:Z

    .line 947
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;
    .registers 2

    .line 871
    iput-object p1, p0, Lcom/ss/android/downloadad/a/a/c$a;->l:Ljava/lang/String;

    .line 872
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;
    .registers 2

    .line 876
    iput-object p1, p0, Lcom/ss/android/downloadad/a/a/c$a;->m:Ljava/lang/String;

    .line 877
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c$a;
    .registers 2

    .line 936
    iput-object p1, p0, Lcom/ss/android/downloadad/a/a/c$a;->x:Ljava/lang/String;

    .line 937
    return-object p0
.end method
