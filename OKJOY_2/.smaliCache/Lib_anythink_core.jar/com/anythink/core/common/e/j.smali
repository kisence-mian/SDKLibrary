.class public Lcom/anythink/core/common/e/j;
.super Lcom/anythink/core/common/e/a;


# static fields
.field public static final a:I = 0x1

.field public static final b:I = 0x2

.field public static final c:I = 0x3

.field public static final d:I = 0x4

.field public static final e:I = 0x5

.field public static final f:I = 0x6

.field public static final g:I = 0x7

.field public static final h:I = 0x8

.field public static final i:I = 0x9

.field public static final l:I = 0xa

.field public static final m:I = 0xb

.field public static final n:I = 0xc

.field public static final o:I = 0xd

.field public static final p:I = 0xf

.field private static final r:Ljava/lang/String;


# instance fields
.field q:Z

.field private s:Landroid/content/Context;

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/common/d/e;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/anythink/core/common/d/e;

.field private x:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 38
    const-class v0, Lcom/anythink/core/common/e/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/common/e/j;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/d/e;",
            ">;)V"
        }
    .end annotation

    .line 71
    invoke-direct {p0}, Lcom/anythink/core/common/e/a;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/common/e/j;->q:Z

    .line 73
    iput-object p1, p0, Lcom/anythink/core/common/e/j;->s:Landroid/content/Context;

    .line 74
    iput p2, p0, Lcom/anythink/core/common/e/j;->x:I

    .line 76
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/e/j;->t:Ljava/lang/String;

    .line 77
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object p1

    invoke-virtual {p1}, Lcom/anythink/core/common/b/g;->k()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/e/j;->u:Ljava/lang/String;

    .line 79
    iput-object p3, p0, Lcom/anythink/core/common/e/j;->v:Ljava/util/List;

    .line 81
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 4

    .line 244
    iget-boolean v0, p0, Lcom/anythink/core/common/e/j;->q:Z

    if-eqz v0, :cond_11

    if-eqz p1, :cond_11

    .line 246
    :try_start_6
    const-string v0, "ofl"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_c} :catch_d

    .line 249
    return-void

    .line 248
    :catch_d
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 251
    :cond_11
    return-void
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 257
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 258
    sget-object v0, Lcom/anythink/core/common/e/j;->r:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "data:"

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    return-object p1
.end method

.method protected final a(Lcom/anythink/core/api/AdError;)V
    .registers 6

    .line 264
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 265
    invoke-virtual {p0}, Lcom/anythink/core/common/e/j;->c()Ljava/util/Map;

    move-result-object v0

    .line 267
    if-eqz v0, :cond_29

    .line 268
    :try_start_b
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_29

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 269
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_26} :catch_27

    .line 270
    goto :goto_13

    .line 272
    :catch_27
    move-exception v0

    goto :goto_2a

    .line 274
    :cond_29
    nop

    .line 276
    :goto_2a
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    .line 277
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/common/e/j;->q:Z

    .line 278
    invoke-virtual {p0}, Lcom/anythink/core/common/e/j;->f()Ljava/lang/String;

    move-result-object v1

    .line 279
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/anythink/core/common/e/j;->q:Z

    .line 280
    invoke-virtual {p0}, Lcom/anythink/core/common/e/j;->b()Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-static {}, Lcom/anythink/core/common/n;->a()Lcom/anythink/core/common/n;

    move-result-object v3

    invoke-virtual {v3, v0, v2, p1, v1}, Lcom/anythink/core/common/n;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method protected final b()Ljava/lang/String;
    .registers 3

    .line 102
    iget-object v0, p0, Lcom/anythink/core/common/e/j;->w:Lcom/anythink/core/common/d/e;

    if-eqz v0, :cond_9

    .line 103
    iget-object v0, v0, Lcom/anythink/core/common/d/e;->b:Lcom/anythink/core/common/d/aa;

    .line 1061
    iget-object v0, v0, Lcom/anythink/core/common/d/aa;->ag:Ljava/lang/String;

    .line 103
    return-object v0

    .line 106
    :cond_9
    iget-object v0, p0, Lcom/anythink/core/common/e/j;->s:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/common/e/j;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 107
    nop

    .line 108
    if-eqz v0, :cond_27

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->H()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 109
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->H()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    .line 111
    :cond_27
    const-string v0, "https://tk.anythinktech.com/v1/open/tk"

    :goto_29
    return-object v0
.end method

.method protected final b(Lcom/anythink/core/api/AdError;)V
    .registers 10

    .line 139
    nop

    .line 140
    iget-object v0, p0, Lcom/anythink/core/common/e/j;->v:Ljava/util/List;

    if-eqz v0, :cond_a

    .line 141
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_b

    .line 140
    :cond_a
    const/4 v0, 0x1

    .line 143
    :goto_b
    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getPlatformMSG()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/anythink/core/common/e/j;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const-string v1, "tk"

    const-string v7, "0"

    invoke-static/range {v1 .. v7}, Lcom/anythink/core/common/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method protected final c()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 117
    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    const-string v1, "Content-Type"

    const-string v2, "application/json;charset=utf-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    return-object v0
.end method

.method protected final d()[B
    .registers 2

    .line 124
    invoke-virtual {p0}, Lcom/anythink/core/common/e/j;->f()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/e/j;->c(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected final e()Lorg/json/JSONObject;
    .registers 7

    .line 169
    invoke-super {p0}, Lcom/anythink/core/common/e/a;->e()Lorg/json/JSONObject;

    move-result-object v0

    .line 170
    invoke-super {p0}, Lcom/anythink/core/common/e/a;->m()Lorg/json/JSONObject;

    move-result-object v1

    .line 173
    :try_start_8
    const-string v2, "app_id"

    iget-object v3, p0, Lcom/anythink/core/common/e/j;->t:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    const-string v2, "tcp_tk_da_type"

    iget v3, p0, Lcom/anythink/core/common/e/j;->x:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 175
    invoke-virtual {v1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 176
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    .line 177
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 178
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    goto :goto_1a

    .line 181
    :cond_2e
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->g()Ljava/util/Map;

    move-result-object v1
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_36} :catch_70

    .line 183
    if-eqz v1, :cond_6f

    :try_start_38
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_6f

    .line 184
    if-eqz v1, :cond_6f

    .line 185
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 186
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_67

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 187
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 188
    if-eqz v5, :cond_66

    .line 189
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 191
    :cond_66
    goto :goto_4d

    .line 192
    :cond_67
    const-string v1, "custom"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_6c
    .catchall {:try_start_38 .. :try_end_6c} :catchall_6d

    goto :goto_6f

    .line 195
    :catchall_6d
    move-exception v1

    .line 203
    goto :goto_71

    .line 197
    :cond_6f
    :goto_6f
    goto :goto_71

    .line 199
    :catch_70
    move-exception v1

    .line 204
    :goto_71
    return-object v0
.end method

.method protected final f()Ljava/lang/String;
    .registers 6

    .line 209
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 210
    invoke-virtual {p0}, Lcom/anythink/core/common/e/j;->e()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/anythink/core/common/g/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 212
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 214
    iget-object v3, p0, Lcom/anythink/core/common/e/j;->v:Ljava/util/List;

    if-eqz v3, :cond_36

    .line 215
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_35

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/core/common/d/e;

    .line 216
    invoke-virtual {v4}, Lcom/anythink/core/common/d/e;->a()Lorg/json/JSONObject;

    move-result-object v4

    .line 217
    invoke-direct {p0, v4}, Lcom/anythink/core/common/e/j;->a(Lorg/json/JSONObject;)V

    .line 218
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 219
    goto :goto_1e

    :cond_35
    goto :goto_44

    .line 220
    :cond_36
    iget-object v3, p0, Lcom/anythink/core/common/e/j;->w:Lcom/anythink/core/common/d/e;

    if-eqz v3, :cond_44

    .line 221
    invoke-virtual {v3}, Lcom/anythink/core/common/d/e;->a()Lorg/json/JSONObject;

    move-result-object v3

    .line 222
    invoke-direct {p0, v3}, Lcom/anythink/core/common/e/j;->a(Lorg/json/JSONObject;)V

    .line 223
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 225
    :cond_44
    :goto_44
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/g/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 226
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/anythink/core/common/e/j;->u:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "api_ver=1.0&common="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/anythink/core/common/g/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 231
    :try_start_73
    const-string v4, "common"

    invoke-virtual {v0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    const-string v1, "data"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 233
    const-string v1, "api_ver"

    const-string v2, "1.0"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const-string v1, "sign"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_89} :catch_8a

    .line 237
    goto :goto_8e

    .line 236
    :catch_8a
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 239
    :goto_8e
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final g()Z
    .registers 2

    .line 129
    const/4 v0, 0x0

    return v0
.end method

.method protected final h()Ljava/lang/String;
    .registers 2

    .line 149
    iget-object v0, p0, Lcom/anythink/core/common/e/j;->t:Ljava/lang/String;

    return-object v0
.end method

.method protected final i()Landroid/content/Context;
    .registers 2

    .line 154
    iget-object v0, p0, Lcom/anythink/core/common/e/j;->s:Landroid/content/Context;

    return-object v0
.end method

.method protected final j()Ljava/lang/String;
    .registers 2

    .line 159
    iget-object v0, p0, Lcom/anythink/core/common/e/j;->u:Ljava/lang/String;

    return-object v0
.end method

.method protected final k()Ljava/lang/String;
    .registers 2

    .line 164
    const-string v0, "1.0"

    return-object v0
.end method

.method protected final l()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 134
    const/4 v0, 0x0

    return-object v0
.end method
