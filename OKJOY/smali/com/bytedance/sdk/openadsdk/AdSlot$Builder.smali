.class public Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
.super Ljava/lang/Object;
.source "AdSlot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/AdSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Z

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:I

.field private k:I

.field private l:F

.field private m:F

.field private n:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    const/16 v0, 0x280

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->b:I

    .line 183
    const/16 v0, 0x140

    iput v0, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->c:I

    .line 185
    iput v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->e:I

    .line 196
    iput-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->n:Z

    return-void
.end method


# virtual methods
.method public build()Lcom/bytedance/sdk/openadsdk/AdSlot;
    .registers 3

    .prologue
    .line 267
    new-instance v0, Lcom/bytedance/sdk/openadsdk/AdSlot;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;-><init>(Lcom/bytedance/sdk/openadsdk/AdSlot$1;)V

    .line 268
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->e:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    .line 270
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->d:Z

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z

    .line 271
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->b:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    .line 272
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->c:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->c(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    .line 273
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->l:F

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->a(Lcom/bytedance/sdk/openadsdk/AdSlot;F)F

    .line 274
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->m:F

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;F)F

    .line 275
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->f:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 276
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->g:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->d(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    .line 277
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->h:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->c(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 278
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->d(Lcom/bytedance/sdk/openadsdk/AdSlot;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->j:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->e(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    .line 280
    iget v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->k:I

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->f(Lcom/bytedance/sdk/openadsdk/AdSlot;I)I

    .line 281
    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->n:Z

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/AdSlot;->b(Lcom/bytedance/sdk/openadsdk/AdSlot;Z)Z

    .line 282
    return-object v0
.end method

.method public setAdCount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .registers 2

    .prologue
    .line 232
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->e:I

    .line 233
    return-object p0
.end method

.method public setCodeId(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .registers 2

    .prologue
    .line 204
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->a:Ljava/lang/String;

    .line 205
    return-object p0
.end method

.method public setExpressViewAcceptedSize(FF)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .registers 3

    .prologue
    .line 215
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->l:F

    .line 216
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->m:F

    .line 217
    return-object p0
.end method

.method public setImageAcceptedSize(II)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .registers 3

    .prologue
    .line 209
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->b:I

    .line 210
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->c:I

    .line 211
    return-object p0
.end method

.method public setIsAutoPlay(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .registers 2

    .prologue
    .line 199
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->n:Z

    .line 200
    return-object p0
.end method

.method public setMediaExtra(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .registers 2

    .prologue
    .line 247
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->h:Ljava/lang/String;

    .line 248
    return-object p0
.end method

.method public setNativeAdType(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .registers 2

    .prologue
    .line 262
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->k:I

    .line 263
    return-object p0
.end method

.method public setOrientation(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .registers 2

    .prologue
    .line 257
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->j:I

    .line 258
    return-object p0
.end method

.method public setRewardAmount(I)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .registers 2

    .prologue
    .line 242
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->g:I

    .line 243
    return-object p0
.end method

.method public setRewardName(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .registers 2

    .prologue
    .line 237
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->f:Ljava/lang/String;

    .line 238
    return-object p0
.end method

.method public setSupportDeepLink(Z)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .registers 2

    .prologue
    .line 221
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->d:Z

    .line 222
    return-object p0
.end method

.method public setUserID(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;
    .registers 2

    .prologue
    .line 252
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/AdSlot$Builder;->i:Ljava/lang/String;

    .line 253
    return-object p0
.end method
