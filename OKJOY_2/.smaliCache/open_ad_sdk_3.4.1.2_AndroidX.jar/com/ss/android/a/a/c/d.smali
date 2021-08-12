.class public Lcom/ss/android/a/a/c/d;
.super Ljava/lang/Object;
.source "DownloadEventModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ss/android/a/a/c/d$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:J

.field private final f:Ljava/lang/String;

.field private final g:J

.field private final h:Lorg/json/JSONObject;

.field private final i:Lorg/json/JSONObject;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final k:I

.field private final l:Ljava/lang/Object;

.field private final m:Ljava/lang/String;

.field private final n:Z

.field private final o:Ljava/lang/String;

.field private final p:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/ss/android/a/a/c/d$a;)V
    .registers 4

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->a(Lcom/ss/android/a/a/c/d$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/d;->a:Ljava/lang/String;

    .line 92
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->b(Lcom/ss/android/a/a/c/d$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/d;->b:Ljava/lang/String;

    .line 93
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->c(Lcom/ss/android/a/a/c/d$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/d;->c:Ljava/lang/String;

    .line 94
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->d(Lcom/ss/android/a/a/c/d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/a/a/c/d;->d:Z

    .line 95
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->e(Lcom/ss/android/a/a/c/d$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/a/a/c/d;->e:J

    .line 96
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->f(Lcom/ss/android/a/a/c/d$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/d;->f:Ljava/lang/String;

    .line 97
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->g(Lcom/ss/android/a/a/c/d$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/a/a/c/d;->g:J

    .line 98
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->h(Lcom/ss/android/a/a/c/d$a;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/d;->h:Lorg/json/JSONObject;

    .line 99
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->i(Lcom/ss/android/a/a/c/d$a;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/d;->i:Lorg/json/JSONObject;

    .line 100
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->j(Lcom/ss/android/a/a/c/d$a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/d;->j:Ljava/util/List;

    .line 101
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->k(Lcom/ss/android/a/a/c/d$a;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/a/a/c/d;->k:I

    .line 102
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->l(Lcom/ss/android/a/a/c/d$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/d;->l:Ljava/lang/Object;

    .line 103
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->m(Lcom/ss/android/a/a/c/d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/a/a/c/d;->n:Z

    .line 104
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->n(Lcom/ss/android/a/a/c/d$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/d;->o:Ljava/lang/String;

    .line 105
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->o(Lcom/ss/android/a/a/c/d$a;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/d;->p:Lorg/json/JSONObject;

    .line 106
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->p(Lcom/ss/android/a/a/c/d$a;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ss/android/a/a/c/d;->m:Ljava/lang/String;

    .line 107
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 271
    iget-object v0, p0, Lcom/ss/android/a/a/c/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 275
    iget-object v0, p0, Lcom/ss/android/a/a/c/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .registers 2

    .line 279
    iget-boolean v0, p0, Lcom/ss/android/a/a/c/d;->d:Z

    return v0
.end method

.method public d()Lorg/json/JSONObject;
    .registers 2

    .line 295
    iget-object v0, p0, Lcom/ss/android/a/a/c/d;->h:Lorg/json/JSONObject;

    return-object v0
.end method

.method public e()Z
    .registers 2

    .line 315
    iget-boolean v0, p0, Lcom/ss/android/a/a/c/d;->n:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "category: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/a/a/c/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\ttag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/a/a/c/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tlabel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/a/a/c/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nisAd: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ss/android/a/a/c/d;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tadId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/ss/android/a/a/c/d;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tlogExtra: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/a/a/c/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\textValue: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/ss/android/a/a/c/d;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nextJson: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/a/a/c/d;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nparamsJson: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/a/a/c/d;->i:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nclickTrackUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/a/a/c/d;->j:Ljava/util/List;

    const-string v2, ""

    if-eqz v1, :cond_82

    .line 341
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_83

    :cond_82
    move-object v1, v2

    :goto_83
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\teventSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/a/a/c/d;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\textraObject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/a/a/c/d;->l:Ljava/lang/Object;

    if-eqz v1, :cond_a2

    .line 343
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a3

    :cond_a2
    move-object v1, v2

    :goto_a3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nisV3: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ss/android/a/a/c/d;->n:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tV3EventName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/a/a/c/d;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tV3EventParams: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/a/a/c/d;->p:Lorg/json/JSONObject;

    if-eqz v1, :cond_ce

    .line 346
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_cf

    :cond_ce
    nop

    :goto_cf
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    return-object v0
.end method
