.class public final Lcom/mintegral/msdk/base/entity/f;
.super Ljava/lang/Object;
.source "ExcludeInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:J


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(J)V
    .registers 4

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/mintegral/msdk/base/entity/f;->d:J

    .line 46
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 21
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/f;->a:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 29
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/f;->b:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public final c()I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Lcom/mintegral/msdk/base/entity/f;->c:I

    return v0
.end method

.method public final d()J
    .registers 3

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/mintegral/msdk/base/entity/f;->d:J

    return-wide v0
.end method
