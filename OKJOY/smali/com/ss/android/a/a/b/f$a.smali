.class public Lcom/ss/android/a/a/b/f$a;
.super Ljava/lang/Object;
.source "SimpleDownloadModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ss/android/a/a/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:J

.field private b:J

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Lorg/json/JSONObject;

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Z

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Lcom/ss/android/a/a/c/f;

.field private t:Z

.field private u:Lcom/ss/android/socialbase/downloader/d/q;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 244
    const-string v0, "application/vnd.android.package-archive"

    iput-object v0, p0, Lcom/ss/android/a/a/b/f$a;->e:Ljava/lang/String;

    .line 246
    iput-boolean v1, p0, Lcom/ss/android/a/a/b/f$a;->g:Z

    .line 247
    iput-boolean v1, p0, Lcom/ss/android/a/a/b/f$a;->h:Z

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ss/android/a/a/b/f$a;->i:Z

    .line 250
    iput-boolean v1, p0, Lcom/ss/android/a/a/b/f$a;->k:Z

    .line 251
    iput-boolean v1, p0, Lcom/ss/android/a/a/b/f$a;->l:Z

    .line 272
    return-void
.end method

.method static synthetic a(Lcom/ss/android/a/a/b/f$a;)J
    .registers 3

    .prologue
    .line 239
    iget-wide v0, p0, Lcom/ss/android/a/a/b/f$a;->a:J

    return-wide v0
.end method

.method static synthetic b(Lcom/ss/android/a/a/b/f$a;)J
    .registers 3

    .prologue
    .line 239
    iget-wide v0, p0, Lcom/ss/android/a/a/b/f$a;->b:J

    return-wide v0
.end method

.method static synthetic c(Lcom/ss/android/a/a/b/f$a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/ss/android/a/a/b/f$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/ss/android/a/a/b/f$a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/ss/android/a/a/b/f$a;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/ss/android/a/a/b/f$a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/ss/android/a/a/b/f$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f(Lcom/ss/android/a/a/b/f$a;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/ss/android/a/a/b/f$a;->f:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic g(Lcom/ss/android/a/a/b/f$a;)Z
    .registers 2

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/ss/android/a/a/b/f$a;->g:Z

    return v0
.end method

.method static synthetic h(Lcom/ss/android/a/a/b/f$a;)Z
    .registers 2

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/ss/android/a/a/b/f$a;->h:Z

    return v0
.end method

.method static synthetic i(Lcom/ss/android/a/a/b/f$a;)Z
    .registers 2

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/ss/android/a/a/b/f$a;->i:Z

    return v0
.end method

.method static synthetic j(Lcom/ss/android/a/a/b/f$a;)Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/ss/android/a/a/b/f$a;->j:Lorg/json/JSONObject;

    return-object v0
.end method

.method static synthetic k(Lcom/ss/android/a/a/b/f$a;)Z
    .registers 2

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/ss/android/a/a/b/f$a;->k:Z

    return v0
.end method

.method static synthetic l(Lcom/ss/android/a/a/b/f$a;)Z
    .registers 2

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/ss/android/a/a/b/f$a;->l:Z

    return v0
.end method

.method static synthetic m(Lcom/ss/android/a/a/b/f$a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/ss/android/a/a/b/f$a;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic n(Lcom/ss/android/a/a/b/f$a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/ss/android/a/a/b/f$a;->n:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/ss/android/a/a/b/f$a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/ss/android/a/a/b/f$a;->o:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic p(Lcom/ss/android/a/a/b/f$a;)Z
    .registers 2

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/ss/android/a/a/b/f$a;->p:Z

    return v0
.end method

.method static synthetic q(Lcom/ss/android/a/a/b/f$a;)I
    .registers 2

    .prologue
    .line 239
    iget v0, p0, Lcom/ss/android/a/a/b/f$a;->q:I

    return v0
.end method

.method static synthetic r(Lcom/ss/android/a/a/b/f$a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/ss/android/a/a/b/f$a;->r:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic s(Lcom/ss/android/a/a/b/f$a;)Lcom/ss/android/a/a/c/f;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/ss/android/a/a/b/f$a;->s:Lcom/ss/android/a/a/c/f;

    return-object v0
.end method

.method static synthetic t(Lcom/ss/android/a/a/b/f$a;)Z
    .registers 2

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/ss/android/a/a/b/f$a;->t:Z

    return v0
.end method

.method static synthetic u(Lcom/ss/android/a/a/b/f$a;)Lcom/ss/android/socialbase/downloader/d/q;
    .registers 2

    .prologue
    .line 239
    iget-object v0, p0, Lcom/ss/android/a/a/b/f$a;->u:Lcom/ss/android/socialbase/downloader/d/q;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/ss/android/a/a/b/f$a;
    .registers 2

    .prologue
    .line 285
    iput-object p1, p0, Lcom/ss/android/a/a/b/f$a;->c:Ljava/lang/String;

    .line 286
    return-object p0
.end method

.method public a(Z)Lcom/ss/android/a/a/b/f$a;
    .registers 2

    .prologue
    .line 305
    iput-boolean p1, p0, Lcom/ss/android/a/a/b/f$a;->g:Z

    .line 306
    return-object p0
.end method

.method public a()Lcom/ss/android/a/a/b/f;
    .registers 3

    .prologue
    .line 402
    new-instance v0, Lcom/ss/android/a/a/b/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/ss/android/a/a/b/f;-><init>(Lcom/ss/android/a/a/b/f$a;Lcom/ss/android/a/a/b/f$1;)V

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/ss/android/a/a/b/f$a;
    .registers 2

    .prologue
    .line 357
    iput-object p1, p0, Lcom/ss/android/a/a/b/f$a;->m:Ljava/lang/String;

    .line 358
    return-object p0
.end method

.method public b(Z)Lcom/ss/android/a/a/b/f$a;
    .registers 2

    .prologue
    .line 310
    iput-boolean p1, p0, Lcom/ss/android/a/a/b/f$a;->h:Z

    .line 311
    return-object p0
.end method

.method public c(Z)Lcom/ss/android/a/a/b/f$a;
    .registers 2

    .prologue
    .line 372
    iput-boolean p1, p0, Lcom/ss/android/a/a/b/f$a;->p:Z

    .line 373
    return-object p0
.end method

.method public d(Z)Lcom/ss/android/a/a/b/f$a;
    .registers 2

    .prologue
    .line 392
    iput-boolean p1, p0, Lcom/ss/android/a/a/b/f$a;->t:Z

    .line 393
    return-object p0
.end method
