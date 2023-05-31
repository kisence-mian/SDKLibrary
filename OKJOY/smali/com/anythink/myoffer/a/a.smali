.class public final Lcom/anythink/myoffer/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/anythink/myoffer/a/a;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/a/a;->b:Landroid/content/Context;

    .line 29
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/myoffer/a/a;
    .registers 2

    .prologue
    .line 32
    sget-object v0, Lcom/anythink/myoffer/a/a;->a:Lcom/anythink/myoffer/a/a;

    if-nez v0, :cond_b

    .line 33
    new-instance v0, Lcom/anythink/myoffer/a/a;

    invoke-direct {v0, p0}, Lcom/anythink/myoffer/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/anythink/myoffer/a/a;->a:Lcom/anythink/myoffer/a/a;

    .line 35
    :cond_b
    sget-object v0, Lcom/anythink/myoffer/a/a;->a:Lcom/anythink/myoffer/a/a;

    return-object v0
.end method

.method private static a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 6

    .prologue
    .line 247
    if-nez p1, :cond_3

    .line 255
    :cond_2
    return-object p0

    .line 250
    :cond_3
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 251
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 253
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\\{"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\\}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_7
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/myoffer/c/a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 142
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 143
    const/4 v1, 0x0

    .line 145
    :try_start_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_15b

    move-object v1, v0

    .line 151
    :goto_c
    :try_start_c
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, p0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 153
    const/4 v0, 0x0

    :goto_12
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_15a

    .line 154
    new-instance v4, Lcom/anythink/myoffer/c/a;

    invoke-direct {v4}, Lcom/anythink/myoffer/c/a;-><init>()V

    .line 155
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 156
    const-string v6, "o_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/anythink/myoffer/c/a;->a(Ljava/lang/String;)V

    .line 157
    const-string v6, "c_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/anythink/myoffer/c/a;->b(Ljava/lang/String;)V

    .line 158
    const-string v6, "t"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/anythink/myoffer/c/a;->c(Ljava/lang/String;)V

    .line 159
    const-string v6, "p_g"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/anythink/myoffer/c/a;->x(Ljava/lang/String;)V

    .line 160
    const-string v6, "d"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/anythink/myoffer/c/a;->d(Ljava/lang/String;)V

    .line 161
    const-string v6, "ic_u"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/anythink/myoffer/c/a;->e(Ljava/lang/String;)V

    .line 162
    const-string v6, "im_u"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/anythink/myoffer/c/a;->f(Ljava/lang/String;)V

    .line 163
    const-string v6, "f_i_u"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/anythink/myoffer/c/a;->g(Ljava/lang/String;)V

    .line 164
    const-string v6, "a_c_u"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/anythink/myoffer/c/a;->h(Ljava/lang/String;)V

    .line 165
    const-string v6, "c_t"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/anythink/myoffer/c/a;->i(Ljava/lang/String;)V

    .line 166
    const-string v6, "v_u"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/anythink/myoffer/c/a;->j(Ljava/lang/String;)V

    .line 167
    const-string v6, "l_t"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/anythink/myoffer/c/a;->b(I)V

    .line 168
    const-string v6, "p_u"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/anythink/myoffer/c/a;->k(Ljava/lang/String;)V

    .line 169
    const-string v6, "dl"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/anythink/myoffer/c/a;->l(Ljava/lang/String;)V

    .line 170
    const-string v6, "c_u"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/anythink/myoffer/c/a;->m(Ljava/lang/String;)V

    .line 171
    const-string v6, "ip_u"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/anythink/myoffer/c/a;->n(Ljava/lang/String;)V

    .line 174
    const-string v6, "t_u"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/anythink/myoffer/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/anythink/myoffer/c/a;->o(Ljava/lang/String;)V

    .line 175
    const-string v6, "t_u_25"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/anythink/myoffer/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/anythink/myoffer/c/a;->p(Ljava/lang/String;)V

    .line 176
    const-string v6, "t_u_50"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/anythink/myoffer/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/anythink/myoffer/c/a;->q(Ljava/lang/String;)V

    .line 177
    const-string v6, "t_u_75"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/anythink/myoffer/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/anythink/myoffer/c/a;->r(Ljava/lang/String;)V

    .line 178
    const-string v6, "t_u_100"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/anythink/myoffer/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/anythink/myoffer/c/a;->s(Ljava/lang/String;)V

    .line 179
    const-string v6, "s_e_c_t_u"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/anythink/myoffer/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/anythink/myoffer/c/a;->t(Ljava/lang/String;)V

    .line 180
    const-string v6, "c_t_u"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/anythink/myoffer/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/anythink/myoffer/c/a;->u(Ljava/lang/String;)V

    .line 181
    const-string v6, "ip_n_u"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/anythink/myoffer/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/anythink/myoffer/c/a;->v(Ljava/lang/String;)V

    .line 182
    const-string v6, "c_n_u"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v1}, Lcom/anythink/myoffer/a/a;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/anythink/myoffer/c/a;->w(Ljava/lang/String;)V

    .line 185
    const-string v6, "o_a_d_c"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    .line 1336
    iput v6, v4, Lcom/anythink/myoffer/c/a;->a:I

    .line 186
    const-string v6, "o_a_p"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 1344
    iput-wide v6, v4, Lcom/anythink/myoffer/c/a;->b:J

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/anythink/myoffer/c/a;->a(J)V

    .line 189
    const-string v6, "f_t"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v4, v6}, Lcom/anythink/myoffer/c/a;->c(I)V

    .line 190
    const-string v6, "c_m"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/anythink/myoffer/c/a;->a(I)V

    .line 191
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_152
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_152} :catch_156

    .line 153
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_12

    .line 194
    :catch_156
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 196
    :cond_15a
    return-object v2

    :catch_15b
    move-exception v0

    goto/16 :goto_c
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/myoffer/c/a;
    .registers 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/anythink/myoffer/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/myoffer/b/a;->a(Landroid/content/Context;)Lcom/anythink/myoffer/b/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/anythink/myoffer/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/myoffer/c/a;

    move-result-object v0

    return-object v0
.end method

.method public final a()Ljava/lang/String;
    .registers 5

    .prologue
    .line 119
    iget-object v0, p0, Lcom/anythink/myoffer/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/myoffer/b/a;->a(Landroid/content/Context;)Lcom/anythink/myoffer/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/myoffer/b/a;->a()Ljava/util/List;

    move-result-object v0

    .line 120
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 121
    if-eqz v0, :cond_3a

    .line 123
    :try_start_11
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/myoffer/c/a;

    .line 124
    invoke-static {}, Lcom/anythink/myoffer/a/c;->a()Lcom/anythink/myoffer/a/c;

    invoke-static {v0}, Lcom/anythink/myoffer/a/c;->a(Lcom/anythink/myoffer/c/a;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 125
    invoke-virtual {v0}, Lcom/anythink/myoffer/c/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/anythink/myoffer/c/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_35} :catch_36

    goto :goto_15

    .line 129
    :catch_36
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 132
    :cond_3a
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    .line 78
    iget-object v0, p0, Lcom/anythink/myoffer/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/myoffer/b/a;->a(Landroid/content/Context;)Lcom/anythink/myoffer/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/myoffer/b/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 79
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 80
    if-eqz v2, :cond_17

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1a

    .line 81
    :cond_17
    const-string v0, ""

    .line 110
    :goto_19
    return-object v0

    .line 87
    :cond_1a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_21
    if-ltz v1, :cond_47

    .line 88
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/myoffer/c/a;

    .line 89
    invoke-static {}, Lcom/anythink/myoffer/a/c;->a()Lcom/anythink/myoffer/a/c;

    invoke-static {v0}, Lcom/anythink/myoffer/a/c;->a(Lcom/anythink/myoffer/c/a;)Z

    move-result v4

    if-nez v4, :cond_39

    .line 90
    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 87
    :goto_35
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_21

    .line 92
    :cond_39
    iget-object v4, p0, Lcom/anythink/myoffer/a/a;->b:Landroid/content/Context;

    invoke-static {v4}, Lcom/anythink/myoffer/a/b;->a(Landroid/content/Context;)Lcom/anythink/myoffer/a/b;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/anythink/myoffer/a/b;->d(Lcom/anythink/myoffer/c/a;)Lcom/anythink/myoffer/c/b;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 96
    :cond_47
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_50

    .line 97
    const-string v0, ""

    goto :goto_19

    .line 100
    :cond_50
    new-instance v0, Lcom/anythink/myoffer/a/a$1;

    invoke-direct {v0, p0}, Lcom/anythink/myoffer/a/a$1;-><init>(Lcom/anythink/myoffer/a/a;)V

    invoke-static {v3, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 108
    const/4 v0, 0x0

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/myoffer/c/b;

    iget-object v0, v0, Lcom/anythink/myoffer/c/b;->a:Ljava/lang/String;

    goto :goto_19
.end method

.method public final a(Lcom/anythink/core/b/c/i;)V
    .registers 10

    .prologue
    .line 43
    iget-object v0, p0, Lcom/anythink/myoffer/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/myoffer/b/a;->a(Landroid/content/Context;)Lcom/anythink/myoffer/b/a;

    move-result-object v0

    iget-object v1, p1, Lcom/anythink/core/b/c/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/myoffer/b/a;->a(Ljava/lang/String;)V

    .line 44
    iget-object v0, p1, Lcom/anythink/core/b/c/i;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 59
    :cond_13
    return-void

    .line 47
    :cond_14
    iget-object v0, p1, Lcom/anythink/core/b/c/i;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/anythink/core/b/c/i;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/anythink/myoffer/a/a;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 49
    iget-object v0, p0, Lcom/anythink/myoffer/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/myoffer/b/a;->a(Landroid/content/Context;)Lcom/anythink/myoffer/b/a;

    move-result-object v0

    iget-object v1, p1, Lcom/anythink/core/b/c/i;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/anythink/myoffer/b/a;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 53
    iget-boolean v0, p1, Lcom/anythink/core/b/c/i;->e:Z

    if-eqz v0, :cond_13

    .line 54
    iget-object v0, p1, Lcom/anythink/core/b/c/i;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/anythink/myoffer/c/c;->a(Ljava/lang/String;)Lcom/anythink/myoffer/c/c;

    move-result-object v3

    .line 55
    invoke-static {}, Lcom/anythink/myoffer/a/c;->a()Lcom/anythink/myoffer/a/c;

    iget-object v4, p1, Lcom/anythink/core/b/c/i;->a:Ljava/lang/String;

    .line 1152
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    .line 1153
    const/4 v0, 0x0

    move v1, v0

    :goto_3c
    if-ge v1, v5, :cond_13

    .line 1154
    const/4 v6, 0x1

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/myoffer/c/a;

    const/4 v7, 0x0

    invoke-static {v4, v6, v0, v3, v7}, Lcom/anythink/myoffer/a/c;->a(Ljava/lang/String;ZLcom/anythink/myoffer/c/a;Lcom/anythink/myoffer/c/c;Lcom/anythink/myoffer/a/a/d$a;)V

    .line 1153
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3c
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/myoffer/c/a;Lcom/anythink/myoffer/c/c;Lcom/anythink/myoffer/a/a/d$a;)V
    .registers 7

    .prologue
    .line 203
    iget-object v0, p0, Lcom/anythink/myoffer/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/myoffer/a/b;->a(Landroid/content/Context;)Lcom/anythink/myoffer/a/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/anythink/myoffer/a/b;->b(Lcom/anythink/myoffer/c/a;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 205
    const-string v0, "20003"

    const-string v1, "Ad is out of cap!"

    invoke-static {v0, v1}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/anythink/myoffer/a/a/d$a;->a(Lcom/anythink/network/myoffer/MyOfferError;)V

    .line 216
    :goto_17
    return-void

    .line 209
    :cond_18
    iget-object v0, p0, Lcom/anythink/myoffer/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/myoffer/a/b;->a(Landroid/content/Context;)Lcom/anythink/myoffer/a/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/anythink/myoffer/a/b;->c(Lcom/anythink/myoffer/c/a;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 211
    const-string v0, "20004"

    const-string v1, "Ad is in pacing!"

    invoke-static {v0, v1}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v0

    invoke-interface {p4, v0}, Lcom/anythink/myoffer/a/a/d$a;->a(Lcom/anythink/network/myoffer/MyOfferError;)V

    goto :goto_17

    .line 215
    :cond_30
    invoke-static {}, Lcom/anythink/myoffer/a/c;->a()Lcom/anythink/myoffer/a/c;

    .line 2163
    const/4 v0, 0x0

    invoke-static {p1, v0, p2, p3, p4}, Lcom/anythink/myoffer/a/c;->a(Ljava/lang/String;ZLcom/anythink/myoffer/c/a;Lcom/anythink/myoffer/c/c;Lcom/anythink/myoffer/a/a/d$a;)V

    goto :goto_17
.end method

.method public final a(Lcom/anythink/myoffer/c/a;Z)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 226
    iget-object v1, p0, Lcom/anythink/myoffer/a/a;->b:Landroid/content/Context;

    if-eqz v1, :cond_7

    if-nez p1, :cond_8

    .line 234
    :cond_7
    :goto_7
    return v0

    .line 229
    :cond_8
    if-eqz p2, :cond_12

    .line 230
    invoke-static {}, Lcom/anythink/myoffer/a/c;->a()Lcom/anythink/myoffer/a/c;

    invoke-static {p1}, Lcom/anythink/myoffer/a/c;->a(Lcom/anythink/myoffer/c/a;)Z

    move-result v0

    goto :goto_7

    .line 232
    :cond_12
    iget-object v1, p0, Lcom/anythink/myoffer/a/a;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/myoffer/a/b;->a(Landroid/content/Context;)Lcom/anythink/myoffer/a/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/anythink/myoffer/a/b;->b(Lcom/anythink/myoffer/c/a;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/anythink/myoffer/a/a;->b:Landroid/content/Context;

    .line 233
    invoke-static {v1}, Lcom/anythink/myoffer/a/b;->a(Landroid/content/Context;)Lcom/anythink/myoffer/a/b;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/anythink/myoffer/a/b;->c(Lcom/anythink/myoffer/c/a;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 234
    invoke-static {}, Lcom/anythink/myoffer/a/c;->a()Lcom/anythink/myoffer/a/c;

    invoke-static {p1}, Lcom/anythink/myoffer/a/c;->a(Lcom/anythink/myoffer/c/a;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method
