.class public final Lcom/mintegral/msdk/base/entity/l;
.super Ljava/lang/Object;
.source "Offset.java"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 10
    iget v0, p0, Lcom/mintegral/msdk/base/entity/l;->a:I

    return v0
.end method

.method public final a(I)V
    .registers 2

    .prologue
    .line 13
    iput p1, p0, Lcom/mintegral/msdk/base/entity/l;->a:I

    .line 14
    return-void
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 16
    iget v0, p0, Lcom/mintegral/msdk/base/entity/l;->b:I

    return v0
.end method

.method public final b(I)V
    .registers 2

    .prologue
    .line 19
    iput p1, p0, Lcom/mintegral/msdk/base/entity/l;->b:I

    .line 20
    return-void
.end method
