.class public Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;
.super Ljava/lang/Object;
.source "DynamicLayoutBrickValue.java"


# instance fields
.field private A:Ljava/lang/String;

.field private B:Z

.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;
    .registers 7

    .line 262
    if-nez p0, :cond_4

    .line 263
    const/4 p0, 0x0

    return-object p0

    .line 265
    :cond_4
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;-><init>()V

    .line 266
    const-string v1, "adType"

    const-string v2, "embeded"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->a(Ljava/lang/String;)V

    .line 267
    const-string v1, "clickArea"

    const-string v2, "creative"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->l(Ljava/lang/String;)V

    .line 268
    const-string v1, "clickTigger"

    const-string v2, "click"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->m(Ljava/lang/String;)V

    .line 269
    const-string v1, "fontFamily"

    const-string v2, "PingFangSC"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->b(Ljava/lang/String;)V

    .line 270
    const-string v1, "textAlign"

    const-string v2, "left"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->c(Ljava/lang/String;)V

    .line 271
    const-string v1, "color"

    const-string v2, "#999999"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->d(Ljava/lang/String;)V

    .line 272
    const-string v1, "bgColor"

    const-string v2, "transparent"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->e(Ljava/lang/String;)V

    .line 273
    const-string v1, "borderColor"

    const-string v2, "#000000"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->f(Ljava/lang/String;)V

    .line 274
    const-string v1, "borderStyle"

    const-string v2, "solid"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->g(Ljava/lang/String;)V

    .line 275
    const-string v1, "heightMode"

    const-string v2, "auto"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->h(Ljava/lang/String;)V

    .line 276
    const-string v1, "widthMode"

    const-string v2, "fixed"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->i(Ljava/lang/String;)V

    .line 277
    const-string v1, "interactText"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->j(Ljava/lang/String;)V

    .line 278
    const-string v1, "interactType"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->k(Ljava/lang/String;)V

    .line 279
    const-string v1, "justifyHorizontal"

    const-string v2, "space-around"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->n(Ljava/lang/String;)V

    .line 280
    const-string v1, "justifyVertical"

    const-string v2, "flex-start"

    invoke-virtual {p0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->o(Ljava/lang/String;)V

    .line 281
    const-string v1, "timingStart"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->a(I)V

    .line 282
    const-string v1, "timingEnd"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->b(I)V

    .line 283
    const-string v1, "width"

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->d(F)V

    .line 284
    const-string v1, "height"

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->c(F)V

    .line 285
    const-string v1, "borderRadius"

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->a(F)V

    .line 286
    const-string v1, "borderSize"

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->b(F)V

    .line 287
    const-string v1, "interactValidate"

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->e(F)V

    .line 288
    const-string v1, "fontSize"

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->j(F)V

    .line 289
    const-string v1, "paddingBottom"

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->f(F)V

    .line 290
    const-string v1, "paddingLeft"

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->g(F)V

    .line 291
    const-string v1, "paddingRight"

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->h(F)V

    .line 292
    const-string v1, "paddingTop"

    invoke-virtual {p0, v1, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->i(F)V

    .line 293
    const/4 v1, 0x0

    const-string v2, "lineFeed"

    invoke-virtual {p0, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->a(Z)V

    .line 294
    return-object v0
.end method


# virtual methods
.method public a()F
    .registers 2

    .line 38
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->a:F

    return v0
.end method

.method public a(F)V
    .registers 2

    .line 42
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->a:F

    .line 43
    return-void
.end method

.method public a(I)V
    .registers 2

    .line 122
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->k:I

    .line 123
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .line 138
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->m:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public a(Z)V
    .registers 2

    .line 258
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->B:Z

    .line 259
    return-void
.end method

.method public b()F
    .registers 2

    .line 46
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->b:F

    return v0
.end method

.method public b(F)V
    .registers 2

    .line 50
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->b:F

    .line 51
    return-void
.end method

.method public b(I)V
    .registers 2

    .line 130
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->l:I

    .line 131
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .line 146
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->n:Ljava/lang/String;

    .line 147
    return-void
.end method

.method public c()F
    .registers 2

    .line 78
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->f:F

    return v0
.end method

.method public c(F)V
    .registers 2

    .line 58
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->c:F

    .line 59
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .line 154
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->o:Ljava/lang/String;

    .line 155
    return-void
.end method

.method public d()F
    .registers 2

    .line 86
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->g:F

    return v0
.end method

.method public d(F)V
    .registers 2

    .line 66
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->d:F

    .line 67
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .line 162
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->p:Ljava/lang/String;

    .line 163
    return-void
.end method

.method public e()F
    .registers 2

    .line 94
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->h:F

    return v0
.end method

.method public e(F)V
    .registers 2

    .line 74
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->e:F

    .line 75
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->q:Ljava/lang/String;

    .line 171
    return-void
.end method

.method public f()F
    .registers 2

    .line 102
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->i:F

    return v0
.end method

.method public f(F)V
    .registers 2

    .line 82
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->f:F

    .line 83
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .line 178
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->r:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public g()F
    .registers 2

    .line 110
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->j:F

    return v0
.end method

.method public g(F)V
    .registers 2

    .line 90
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->g:F

    .line 91
    return-void
.end method

.method public g(Ljava/lang/String;)V
    .registers 2

    .line 186
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->s:Ljava/lang/String;

    .line 187
    return-void
.end method

.method public h()I
    .registers 2

    .line 118
    iget v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->k:I

    return v0
.end method

.method public h(F)V
    .registers 2

    .line 98
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->h:F

    .line 99
    return-void
.end method

.method public h(Ljava/lang/String;)V
    .registers 2

    .line 194
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->t:Ljava/lang/String;

    .line 195
    return-void
.end method

.method public i()Ljava/lang/String;
    .registers 2

    .line 150
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->o:Ljava/lang/String;

    return-object v0
.end method

.method public i(F)V
    .registers 2

    .line 106
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->i:F

    .line 107
    return-void
.end method

.method public i(Ljava/lang/String;)V
    .registers 2

    .line 202
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->u:Ljava/lang/String;

    .line 203
    return-void
.end method

.method public j()Ljava/lang/String;
    .registers 2

    .line 158
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->p:Ljava/lang/String;

    return-object v0
.end method

.method public j(F)V
    .registers 2

    .line 114
    iput p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->j:F

    .line 115
    return-void
.end method

.method public j(Ljava/lang/String;)V
    .registers 2

    .line 210
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->v:Ljava/lang/String;

    .line 211
    return-void
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->q:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .registers 2

    .line 218
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->w:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public l()Ljava/lang/String;
    .registers 2

    .line 174
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->r:Ljava/lang/String;

    return-object v0
.end method

.method public l(Ljava/lang/String;)V
    .registers 2

    .line 226
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->x:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public m()Ljava/lang/String;
    .registers 2

    .line 222
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->x:Ljava/lang/String;

    return-object v0
.end method

.method public m(Ljava/lang/String;)V
    .registers 2

    .line 234
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->y:Ljava/lang/String;

    .line 235
    return-void
.end method

.method public n()Ljava/lang/String;
    .registers 2

    .line 230
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->y:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .registers 2

    .line 242
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->z:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public o(Ljava/lang/String;)V
    .registers 2

    .line 250
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->A:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public o()Z
    .registers 2

    .line 254
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/b/d;->B:Z

    return v0
.end method
