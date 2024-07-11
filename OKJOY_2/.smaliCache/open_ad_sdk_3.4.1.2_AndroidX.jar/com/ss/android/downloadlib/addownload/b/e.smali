.class public Lcom/ss/android/downloadlib/addownload/b/e;
.super Ljava/lang/Object;
.source "ModelBox.java"

# interfaces
.implements Lcom/ss/android/downloadad/a/b/a;


# instance fields
.field public a:J

.field public b:Lcom/ss/android/a/a/b/c;

.field public c:Lcom/ss/android/a/a/b/b;

.field public d:Lcom/ss/android/a/a/b/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(JLcom/ss/android/a/a/b/c;Lcom/ss/android/a/a/b/b;Lcom/ss/android/a/a/b/a;)V
    .registers 6

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-wide p1, p0, Lcom/ss/android/downloadlib/addownload/b/e;->a:J

    .line 34
    iput-object p3, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    .line 35
    iput-object p4, p0, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/a/a/b/b;

    .line 36
    iput-object p5, p0, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/a/a/b/a;

    .line 37
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .line 55
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()J
    .registers 3

    .line 60
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public c()Z
    .registers 2

    .line 65
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->t()Z

    move-result v0

    return v0
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->u()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->v()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 80
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->x()Lcom/ss/android/a/a/c/b;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 81
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->x()Lcom/ss/android/a/a/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ss/android/a/a/c/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 83
    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lorg/json/JSONObject;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->z()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public h()I
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/a/a/b/a;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/a;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_a

    .line 94
    return v1

    .line 96
    :cond_a
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->G()I

    move-result v0

    return v0
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/a/a/b/b;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/a/a/b/b;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/b;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()Lorg/json/JSONObject;
    .registers 2

    .line 122
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/a/a/b/b;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/b;->o()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public l()J
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public m()Z
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/a/a/b/b;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/b;->m()Z

    move-result v0

    return v0
.end method

.method public n()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->y()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public o()Ljava/lang/Object;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/a/a/b/b;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/b;->j()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public p()Lorg/json/JSONObject;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/a/a/b/b;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/b;->n()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public q()Z
    .registers 2

    .line 142
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/a/a/b/a;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/a;->g()Z

    move-result v0

    return v0
.end method

.method public r()Lorg/json/JSONObject;
    .registers 2

    .line 147
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    invoke-interface {v0}, Lcom/ss/android/a/a/b/c;->p()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public s()I
    .registers 2

    .line 152
    const/4 v0, 0x0

    return v0
.end method

.method public t()Lcom/ss/android/a/a/b/c;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    return-object v0
.end method

.method public u()Lcom/ss/android/a/a/b/b;
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/a/a/b/b;

    return-object v0
.end method

.method public v()Lcom/ss/android/a/a/b/a;
    .registers 2

    .line 167
    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/a/a/b/a;

    return-object v0
.end method

.method public w()Z
    .registers 5

    .line 40
    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_17

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/a/a/b/b;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/a/a/b/a;

    if-nez v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public x()Z
    .registers 5

    .line 48
    iget-wide v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1c

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->b:Lcom/ss/android/a/a/b/c;

    instance-of v0, v0, Lcom/ss/android/downloadad/a/a/c;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->c:Lcom/ss/android/a/a/b/b;

    instance-of v0, v0, Lcom/ss/android/downloadad/a/a/b;

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/ss/android/downloadlib/addownload/b/e;->d:Lcom/ss/android/a/a/b/a;

    instance-of v0, v0, Lcom/ss/android/downloadad/a/a/a;

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    return v0
.end method
