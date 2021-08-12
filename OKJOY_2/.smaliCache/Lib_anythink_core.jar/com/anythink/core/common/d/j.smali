.class public abstract Lcom/anythink/core/common/d/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Ljava/lang/String; = "320x50"

.field public static final b:Ljava/lang/String; = "320x90"

.field public static final c:Ljava/lang/String; = "300x250"

.field public static final d:Ljava/lang/String; = "728x90"


# instance fields
.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:J

.field private n:I

.field private o:Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:J

.field private s:I

.field private t:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/anythink/core/common/d/j;->t:I

    if-nez v0, :cond_6

    .line 53
    const/4 v0, 0x1

    return v0

    .line 55
    :cond_6
    return v0
.end method

.method public final a(I)V
    .registers 2

    .line 59
    iput p1, p0, Lcom/anythink/core/common/d/j;->t:I

    .line 60
    return-void
.end method

.method public final a(J)V
    .registers 3

    .line 87
    iput-wide p1, p0, Lcom/anythink/core/common/d/j;->m:J

    .line 88
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/anythink/core/common/d/j;->o:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public final b()I
    .registers 2

    .line 64
    iget v0, p0, Lcom/anythink/core/common/d/j;->s:I

    if-nez v0, :cond_6

    .line 65
    const/4 v0, 0x1

    return v0

    .line 67
    :cond_6
    return v0
.end method

.method public final b(I)V
    .registers 2

    .line 71
    iput p1, p0, Lcom/anythink/core/common/d/j;->s:I

    .line 72
    return-void
.end method

.method public final b(J)V
    .registers 3

    .line 196
    iput-wide p1, p0, Lcom/anythink/core/common/d/j;->r:J

    .line 197
    return-void
.end method

.method public final c()I
    .registers 2

    .line 75
    iget v0, p0, Lcom/anythink/core/common/d/j;->q:I

    return v0
.end method

.method public final c(I)V
    .registers 2

    .line 79
    iput p1, p0, Lcom/anythink/core/common/d/j;->q:I

    .line 80
    return-void
.end method

.method public final d()J
    .registers 3

    .line 83
    iget-wide v0, p0, Lcom/anythink/core/common/d/j;->m:J

    return-wide v0
.end method

.method public final d(I)V
    .registers 2

    .line 95
    iput p1, p0, Lcom/anythink/core/common/d/j;->k:I

    .line 96
    return-void
.end method

.method public final e()I
    .registers 2

    .line 91
    iget v0, p0, Lcom/anythink/core/common/d/j;->k:I

    return v0
.end method

.method public final e(I)V
    .registers 2

    .line 107
    iput p1, p0, Lcom/anythink/core/common/d/j;->l:I

    .line 108
    return-void
.end method

.method public final f()I
    .registers 2

    .line 103
    iget v0, p0, Lcom/anythink/core/common/d/j;->l:I

    return v0
.end method

.method public final f(I)V
    .registers 2

    .line 119
    iput p1, p0, Lcom/anythink/core/common/d/j;->n:I

    .line 120
    return-void
.end method

.method public final g()I
    .registers 2

    .line 115
    iget v0, p0, Lcom/anythink/core/common/d/j;->n:I

    return v0
.end method

.method public final g(I)V
    .registers 2

    .line 139
    iput p1, p0, Lcom/anythink/core/common/d/j;->p:I

    .line 140
    return-void
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/anythink/core/common/d/j;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final h(I)V
    .registers 2

    .line 147
    iput p1, p0, Lcom/anythink/core/common/d/j;->e:I

    .line 148
    return-void
.end method

.method public final i()I
    .registers 2

    .line 135
    iget v0, p0, Lcom/anythink/core/common/d/j;->p:I

    return v0
.end method

.method public final i(I)V
    .registers 2

    .line 155
    iput p1, p0, Lcom/anythink/core/common/d/j;->f:I

    .line 156
    return-void
.end method

.method public final j()I
    .registers 2

    .line 143
    iget v0, p0, Lcom/anythink/core/common/d/j;->e:I

    return v0
.end method

.method public final j(I)V
    .registers 2

    .line 163
    iput p1, p0, Lcom/anythink/core/common/d/j;->g:I

    .line 164
    return-void
.end method

.method public final k()I
    .registers 2

    .line 151
    iget v0, p0, Lcom/anythink/core/common/d/j;->f:I

    return v0
.end method

.method public final k(I)V
    .registers 2

    .line 171
    iput p1, p0, Lcom/anythink/core/common/d/j;->h:I

    .line 172
    return-void
.end method

.method public final l()I
    .registers 2

    .line 159
    iget v0, p0, Lcom/anythink/core/common/d/j;->g:I

    return v0
.end method

.method public final l(I)V
    .registers 2

    .line 179
    iput p1, p0, Lcom/anythink/core/common/d/j;->i:I

    .line 180
    return-void
.end method

.method public final m()I
    .registers 2

    .line 167
    iget v0, p0, Lcom/anythink/core/common/d/j;->h:I

    return v0
.end method

.method public final m(I)V
    .registers 2

    .line 187
    iput p1, p0, Lcom/anythink/core/common/d/j;->j:I

    .line 188
    return-void
.end method

.method public final n()I
    .registers 2

    .line 175
    iget v0, p0, Lcom/anythink/core/common/d/j;->i:I

    return v0
.end method

.method public final o()I
    .registers 2

    .line 183
    iget v0, p0, Lcom/anythink/core/common/d/j;->j:I

    return v0
.end method

.method public final p()J
    .registers 3

    .line 192
    iget-wide v0, p0, Lcom/anythink/core/common/d/j;->r:J

    return-wide v0
.end method
