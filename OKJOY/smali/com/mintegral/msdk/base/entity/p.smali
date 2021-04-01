.class public final Lcom/mintegral/msdk/base/entity/p;
.super Ljava/lang/Object;
.source "VideoBean.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J

.field private c:I

.field private d:I

.field private e:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .registers 3

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/mintegral/msdk/base/entity/p;->e:J

    return-wide v0
.end method

.method public final a(I)V
    .registers 2

    .prologue
    .line 34
    iput p1, p0, Lcom/mintegral/msdk/base/entity/p;->c:I

    .line 35
    return-void
.end method

.method public final a(J)V
    .registers 4

    .prologue
    .line 16
    iput-wide p1, p0, Lcom/mintegral/msdk/base/entity/p;->e:J

    .line 17
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 22
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/p;->a:Ljava/lang/String;

    .line 23
    return-void
.end method

.method public final b()J
    .registers 3

    .prologue
    .line 25
    iget-wide v0, p0, Lcom/mintegral/msdk/base/entity/p;->b:J

    return-wide v0
.end method

.method public final b(I)V
    .registers 2

    .prologue
    .line 40
    iput p1, p0, Lcom/mintegral/msdk/base/entity/p;->d:I

    .line 41
    return-void
.end method

.method public final b(J)V
    .registers 4

    .prologue
    .line 28
    iput-wide p1, p0, Lcom/mintegral/msdk/base/entity/p;->b:J

    .line 29
    return-void
.end method

.method public final c()I
    .registers 2

    .prologue
    .line 31
    iget v0, p0, Lcom/mintegral/msdk/base/entity/p;->c:I

    return v0
.end method

.method public final d()I
    .registers 2

    .prologue
    .line 37
    iget v0, p0, Lcom/mintegral/msdk/base/entity/p;->d:I

    return v0
.end method
