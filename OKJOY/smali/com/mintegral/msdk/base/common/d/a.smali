.class public final Lcom/mintegral/msdk/base/common/d/a;
.super Ljava/lang/Object;
.source "DisplayInfo.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .registers 4

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/mintegral/msdk/base/common/d/a;->a:Ljava/lang/String;

    .line 17
    iput-wide p2, p0, Lcom/mintegral/msdk/base/common/d/a;->c:J

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/mintegral/msdk/base/common/d/a;->a:Ljava/lang/String;

    .line 12
    iput-object p2, p0, Lcom/mintegral/msdk/base/common/d/a;->b:Ljava/lang/String;

    .line 13
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/d/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/d/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()J
    .registers 3

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/mintegral/msdk/base/common/d/a;->c:J

    return-wide v0
.end method
