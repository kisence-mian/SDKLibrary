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
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tramini/plugin/a/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    const-class v0, Lcom/tramini/plugin/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tramini/plugin/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/tramini/plugin/b/a;
    .registers 13

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 140
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    move-object v0, v1

    .line 234
    :goto_9
    return-object v0

    .line 144
    :cond_a
    new-instance v2, Lcom/tramini/plugin/b/a;

    invoke-direct {v2}, Lcom/tramini/plugin/b/a;-><init>()V

    .line 147
    :try_start_f
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Lcom/tramini/plugin/b/a$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ad

    .line 150
    const-string v0, ""

    .line 1054
    iput-object v0, v2, Lcom/tramini/plugin/b/a;->b:Ljava/lang/String;

    .line 155
    :goto_22
    invoke-static {}, Lcom/tramini/plugin/b/a$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bd

    .line 2062
    const-wide/32 v6, 0x36ee80

    iput-wide v6, v2, Lcom/tramini/plugin/b/a;->c:J

    .line 161
    :goto_31
    invoke-static {}, Lcom/tramini/plugin/b/a$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_cd

    .line 162
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
    :try_end_40
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_40} :catch_b9

    .line 164
    :try_start_40
    new-instance v6, Lorg/json/JSONObject;

    invoke-static {}, Lcom/tramini/plugin/b/a$a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v7

    .line 166
    :goto_51
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_40 .. :try_end_54} :catch_ca
    .catch Lorg/json/JSONException; {:try_start_40 .. :try_end_54} :catch_b9

    move-result v0

    if-eqz v0, :cond_cb

    .line 168
    :try_start_57
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 169
    new-instance v8, Lcom/tramini/plugin/a/b/b;

    invoke-direct {v8}, Lcom/tramini/plugin/a/b/b;-><init>()V

    .line 170
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 171
    const-string v10, "pml"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/tramini/plugin/a/b/b;->d:Ljava/lang/String;

    .line 172
    const-string v10, "uu"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v8, Lcom/tramini/plugin/a/b/b;->a:Ljava/lang/String;

    .line 173
    const-string v10, "dmin"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v8, Lcom/tramini/plugin/a/b/b;->b:I

    .line 174
    const-string v10, "dmax"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v10

    iput v10, v8, Lcom/tramini/plugin/a/b/b;->c:I

    .line 176
    const-string v10, "p_s"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a7

    const-string v10, "p_s"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a7

    .line 177
    new-instance v10, Lorg/json/JSONArray;

    const-string v11, "p_s"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v10, v8, Lcom/tramini/plugin/a/b/b;->e:Lorg/json/JSONArray;

    .line 188
    :cond_a7
    invoke-virtual {v5, v0, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_aa} :catch_ab
    .catch Lorg/json/JSONException; {:try_start_57 .. :try_end_aa} :catch_b9

    goto :goto_51

    .line 191
    :catch_ab
    move-exception v0

    goto :goto_51

    .line 152
    :cond_ad
    :try_start_ad
    invoke-static {}, Lcom/tramini/plugin/b/a$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2054
    iput-object v0, v2, Lcom/tramini/plugin/b/a;->b:Ljava/lang/String;

    goto/16 :goto_22

    .line 231
    :catch_b9
    move-exception v0

    move-object v0, v1

    goto/16 :goto_9

    .line 158
    :cond_bd
    invoke-static {}, Lcom/tramini/plugin/b/a$a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v6, v0

    .line 3062
    iput-wide v6, v2, Lcom/tramini/plugin/b/a;->c:J

    goto/16 :goto_31

    :catch_ca
    move-exception v0

    .line 3079
    :cond_cb
    iput-object v5, v2, Lcom/tramini/plugin/b/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 199
    :cond_cd
    invoke-static {}, Lcom/tramini/plugin/b/a$a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_139

    .line 200
    invoke-static {}, Lcom/tramini/plugin/b/a$a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 204
    const-string v0, "p1"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3088
    iput-object v0, v2, Lcom/tramini/plugin/b/a;->f:Ljava/lang/String;

    .line 205
    const-string v0, "p2"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3096
    iput-object v0, v2, Lcom/tramini/plugin/b/a;->g:Ljava/lang/String;

    .line 206
    const-string v0, "p3"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3104
    iput-object v0, v2, Lcom/tramini/plugin/b/a;->h:Ljava/lang/String;

    .line 207
    const-string v0, "p4"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3120
    iput-object v0, v2, Lcom/tramini/plugin/b/a;->i:Ljava/lang/String;

    .line 208
    const-string v0, "p5"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4112
    iput-object v0, v2, Lcom/tramini/plugin/b/a;->j:Ljava/lang/String;

    .line 210
    const-string v0, "notifications"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_139

    .line 211
    new-instance v6, Lorg/json/JSONArray;

    const-string v0, "notifications"

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 212
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 213
    if-lez v5, :cond_139

    .line 214
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(I)V

    move v0, v3

    .line 215
    :goto_12b
    if-ge v0, v5, :cond_137

    .line 216
    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    add-int/lit8 v0, v0, 0x1

    goto :goto_12b

    .line 5070
    :cond_137
    iput-object v7, v2, Lcom/tramini/plugin/b/a;->d:Ljava/util/List;

    .line 223
    :cond_139
    invoke-static {}, Lcom/tramini/plugin/b/a$a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_149

    .line 5128
    const/4 v0, 0x0

    iput v0, v2, Lcom/tramini/plugin/b/a;->k:I

    :goto_146
    move-object v0, v2

    .line 234
    goto/16 :goto_9

    .line 226
    :cond_149
    invoke-static {}, Lcom/tramini/plugin/b/a$a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 6128
    iput v0, v2, Lcom/tramini/plugin/b/a;->k:I
    :try_end_153
    .catch Lorg/json/JSONException; {:try_start_ad .. :try_end_153} :catch_b9

    goto :goto_146
.end method

.method private a(I)V
    .registers 2

    .prologue
    .line 128
    iput p1, p0, Lcom/tramini/plugin/b/a;->k:I

    .line 129
    return-void
.end method

.method private a(J)V
    .registers 4

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/tramini/plugin/b/a;->c:J

    .line 63
    return-void
.end method

.method private a(Ljava/util/List;)V
    .registers 2

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tramini/plugin/b/a;->d:Ljava/util/List;

    .line 71
    return-void
.end method

.method private a(Ljava/util/concurrent/ConcurrentHashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tramini/plugin/a/b/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    iput-object p1, p0, Lcom/tramini/plugin/b/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 80
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/tramini/plugin/b/a;->b:Ljava/lang/String;

    .line 55
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lcom/tramini/plugin/b/a;->f:Ljava/lang/String;

    .line 89
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 96
    iput-object p1, p0, Lcom/tramini/plugin/b/a;->g:Ljava/lang/String;

    .line 97
    return-void
.end method

.method private e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 104
    iput-object p1, p0, Lcom/tramini/plugin/b/a;->h:Ljava/lang/String;

    .line 105
    return-void
.end method

.method private f(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 112
    iput-object p1, p0, Lcom/tramini/plugin/b/a;->j:Ljava/lang/String;

    .line 113
    return-void
.end method

.method private g(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 120
    iput-object p1, p0, Lcom/tramini/plugin/b/a;->i:Ljava/lang/String;

    .line 121
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/tramini/plugin/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final b()J
    .registers 3

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/tramini/plugin/b/a;->c:J

    return-wide v0
.end method

.method public final c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/tramini/plugin/b/a;->d:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/util/concurrent/ConcurrentHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/tramini/plugin/a/b/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    iget-object v0, p0, Lcom/tramini/plugin/b/a;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/tramini/plugin/b/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/tramini/plugin/b/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/tramini/plugin/b/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/tramini/plugin/b/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final i()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/tramini/plugin/b/a;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final j()I
    .registers 2

    .prologue
    .line 124
    iget v0, p0, Lcom/tramini/plugin/b/a;->k:I

    return v0
.end method
