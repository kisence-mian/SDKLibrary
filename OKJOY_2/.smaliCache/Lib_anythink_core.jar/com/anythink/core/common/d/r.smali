.class public Lcom/anythink/core/common/d/r;
.super Lcom/anythink/core/common/d/j;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Lcom/anythink/core/common/d/j;-><init>()V

    .line 19
    return-void
.end method

.method public static b(Ljava/lang/String;)Lcom/anythink/core/common/d/r;
    .registers 5

    .line 23
    new-instance v0, Lcom/anythink/core/common/d/r;

    invoke-direct {v0}, Lcom/anythink/core/common/d/r;-><init>()V

    .line 24
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_93

    .line 26
    :try_start_b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    const-string p0, "f_t"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/r;->h(I)V

    .line 29
    const-string p0, "v_c"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/r;->i(I)V

    .line 30
    const-string p0, "s_b_t"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/r;->j(I)V

    .line 31
    const-string p0, "e_c_a"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/r;->k(I)V

    .line 32
    const-string p0, "v_m"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/r;->l(I)V

    .line 33
    const-string p0, "s_c_t"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/r;->m(I)V

    .line 34
    const-string p0, "m_t"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/r;->c(I)V

    .line 35
    const-string p0, "o_c_t"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/anythink/core/common/d/r;->b(J)V

    .line 37
    const-string p0, "ak_cfm"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/r;->d(I)V

    .line 39
    const-string p0, "ctdown_time"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/anythink/core/common/d/r;->a(J)V

    .line 40
    const-string p0, "sk_able"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/r;->e(I)V

    .line 41
    const-string p0, "orient"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/r;->f(I)V

    .line 42
    const-string p0, "size"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/r;->a(Ljava/lang/String;)V

    .line 43
    const-string p0, "cl_btn"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/anythink/core/common/d/r;->g(I)V
    :try_end_8e
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_8e} :catch_8f

    .line 47
    goto :goto_93

    .line 46
    :catch_8f
    move-exception p0

    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    .line 49
    :cond_93
    :goto_93
    return-object v0
.end method
