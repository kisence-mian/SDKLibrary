.class public final Lcom/anythink/basead/e/a/b;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;Lorg/json/JSONObject;)Lcom/anythink/core/common/d/f;
    .registers 6

    .line 22
    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lcom/anythink/core/common/b/e$a;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_11a

    .line 23
    const-string v2, "seatbid"

    if-nez v1, :cond_13

    .line 24
    :try_start_b
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    .line 25
    return-object v0

    .line 27
    :cond_12
    goto :goto_14

    .line 23
    :cond_13
    move-object p1, v1

    .line 32
    :goto_14
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    .line 33
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    .line 36
    new-instance v1, Lcom/anythink/core/common/d/f;

    invoke-direct {v1}, Lcom/anythink/core/common/d/f;-><init>()V

    .line 37
    invoke-virtual {v1, p0}, Lcom/anythink/core/common/d/f;->a(Ljava/lang/String;)V

    .line 38
    const-string p0, "oid"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/anythink/core/common/d/f;->c(Ljava/lang/String;)V

    .line 39
    const-string p0, "c_id"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/anythink/core/common/d/f;->d(Ljava/lang/String;)V

    .line 40
    const-string p0, "pkg"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/anythink/core/common/d/f;->p(Ljava/lang/String;)V

    .line 41
    const-string p0, "title"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/anythink/core/common/d/f;->e(Ljava/lang/String;)V

    .line 42
    const-string p0, "desc"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/anythink/core/common/d/f;->f(Ljava/lang/String;)V

    .line 43
    const-string p0, "rating"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/anythink/core/common/d/f;->d(I)V

    .line 44
    const-string p0, "icon_u"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/anythink/core/common/d/f;->g(Ljava/lang/String;)V

    .line 45
    const-string p0, "full_u"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/anythink/core/common/d/f;->i(Ljava/lang/String;)V

    .line 46
    const-string p0, "unit_type"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/anythink/core/common/d/f;->b(I)V

    .line 47
    const-string p0, "tp_logo_u"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/anythink/core/common/d/f;->j(Ljava/lang/String;)V

    .line 48
    const-string p0, "cta"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/anythink/core/common/d/f;->k(Ljava/lang/String;)V

    .line 49
    const-string p0, "video_u"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/anythink/core/common/d/f;->l(Ljava/lang/String;)V

    .line 50
    const-string p0, "video_l"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v2, p0

    invoke-virtual {v1, v2, v3}, Lcom/anythink/core/common/d/f;->c(J)V

    .line 51
    const-string p0, "video_r"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/anythink/core/common/d/f;->r(Ljava/lang/String;)V

    .line 52
    const-string p0, "ec_u"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/anythink/core/common/d/f;->s(Ljava/lang/String;)V

    .line 53
    const-string p0, "store_u"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/anythink/core/common/d/f;->m(Ljava/lang/String;)V

    .line 54
    const-string p0, "link_type"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/anythink/core/common/d/f;->c(I)V

    .line 55
    const-string p0, "click_u"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/anythink/core/common/d/f;->o(Ljava/lang/String;)V

    .line 56
    const-string p0, "deeplink"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/anythink/core/common/d/f;->n(Ljava/lang/String;)V

    .line 59
    const-string p0, "crt_type"

    const/4 v2, 0x1

    invoke-virtual {p1, p0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/anythink/core/common/d/f;->g(I)V

    .line 60
    const-string p0, "img_list"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/anythink/core/common/d/f;->t(Ljava/lang/String;)V

    .line 61
    const-string p0, "banner_xhtml"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/anythink/core/common/d/f;->u(Ljava/lang/String;)V

    .line 64
    const-string p0, "offer_firm_id"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v1, p0}, Lcom/anythink/core/common/d/f;->a(I)V

    .line 65
    const-string p0, "jump_url"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/anythink/core/common/d/f;->b(Ljava/lang/String;)V

    .line 68
    const-string p0, "ctrl"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/anythink/core/common/d/v;->b(Ljava/lang/String;)Lcom/anythink/core/common/d/v;

    move-result-object p0

    .line 69
    invoke-virtual {v1, p0}, Lcom/anythink/core/common/d/f;->a(Lcom/anythink/core/common/d/v;)V

    .line 71
    const-string p0, "tk"

    invoke-virtual {p1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/anythink/core/common/d/w;->a(Ljava/lang/String;)Lcom/anythink/core/common/d/w;

    move-result-object p0

    .line 72
    invoke-virtual {v1, p0}, Lcom/anythink/core/common/d/f;->a(Lcom/anythink/core/common/d/w;)V
    :try_end_119
    .catchall {:try_start_b .. :try_end_119} :catchall_11a

    .line 75
    return-object v1

    .line 76
    :catchall_11a
    move-exception p0

    .line 82
    return-object v0
.end method
