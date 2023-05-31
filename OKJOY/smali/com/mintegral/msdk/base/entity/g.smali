.class public final Lcom/mintegral/msdk/base/entity/g;
.super Ljava/lang/Object;
.source "Frequence.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .registers 2

    .prologue
    .line 32
    iput p1, p0, Lcom/mintegral/msdk/base/entity/g;->b:I

    .line 33
    return-void
.end method

.method public final a(J)V
    .registers 4

    .prologue
    .line 64
    iput-wide p1, p0, Lcom/mintegral/msdk/base/entity/g;->f:J

    .line 65
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 24
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/g;->a:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 28
    iget v0, p0, Lcom/mintegral/msdk/base/entity/g;->b:I

    return v0
.end method

.method public final b(I)V
    .registers 2

    .prologue
    .line 40
    iput p1, p0, Lcom/mintegral/msdk/base/entity/g;->c:I

    .line 41
    return-void
.end method

.method public final c()I
    .registers 2

    .prologue
    .line 36
    iget v0, p0, Lcom/mintegral/msdk/base/entity/g;->c:I

    return v0
.end method

.method public final d()I
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Lcom/mintegral/msdk/base/entity/g;->d:I

    return v0
.end method

.method public final e()V
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/mintegral/msdk/base/entity/g;->d:I

    .line 49
    return-void
.end method

.method public final f()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcom/mintegral/msdk/base/entity/g;->e:I

    return v0
.end method

.method public final g()V
    .registers 2

    .prologue
    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/mintegral/msdk/base/entity/g;->e:I

    .line 57
    return-void
.end method

.method public final h()J
    .registers 3

    .prologue
    .line 60
    iget-wide v0, p0, Lcom/mintegral/msdk/base/entity/g;->f:J

    return-wide v0
.end method
