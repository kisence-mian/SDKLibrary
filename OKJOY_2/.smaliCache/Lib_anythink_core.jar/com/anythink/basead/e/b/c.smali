.class public final Lcom/anythink/basead/e/b/c;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String; = "sdk_updatetime"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcom/anythink/core/common/d/i;Lorg/json/JSONObject;)Lcom/anythink/core/common/d/t;
    .registers 7

    .line 24
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/anythink/core/common/b/e$a;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 25
    if-nez v1, :cond_a

    .line 26
    return-object v0

    .line 30
    :cond_a
    const-string v2, "offers"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 31
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 34
    new-instance v2, Lcom/anythink/core/common/d/t;

    invoke-direct {v2}, Lcom/anythink/core/common/d/t;-><init>()V

    .line 35
    iget p0, p0, Lcom/anythink/core/common/d/i;->f:I

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/d/t;->e(I)V

    .line 36
    const-string p0, "oid"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/d/t;->c(Ljava/lang/String;)V

    .line 37
    const-string p0, "c_id"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/d/t;->d(Ljava/lang/String;)V

    .line 38
    const-string p0, "pkg"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/d/t;->p(Ljava/lang/String;)V

    .line 39
    const-string p0, "title"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/d/t;->e(Ljava/lang/String;)V

    .line 40
    const-string p0, "desc"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/d/t;->f(Ljava/lang/String;)V

    .line 41
    const-string p0, "rating"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/d/t;->d(I)V

    .line 42
    const-string p0, "icon_u"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/d/t;->g(Ljava/lang/String;)V

    .line 43
    const-string p0, "full_u"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/d/t;->i(Ljava/lang/String;)V

    .line 44
    const-string p0, "unit_type"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/d/t;->b(I)V

    .line 45
    const-string p0, "tp_logo_u"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/d/t;->j(Ljava/lang/String;)V

    .line 46
    const-string p0, "cta"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/d/t;->k(Ljava/lang/String;)V

    .line 47
    const-string p0, "video_u"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/d/t;->l(Ljava/lang/String;)V

    .line 48
    const-string p0, "video_l"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v3, p0

    invoke-virtual {v2, v3, v4}, Lcom/anythink/core/common/d/t;->c(J)V

    .line 49
    const-string p0, "video_r"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/d/t;->r(Ljava/lang/String;)V

    .line 50
    const-string p0, "ec_u"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/d/t;->s(Ljava/lang/String;)V

    .line 51
    const-string p0, "store_u"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/d/t;->m(Ljava/lang/String;)V

    .line 52
    const-string p0, "link_type"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/d/t;->c(I)V

    .line 53
    const-string p0, "click_u"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/d/t;->o(Ljava/lang/String;)V

    .line 54
    const-string p0, "deeplink"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/d/t;->n(Ljava/lang/String;)V

    .line 55
    const-string p0, "r_target"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/d/t;->f(I)V

    .line 56
    const-string p0, "expire"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/anythink/core/common/d/t;->a(J)V

    .line 57
    const-string p0, "ad_logo_title"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/d/t;->q(Ljava/lang/String;)V

    .line 59
    const-string p0, "crt_type"

    const/4 v3, 0x1

    invoke-virtual {v1, p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/d/t;->g(I)V

    .line 60
    const-string p0, "img_list"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/d/t;->t(Ljava/lang/String;)V

    .line 61
    const-string p0, "banner_xhtml"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/d/t;->u(Ljava/lang/String;)V

    .line 62
    const-string p0, "sdk_updatetime"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide p0

    invoke-virtual {v2, p0, p1}, Lcom/anythink/core/common/d/t;->b(J)V

    .line 65
    const-string p0, "offer_firm_id"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/d/t;->a(I)V

    .line 66
    const-string p0, "jump_url"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/anythink/core/common/d/t;->b(Ljava/lang/String;)V

    .line 68
    const-string p0, "ctrl"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/anythink/core/common/d/v;->b(Ljava/lang/String;)Lcom/anythink/core/common/d/v;

    move-result-object p0

    .line 69
    invoke-virtual {v2, p0}, Lcom/anythink/core/common/d/t;->a(Lcom/anythink/core/common/d/v;)V

    .line 71
    const-string p0, "tk"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/anythink/core/common/d/w;->a(Ljava/lang/String;)Lcom/anythink/core/common/d/w;

    move-result-object p0

    .line 72
    invoke-virtual {v2, p0}, Lcom/anythink/core/common/d/t;->a(Lcom/anythink/core/common/d/w;)V
    :try_end_137
    .catchall {:try_start_1 .. :try_end_137} :catchall_138

    .line 75
    return-object v2

    .line 76
    :catchall_138
    move-exception p0

    .line 82
    return-object v0
.end method
