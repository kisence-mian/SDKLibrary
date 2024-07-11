.class public abstract Lcom/anythink/core/common/d/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/anythink/core/common/d/j;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final s:I = 0x1

.field public static final t:I = 0x2


# instance fields
.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field protected l:Ljava/lang/String;

.field protected m:Ljava/lang/String;

.field protected n:Ljava/lang/String;

.field protected o:Ljava/lang/String;

.field protected p:Ljava/lang/String;

.field protected q:Ljava/lang/String;

.field protected r:I

.field protected u:I

.field protected v:I

.field protected w:Ljava/lang/String;

.field protected x:I

.field protected y:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method

.method private a()Ljava/lang/String;
    .registers 2

    .line 116
    iget-object v0, p0, Lcom/anythink/core/common/d/h;->i:Ljava/lang/String;

    return-object v0
.end method

.method private v()Ljava/lang/String;
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/anythink/core/common/d/h;->w:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lcom/anythink/core/common/d/j;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public final a(I)V
    .registers 2

    .line 64
    iput p1, p0, Lcom/anythink/core/common/d/h;->x:I

    .line 65
    return-void
.end method

.method public abstract b()I
.end method

.method public final b(I)V
    .registers 2

    .line 195
    iput p1, p0, Lcom/anythink/core/common/d/h;->r:I

    .line 196
    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    .line 72
    iput-object p1, p0, Lcom/anythink/core/common/d/h;->y:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public final c()I
    .registers 2

    .line 60
    iget v0, p0, Lcom/anythink/core/common/d/h;->x:I

    return v0
.end method

.method public final c(I)V
    .registers 2

    .line 203
    iput p1, p0, Lcom/anythink/core/common/d/h;->u:I

    .line 204
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/anythink/core/common/d/h;->d:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/anythink/core/common/d/h;->y:Ljava/lang/String;

    return-object v0
.end method

.method public final d(I)V
    .registers 2

    .line 215
    iput p1, p0, Lcom/anythink/core/common/d/h;->v:I

    .line 216
    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/anythink/core/common/d/h;->e:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/anythink/core/common/d/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e(Ljava/lang/String;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/anythink/core/common/d/h;->f:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/anythink/core/common/d/h;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final f(Ljava/lang/String;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/anythink/core/common/d/h;->g:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/anythink/core/common/d/h;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g(Ljava/lang/String;)V
    .registers 2

    .line 112
    iput-object p1, p0, Lcom/anythink/core/common/d/h;->h:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/anythink/core/common/d/h;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h(Ljava/lang/String;)V
    .registers 2

    .line 120
    iput-object p1, p0, Lcom/anythink/core/common/d/h;->i:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    .line 108
    iget-object v0, p0, Lcom/anythink/core/common/d/h;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final i(Ljava/lang/String;)V
    .registers 2

    .line 128
    iput-object p1, p0, Lcom/anythink/core/common/d/h;->j:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public final j()Ljava/lang/String;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/anythink/core/common/d/h;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final j(Ljava/lang/String;)V
    .registers 2

    .line 136
    iput-object p1, p0, Lcom/anythink/core/common/d/h;->k:Ljava/lang/String;

    .line 137
    return-void
.end method

.method public final k()Ljava/lang/String;
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/anythink/core/common/d/h;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final k(Ljava/lang/String;)V
    .registers 2

    .line 144
    iput-object p1, p0, Lcom/anythink/core/common/d/h;->l:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public final l()Ljava/lang/String;
    .registers 2

    .line 140
    iget-object v0, p0, Lcom/anythink/core/common/d/h;->l:Ljava/lang/String;

    return-object v0
.end method

.method public final l(Ljava/lang/String;)V
    .registers 2

    .line 152
    iput-object p1, p0, Lcom/anythink/core/common/d/h;->m:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public final m()Ljava/lang/String;
    .registers 2

    .line 148
    iget-object v0, p0, Lcom/anythink/core/common/d/h;->m:Ljava/lang/String;

    return-object v0
.end method

.method public final m(Ljava/lang/String;)V
    .registers 2

    .line 161
    iput-object p1, p0, Lcom/anythink/core/common/d/h;->n:Ljava/lang/String;

    .line 162
    return-void
.end method

.method public final n()Ljava/lang/String;
    .registers 2

    .line 157
    iget-object v0, p0, Lcom/anythink/core/common/d/h;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final n(Ljava/lang/String;)V
    .registers 2

    .line 169
    iput-object p1, p0, Lcom/anythink/core/common/d/h;->o:Ljava/lang/String;

    .line 170
    return-void
.end method

.method public final o()Ljava/lang/String;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/anythink/core/common/d/h;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final o(Ljava/lang/String;)V
    .registers 2

    .line 177
    iput-object p1, p0, Lcom/anythink/core/common/d/h;->p:Ljava/lang/String;

    .line 178
    return-void
.end method

.method public final p()Ljava/lang/String;
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/anythink/core/common/d/h;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final p(Ljava/lang/String;)V
    .registers 2

    .line 186
    iput-object p1, p0, Lcom/anythink/core/common/d/h;->q:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public final q()Ljava/lang/String;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/anythink/core/common/d/h;->q:Ljava/lang/String;

    return-object v0
.end method

.method public final q(Ljava/lang/String;)V
    .registers 2

    .line 223
    iput-object p1, p0, Lcom/anythink/core/common/d/h;->w:Ljava/lang/String;

    .line 224
    return-void
.end method

.method public final r()I
    .registers 2

    .line 191
    iget v0, p0, Lcom/anythink/core/common/d/h;->r:I

    return v0
.end method

.method public final s()I
    .registers 2

    .line 199
    iget v0, p0, Lcom/anythink/core/common/d/h;->u:I

    return v0
.end method

.method public final t()Z
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/anythink/core/common/d/h;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    return v0

    :cond_a
    const/4 v0, 0x0

    return v0
.end method

.method public final u()I
    .registers 2

    .line 211
    iget v0, p0, Lcom/anythink/core/common/d/h;->v:I

    return v0
.end method
