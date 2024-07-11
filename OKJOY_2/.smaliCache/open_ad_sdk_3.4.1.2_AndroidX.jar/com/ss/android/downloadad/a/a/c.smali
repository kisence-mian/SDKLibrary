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

.field private C:Lcom/ss/android/socialbase/downloader/depend/t;

.field private D:Ljava/lang/String;

.field private E:J

.field private F:I

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:I

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

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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
            "Ljava/util/Map<",
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
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Z

.field private y:I

.field private z:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/ss/android/downloadad/a/a/c$a;)V
    .registers 4

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v0, 0x1

    iput v0, p0, Lcom/ss/android/downloadad/a/a/c;->I:I

    .line 155
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->a(Lcom/ss/android/downloadad/a/a/c$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadad/a/a/c;->a:J

    .line 156
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->b(Lcom/ss/android/downloadad/a/a/c$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadad/a/a/c;->b:J

    .line 157
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->c(Lcom/ss/android/downloadad/a/a/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->c:Z

    .line 158
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->d(Lcom/ss/android/downloadad/a/a/c$a;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadad/a/a/c;->d:I

    .line 159
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->e(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->e:Ljava/lang/String;

    .line 160
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->f(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->f:Ljava/lang/String;

    .line 161
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->g(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->g:Ljava/lang/String;

    .line 162
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->h(Lcom/ss/android/downloadad/a/a/c$a;)Lcom/ss/android/a/a/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->h:Lcom/ss/android/a/a/c/b;

    .line 163
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->i(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->i:Ljava/util/List;

    .line 164
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->j(Lcom/ss/android/downloadad/a/a/c$a;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->j:Lorg/json/JSONObject;

    .line 165
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->k(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->k:Ljava/lang/String;

    .line 166
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->l(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->l:Ljava/util/List;

    .line 167
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->m(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->m:Ljava/lang/String;

    .line 168
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->n(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->n:Ljava/lang/String;

    .line 169
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->o(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->o:Ljava/lang/String;

    .line 170
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->p(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->p:Ljava/util/Map;

    .line 171
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->q(Lcom/ss/android/downloadad/a/a/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->q:Z

    .line 172
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->r(Lcom/ss/android/downloadad/a/a/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->r:Z

    .line 173
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->s(Lcom/ss/android/downloadad/a/a/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->s:Z

    .line 174
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->t(Lcom/ss/android/downloadad/a/a/c$a;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->t:Lorg/json/JSONObject;

    .line 175
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->u(Lcom/ss/android/downloadad/a/a/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->u:Z

    .line 176
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->v(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->v:Ljava/lang/String;

    .line 177
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->w(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->w:Ljava/lang/String;

    .line 178
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->x(Lcom/ss/android/downloadad/a/a/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->x:Z

    .line 179
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->y(Lcom/ss/android/downloadad/a/a/c$a;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadad/a/a/c;->y:I

    .line 180
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->z(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->z:Ljava/lang/String;

    .line 181
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->A(Lcom/ss/android/downloadad/a/a/c$a;)Lcom/ss/android/a/a/c/f;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->A:Lcom/ss/android/a/a/c/f;

    .line 182
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->B(Lcom/ss/android/downloadad/a/a/c$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->B:Z

    .line 183
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->C(Lcom/ss/android/downloadad/a/a/c$a;)Lcom/ss/android/socialbase/downloader/depend/t;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->C:Lcom/ss/android/socialbase/downloader/depend/t;

    .line 184
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->D(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->D:Ljava/lang/String;

    .line 185
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->E(Lcom/ss/android/downloadad/a/a/c$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/downloadad/a/a/c;->E:J

    .line 186
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->F(Lcom/ss/android/downloadad/a/a/c$a;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/downloadad/a/a/c;->F:I

    .line 187
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->G(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->G:Ljava/lang/String;

    .line 188
    invoke-static {p1}, Lcom/ss/android/downloadad/a/a/c$a;->H(Lcom/ss/android/downloadad/a/a/c$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/downloadad/a/a/c;->H:Ljava/lang/String;

    .line 189
    return-void
.end method

.method synthetic constructor <init>(Lcom/ss/android/downloadad/a/a/c$a;Lcom/ss/android/downloadad/a/a/c$1;)V
    .registers 3

    .line 28
    invoke-direct {p0, p1}, Lcom/ss/android/downloadad/a/a/c;-><init>(Lcom/ss/android/downloadad/a/a/c$a;)V

    return-void
.end method


# virtual methods
.method public A()I
    .registers 2

    .line 348
    iget v0, p0, Lcom/ss/android/downloadad/a/a/c;->d:I

    return v0
.end method

.method public B()Lcom/ss/android/a/a/c/f;
    .registers 2

    .line 353
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->A:Lcom/ss/android/a/a/c/f;

    return-object v0
.end method

.method public C()Z
    .registers 2

    .line 358
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->B:Z

    return v0
.end method

.method public D()Lcom/ss/android/socialbase/downloader/depend/t;
    .registers 2

    .line 363
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->C:Lcom/ss/android/socialbase/downloader/depend/t;

    return-object v0
.end method

.method public E()Z
    .registers 3

    .line 368
    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/a/c;->p()Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/ss/android/socialbase/downloader/g/a;->a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/g/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ss/android/downloadad/a/a/c;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ss/android/a/a/d/a;->a(Lcom/ss/android/socialbase/downloader/g/a;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public F()I
    .registers 2

    .line 373
    iget v0, p0, Lcom/ss/android/downloadad/a/a/c;->F:I

    return v0
.end method

.method public G()I
    .registers 2

    .line 378
    iget v0, p0, Lcom/ss/android/downloadad/a/a/c;->I:I

    return v0
.end method

.method public H()Ljava/lang/String;
    .registers 2

    .line 383
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->G:Ljava/lang/String;

    return-object v0
.end method

.method public I()Ljava/lang/String;
    .registers 2

    .line 388
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->H:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic a(Ljava/lang/String;)Lcom/ss/android/a/a/b/c;
    .registers 2

    .line 28
    invoke-virtual {p0, p1}, Lcom/ss/android/downloadad/a/a/c;->d(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c;

    move-result-object p1

    return-object p1
.end method

.method public a(I)Lcom/ss/android/downloadad/a/a/c;
    .registers 2

    .line 550
    iput p1, p0, Lcom/ss/android/downloadad/a/a/c;->I:I

    .line 551
    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 213
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->k:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .registers 3

    .line 408
    iput-wide p1, p0, Lcom/ss/android/downloadad/a/a/c;->b:J

    .line 409
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c;
    .registers 2

    .line 449
    iput-object p1, p0, Lcom/ss/android/downloadad/a/a/c;->f:Ljava/lang/String;

    .line 450
    return-object p0
.end method

.method public b()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->l:Ljava/util/List;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c;
    .registers 2

    .line 469
    iput-object p1, p0, Lcom/ss/android/downloadad/a/a/c;->k:Ljava/lang/String;

    .line 470
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .line 223
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->m:Ljava/lang/String;

    return-object v0
.end method

.method public d()J
    .registers 3

    .line 193
    iget-wide v0, p0, Lcom/ss/android/downloadad/a/a/c;->a:J

    return-wide v0
.end method

.method public d(Ljava/lang/String;)Lcom/ss/android/downloadad/a/a/c;
    .registers 2

    .line 510
    iput-object p1, p0, Lcom/ss/android/downloadad/a/a/c;->v:Ljava/lang/String;

    .line 511
    return-object p0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 198
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->D:Ljava/lang/String;

    return-object v0
.end method

.method public f()J
    .registers 3

    .line 203
    iget-wide v0, p0, Lcom/ss/android/downloadad/a/a/c;->E:J

    return-wide v0
.end method

.method public g()J
    .registers 3

    .line 208
    iget-wide v0, p0, Lcom/ss/android/downloadad/a/a/c;->b:J

    return-wide v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 228
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->n:Ljava/lang/String;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->o:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->p:Ljava/util/Map;

    return-object v0
.end method

.method public k()Z
    .registers 2

    .line 243
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->q:Z

    return v0
.end method

.method public l()Z
    .registers 2

    .line 248
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->r:Z

    return v0
.end method

.method public m()Z
    .registers 2

    .line 253
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->s:Z

    return v0
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .line 268
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->v:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .registers 2

    .line 273
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->w:Ljava/lang/String;

    return-object v0
.end method

.method public p()Lorg/json/JSONObject;
    .registers 2

    .line 283
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->t:Lorg/json/JSONObject;

    return-object v0
.end method

.method public q()Z
    .registers 2

    .line 298
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->x:Z

    return v0
.end method

.method public r()I
    .registers 2

    .line 303
    iget v0, p0, Lcom/ss/android/downloadad/a/a/c;->y:I

    return v0
.end method

.method public s()Ljava/lang/String;
    .registers 2

    .line 308
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->z:Ljava/lang/String;

    return-object v0
.end method

.method public t()Z
    .registers 2

    .line 313
    iget-boolean v0, p0, Lcom/ss/android/downloadad/a/a/c;->c:Z

    return v0
.end method

.method public u()Ljava/lang/String;
    .registers 2

    .line 318
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public v()Ljava/lang/String;
    .registers 2

    .line 323
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .registers 2

    .line 328
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->g:Ljava/lang/String;

    return-object v0
.end method

.method public x()Lcom/ss/android/a/a/c/b;
    .registers 2

    .line 333
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->h:Lcom/ss/android/a/a/c/b;

    return-object v0
.end method

.method public y()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->i:Ljava/util/List;

    return-object v0
.end method

.method public z()Lorg/json/JSONObject;
    .registers 2

    .line 343
    iget-object v0, p0, Lcom/ss/android/downloadad/a/a/c;->j:Lorg/json/JSONObject;

    return-object v0
.end method
