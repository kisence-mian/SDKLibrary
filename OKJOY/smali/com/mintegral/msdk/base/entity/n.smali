.class public final Lcom/mintegral/msdk/base/entity/n;
.super Ljava/lang/Object;
.source "PInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:J

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/n;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final a(I)V
    .registers 2

    .prologue
    .line 37
    iput p1, p0, Lcom/mintegral/msdk/base/entity/n;->b:I

    .line 38
    return-void
.end method

.method public final a(J)V
    .registers 4

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/mintegral/msdk/base/entity/n;->c:J

    .line 46
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 29
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/n;->a:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Lcom/mintegral/msdk/base/entity/n;->b:I

    return v0
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/n;->d:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public final c()J
    .registers 3

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/mintegral/msdk/base/entity/n;->c:J

    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/n;->d:Ljava/lang/String;

    return-object v0
.end method
