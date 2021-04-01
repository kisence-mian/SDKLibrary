.class public final Lcom/mintegral/msdk/base/entity/b;
.super Ljava/lang/Object;
.source "AtfEntity.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/mintegral/msdk/base/entity/b;->a:I

    .line 13
    iput-object p2, p0, Lcom/mintegral/msdk/base/entity/b;->b:Ljava/lang/String;

    .line 14
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 17
    iget v0, p0, Lcom/mintegral/msdk/base/entity/b;->a:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/b;->b:Ljava/lang/String;

    return-object v0
.end method
