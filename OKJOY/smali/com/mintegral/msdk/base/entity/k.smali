.class public final Lcom/mintegral/msdk/base/entity/k;
.super Ljava/lang/Object;
.source "OfferWallClick.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V
    .registers 9

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/k;->f:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/mintegral/msdk/base/entity/k;->a:Ljava/lang/String;

    .line 29
    iput-object p3, p0, Lcom/mintegral/msdk/base/entity/k;->b:Ljava/lang/String;

    .line 30
    iput-wide p4, p0, Lcom/mintegral/msdk/base/entity/k;->c:J

    .line 31
    iput-object p6, p0, Lcom/mintegral/msdk/base/entity/k;->d:Ljava/lang/String;

    .line 32
    iput-object p7, p0, Lcom/mintegral/msdk/base/entity/k;->e:Ljava/lang/String;

    .line 33
    iput p8, p0, Lcom/mintegral/msdk/base/entity/k;->g:I

    .line 35
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/k;->e:Ljava/lang/String;

    return-object v0
.end method
