.class public Lcom/ss/android/downloadad/a/a/c;
.super Ljava/lang/Object;
.source "AdDownloadModel.java"

# interfaces
.implements Lcom/ss/android/a/a/b/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/downloadad/a/a/c$a;
    }
.end annotation


# instance fields
.field private A:Lcom/ss/android/a/a/c/f;

.field private B:Z

.field private C:Lcom/ss/android/socialbase/downloader/d/q;

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
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lorg/json/JSONObject;

.field private k:Ljava/lang/String;

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/util/Map;
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

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Lorg/json/JSONObject;

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/ss/android/downloadad/a/a/c$a;)V
    .registers 4

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->a(Lcom/ss/android/downloadad/a/a/c$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadad/a/a/c;->a:J

    .line 65
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->b(Lcom/ss/android/downloadad/a/a/c$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadad/a/a/c;->b:J

    .line 66
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->c(Lcom/ss/android/downloadad/a/a/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->c:Z

    .line 67
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->d(Lcom/ss/android/downloadad/a/a/c$a;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadad/a/a/c;->d:I

    .line 68
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->e(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->e:Ljava/lang/String;

    .line 69
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->f(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->f:Ljava/lang/String;

    .line 70
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->g(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->g:Ljava/lang/String;

    .line 71
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->h(Lcom/ss/android/downloadad/a/a/c$a;)Lcom/ss/android/a/a/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->h:Lcom/ss/android/a/a/c/b;

    .line 72
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->i(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->i:Ljava/util/List;

    .line 73
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->j(Lcom/ss/android/downloadad/a/a/c$a;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->j:Lorg/json/JSONObject;

    .line 74
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->k(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->k:Ljava/lang/String;

    .line 75
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->l(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->l:Ljava/util/List;

    .line 76
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->m(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->m:Ljava/lang/String;

    .line 77
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->n(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->n:Ljava/lang/String;

    .line 78
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->o(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->o:Ljava/lang/String;

    .line 79
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->p(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->p:Ljava/util/Map;

    .line 80
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->q(Lcom/ss/android/downloadad/a/a/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->q:Z

    .line 81
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->r(Lcom/ss/android/downloadad/a/a/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->r:Z

    .line 82
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->s(Lcom/ss/android/downloadad/a/a/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->s:Z

    .line 83
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->t(Lcom/ss/android/downloadad/a/a/c$a;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->t:Lorg/json/JSONObject;

    .line 84
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->u(Lcom/ss/android/downloadad/a/a/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->u:Z

    .line 85
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->v(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->v:Ljava/lang/String;

    .line 86
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->w(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->w:Ljava/lang/String;

    .line 87
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->x(Lcom/ss/android/downloadad/a/a/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->x:Z

    .line 88
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->y(Lcom/ss/android/downloadad/a/a/c$a;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadad/a/a/c;->y:I

    .line 89
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->z(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->z:Ljava/lang/String;

    .line 90
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->A(Lcom/ss/android/downloadad/a/a/c$a;)Lcom/ss/android/a/a/c/f;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->A:Lcom/ss/android/a/a/c/f;

    .line 91
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->B(Lcom/ss/android/downloadad/a/a/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->B:Z

    .line 92
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->C(Lcom/ss/android/downloadad/a/a/c$a;)Lcom/ss/android/socialbase/downloader/d/q;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->C:Lcom/ss/android/socialbase/downloader/d/q;

    .line 93
    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadad/a/a/c$a;Lcom/ss/android/downloadad/a/a/c$1;)V
    .registers 3

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/ss/android/downloadad/a/a/c;-><init>(Lcom/ss/android/downloadad/a/a/c$a;)V

    return-void
.end method


# virtual methods
.method public A()Lcom/ss/android/socialbase/downloader/d/q;
    .registers 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->C:Lcom/ss/android/socialbase/downloader/d/q;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 269
    iput-wide p1, p0, Lcom/ss/android/downloadad/a/a/c;->b:J

    .line 270
    return-void
.end method

.method public b()Ljava/util/List;
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
    .line 112
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->l:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->m:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .registers 3

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/ss/android/downloadad/a/a/c;->a:J

    return-wide v0
.end method

.method public e()J
    .registers 3

    .prologue
    .line 102
    iget-wide v0, p0, Lcom/ss/android/downloadad/a/a/c;->b:J

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->n:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->o:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->p:Ljava/util/Map;

    return-object v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->q:Z

    return v0
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->r:Z

    return v0
.end method

.method public k()Z
    .registers 2

    .prologue
    .line 147
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->s:Z

    return v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->v:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->w:Ljava/lang/String;

    return-object v0
.end method

.method public n()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->t:Lorg/json/JSONObject;

    return-object v0
.end method

.method public o()Z
    .registers 2

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->x:Z

    return v0
.end method

.method public p()I
    .registers 2

    .prologue
    .line 197
    iget v0, p0, Lcom/ss/android/downloadad/a/a/c;->y:I

    return v0
.end method

.method public q()Ljava/lang/String;
    .registers 2

    .prologue
    .line 202
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->z:Ljava/lang/String;

    return-object v0
.end method

.method public r()Z
    .registers 2

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->c:Z

    return v0
.end method

.method public s()Ljava/lang/String;
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public u()Lcom/ss/android/a/a/c/b;
    .registers 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->h:Lcom/ss/android/a/a/c/b;

    return-object v0
.end method

.method public v()Ljava/util/List;
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
    .line 232
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->i:Ljava/util/List;

    return-object v0
.end method

.method public w()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->j:Lorg/json/JSONObject;

    return-object v0
.end method

.method public x()I
    .registers 2

    .prologue
    .line 242
    iget v0, p0, Lcom/ss/android/downloadad/a/a/c;->d:I

    return v0
.end method

.method public y()Lcom/ss/android/a/a/c/f;
    .registers 2

    .prologue
    .line 247
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->A:Lcom/ss/android/a/a/c/f;

    return-object v0
.end method

.method public z()Z
    .registers 2

    .prologue
    .line 252
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->B:Z

    return v0
.end method
