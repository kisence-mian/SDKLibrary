.class public Lcom/anythink/core/b/e/h;
.super Lcom/anythink/core/b/e/a;


# static fields
.field public static final G:I = 0x1

.field public static final H:I = 0x2

.field public static final I:I = 0x3

.field public static final J:I = 0x4

.field public static final K:I = 0x5

.field public static final L:I = 0x6

.field public static final M:I = 0x7

.field public static final N:I = 0x8

.field public static final O:I = 0x9

.field public static final P:I = 0xa

.field public static final Q:I = 0xb

.field public static final R:I = 0xc

.field public static final S:I = 0xd

.field public static final T:I = 0xf

.field private static final V:Ljava/lang/String;


# instance fields
.field U:Z

.field private W:Landroid/content/Context;

.field private X:Ljava/lang/String;

.field private Y:Ljava/lang/String;

.field private Z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/b/c/c;",
            ">;"
        }
    .end annotation
.end field

.field private aa:Lcom/anythink/core/b/c/c;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-class v0, Lcom/anythink/core/b/e/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/b/e/h;->V:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/anythink/core/b/c/c;)V
    .registers 4

    .prologue
    .line 76
    invoke-direct {p0}, Lcom/anythink/core/b/e/a;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/b/e/h;->U:Z

    .line 78
    iput-object p1, p0, Lcom/anythink/core/b/e/h;->W:Landroid/content/Context;

    .line 80
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/e/h;->X:Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/e/h;->Y:Ljava/lang/String;

    .line 83
    iput-object p2, p0, Lcom/anythink/core/b/e/h;->aa:Lcom/anythink/core/b/c/c;

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/anythink/core/b/c/c;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/anythink/core/b/e/a;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/b/e/h;->U:Z

    .line 67
    iput-object p1, p0, Lcom/anythink/core/b/e/h;->W:Landroid/content/Context;

    .line 69
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/e/h;->X:Ljava/lang/String;

    .line 70
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/b/a/e;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/e/h;->Y:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/anythink/core/b/e/h;->Z:Ljava/util/List;

    .line 74
    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .registers 4

    .prologue
    .line 216
    iget-boolean v0, p0, Lcom/anythink/core/b/e/h;->U:Z

    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    .line 218
    :try_start_6
    const-string v0, "ofl"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_c} :catch_d

    .line 223
    :cond_c
    :goto_c
    return-void

    .line 220
    :catch_d
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_c
.end method


# virtual methods
.method protected final a()I
    .registers 2

    .prologue
    .line 90
    const/4 v0, 0x1

    return v0
.end method

.method protected final a(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .line 229
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 230
    sget-object v1, Lcom/anythink/core/b/e/h;->V:Ljava/lang/String;

    const-string v2, "data:"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    return-object v0
.end method

.method protected final a(Lcom/anythink/core/api/AdError;)V
    .registers 8

    .prologue
    .line 132
    const/4 v0, 0x1

    .line 133
    iget-object v1, p0, Lcom/anythink/core/b/e/h;->Z:Ljava/util/List;

    if-eqz v1, :cond_23

    .line 134
    iget-object v0, p0, Lcom/anythink/core/b/e/h;->Z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v5, v0

    .line 136
    :goto_c
    const-string v0, "tk"

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getPlatformCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/core/api/AdError;->getPlatformMSG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/anythink/core/b/e/h;->b()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/anythink/core/b/f/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    return-void

    :cond_23
    move v5, v0

    goto :goto_c
.end method

.method protected final b()Ljava/lang/String;
    .registers 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/anythink/core/b/e/h;->aa:Lcom/anythink/core/b/c/c;

    if-eqz v0, :cond_b

    .line 96
    iget-object v0, p0, Lcom/anythink/core/b/e/h;->aa:Lcom/anythink/core/b/c/c;

    iget-object v0, v0, Lcom/anythink/core/b/c/c;->b:Lcom/anythink/core/b/c/n;

    .line 1054
    iget-object v0, v0, Lcom/anythink/core/b/c/n;->ac:Ljava/lang/String;

    .line 104
    :cond_a
    :goto_a
    return-object v0

    .line 99
    :cond_b
    iget-object v0, p0, Lcom/anythink/core/b/e/h;->W:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/core/b/e/h;->X:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v1

    .line 100
    const-string v0, "https://tt.toponad.com/v1/open/tk"

    .line 101
    if-eqz v1, :cond_a

    invoke-virtual {v1}, Lcom/anythink/core/c/a;->x()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 102
    invoke-virtual {v1}, Lcom/anythink/core/c/a;->x()Ljava/lang/String;

    move-result-object v0

    goto :goto_a
.end method

.method protected final b(Lcom/anythink/core/api/AdError;)V
    .registers 7

    .prologue
    .line 236
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 237
    invoke-virtual {p0}, Lcom/anythink/core/b/e/h;->c()Ljava/util/Map;

    move-result-object v2

    .line 239
    if-eqz v2, :cond_28

    .line 240
    :try_start_b
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 241
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_26} :catch_27

    goto :goto_13

    :catch_27
    move-exception v0

    .line 248
    :cond_28
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 249
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/anythink/core/b/e/h;->U:Z

    .line 250
    invoke-virtual {p0}, Lcom/anythink/core/b/e/h;->m()Ljava/lang/String;

    move-result-object v1

    .line 251
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/anythink/core/b/e/h;->U:Z

    .line 252
    invoke-virtual {p0}, Lcom/anythink/core/b/e/h;->b()Ljava/lang/String;

    move-result-object v2

    .line 255
    invoke-static {}, Lcom/anythink/core/b/l;->a()Lcom/anythink/core/b/l;

    move-result-object v3

    invoke-virtual {v3, v2, v0, v1}, Lcom/anythink/core/b/l;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method protected final c()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    const-string v1, "Content-Encoding"

    const-string v2, "gzip"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v1, "Content-Type"

    const-string v2, "application/json;charset=utf-8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    return-object v0
.end method

.method protected final d()[B
    .registers 2

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/anythink/core/b/e/h;->m()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/e/h;->b(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected final e()Z
    .registers 2

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method protected final f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/anythink/core/b/e/h;->X:Ljava/lang/String;

    return-object v0
.end method

.method protected final g()Landroid/content/Context;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/anythink/core/b/e/h;->W:Landroid/content/Context;

    return-object v0
.end method

.method protected final h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/anythink/core/b/e/h;->Y:Ljava/lang/String;

    return-object v0
.end method

.method protected final i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    const-string v0, "1.0"

    return-object v0
.end method

.method protected final j()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method protected final k()Lorg/json/JSONObject;
    .registers 6

    .prologue
    .line 162
    invoke-super {p0}, Lcom/anythink/core/b/e/a;->k()Lorg/json/JSONObject;

    move-result-object v1

    .line 163
    invoke-super {p0}, Lcom/anythink/core/b/e/a;->l()Lorg/json/JSONObject;

    move-result-object v2

    .line 166
    :try_start_8
    const-string v0, "app_id"

    iget-object v3, p0, Lcom/anythink/core/b/e/h;->X:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 167
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 168
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 169
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_13

    :catch_27
    move-exception v0

    .line 178
    :goto_28
    return-object v1

    .line 172
    :cond_29
    const-string v0, "gdpr_cs"

    iget-object v2, p0, Lcom/anythink/core/b/e/h;->W:Landroid/content/Context;

    invoke-static {v2}, Lcom/anythink/core/b/a/f;->a(Landroid/content/Context;)Lcom/anythink/core/b/a/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/anythink/core/b/a/f;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_3c} :catch_27

    goto :goto_28
.end method

.method protected final m()Ljava/lang/String;
    .registers 6

    .prologue
    .line 183
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 184
    invoke-virtual {p0}, Lcom/anythink/core/b/e/h;->k()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 186
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 188
    iget-object v0, p0, Lcom/anythink/core/b/e/h;->Z:Ljava/util/List;

    if-eqz v0, :cond_37

    .line 189
    iget-object v0, p0, Lcom/anythink/core/b/e/h;->Z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_20
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_47

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/b/c/c;

    .line 190
    invoke-virtual {v0}, Lcom/anythink/core/b/c/c;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 191
    invoke-direct {p0, v0}, Lcom/anythink/core/b/e/h;->a(Lorg/json/JSONObject;)V

    .line 192
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_20

    .line 194
    :cond_37
    iget-object v0, p0, Lcom/anythink/core/b/e/h;->aa:Lcom/anythink/core/b/c/c;

    if-eqz v0, :cond_47

    .line 195
    iget-object v0, p0, Lcom/anythink/core/b/e/h;->aa:Lcom/anythink/core/b/c/c;

    invoke-virtual {v0}, Lcom/anythink/core/b/c/c;->a()Lorg/json/JSONObject;

    move-result-object v0

    .line 196
    invoke-direct {p0, v0}, Lcom/anythink/core/b/e/h;->a(Lorg/json/JSONObject;)V

    .line 197
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 199
    :cond_47
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 200
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/anythink/core/b/e/h;->Y:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "api_ver=1.0&common="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "&data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/anythink/core/b/g/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 203
    :try_start_76
    const-string v4, "common"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    const-string v2, "data"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 205
    const-string v0, "api_ver"

    const-string v2, "1.0"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 206
    const-string v0, "sign"

    invoke-virtual {v1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_8c
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_8c} :catch_91

    .line 211
    :goto_8c
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 208
    :catch_91
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8c
.end method
