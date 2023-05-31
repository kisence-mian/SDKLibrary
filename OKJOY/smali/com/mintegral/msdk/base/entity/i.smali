.class public final Lcom/mintegral/msdk/base/entity/i;
.super Ljava/lang/Object;
.source "LoadTime.java"


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;ILjava/lang/String;III)V
    .registers 8

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput p1, p0, Lcom/mintegral/msdk/base/entity/i;->a:I

    .line 54
    iput-object p2, p0, Lcom/mintegral/msdk/base/entity/i;->b:Ljava/lang/String;

    .line 55
    iput p3, p0, Lcom/mintegral/msdk/base/entity/i;->c:I

    .line 56
    iput-object p4, p0, Lcom/mintegral/msdk/base/entity/i;->d:Ljava/lang/String;

    .line 57
    iput p5, p0, Lcom/mintegral/msdk/base/entity/i;->e:I

    .line 58
    iput p6, p0, Lcom/mintegral/msdk/base/entity/i;->f:I

    .line 59
    iput p7, p0, Lcom/mintegral/msdk/base/entity/i;->g:I

    .line 60
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Lcom/mintegral/msdk/base/entity/i;->i:I

    return v0
.end method

.method public final a(I)V
    .registers 2

    .prologue
    .line 47
    iput p1, p0, Lcom/mintegral/msdk/base/entity/i;->i:I

    .line 48
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 89
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/i;->b:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public final b()I
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Lcom/mintegral/msdk/base/entity/i;->a:I

    return v0
.end method

.method public final b(I)V
    .registers 2

    .prologue
    .line 112
    iput p1, p0, Lcom/mintegral/msdk/base/entity/i;->c:I

    .line 113
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 124
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/i;->d:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public final c()V
    .registers 2

    .prologue
    .line 77
    const/4 v0, 0x1

    iput v0, p0, Lcom/mintegral/msdk/base/entity/i;->a:I

    .line 78
    return-void
.end method

.method public final c(I)V
    .registers 2

    .prologue
    .line 136
    iput p1, p0, Lcom/mintegral/msdk/base/entity/i;->e:I

    .line 137
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 169
    iput-object p1, p0, Lcom/mintegral/msdk/base/entity/i;->h:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/i;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d(I)V
    .registers 2

    .prologue
    .line 160
    iput p1, p0, Lcom/mintegral/msdk/base/entity/i;->g:I

    .line 161
    return-void
.end method

.method public final e()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Lcom/mintegral/msdk/base/entity/i;->c:I

    return v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/i;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final g()I
    .registers 2

    .prologue
    .line 130
    iget v0, p0, Lcom/mintegral/msdk/base/entity/i;->e:I

    return v0
.end method

.method public final h()I
    .registers 2

    .prologue
    .line 142
    iget v0, p0, Lcom/mintegral/msdk/base/entity/i;->f:I

    return v0
.end method

.method public final i()V
    .registers 2

    .prologue
    .line 148
    const/16 v0, 0x3a98

    iput v0, p0, Lcom/mintegral/msdk/base/entity/i;->f:I

    .line 149
    return-void
.end method

.method public final j()I
    .registers 2

    .prologue
    .line 154
    iget v0, p0, Lcom/mintegral/msdk/base/entity/i;->g:I

    return v0
.end method

.method public final k()Ljava/lang/String;
    .registers 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/mintegral/msdk/base/entity/i;->h:Ljava/lang/String;

    return-object v0
.end method
