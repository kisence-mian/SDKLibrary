.class Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a$a;
.super Ljava/lang/Object;
.source "TemplateToModelParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;


# direct methods
.method private constructor <init>(Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;)V
    .registers 2

    .line 101
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a$a;->a:Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a$1;)V
    .registers 3

    .line 101
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a$a;-><init>(Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;)V

    return-void
.end method


# virtual methods
.method public calculateResult(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 181
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a$a;->a:Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;

    invoke-static {v0, p1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->a(Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;Ljava/lang/String;)V

    .line 182
    return-void
.end method

.method public getDomSizeFromNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZI)Ljava/lang/String;
    .registers 20
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 126
    move-object v0, p1

    move-object v1, p2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 127
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDomSizeFromNative String brickType=="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DynamicBaseWidget"

    invoke-static {v4, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDomSizeFromNative String str=="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    :try_start_35
    const-string v3, "<svg"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3b} :catch_12f

    const-string v5, "height"

    const-string v6, "width"

    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    if-nez v3, :cond_124

    :try_start_43
    const-string v3, "dislike"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    goto/16 :goto_124

    .line 136
    :cond_4d
    const-string v3, "logo"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 138
    const-string v1, "union"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    move-wide v0, v7

    goto :goto_61

    :cond_5f
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    .line 139
    :goto_61
    invoke-virtual {v2, v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 140
    invoke-virtual {v2, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 141
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 143
    :cond_6c
    nop

    .line 144
    nop

    .line 146
    new-instance v1, Lorg/json/JSONObject;

    move-object/from16 v3, p3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 148
    const-string v3, "fontSize"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-float v3, v7

    .line 149
    const-string v7, "letterSpacing"

    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-float v7, v7

    .line 150
    const-string v8, "lineHeight"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v8

    double-to-float v8, v8

    .line 151
    const-string v9, "maxWidth"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v9

    double-to-float v1, v9

    .line 152
    int-to-float v0, v0

    add-float v9, v3, v7

    mul-float/2addr v0, v9

    sub-float/2addr v0, v7

    float-to-double v9, v0

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getDomSizeFromNative letterSpacing=="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ",lineHeight=="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ",maxWidth =="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ",totalStrLength"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    const-wide v11, 0x3ff3333333333333L    # 1.2

    if-eqz p4, :cond_e9

    .line 158
    float-to-double v0, v1

    .line 159
    div-double/2addr v9, v0

    double-to-int v7, v9

    add-int/lit8 v7, v7, 0x1

    .line 160
    if-eqz p5, :cond_e2

    move/from16 v9, p6

    if-lt v7, v9, :cond_e2

    .line 161
    goto :goto_e3

    .line 163
    :cond_e2
    move v9, v7

    :goto_e3
    mul-float/2addr v8, v3

    int-to-float v7, v9

    mul-float/2addr v8, v7

    float-to-double v7, v8

    mul-double/2addr v7, v11

    .line 164
    goto :goto_f3

    .line 165
    :cond_e9
    mul-float/2addr v8, v3

    float-to-double v7, v8

    mul-double/2addr v7, v11

    .line 166
    float-to-double v0, v1

    cmpl-double v11, v9, v0

    if-lez v11, :cond_f2

    move-wide v9, v0

    :cond_f2
    move-wide v0, v9

    .line 169
    :goto_f3
    invoke-virtual {v2, v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 170
    invoke-virtual {v2, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 171
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDomSizeFromNative fontSize=="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ",width=="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",height =="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    goto :goto_130

    .line 132
    :cond_124
    :goto_124
    invoke-virtual {v2, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 133
    invoke-virtual {v2, v5, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 134
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_12e} :catch_12f

    return-object v0

    .line 174
    :catch_12f
    move-exception v0

    .line 176
    :goto_130
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public jsCoreGlobal()Ljava/lang/String;
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 104
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 106
    :try_start_5
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a$a;->a:Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->a(Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->c(Landroid/content/Context;)I

    move-result v1

    int-to-float v1, v1

    .line 107
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a$a;->a:Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;->a(Lcom/bytedance/sdk/openadsdk/core/dynamic/c/a;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->d(Landroid/content/Context;)I

    move-result v2

    int-to-float v2, v2

    .line 108
    const-string v3, "width"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lcom/bytedance/sdk/openadsdk/utils/ak;->b(Landroid/content/Context;F)I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 109
    const-string v1, "height"

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/bytedance/sdk/openadsdk/utils/ak;->b(Landroid/content/Context;F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 110
    const-string v1, "os"

    const-string v2, "Android"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3c} :catch_3d

    .line 112
    goto :goto_3e

    .line 111
    :catch_3d
    move-exception v1

    .line 114
    :goto_3e
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public systemFontSizeRatioNative()D
    .registers 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 120
    const-wide v0, 0x3ff3333333333333L    # 1.2

    return-wide v0
.end method
