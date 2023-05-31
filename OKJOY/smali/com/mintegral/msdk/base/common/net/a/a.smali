.class public abstract Lcom/mintegral/msdk/base/common/net/a/a;
.super Lcom/mintegral/msdk/base/common/net/a/c;
.source "CommonCampaignResponseHandler.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:J

.field private c:Lcom/mintegral/msdk/base/common/e/a/a;

.field public d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 10
    const-class v0, Lcom/mintegral/msdk/base/common/net/a/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mintegral/msdk/base/common/net/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/mintegral/msdk/base/common/net/a/c;-><init>()V

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/net/a/a;->d:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mintegral/msdk/base/common/net/a/a;->c:Lcom/mintegral/msdk/base/common/e/a/a;

    .line 21
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    .prologue
    .line 34
    invoke-super {p0}, Lcom/mintegral/msdk/base/common/net/a/c;->a()V

    .line 35
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mintegral/msdk/base/common/net/a/a;->b:J

    .line 36
    return-void
.end method

.method public final a(I)V
    .registers 3

    .prologue
    .line 66
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/a/a;->c:Lcom/mintegral/msdk/base/common/e/a/a;

    if-eqz v0, :cond_e

    .line 67
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/a/a;->c:Lcom/mintegral/msdk/base/common/e/a/a;

    invoke-virtual {v0, p1}, Lcom/mintegral/msdk/base/common/e/a/a;->a(I)V

    .line 68
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/a/a;->c:Lcom/mintegral/msdk/base/common/e/a/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/common/e/a/a;->c()V

    .line 70
    :cond_e
    return-void
.end method

.method public final a(J)V
    .registers 8

    .prologue
    .line 53
    new-instance v0, Lcom/mintegral/msdk/base/entity/i;

    invoke-direct {v0}, Lcom/mintegral/msdk/base/entity/i;-><init>()V

    .line 54
    new-instance v1, Lcom/mintegral/msdk/base/common/e/a/a;

    invoke-direct {v1, v0}, Lcom/mintegral/msdk/base/common/e/a/a;-><init>(Lcom/mintegral/msdk/base/entity/i;)V

    iput-object v1, p0, Lcom/mintegral/msdk/base/common/net/a/a;->c:Lcom/mintegral/msdk/base/common/e/a/a;

    .line 55
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/a/a;->c:Lcom/mintegral/msdk/base/common/e/a/a;

    iget-object v1, p0, Lcom/mintegral/msdk/base/common/net/a/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/common/e/a/a;->b(Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/a/a;->c:Lcom/mintegral/msdk/base/common/e/a/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/common/e/a/a;->a()V

    .line 57
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/a/a;->c:Lcom/mintegral/msdk/base/common/e/a/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/common/e/a/a;->b()V

    .line 58
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/a/a;->c:Lcom/mintegral/msdk/base/common/e/a/a;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/mintegral/msdk/base/common/net/a/a;->b:J

    sub-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/common/e/a/a;->a(Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public final f()V
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/a/a;->c:Lcom/mintegral/msdk/base/common/e/a/a;

    if-eqz v0, :cond_9

    .line 74
    iget-object v0, p0, Lcom/mintegral/msdk/base/common/net/a/a;->c:Lcom/mintegral/msdk/base/common/e/a/a;

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/common/e/a/a;->d()V

    .line 76
    :cond_9
    return-void
.end method
