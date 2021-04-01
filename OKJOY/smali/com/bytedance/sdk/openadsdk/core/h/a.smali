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

.field public y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->b:I

    .line 26
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->c:I

    .line 27
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->d:I

    .line 28
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->e:I

    .line 29
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->f:I

    .line 30
    const/16 v0, 0x64

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->g:I

    .line 31
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->h:I

    .line 32
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->i:I

    .line 33
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->j:I

    .line 34
    const/4 v0, 0x3

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->k:I

    .line 35
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->l:I

    .line 36
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->m:I

    .line 37
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->n:I

    .line 38
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->o:I

    .line 39
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->p:I

    .line 40
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->q:I

    .line 41
    const/16 v0, 0x5dc

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->r:I

    .line 42
    iput v4, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->s:I

    .line 43
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->t:I

    .line 44
    const/16 v0, 0x14

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->u:I

    .line 45
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->v:I

    .line 46
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->w:I

    .line 47
    iput v3, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->x:I

    .line 22
    return-void
.end method

.method public static a()Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 1

    .prologue
    .line 17
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/h/a;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/h/a;-><init>()V

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .prologue
    .line 51
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->v:I

    .line 52
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .prologue
    .line 118
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->a:Ljava/lang/String;

    .line 119
    return-object p0
.end method

.method public a(Lorg/json/JSONArray;)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 5

    .prologue
    .line 173
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_9

    .line 183
    :cond_8
    :goto_8
    return-object p0

    .line 176
    :cond_9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->y:Ljava/util/List;

    .line 178
    const/4 v0, 0x0

    :goto_11
    :try_start_11
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_8

    .line 179
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->y:Ljava/util/List;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_24} :catch_27

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 181
    :catch_27
    move-exception v0

    goto :goto_8
.end method

.method public b(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .prologue
    .line 56
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->w:I

    .line 57
    return-object p0
.end method

.method public c(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .prologue
    .line 61
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->x:I

    .line 62
    return-object p0
.end method

.method public d(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .prologue
    .line 66
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->u:I

    .line 67
    return-object p0
.end method

.method public e(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .prologue
    .line 72
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->t:I

    .line 73
    return-object p0
.end method

.method public f(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .prologue
    .line 77
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->q:I

    .line 78
    return-object p0
.end method

.method public g(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .prologue
    .line 82
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->r:I

    .line 83
    return-object p0
.end method

.method public h(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .prologue
    .line 87
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->s:I

    .line 88
    return-object p0
.end method

.method public i(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .prologue
    .line 92
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->o:I

    .line 93
    return-object p0
.end method

.method public j(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .prologue
    .line 98
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->m:I

    .line 99
    return-object p0
.end method

.method public k(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .prologue
    .line 103
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->n:I

    .line 104
    return-object p0
.end method

.method public l(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .prologue
    .line 108
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->l:I

    .line 109
    return-object p0
.end method

.method public m(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .prologue
    .line 113
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->k:I

    .line 114
    return-object p0
.end method

.method public n(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .prologue
    .line 123
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->b:I

    .line 124
    return-object p0
.end method

.method public o(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .prologue
    .line 128
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->c:I

    .line 129
    return-object p0
.end method

.method public p(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .prologue
    .line 133
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->d:I

    .line 134
    return-object p0
.end method

.method public q(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .prologue
    .line 138
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->e:I

    .line 139
    return-object p0
.end method

.method public r(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .prologue
    .line 143
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->f:I

    .line 144
    return-object p0
.end method

.method public s(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .prologue
    .line 148
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->g:I

    .line 149
    return-object p0
.end method

.method public t(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .prologue
    .line 153
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->h:I

    .line 154
    return-object p0
.end method

.method public u(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .prologue
    .line 158
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->i:I

    .line 159
    return-object p0
.end method

.method public v(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .prologue
    .line 163
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->j:I

    .line 164
    return-object p0
.end method

.method public w(I)Lcom/bytedance/sdk/openadsdk/core/h/a;
    .registers 2

    .prologue
    .line 168
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/h/a;->p:I

    .line 169
    return-object p0
.end method
