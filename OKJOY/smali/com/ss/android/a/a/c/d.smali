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

.field private final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final j:I

.field private final k:Ljava/lang/Object;

.field private final l:Ljava/lang/String;

.field private final m:Z

.field private final n:Ljava/lang/String;

.field private final o:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/ss/android/a/a/c/d$a;)V
    .registers 4

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->a(Lcom/ss/android/a/a/c/d$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/d;->a:Ljava/lang/String;

    .line 86
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->b(Lcom/ss/android/a/a/c/d$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/d;->b:Ljava/lang/String;

    .line 87
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->c(Lcom/ss/android/a/a/c/d$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/d;->c:Ljava/lang/String;

    .line 88
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->d(Lcom/ss/android/a/a/c/d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/a/a/c/d;->d:Z

    .line 89
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->e(Lcom/ss/android/a/a/c/d$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/a/a/c/d;->e:J

    .line 90
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->f(Lcom/ss/android/a/a/c/d$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/d;->f:Ljava/lang/String;

    .line 91
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->g(Lcom/ss/android/a/a/c/d$a;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ss/android/a/a/c/d;->g:J

    .line 92
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->h(Lcom/ss/android/a/a/c/d$a;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/d;->h:Lorg/json/JSONObject;

    .line 93
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->i(Lcom/ss/android/a/a/c/d$a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/d;->i:Ljava/util/List;

    .line 94
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->j(Lcom/ss/android/a/a/c/d$a;)I

    move-result v0

    iput v0, p0, Lcom/ss/android/a/a/c/d;->j:I

    .line 95
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->k(Lcom/ss/android/a/a/c/d$a;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/d;->k:Ljava/lang/Object;

    .line 96
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->l(Lcom/ss/android/a/a/c/d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ss/android/a/a/c/d;->m:Z

    .line 97
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->m(Lcom/ss/android/a/a/c/d$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/d;->n:Ljava/lang/String;

    .line 98
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->n(Lcom/ss/android/a/a/c/d$a;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/d;->o:Lorg/json/JSONObject;

    .line 99
    invoke-static {p1}, Lcom/ss/android/a/a/c/d$a;->o(Lcom/ss/android/a/a/c/d$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ss/android/a/a/c/d;->l:Ljava/lang/String;

    .line 100
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/ss/android/a/a/c/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 256
    iget-object v0, p0, Lcom/ss/android/a/a/c/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()Z
    .registers 2

    .prologue
    .line 260
    iget-boolean v0, p0, Lcom/ss/android/a/a/c/d;->d:Z

    return v0
.end method

.method public d()Lorg/json/JSONObject;
    .registers 2

    .prologue
    .line 276
    iget-object v0, p0, Lcom/ss/android/a/a/c/d;->h:Lorg/json/JSONObject;

    return-object v0
.end method

.method public e()Z
    .registers 2

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/ss/android/a/a/c/d;->m:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 309
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

    iget-wide v2, p0, Lcom/ss/android/a/a/c/d;->e:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

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

    iget-wide v2, p0, Lcom/ss/android/a/a/c/d;->g:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nextJson: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/a/a/c/d;->h:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nclickTrackUrl: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/ss/android/a/a/c/d;->i:Ljava/util/List;

    if-eqz v0, :cond_ca

    iget-object v0, p0, Lcom/ss/android/a/a/c/d;->i:Ljava/util/List;

    .line 317
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_75
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\teventSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/ss/android/a/a/c/d;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\textraObject: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/ss/android/a/a/c/d;->k:Ljava/lang/Object;

    if-eqz v0, :cond_cd

    iget-object v0, p0, Lcom/ss/android/a/a/c/d;->k:Ljava/lang/Object;

    .line 319
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_95
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\nisV3: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/ss/android/a/a/c/d;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tV3EventName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/ss/android/a/a/c/d;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\tV3EventParams: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/ss/android/a/a/c/d;->o:Lorg/json/JSONObject;

    if-eqz v0, :cond_d0

    iget-object v0, p0, Lcom/ss/android/a/a/c/d;->o:Lorg/json/JSONObject;

    .line 322
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_c1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 309
    return-object v0

    .line 317
    :cond_ca
    const-string v0, ""

    goto :goto_75

    .line 319
    :cond_cd
    const-string v0, ""

    goto :goto_95

    .line 322
    :cond_d0
    const-string v0, ""

    goto :goto_c1
.end method
