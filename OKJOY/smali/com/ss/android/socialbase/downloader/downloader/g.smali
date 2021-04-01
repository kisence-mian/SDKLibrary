.class public Lcom/ss/android/socialbase/downloader/downloader/g;
.super Ljava/lang/Object;
.source "DownloaderBuilder.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/ss/android/socialbase/downloader/downloader/k;

.field private c:Lcom/ss/android/socialbase/downloader/downloader/l;

.field private d:I

.field private e:Lcom/ss/android/socialbase/downloader/downloader/i;

.field private f:Lcom/ss/android/socialbase/downloader/d/ac;

.field private g:Lcom/ss/android/socialbase/downloader/i/f;

.field private h:Lcom/ss/android/socialbase/downloader/i/d;

.field private i:Lcom/ss/android/socialbase/downloader/downloader/m;

.field private j:Ljava/util/concurrent/ExecutorService;

.field private k:Ljava/util/concurrent/ExecutorService;

.field private l:Ljava/util/concurrent/ExecutorService;

.field private m:Ljava/util/concurrent/ExecutorService;

.field private n:I

.field private o:Lcom/ss/android/socialbase/downloader/downloader/h;

.field private p:Z

.field private q:Lcom/ss/android/socialbase/downloader/downloader/q;

.field private r:I

.field private s:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const v0, 0x3cfffdff

    iput v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->r:I

    .line 47
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->a:Landroid/content/Context;

    .line 48
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a(I)Lcom/ss/android/socialbase/downloader/downloader/g;
    .registers 2

    .prologue
    .line 126
    iput p1, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->r:I

    .line 127
    return-object p0
.end method

.method public a(Lcom/ss/android/socialbase/downloader/i/f;)Lcom/ss/android/socialbase/downloader/downloader/g;
    .registers 2

    .prologue
    .line 81
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->g:Lcom/ss/android/socialbase/downloader/i/f;

    .line 82
    return-object p0
.end method

.method public a(Lorg/json/JSONObject;)Lcom/ss/android/socialbase/downloader/downloader/g;
    .registers 2

    .prologue
    .line 142
    iput-object p1, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->s:Lorg/json/JSONObject;

    .line 143
    return-object p0
.end method

.method public b()Lcom/ss/android/socialbase/downloader/downloader/k;
    .registers 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->b:Lcom/ss/android/socialbase/downloader/downloader/k;

    return-object v0
.end method

.method public c()Lcom/ss/android/socialbase/downloader/downloader/l;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->c:Lcom/ss/android/socialbase/downloader/downloader/l;

    return-object v0
.end method

.method public d()Lcom/ss/android/socialbase/downloader/i/f;
    .registers 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->g:Lcom/ss/android/socialbase/downloader/i/f;

    return-object v0
.end method

.method public e()Lcom/ss/android/socialbase/downloader/i/d;
    .registers 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->h:Lcom/ss/android/socialbase/downloader/i/d;

    return-object v0
.end method

.method public f()Lcom/ss/android/socialbase/downloader/downloader/m;
    .registers 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->i:Lcom/ss/android/socialbase/downloader/downloader/m;

    return-object v0
.end method

.method public g()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->j:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public h()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .prologue
    .line 175
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->k:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public i()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->l:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public j()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->m:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public k()I
    .registers 2

    .prologue
    .line 187
    iget v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->d:I

    return v0
.end method

.method public l()Lcom/ss/android/socialbase/downloader/downloader/i;
    .registers 2

    .prologue
    .line 191
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->e:Lcom/ss/android/socialbase/downloader/downloader/i;

    return-object v0
.end method

.method public m()Lcom/ss/android/socialbase/downloader/downloader/h;
    .registers 2

    .prologue
    .line 195
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->o:Lcom/ss/android/socialbase/downloader/downloader/h;

    return-object v0
.end method

.method public n()I
    .registers 2

    .prologue
    .line 199
    iget v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->n:I

    return v0
.end method

.method public o()Z
    .registers 2

    .prologue
    .line 203
    iget-boolean v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->p:Z

    return v0
.end method

.method public p()Lcom/ss/android/socialbase/downloader/downloader/q;
    .registers 2

    .prologue
    .line 207
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->q:Lcom/ss/android/socialbase/downloader/downloader/q;

    return-object v0
.end method

.method public q()I
    .registers 2

    .prologue
    .line 211
    iget v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->r:I

    return v0
.end method

.method public r()Lcom/ss/android/socialbase/downloader/d/ac;
    .registers 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->f:Lcom/ss/android/socialbase/downloader/d/ac;

    return-object v0
.end method

.method public s()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/ss/android/socialbase/downloader/downloader/g;->s:Lorg/json/JSONObject;

    return-object v0
.end method

.method public t()Lcom/ss/android/socialbase/downloader/downloader/f;
    .registers 2

    .prologue
    .line 223
    new-instance v0, Lcom/ss/android/socialbase/downloader/downloader/f;

    invoke-direct {v0, p0}, Lcom/ss/android/socialbase/downloader/downloader/f;-><init>(Lcom/ss/android/socialbase/downloader/downloader/g;)V

    return-object v0
.end method
