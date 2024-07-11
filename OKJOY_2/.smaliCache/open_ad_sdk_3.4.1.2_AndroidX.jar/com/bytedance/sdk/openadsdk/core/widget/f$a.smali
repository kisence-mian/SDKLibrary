.class public Lcom/bytedance/sdk/openadsdk/core/widget/f$a;
.super Ljava/lang/Object;
.source "TTCustomShadowBackground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:[I

.field private d:[F

.field private e:Landroid/graphics/LinearGradient;

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;->h:I

    .line 148
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;->i:I

    .line 153
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_ssxinmian8"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->j(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;->a:I

    .line 154
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "tt_ssxinxian3"

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/ac;->j(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;->b:I

    .line 155
    const/16 v1, 0xa

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;->f:I

    .line 156
    const/16 v1, 0x10

    iput v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;->g:I

    .line 157
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;->h:I

    .line 158
    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;->i:I

    .line 159
    return-void
.end method


# virtual methods
.method public a(I)Lcom/bytedance/sdk/openadsdk/core/widget/f$a;
    .registers 2

    .line 163
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;->a:I

    .line 164
    return-object p0
.end method

.method public a([I)Lcom/bytedance/sdk/openadsdk/core/widget/f$a;
    .registers 2

    .line 173
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;->c:[I

    .line 174
    return-object p0
.end method

.method public a()Lcom/bytedance/sdk/openadsdk/core/widget/f;
    .registers 12

    .line 209
    new-instance v10, Lcom/bytedance/sdk/openadsdk/core/widget/f;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;->a:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;->c:[I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;->d:[F

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;->b:I

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;->e:Landroid/graphics/LinearGradient;

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;->f:I

    iget v7, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;->g:I

    iget v8, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;->h:I

    iget v9, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;->i:I

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/sdk/openadsdk/core/widget/f;-><init>(I[I[FILandroid/graphics/LinearGradient;IIII)V

    return-object v10
.end method

.method public b(I)Lcom/bytedance/sdk/openadsdk/core/widget/f$a;
    .registers 2

    .line 168
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;->b:I

    .line 169
    return-object p0
.end method

.method public c(I)Lcom/bytedance/sdk/openadsdk/core/widget/f$a;
    .registers 2

    .line 188
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;->f:I

    .line 189
    return-object p0
.end method

.method public d(I)Lcom/bytedance/sdk/openadsdk/core/widget/f$a;
    .registers 2

    .line 198
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;->h:I

    .line 199
    return-object p0
.end method

.method public e(I)Lcom/bytedance/sdk/openadsdk/core/widget/f$a;
    .registers 2

    .line 203
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/f$a;->i:I

    .line 204
    return-object p0
.end method
