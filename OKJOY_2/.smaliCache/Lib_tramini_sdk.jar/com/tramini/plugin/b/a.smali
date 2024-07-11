.class public Lcom/tramini/plugin/b/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tramini/plugin/b/a$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:J

.field private d:Ljava/util/List;

.field private e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/tramini/plugin/a/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:I

.field private m:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tramini/plugin/a/c/d;",
            ">;"
        }
    .end annotation
.end field

.field private n:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-class v0, Lcom/tramini/plugin/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tramini/plugin/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/tramini/plugin/b/a;
    .registers 13

    .line 179
    const-string v0, "notifications"

    const-string v1, "p_s"

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_c

    .line 180
    return-object v3

    .line 183
    :cond_c
    new-instance v2, Lcom/tramini/plugin/b/a;

    invoke-direct {v2}, Lcom/tramini/plugin/b/a;-><init>()V

    .line 186
    :try_start_11
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/tramini/plugin/b/a$a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_25

    .line 189
    const-string p0, ""

    .line 1075
    iput-object p0, v2, Lcom/tramini/plugin/b/a;->b:Ljava/lang/String;

    .line 189
    goto :goto_2f

    .line 191
    :cond_25
    invoke-static {}, Lcom/tramini/plugin/b/a$a;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2075
    iput-object p0, v2, Lcom/tramini/plugin/b/a;->b:Ljava/lang/String;

    .line 194
    :goto_2f
    invoke-static {}, Lcom/tramini/plugin/b/a$a;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_40

    .line 195
    nop

    .line 2083
    const-wide/32 v5, 0x36ee80

    iput-wide v5, v2, Lcom/tramini/plugin/b/a;->c:J

    .line 195
    goto :goto_4b

    .line 197
    :cond_40
    invoke-static {}, Lcom/tramini/plugin/b/a$a;->b()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    int-to-long v5, p0

    .line 3083
    iput-wide v5, v2, Lcom/tramini/plugin/b/a;->c:J

    .line 200
    :goto_4b
    invoke-static {}, Lcom/tramini/plugin/b/a$a;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    const/4 v5, 0x0

    if-eqz p0, :cond_5a

    .line 201
    nop

    .line 4067
    iput v5, v2, Lcom/tramini/plugin/b/a;->n:I

    .line 201
    goto :goto_64

    .line 203
    :cond_5a
    invoke-static {}, Lcom/tramini/plugin/b/a$a;->c()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    .line 5067
    iput p0, v2, Lcom/tramini/plugin/b/a;->n:I

    .line 206
    :goto_64
    invoke-static {}, Lcom/tramini/plugin/b/a$a;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_df

    .line 207
    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
    :try_end_73
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_73} :catch_1ac

    .line 209
    :try_start_73
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {}, Lcom/tramini/plugin/b/a$a;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 210
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 211
    :goto_84
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_88} :catch_db
    .catch Lorg/json/JSONException; {:try_start_73 .. :try_end_88} :catch_1ac

    if-eqz v8, :cond_da

    .line 213
    :try_start_8a
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 214
    new-instance v9, Lcom/tramini/plugin/a/c/c;

    invoke-direct {v9}, Lcom/tramini/plugin/a/c/c;-><init>()V

    .line 215
    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v10

    .line 216
    const-string v11, "pml"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/tramini/plugin/a/c/c;->d:Ljava/lang/String;

    .line 217
    const-string v11, "uu"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v9, Lcom/tramini/plugin/a/c/c;->a:Ljava/lang/String;

    .line 218
    const-string v11, "dmin"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/tramini/plugin/a/c/c;->b:I

    .line 219
    const-string v11, "dmax"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v11

    iput v11, v9, Lcom/tramini/plugin/a/c/c;->c:I

    .line 221
    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d4

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_d4

    .line 222
    new-instance v11, Lorg/json/JSONArray;

    invoke-virtual {v10, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v11, v10}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v11, v9, Lcom/tramini/plugin/a/c/c;->e:Lorg/json/JSONArray;

    .line 233
    :cond_d4
    invoke-virtual {p0, v8, v9}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d7
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_d7} :catch_d8
    .catch Lorg/json/JSONException; {:try_start_8a .. :try_end_d7} :catch_1ac

    goto :goto_d9

    .line 234
    :catch_d8
    move-exception v8

    .line 236
    :goto_d9
    goto :goto_84

    .line 240
    :cond_da
    goto :goto_dc

    .line 238
    :catch_db
    move-exception v1

    .line 241
    :goto_dc
    nop

    .line 5100
    :try_start_dd
    iput-object p0, v2, Lcom/tramini/plugin/b/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 244
    :cond_df
    invoke-static {}, Lcom/tramini/plugin/b/a$a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_150

    .line 245
    invoke-static {}, Lcom/tramini/plugin/b/a$a;->e()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 247
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 249
    const-string p0, "p1"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5109
    iput-object p0, v2, Lcom/tramini/plugin/b/a;->f:Ljava/lang/String;

    .line 250
    const-string p0, "p2"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5117
    iput-object p0, v2, Lcom/tramini/plugin/b/a;->g:Ljava/lang/String;

    .line 251
    const-string p0, "p3"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5125
    iput-object p0, v2, Lcom/tramini/plugin/b/a;->h:Ljava/lang/String;

    .line 252
    const-string p0, "p4"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5133
    iput-object p0, v2, Lcom/tramini/plugin/b/a;->i:Ljava/lang/String;

    .line 253
    const-string p0, "p5"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5137
    iput-object p0, v2, Lcom/tramini/plugin/b/a;->j:Ljava/lang/String;

    .line 254
    const-string p0, "p6"

    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 5149
    iput-object p0, v2, Lcom/tramini/plugin/b/a;->k:Ljava/lang/String;

    .line 256
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_150

    .line 257
    new-instance p0, Lorg/json/JSONArray;

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 259
    if-lez v0, :cond_150

    .line 260
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 261
    move v6, v5

    :goto_141
    if-ge v6, v0, :cond_14d

    .line 262
    invoke-virtual {p0, v6}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v6, v6, 0x1

    goto :goto_141

    .line 264
    :cond_14d
    nop

    .line 6091
    iput-object v1, v2, Lcom/tramini/plugin/b/a;->d:Ljava/util/List;

    .line 269
    :cond_150
    invoke-static {}, Lcom/tramini/plugin/b/a$a;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_15e

    .line 270
    nop

    .line 6157
    iput v5, v2, Lcom/tramini/plugin/b/a;->l:I

    .line 270
    goto :goto_168

    .line 272
    :cond_15e
    invoke-static {}, Lcom/tramini/plugin/b/a$a;->f()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    .line 7157
    iput p0, v2, Lcom/tramini/plugin/b/a;->l:I

    .line 275
    :goto_168
    invoke-static {}, Lcom/tramini/plugin/b/a$a;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1aa

    .line 276
    invoke-static {}, Lcom/tramini/plugin/b/a$a;->g()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 278
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p0

    .line 282
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 283
    :goto_188
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a7

    .line 285
    new-instance v4, Lcom/tramini/plugin/a/c/d;

    invoke-direct {v4}, Lcom/tramini/plugin/a/c/d;-><init>()V

    .line 286
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v4, Lcom/tramini/plugin/a/c/d;->a:Ljava/lang/String;

    .line 287
    iget-object v5, v4, Lcom/tramini/plugin/a/c/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/tramini/plugin/a/c/d;->b:Ljava/lang/String;

    .line 288
    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_188

    .line 291
    :cond_1a7
    nop

    .line 7165
    iput-object v1, v2, Lcom/tramini/plugin/b/a;->m:Ljava/util/Set;
    :try_end_1aa
    .catch Lorg/json/JSONException; {:try_start_dd .. :try_end_1aa} :catch_1ac

    .line 297
    :cond_1aa
    nop

    .line 299
    return-object v2

    .line 295
    :catch_1ac
    move-exception p0

    .line 296
    return-object v3
.end method

.method private a(I)V
    .registers 2

    .line 67
    iput p1, p0, Lcom/tramini/plugin/b/a;->n:I

    .line 68
    return-void
.end method

.method private a(J)V
    .registers 3

    .line 83
    iput-wide p1, p0, Lcom/tramini/plugin/b/a;->c:J

    .line 84
    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/tramini/plugin/b/a;->d:Ljava/util/List;

    .line 92
    return-void
.end method

.method private a(Ljava/util/Set;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/tramini/plugin/a/c/d;",
            ">;)V"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lcom/tramini/plugin/b/a;->m:Ljava/util/Set;

    .line 166
    return-void
.end method

.method private a(Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/tramini/plugin/a/c/c;",
            ">;)V"
        }
    .end annotation

    .line 100
    iput-object p1, p0, Lcom/tramini/plugin/b/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 101
    return-void
.end method

.method private b(I)V
    .registers 2

    .line 157
    iput p1, p0, Lcom/tramini/plugin/b/a;->l:I

    .line 158
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/tramini/plugin/b/a;->b:Ljava/lang/String;

    .line 76
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 2

    .line 109
    iput-object p1, p0, Lcom/tramini/plugin/b/a;->f:Ljava/lang/String;

    .line 110
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 2

    .line 117
    iput-object p1, p0, Lcom/tramini/plugin/b/a;->g:Ljava/lang/String;

    .line 118
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 2

    .line 125
    iput-object p1, p0, Lcom/tramini/plugin/b/a;->h:Ljava/lang/String;

    .line 126
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .registers 2

    .line 133
    iput-object p1, p0, Lcom/tramini/plugin/b/a;->i:Ljava/lang/String;

    .line 134
    return-void
.end method

.method private g(Ljava/lang/String;)V
    .registers 2

    .line 137
    iput-object p1, p0, Lcom/tramini/plugin/b/a;->j:Ljava/lang/String;

    .line 138
    return-void
.end method

.method private h(Ljava/lang/String;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/tramini/plugin/b/a;->k:Ljava/lang/String;

    .line 150
    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 63
    iget v0, p0, Lcom/tramini/plugin/b/a;->n:I

    return v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/tramini/plugin/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()J
    .registers 3

    .line 79
    iget-wide v0, p0, Lcom/tramini/plugin/b/a;->c:J

    return-wide v0
.end method

.method public final d()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/tramini/plugin/b/a;->d:Ljava/util/List;

    return-object v0
.end method

.method public final e()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/tramini/plugin/a/c/c;",
            ">;"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/tramini/plugin/b/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .line 105
    iget-object v0, p0, Lcom/tramini/plugin/b/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    .line 113
    iget-object v0, p0, Lcom/tramini/plugin/b/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .line 121
    iget-object v0, p0, Lcom/tramini/plugin/b/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/tramini/plugin/b/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final j()Ljava/lang/String;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/tramini/plugin/b/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final k()Ljava/lang/String;
    .registers 2

    .line 145
    iget-object v0, p0, Lcom/tramini/plugin/b/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final l()I
    .registers 2

    .line 153
    iget v0, p0, Lcom/tramini/plugin/b/a;->l:I

    return v0
.end method

.method public final m()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/tramini/plugin/a/c/d;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/tramini/plugin/b/a;->m:Ljava/util/Set;

    return-object v0
.end method
