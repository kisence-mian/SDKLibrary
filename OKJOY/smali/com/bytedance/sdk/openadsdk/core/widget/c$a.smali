.class public Lcom/bytedance/sdk/openadsdk/core/widget/c$a;
.super Ljava/lang/Object;
.source "TTCustomShadowBackground.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/widget/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private b:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private c:[I

.field private d:[F
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private e:Landroid/graphics/LinearGradient;

.field private f:I

.field private g:I

.field private h:I

.field private i:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->h:I

    .line 148
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->i:I

    .line 153
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_ssxinmian8"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->j(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->a:I

    .line 154
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tt_ssxinxian3"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/ab;->j(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->b:I

    .line 155
    const/16 v0, 0xa

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->f:I

    .line 156
    const/16 v0, 0x10

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->g:I

    .line 157
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->h:I

    .line 158
    iput v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->i:I

    .line 159
    return-void
.end method


# virtual methods
.method public a(I)Lcom/bytedance/sdk/openadsdk/core/widget/c$a;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 163
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->a:I

    .line 164
    return-object p0
.end method

.method public a([I)Lcom/bytedance/sdk/openadsdk/core/widget/c$a;
    .registers 2
    .param p1    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 173
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->c:[I

    .line 174
    return-object p0
.end method

.method public a()Lcom/bytedance/sdk/openadsdk/core/widget/c;
    .registers 11

    .prologue
    .line 209
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/widget/c;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->a:I

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->c:[I

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->d:[F

    iget v4, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->b:I

    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->e:Landroid/graphics/LinearGradient;

    iget v6, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->f:I

    iget v7, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->g:I

    iget v8, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->h:I

    iget v9, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->i:I

    invoke-direct/range {v0 .. v9}, Lcom/bytedance/sdk/openadsdk/core/widget/c;-><init>(I[I[FILandroid/graphics/LinearGradient;IIII)V

    return-object v0
.end method

.method public b(I)Lcom/bytedance/sdk/openadsdk/core/widget/c$a;
    .registers 2
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 168
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->b:I

    .line 169
    return-object p0
.end method

.method public c(I)Lcom/bytedance/sdk/openadsdk/core/widget/c$a;
    .registers 2

    .prologue
    .line 188
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->f:I

    .line 189
    return-object p0
.end method

.method public d(I)Lcom/bytedance/sdk/openadsdk/core/widget/c$a;
    .registers 2

    .prologue
    .line 198
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->h:I

    .line 199
    return-object p0
.end method

.method public e(I)Lcom/bytedance/sdk/openadsdk/core/widget/c$a;
    .registers 2

    .prologue
    .line 203
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/widget/c$a;->i:I

    .line 204
    return-object p0
.end method
