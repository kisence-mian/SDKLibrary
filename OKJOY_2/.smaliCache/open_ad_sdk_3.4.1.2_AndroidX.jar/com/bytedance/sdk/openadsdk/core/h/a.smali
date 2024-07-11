.class public Lcom/bytedance/sdk/openadsdk/core/h/a;
.super Ljava/lang/Object;
.source "AdSlotSetter.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:I

.field public z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 5

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->b:I

    .line 26
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->c:I

    .line 27
    const/4 v1, 0x2

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->d:I

    .line 28
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->e:I

    .line 29
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->f:I

    .line 30
    const/16 v2, 0x64

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->g:I

    .line 31
    const/4 v2, 0x0

    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->h:I

    .line 32
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->i:I

    .line 33
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->j:I

    .line 34
    const/4 v3, 0x3

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->k:I

    .line 35
    const/4 v3, -0x1

    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->l:I

    .line 36
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->m:I

    .line 37
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->n:I

    .line 38
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->o:I

    .line 39
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->p:I

    .line 40
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->q:I

    .line 41
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->r:I

    .line 42
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->s:I

    .line 43
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->t:I

    .line 44
    const/16 v0, 0x14

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->u:I

    .line 45
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->v:I

    .line 46
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->w:I

    .line 47
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->x:I

    .line 48
    const/4 v0, 0x5

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->y:I

    .line 22
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 1

    .line 17
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/h/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .line 52
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->v:I

    .line 53
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .line 119
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->a:Ljava/lang/String;

    .line 120
    return-object p0
.end method

.method public a(Lorg/json/JSONArray;)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 5

    .line 174
    if-eqz p1, :cond_2a

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_2a

    .line 177
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->z:Ljava/util/List;

    .line 179
    const/4 v0, 0x0

    :goto_11
    :try_start_11
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_27

    .line 180
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->z:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_24} :catch_28

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 183
    :cond_27
    goto :goto_29

    .line 182
    :catch_28
    move-exception p1

    .line 184
    :goto_29
    return-object p0

    .line 175
    :cond_2a
    :goto_2a
    return-object p0
.end method

.method public b(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .line 57
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->w:I

    .line 58
    return-object p0
.end method

.method public c(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .line 62
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->x:I

    .line 63
    return-object p0
.end method

.method public d(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .line 67
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->u:I

    .line 68
    return-object p0
.end method

.method public e(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .line 73
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->t:I

    .line 74
    return-object p0
.end method

.method public f(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .line 78
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->q:I

    .line 79
    return-object p0
.end method

.method public g(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .line 83
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->r:I

    .line 84
    return-object p0
.end method

.method public h(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .line 88
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->s:I

    .line 89
    return-object p0
.end method

.method public i(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .line 93
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->o:I

    .line 94
    return-object p0
.end method

.method public j(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .line 99
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->m:I

    .line 100
    return-object p0
.end method

.method public k(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .line 104
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->n:I

    .line 105
    return-object p0
.end method

.method public l(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .line 109
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->l:I

    .line 110
    return-object p0
.end method

.method public m(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .line 114
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->k:I

    .line 115
    return-object p0
.end method

.method public n(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .line 124
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->b:I

    .line 125
    return-object p0
.end method

.method public o(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .line 129
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->c:I

    .line 130
    return-object p0
.end method

.method public p(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .line 134
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->d:I

    .line 135
    return-object p0
.end method

.method public q(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .line 139
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->e:I

    .line 140
    return-object p0
.end method

.method public r(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .line 144
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->f:I

    .line 145
    return-object p0
.end method

.method public s(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .line 149
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->g:I

    .line 150
    return-object p0
.end method

.method public t(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .line 154
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->h:I

    .line 155
    return-object p0
.end method

.method public u(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .line 159
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->i:I

    .line 160
    return-object p0
.end method

.method public v(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .line 164
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->j:I

    .line 165
    return-object p0
.end method

.method public w(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .line 169
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->p:I

    .line 170
    return-object p0
.end method

.method public x(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .line 188
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->y:I

    .line 189
    return-object p0
.end method
