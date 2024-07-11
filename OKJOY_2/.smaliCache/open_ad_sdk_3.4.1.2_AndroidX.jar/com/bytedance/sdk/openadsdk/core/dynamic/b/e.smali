.class public Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;
.super Ljava/lang/Object;
.source "DynamicLayoutNativeValue.java"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field private c:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/core/dynamic/b/c;)V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/c;->a()I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->a:I

    .line 39
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/c;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->b:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/c;->c()Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->c:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;

    .line 41
    return-void
.end method

.method private a(Ljava/lang/String;)I
    .registers 7

    .line 185
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v1, -0x1000000

    if-eqz v0, :cond_9

    .line 186
    return v1

    .line 188
    :cond_9
    const-string v0, "transparent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_13

    .line 189
    return v2

    .line 192
    :cond_13
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_27

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_27

    .line 193
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 196
    :cond_27
    const-string v0, "rgba"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 197
    return v1

    .line 200
    :cond_30
    const-string v0, "("

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v3, 0x1

    add-int/2addr v0, v3

    const-string v4, ")"

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 201
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 202
    if-eqz p1, :cond_7d

    array-length v0, p1

    const/4 v4, 0x4

    if-ne v0, v4, :cond_7d

    .line 203
    aget-object v0, p1, v2

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    .line 204
    aget-object v1, p1, v3

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    .line 205
    const/4 v3, 0x2

    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    .line 206
    const/4 v4, 0x3

    aget-object p1, p1, v4

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 207
    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr p1, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr p1, v4

    float-to-int p1, p1

    shl-int/lit8 p1, p1, 0x18

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x10

    or-int/2addr p1, v0

    float-to-int v0, v1

    shl-int/lit8 v0, v0, 0x8

    or-int/2addr p1, v0

    float-to-int v0, v3

    or-int/2addr p1, v0

    .line 208
    or-int/2addr p1, v2

    .line 209
    return p1

    .line 211
    :cond_7d
    return v1
.end method


# virtual methods
.method public a()I
    .registers 2

    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->c:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->c()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public b()I
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->c:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->f()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public c()I
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->c:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->d()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public d()I
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->c:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->e()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public e()F
    .registers 2

    .line 64
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->c:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->g()F

    move-result v0

    return v0
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .line 68
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->a:I

    if-nez v0, :cond_7

    .line 69
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->b:Ljava/lang/String;

    return-object v0

    .line 71
    :cond_7
    const-string v0, ""

    return-object v0
.end method

.method public g()I
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->c:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->j()Ljava/lang/String;

    move-result-object v0

    .line 75
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public h()I
    .registers 4

    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->c:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->i()Ljava/lang/String;

    move-result-object v0

    .line 81
    const-string v1, "left"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_10

    .line 82
    return v2

    .line 84
    :cond_10
    const-string v1, "center"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 85
    const/4 v0, 0x4

    return v0

    .line 87
    :cond_1a
    const-string v1, "right"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 88
    const/4 v0, 0x3

    return v0

    .line 90
    :cond_24
    return v2
.end method

.method public i()Ljava/lang/String;
    .registers 3

    .line 94
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 95
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->b:Ljava/lang/String;

    return-object v0

    .line 97
    :cond_8
    const-string v0, ""

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .registers 3

    .line 100
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 101
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->b:Ljava/lang/String;

    return-object v0

    .line 103
    :cond_8
    const-string v0, ""

    return-object v0
.end method

.method public k()I
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->c:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->h()I

    move-result v0

    return v0
.end method

.method public l()F
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->c:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->a()F

    move-result v0

    return v0
.end method

.method public m()I
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->c:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->l()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public n()F
    .registers 2

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->c:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->b()F

    move-result v0

    return v0
.end method

.method public o()Z
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->c:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->o()Z

    move-result v0

    return v0
.end method

.method public p()I
    .registers 5

    .line 157
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->c:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->m()Ljava/lang/String;

    move-result-object v0

    .line 158
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_44

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_44

    .line 161
    :cond_16
    const-string v1, "normal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    .line 162
    const/4 v0, 0x1

    return v0

    .line 164
    :cond_20
    const-string v1, "creative"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_2a

    .line 165
    return v3

    .line 167
    :cond_2a
    const-string v1, "video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 168
    const/4 v0, 0x4

    return v0

    .line 170
    :cond_34
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->c:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->n()Ljava/lang/String;

    move-result-object v0

    .line 171
    const-string v1, "slide"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    .line 172
    return v3

    .line 174
    :cond_43
    return v2

    .line 159
    :cond_44
    :goto_44
    return v2
.end method

.method public q()I
    .registers 2

    .line 179
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->c:Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->k()Ljava/lang/String;

    move-result-object v0

    .line 180
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/e;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
