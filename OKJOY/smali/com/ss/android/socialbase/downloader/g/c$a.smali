.class public Lcom/ss/android/socialbase/downloader/g/c$a;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/socialbase/downloader/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private C:Ljava/lang/String;

.field private D:Z

.field private E:Z

.field private F:Lcom/ss/android/socialbase/downloader/b/g;

.field private G:Z

.field private H:Z

.field private I:Z

.field private J:Z

.field private K:Z

.field private L:Lorg/json/JSONObject;

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
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/e;",
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
            "Ljava/util/List",
            "<",
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

    .prologue
    const/4 v1, 0x1

    .line 1948
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1912
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->o:Z

    .line 1929
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/g;->a:Lcom/ss/android/socialbase/downloader/b/g;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->F:Lcom/ss/android/socialbase/downloader/b/g;

    .line 1935
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->J:Z

    .line 1949
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .prologue
    const/4 v1, 0x1

    .line 1951
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1912
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->o:Z

    .line 1929
    sget-object v0, Lcom/ss/android/socialbase/downloader/b/g;->a:Lcom/ss/android/socialbase/downloader/b/g;

    iput-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->F:Lcom/ss/android/socialbase/downloader/b/g;

    .line 1935
    iput-boolean v1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->J:Z

    .line 1952
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->c:Ljava/lang/String;

    .line 1953
    return-void
.end method

.method static synthetic A(Lcom/ss/android/socialbase/downloader/g/c$a;)Z
    .registers 2

    .prologue
    .line 1896
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->y:Z

    return v0
.end method

.method static synthetic B(Lcom/ss/android/socialbase/downloader/g/c$a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->z:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic C(Lcom/ss/android/socialbase/downloader/g/c$a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->A:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic D(Lcom/ss/android/socialbase/downloader/g/c$a;)Z
    .registers 2

    .prologue
    .line 1896
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->D:Z

    return v0
.end method

.method static synthetic E(Lcom/ss/android/socialbase/downloader/g/c$a;)Z
    .registers 2

    .prologue
    .line 1896
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->E:Z

    return v0
.end method

.method static synthetic F(Lcom/ss/android/socialbase/downloader/g/c$a;)Lcom/ss/android/socialbase/downloader/b/g;
    .registers 2

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->F:Lcom/ss/android/socialbase/downloader/b/g;

    return-object v0
.end method

.method static synthetic G(Lcom/ss/android/socialbase/downloader/g/c$a;)Z
    .registers 2

    .prologue
    .line 1896
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->G:Z

    return v0
.end method

.method static synthetic H(Lcom/ss/android/socialbase/downloader/g/c$a;)Z
    .registers 2

    .prologue
    .line 1896
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->H:Z

    return v0
.end method

.method static synthetic I(Lcom/ss/android/socialbase/downloader/g/c$a;)Z
    .registers 2

    .prologue
    .line 1896
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->J:Z

    return v0
.end method

.method static synthetic J(Lcom/ss/android/socialbase/downloader/g/c$a;)Z
    .registers 2

    .prologue
    .line 1896
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->K:Z

    return v0
.end method

.method static synthetic K(Lcom/ss/android/socialbase/downloader/g/c$a;)Z
    .registers 2

    .prologue
    .line 1896
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->I:Z

    return v0
.end method

.method static synthetic L(Lcom/ss/android/socialbase/downloader/g/c$a;)Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->L:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic a(Lcom/ss/android/socialbase/downloader/g/c$a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/ss/android/socialbase/downloader/g/c$a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/ss/android/socialbase/downloader/g/c$a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/ss/android/socialbase/downloader/g/c$a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/ss/android/socialbase/downloader/g/c$a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/ss/android/socialbase/downloader/g/c$a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic g(Lcom/ss/android/socialbase/downloader/g/c$a;)Z
    .registers 2

    .prologue
    .line 1896
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->f:Z

    return v0
.end method

.method static synthetic h(Lcom/ss/android/socialbase/downloader/g/c$a;)Ljava/util/List;
    .registers 2

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic i(Lcom/ss/android/socialbase/downloader/g/c$a;)I
    .registers 2

    .prologue
    .line 1896
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->i:I

    return v0
.end method

.method static synthetic j(Lcom/ss/android/socialbase/downloader/g/c$a;)I
    .registers 2

    .prologue
    .line 1896
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->l:I

    return v0
.end method

.method static synthetic k(Lcom/ss/android/socialbase/downloader/g/c$a;)I
    .registers 2

    .prologue
    .line 1896
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->m:I

    return v0
.end method

.method static synthetic l(Lcom/ss/android/socialbase/downloader/g/c$a;)Z
    .registers 2

    .prologue
    .line 1896
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->n:Z

    return v0
.end method

.method static synthetic m(Lcom/ss/android/socialbase/downloader/g/c$a;)[Ljava/lang/String;
    .registers 2

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->j:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/ss/android/socialbase/downloader/g/c$a;)[I
    .registers 2

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->k:[I

    return-object v0
.end method

.method static synthetic o(Lcom/ss/android/socialbase/downloader/g/c$a;)Z
    .registers 2

    .prologue
    .line 1896
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->o:Z

    return v0
.end method

.method static synthetic p(Lcom/ss/android/socialbase/downloader/g/c$a;)I
    .registers 2

    .prologue
    .line 1896
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->p:I

    return v0
.end method

.method static synthetic q(Lcom/ss/android/socialbase/downloader/g/c$a;)I
    .registers 2

    .prologue
    .line 1896
    iget v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->q:I

    return v0
.end method

.method static synthetic r(Lcom/ss/android/socialbase/downloader/g/c$a;)Ljava/util/List;
    .registers 2

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->r:Ljava/util/List;

    return-object v0
.end method

.method static synthetic s(Lcom/ss/android/socialbase/downloader/g/c$a;)Z
    .registers 2

    .prologue
    .line 1896
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->s:Z

    return v0
.end method

.method static synthetic t(Lcom/ss/android/socialbase/downloader/g/c$a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->t:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic u(Lcom/ss/android/socialbase/downloader/g/c$a;)Z
    .registers 2

    .prologue
    .line 1896
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->u:Z

    return v0
.end method

.method static synthetic v(Lcom/ss/android/socialbase/downloader/g/c$a;)Z
    .registers 2

    .prologue
    .line 1896
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->B:Z

    return v0
.end method

.method static synthetic w(Lcom/ss/android/socialbase/downloader/g/c$a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 1896
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->C:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic x(Lcom/ss/android/socialbase/downloader/g/c$a;)Z
    .registers 2

    .prologue
    .line 1896
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->v:Z

    return v0
.end method

.method static synthetic y(Lcom/ss/android/socialbase/downloader/g/c$a;)Z
    .registers 2

    .prologue
    .line 1896
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->w:Z

    return v0
.end method

.method static synthetic z(Lcom/ss/android/socialbase/downloader/g/c$a;)Z
    .registers 2

    .prologue
    .line 1896
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->x:Z

    return v0
.end method


# virtual methods
.method public a(I)Lcom/ss/android/socialbase/downloader/g/c$a;
    .registers 2

    .prologue
    .line 2012
    iput p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->l:I

    .line 2013
    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/b/g;)Lcom/ss/android/socialbase/downloader/g/c$a;
    .registers 2

    .prologue
    .line 2112
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->F:Lcom/ss/android/socialbase/downloader/b/g;

    .line 2113
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c$a;
    .registers 2

    .prologue
    .line 1956
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->a:Ljava/lang/String;

    .line 1957
    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/ss/android/socialbase/downloader/g/c$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/ss/android/socialbase/downloader/g/e;",
            ">;)",
            "Lcom/ss/android/socialbase/downloader/g/c$a;"
        }
    .end annotation

    .prologue
    .line 1991
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->h:Ljava/util/List;

    .line 1992
    return-object p0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/g/c$a;
    .registers 2

    .prologue
    .line 2142
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->L:Lorg/json/JSONObject;

    .line 2143
    return-object p0
.end method

.method public a(Z)Lcom/ss/android/socialbase/downloader/g/c$a;
    .registers 2

    .prologue
    .line 1986
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->f:Z

    .line 1987
    return-object p0
.end method

.method public a()Lcom/ss/android/socialbase/downloader/g/c;
    .registers 3

    .prologue
    .line 2147
    new-instance v0, Lcom/ss/android/socialbase/downloader/g/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ss/android/socialbase/downloader/g/c;-><init>(Lcom/ss/android/socialbase/downloader/g/c$a;Lcom/ss/android/socialbase/downloader/g/c$1;)V

    return-object v0
.end method

.method public b(I)Lcom/ss/android/socialbase/downloader/g/c$a;
    .registers 2

    .prologue
    .line 2017
    iput p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->m:I

    .line 2018
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c$a;
    .registers 2

    .prologue
    .line 1961
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->b:Ljava/lang/String;

    .line 1962
    return-object p0
.end method

.method public b(Ljava/util/List;)Lcom/ss/android/socialbase/downloader/g/c$a;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/ss/android/socialbase/downloader/g/c$a;"
        }
    .end annotation

    .prologue
    .line 2042
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->r:Ljava/util/List;

    .line 2043
    return-object p0
.end method

.method public b(Z)Lcom/ss/android/socialbase/downloader/g/c$a;
    .registers 2

    .prologue
    .line 2022
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->n:Z

    .line 2023
    return-object p0
.end method

.method public c(I)Lcom/ss/android/socialbase/downloader/g/c$a;
    .registers 2

    .prologue
    .line 2032
    iput p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->p:I

    .line 2033
    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c$a;
    .registers 2

    .prologue
    .line 1966
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->c:Ljava/lang/String;

    .line 1967
    return-object p0
.end method

.method public c(Z)Lcom/ss/android/socialbase/downloader/g/c$a;
    .registers 2

    .prologue
    .line 2052
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->u:Z

    .line 2053
    return-object p0
.end method

.method public d(I)Lcom/ss/android/socialbase/downloader/g/c$a;
    .registers 2

    .prologue
    .line 2037
    iput p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->q:I

    .line 2038
    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c$a;
    .registers 2

    .prologue
    .line 1971
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->d:Ljava/lang/String;

    .line 1972
    return-object p0
.end method

.method public d(Z)Lcom/ss/android/socialbase/downloader/g/c$a;
    .registers 2

    .prologue
    .line 2057
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->s:Z

    .line 2058
    return-object p0
.end method

.method public e(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c$a;
    .registers 2

    .prologue
    .line 1981
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->g:Ljava/lang/String;

    .line 1982
    return-object p0
.end method

.method public e(Z)Lcom/ss/android/socialbase/downloader/g/c$a;
    .registers 2

    .prologue
    .line 2062
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->v:Z

    .line 2063
    return-object p0
.end method

.method public f(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c$a;
    .registers 2

    .prologue
    .line 2047
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->t:Ljava/lang/String;

    .line 2048
    return-object p0
.end method

.method public f(Z)Lcom/ss/android/socialbase/downloader/g/c$a;
    .registers 2

    .prologue
    .line 2067
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->w:Z

    .line 2068
    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c$a;
    .registers 2

    .prologue
    .line 2082
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->z:Ljava/lang/String;

    .line 2083
    return-object p0
.end method

.method public g(Z)Lcom/ss/android/socialbase/downloader/g/c$a;
    .registers 2

    .prologue
    .line 2072
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->x:Z

    .line 2073
    return-object p0
.end method

.method public h(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c$a;
    .registers 2

    .prologue
    .line 2087
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->A:Ljava/lang/String;

    .line 2088
    return-object p0
.end method

.method public h(Z)Lcom/ss/android/socialbase/downloader/g/c$a;
    .registers 2

    .prologue
    .line 2077
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->y:Z

    .line 2078
    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/ss/android/socialbase/downloader/g/c$a;
    .registers 2

    .prologue
    .line 2097
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->C:Ljava/lang/String;

    .line 2098
    return-object p0
.end method

.method public i(Z)Lcom/ss/android/socialbase/downloader/g/c$a;
    .registers 2

    .prologue
    .line 2092
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->B:Z

    .line 2093
    return-object p0
.end method

.method public j(Z)Lcom/ss/android/socialbase/downloader/g/c$a;
    .registers 2

    .prologue
    .line 2102
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->D:Z

    .line 2103
    return-object p0
.end method

.method public k(Z)Lcom/ss/android/socialbase/downloader/g/c$a;
    .registers 2

    .prologue
    .line 2107
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->E:Z

    .line 2108
    return-object p0
.end method

.method public l(Z)Lcom/ss/android/socialbase/downloader/g/c$a;
    .registers 2

    .prologue
    .line 2117
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->G:Z

    .line 2118
    return-object p0
.end method

.method public m(Z)Lcom/ss/android/socialbase/downloader/g/c$a;
    .registers 2

    .prologue
    .line 2127
    iput-boolean p1, p0, Lcom/ss/android/socialbase/downloader/g/c$a;->I:Z

    .line 2128
    return-object p0
.end method
