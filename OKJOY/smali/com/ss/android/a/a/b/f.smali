.class public Lcom/ss/android/a/a/b/f;
.super Ljava/lang/Object;
.source "SimpleDownloadModel.java"

# interfaces
.implements Lcom/ss/android/a/a/b/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/a/a/b/f$a;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:J

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

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:Lcom/ss/android/socialbase/downloader/d/q;


# direct methods
.method private constructor <init>(Lcom/ss/android/a/a/b/f$a;)V
    .registers 4

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Lcom/ss/android/a/a/b/f$a;->a(Lcom/ss/android/a/a/b/f$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/a/a/b/f;->b:J

    .line 52
    invoke-static {p1}, Lcom/ss/android/a/a/b/f$a;->b(Lcom/ss/android/a/a/b/f$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/a/a/b/f;->c:J

    .line 53
    invoke-static {p1}, Lcom/ss/android/a/a/b/f$a;->c(Lcom/ss/android/a/a/b/f$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/b/f;->a:Ljava/lang/String;

    .line 54
    invoke-static {p1}, Lcom/ss/android/a/a/b/f$a;->d(Lcom/ss/android/a/a/b/f$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/b/f;->d:Ljava/lang/String;

    .line 55
    invoke-static {p1}, Lcom/ss/android/a/a/b/f$a;->e(Lcom/ss/android/a/a/b/f$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/b/f;->e:Ljava/lang/String;

    .line 56
    invoke-static {p1}, Lcom/ss/android/a/a/b/f$a;->f(Lcom/ss/android/a/a/b/f$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/b/f;->f:Ljava/util/Map;

    .line 57
    invoke-static {p1}, Lcom/ss/android/a/a/b/f$a;->g(Lcom/ss/android/a/a/b/f$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/a/a/b/f;->g:Z

    .line 58
    invoke-static {p1}, Lcom/ss/android/a/a/b/f$a;->h(Lcom/ss/android/a/a/b/f$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/a/a/b/f;->h:Z

    .line 59
    invoke-static {p1}, Lcom/ss/android/a/a/b/f$a;->i(Lcom/ss/android/a/a/b/f$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/a/a/b/f;->i:Z

    .line 60
    invoke-static {p1}, Lcom/ss/android/a/a/b/f$a;->j(Lcom/ss/android/a/a/b/f$a;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/b/f;->j:Lorg/json/JSONObject;

    .line 61
    invoke-static {p1}, Lcom/ss/android/a/a/b/f$a;->k(Lcom/ss/android/a/a/b/f$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/a/a/b/f;->k:Z

    .line 62
    invoke-static {p1}, Lcom/ss/android/a/a/b/f$a;->l(Lcom/ss/android/a/a/b/f$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/a/a/b/f;->l:Z

    .line 63
    invoke-static {p1}, Lcom/ss/android/a/a/b/f$a;->m(Lcom/ss/android/a/a/b/f$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/b/f;->m:Ljava/lang/String;

    .line 64
    invoke-static {p1}, Lcom/ss/android/a/a/b/f$a;->n(Lcom/ss/android/a/a/b/f$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/b/f;->n:Ljava/lang/String;

    .line 65
    invoke-static {p1}, Lcom/ss/android/a/a/b/f$a;->o(Lcom/ss/android/a/a/b/f$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/b/f;->o:Ljava/lang/String;

    .line 66
    invoke-static {p1}, Lcom/ss/android/a/a/b/f$a;->p(Lcom/ss/android/a/a/b/f$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/a/a/b/f;->p:Z

    .line 67
    invoke-static {p1}, Lcom/ss/android/a/a/b/f$a;->q(Lcom/ss/android/a/a/b/f$a;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/a/a/b/f;->q:I

    .line 68
    invoke-static {p1}, Lcom/ss/android/a/a/b/f$a;->r(Lcom/ss/android/a/a/b/f$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/b/f;->r:Ljava/lang/String;

    .line 69
    invoke-static {p1}, Lcom/ss/android/a/a/b/f$a;->s(Lcom/ss/android/a/a/b/f$a;)Lcom/ss/android/a/a/c/f;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/b/f;->s:Lcom/ss/android/a/a/c/f;

    .line 70
    invoke-static {p1}, Lcom/ss/android/a/a/b/f$a;->t(Lcom/ss/android/a/a/b/f$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/a/a/b/f;->v:Z

    .line 71
    invoke-static {p1}, Lcom/ss/android/a/a/b/f$a;->u(Lcom/ss/android/a/a/b/f$a;)Lcom/ss/android/socialbase/downloader/d/q;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/b/f;->w:Lcom/ss/android/socialbase/downloader/d/q;

    .line 72
    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/a/a/b/f$a;Lcom/ss/android/a/a/b/f$1;)V
    .registers 3

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/ss/android/a/a/b/f;-><init>(Lcom/ss/android/a/a/b/f$a;)V

    return-void
.end method


# virtual methods
.method public A()Lcom/ss/android/socialbase/downloader/d/q;
    .registers 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/ss/android/a/a/b/f;->w:Lcom/ss/android/socialbase/downloader/d/q;

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ss/android/a/a/b/f;->a:Ljava/lang/String;

    return-object v0
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
    .line 91
    iget-object v0, p0, Lcom/ss/android/a/a/b/f;->t:Ljava/util/List;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/ss/android/a/a/b/f;->u:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .registers 3

    .prologue
    .line 76
    iget-wide v0, p0, Lcom/ss/android/a/a/b/f;->b:J

    return-wide v0
.end method

.method public e()J
    .registers 3

    .prologue
    .line 81
    iget-wide v0, p0, Lcom/ss/android/a/a/b/f;->c:J

    return-wide v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lcom/ss/android/a/a/b/f;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ss/android/a/a/b/f;->e:Ljava/lang/String;

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
    .line 111
    iget-object v0, p0, Lcom/ss/android/a/a/b/f;->f:Ljava/util/Map;

    return-object v0
.end method

.method public i()Z
    .registers 2

    .prologue
    .line 116
    iget-boolean v0, p0, Lcom/ss/android/a/a/b/f;->g:Z

    return v0
.end method

.method public j()Z
    .registers 2

    .prologue
    .line 121
    iget-boolean v0, p0, Lcom/ss/android/a/a/b/f;->h:Z

    return v0
.end method

.method public k()Z
    .registers 2

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/ss/android/a/a/b/f;->i:Z

    return v0
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/ss/android/a/a/b/f;->m:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/ss/android/a/a/b/f;->n:Ljava/lang/String;

    return-object v0
.end method

.method public n()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/ss/android/a/a/b/f;->j:Lorg/json/JSONObject;

    return-object v0
.end method

.method public o()Z
    .registers 2

    .prologue
    .line 171
    iget-boolean v0, p0, Lcom/ss/android/a/a/b/f;->p:Z

    return v0
.end method

.method public p()I
    .registers 2

    .prologue
    .line 176
    iget v0, p0, Lcom/ss/android/a/a/b/f;->q:I

    return v0
.end method

.method public q()Ljava/lang/String;
    .registers 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/ss/android/a/a/b/f;->r:Ljava/lang/String;

    return-object v0
.end method

.method public r()Z
    .registers 2

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public s()Ljava/lang/String;
    .registers 2

    .prologue
    .line 191
    const/4 v0, 0x0

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .registers 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/ss/android/a/a/b/f;->o:Ljava/lang/String;

    return-object v0
.end method

.method public u()Lcom/ss/android/a/a/c/b;
    .registers 2

    .prologue
    .line 206
    const/4 v0, 0x0

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
    .line 211
    const/4 v0, 0x0

    return-object v0
.end method

.method public w()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 216
    const/4 v0, 0x0

    return-object v0
.end method

.method public x()I
    .registers 2

    .prologue
    .line 221
    const/4 v0, 0x0

    return v0
.end method

.method public y()Lcom/ss/android/a/a/c/f;
    .registers 2

    .prologue
    .line 226
    iget-object v0, p0, Lcom/ss/android/a/a/b/f;->s:Lcom/ss/android/a/a/c/f;

    return-object v0
.end method

.method public z()Z
    .registers 2

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/ss/android/a/a/b/f;->v:Z

    return v0
.end method
