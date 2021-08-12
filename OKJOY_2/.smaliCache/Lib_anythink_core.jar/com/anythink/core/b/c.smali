.class public final Lcom/anythink/core/b/c;
.super Lcom/anythink/core/b/d;


# instance fields
.field final a:Ljava/lang/String;

.field b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/b/a/a/b;",
            ">;"
        }
    .end annotation
.end field

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation
.end field

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/anythink/core/c/c$b;",
            ">;"
        }
    .end annotation
.end field

.field f:Ljava/lang/String;

.field g:Ljava/lang/String;

.field h:Ljava/lang/String;

.field i:Ljava/lang/String;

.field j:Z

.field k:Lcom/anythink/core/b/b/a;


# direct methods
.method public constructor <init>(Lcom/anythink/core/common/d/a;)V
    .registers 3

    .line 57
    invoke-direct {p0, p1}, Lcom/anythink/core/b/d;-><init>(Lcom/anythink/core/common/d/a;)V

    .line 41
    const-string v0, "HeadBidding"

    iput-object v0, p0, Lcom/anythink/core/b/c;->a:Ljava/lang/String;

    .line 42
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/b/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/b/c;->c:Ljava/util/List;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/b/c;->d:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/anythink/core/b/c;->e:Ljava/util/List;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/anythink/core/b/c;->j:Z

    .line 60
    invoke-direct {p0, p1}, Lcom/anythink/core/b/c;->a(Lcom/anythink/core/common/d/a;)V

    .line 61
    return-void
.end method

.method private static a(Ljava/lang/Object;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/anythink/core/common/d/l;",
            ">;"
        }
    .end annotation

    .line 227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 228
    instance-of v1, p0, Lorg/json/JSONArray;

    if-eqz v1, :cond_20

    .line 229
    check-cast p0, Lorg/json/JSONArray;

    .line 230
    const/4 v1, 0x0

    :goto_c
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_20

    .line 231
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/d/l;->a(Ljava/lang/String;)Lcom/anythink/core/common/d/l;

    move-result-object v2

    .line 232
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 236
    :cond_20
    return-object v0
.end method

.method static synthetic a(Lcom/anythink/core/b/c;Lcom/anythink/core/common/d/l;)V
    .registers 3

    .line 2130
    iget-object v0, p1, Lcom/anythink/core/common/d/l;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 2131
    invoke-static {}, Lcom/anythink/core/common/a/a;->a()Lcom/anythink/core/common/a/a;

    iget-object p0, p0, Lcom/anythink/core/b/c;->l:Lcom/anythink/core/common/d/a;

    iget-object p0, p0, Lcom/anythink/core/common/d/a;->a:Landroid/content/Context;

    iget-object v0, p1, Lcom/anythink/core/common/d/l;->token:Ljava/lang/String;

    iget-object p1, p1, Lcom/anythink/core/common/d/l;->h:Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/anythink/core/common/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    :cond_16
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/b/c;Z)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/anythink/core/b/c;->b(Z)V

    return-void
.end method

.method private a(Lcom/anythink/core/c/c$b;Ljava/lang/String;)V
    .registers 5

    .line 270
    const-wide/16 v0, 0x0

    iput-wide v0, p1, Lcom/anythink/core/c/c$b;->m:D

    .line 271
    const/4 v0, -0x1

    iput v0, p1, Lcom/anythink/core/c/c$b;->q:I

    .line 272
    iput v0, p1, Lcom/anythink/core/c/c$b;->a:I

    .line 273
    iput-object p2, p1, Lcom/anythink/core/c/c$b;->p:Ljava/lang/String;

    .line 274
    iget-object p2, p0, Lcom/anythink/core/b/c;->d:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    return-void
.end method

.method private a(Lcom/anythink/core/common/d/a;)V
    .registers 8

    .line 136
    iget-object v0, p1, Lcom/anythink/core/common/d/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/core/b/c;->f:Ljava/lang/String;

    .line 137
    iget-object v0, p1, Lcom/anythink/core/common/d/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/core/b/c;->g:Ljava/lang/String;

    .line 139
    iget-object v0, p1, Lcom/anythink/core/common/d/a;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/anythink/core/b/c;->i:Ljava/lang/String;

    .line 140
    iget-object v0, p1, Lcom/anythink/core/common/d/a;->g:Ljava/util/List;

    .line 141
    iget v1, p1, Lcom/anythink/core/common/d/a;->d:I

    .line 143
    iget-object p1, p1, Lcom/anythink/core/common/d/a;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/anythink/core/b/c;->f:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/core/b/c;->g:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1, v2, v3, v1, v4}, Lcom/anythink/core/common/g/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;II)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/b/c;->h:Ljava/lang/String;

    .line 144
    iget-boolean p1, p0, Lcom/anythink/core/b/c;->m:Z

    if-eqz p1, :cond_41

    .line 145
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 147
    :try_start_2a
    const-string v2, "Start HeadBidding List"

    invoke-static {v0}, Lcom/anythink/core/b/c;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_33} :catch_34

    .line 150
    goto :goto_35

    .line 148
    :catch_34
    move-exception v2

    .line 151
    :goto_35
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "HeadBidding"

    invoke-static {v2, p1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_41
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_45
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_107

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/c/c$b;

    .line 155
    iget v2, v0, Lcom/anythink/core/c/c$b;->b:I

    const-string v3, "There is no Network SDK."

    sparse-switch v2, :sswitch_data_108

    .line 185
    const-string v2, "This network don\'t support head bidding in current TopOn\'s version."

    invoke-direct {p0, v0, v2}, Lcom/anythink/core/b/c;->a(Lcom/anythink/core/c/c$b;Ljava/lang/String;)V

    .line 188
    goto :goto_45

    .line 169
    :sswitch_5e
    new-instance v2, Lcom/anythink/core/b/a/a/a;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v4

    invoke-virtual {v4}, Lcom/anythink/core/common/b/g;->f()Ljava/util/List;

    move-result-object v4

    invoke-direct {v2, v3, v0, v4}, Lcom/anythink/core/b/a/a/a;-><init>(Ljava/lang/String;Lcom/anythink/core/c/c$b;Ljava/util/List;)V

    .line 170
    iget-object v3, p0, Lcom/anythink/core/b/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/anythink/core/b/a/a/a;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v0, p0, Lcom/anythink/core/b/c;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    goto :goto_45

    .line 175
    :sswitch_91
    invoke-static {v0}, Lcom/anythink/core/common/g/i;->a(Lcom/anythink/core/c/c$b;)Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v2

    .line 176
    if-eqz v2, :cond_c7

    .line 177
    new-instance v3, Lcom/anythink/core/b/a/a/d;

    iget-object v4, p0, Lcom/anythink/core/b/c;->l:Lcom/anythink/core/common/d/a;

    iget-object v4, v4, Lcom/anythink/core/common/d/a;->a:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0, v2}, Lcom/anythink/core/b/a/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/c/c$b;Lcom/anythink/core/api/ATBaseAdAdapter;)V

    .line 178
    iget-object v2, p0, Lcom/anythink/core/b/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/anythink/core/b/a/a/d;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    iget-object v0, p0, Lcom/anythink/core/b/c;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    goto/16 :goto_45

    .line 181
    :cond_c7
    invoke-direct {p0, v0, v3}, Lcom/anythink/core/b/c;->a(Lcom/anythink/core/c/c$b;Ljava/lang/String;)V

    .line 183
    goto/16 :goto_45

    .line 158
    :sswitch_cc
    invoke-static {v0}, Lcom/anythink/core/common/g/i;->a(Lcom/anythink/core/c/c$b;)Lcom/anythink/core/api/ATBaseAdAdapter;

    move-result-object v2

    .line 159
    if-eqz v2, :cond_102

    .line 160
    new-instance v3, Lcom/anythink/core/b/a/a/c;

    iget-object v4, p0, Lcom/anythink/core/b/c;->l:Lcom/anythink/core/common/d/a;

    iget-object v4, v4, Lcom/anythink/core/common/d/a;->a:Landroid/content/Context;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0, v2}, Lcom/anythink/core/b/a/a/c;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/anythink/core/c/c$b;Lcom/anythink/core/api/ATBaseAdAdapter;)V

    .line 161
    iget-object v2, p0, Lcom/anythink/core/b/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/anythink/core/c/c$b;->b:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/anythink/core/b/a/a/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    iget-object v0, p0, Lcom/anythink/core/b/c;->c:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    goto/16 :goto_45

    .line 164
    :cond_102
    invoke-direct {p0, v0, v3}, Lcom/anythink/core/b/c;->a(Lcom/anythink/core/c/c$b;Ljava/lang/String;)V

    .line 167
    goto/16 :goto_45

    .line 190
    :cond_107
    return-void

    :sswitch_data_108
    .sparse-switch
        0x6 -> :sswitch_cc
        0x20 -> :sswitch_91
        0x42 -> :sswitch_5e
    .end sparse-switch
.end method

.method private a(Lcom/anythink/core/common/d/l;)V
    .registers 4

    .line 130
    iget-object v0, p1, Lcom/anythink/core/common/d/l;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 131
    invoke-static {}, Lcom/anythink/core/common/a/a;->a()Lcom/anythink/core/common/a/a;

    iget-object v0, p0, Lcom/anythink/core/b/c;->l:Lcom/anythink/core/common/d/a;

    iget-object v0, v0, Lcom/anythink/core/common/d/a;->a:Landroid/content/Context;

    iget-object v1, p1, Lcom/anythink/core/common/d/l;->token:Ljava/lang/String;

    iget-object p1, p1, Lcom/anythink/core/common/d/l;->h:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/anythink/core/common/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    :cond_16
    return-void
.end method

.method private static synthetic b(Ljava/lang/Object;)Ljava/util/List;
    .registers 4

    .line 40
    nop

    .line 1227
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1228
    instance-of v1, p0, Lorg/json/JSONArray;

    if-eqz v1, :cond_21

    .line 1229
    check-cast p0, Lorg/json/JSONArray;

    .line 1230
    const/4 v1, 0x0

    :goto_d
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_21

    .line 1231
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/anythink/core/common/d/l;->a(Ljava/lang/String;)Lcom/anythink/core/common/d/l;

    move-result-object v2

    .line 1232
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1230
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 1236
    :cond_21
    nop

    .line 40
    return-object v0
.end method

.method private declared-synchronized b(Z)V
    .registers 4

    monitor-enter p0

    .line 193
    :try_start_1
    iget-boolean v0, p0, Lcom/anythink/core/b/c;->j:Z

    if-nez v0, :cond_6e

    .line 194
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/anythink/core/b/c;->j:Z

    .line 196
    if-nez p1, :cond_26

    .line 197
    iget-object p1, p0, Lcom/anythink/core/b/c;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/core/c/c$b;

    .line 198
    const-string v1, "Bid request error."

    invoke-direct {p0, v0, v1}, Lcom/anythink/core/b/c;->a(Lcom/anythink/core/c/c$b;Ljava/lang/String;)V

    .line 199
    goto :goto_14

    .line 203
    :cond_26
    iget-boolean p1, p0, Lcom/anythink/core/b/c;->m:Z

    if-eqz p1, :cond_53

    .line 204
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_70

    .line 207
    :try_start_2f
    const-string v0, "HeadBidding Success List"

    iget-object v1, p0, Lcom/anythink/core/b/c;->e:Ljava/util/List;

    invoke-static {v1}, Lcom/anythink/core/b/c;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    const-string v0, "HeadBidding Fail List"

    iget-object v1, p0, Lcom/anythink/core/b/c;->d:Ljava/util/List;

    invoke-static {v1}, Lcom/anythink/core/b/c;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_45
    .catch Ljava/lang/Exception; {:try_start_2f .. :try_end_45} :catch_46
    .catchall {:try_start_2f .. :try_end_45} :catchall_70

    .line 211
    goto :goto_47

    .line 209
    :catch_46
    move-exception v0

    .line 213
    :goto_47
    :try_start_47
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    const-string v0, "HeadBidding"

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    :cond_53
    iget-object p1, p0, Lcom/anythink/core/b/c;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_62

    .line 217
    iget-object p1, p0, Lcom/anythink/core/b/c;->k:Lcom/anythink/core/b/b/a;

    iget-object v0, p0, Lcom/anythink/core/b/c;->e:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/anythink/core/b/b/a;->a(Ljava/util/List;)V

    .line 219
    :cond_62
    iget-object p1, p0, Lcom/anythink/core/b/c;->k:Lcom/anythink/core/b/b/a;

    iget-object v0, p0, Lcom/anythink/core/b/c;->d:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/anythink/core/b/b/a;->b(Ljava/util/List;)V

    .line 220
    iget-object p1, p0, Lcom/anythink/core/b/c;->k:Lcom/anythink/core/b/b/a;

    invoke-interface {p1}, Lcom/anythink/core/b/b/a;->a()V
    :try_end_6e
    .catchall {:try_start_47 .. :try_end_6e} :catchall_70

    .line 224
    :cond_6e
    monitor-exit p0

    return-void

    .line 192
    :catchall_70
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected final a()V
    .registers 2

    .line 266
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/anythink/core/b/c;->b(Z)V

    .line 267
    return-void
.end method

.method protected final a(Lcom/anythink/core/b/b/a;)V
    .registers 11

    .line 70
    iput-object p1, p0, Lcom/anythink/core/b/c;->k:Lcom/anythink/core/b/b/a;

    .line 71
    iget-object p1, p0, Lcom/anythink/core/b/c;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_f

    .line 72
    invoke-direct {p0, v0}, Lcom/anythink/core/b/c;->b(Z)V

    .line 73
    return-void

    .line 76
    :cond_f
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 78
    new-instance p1, Lcom/anythink/core/b/a/a;

    iget-object v4, p0, Lcom/anythink/core/b/c;->i:Ljava/lang/String;

    iget-object v5, p0, Lcom/anythink/core/b/c;->g:Ljava/lang/String;

    iget-object v6, p0, Lcom/anythink/core/b/c;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/anythink/core/b/c;->c:Ljava/util/List;

    iget-object v8, p0, Lcom/anythink/core/b/c;->h:Ljava/lang/String;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Lcom/anythink/core/b/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    new-instance v3, Lcom/anythink/core/b/c$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/anythink/core/b/c$1;-><init>(Lcom/anythink/core/b/c;J)V

    invoke-virtual {p1, v0, v3}, Lcom/anythink/core/b/a/a;->a(ILcom/anythink/core/common/e/g;)V

    .line 127
    return-void
.end method

.method protected final a(Lcom/anythink/core/c/c$b;Lcom/anythink/core/common/d/k;J)V
    .registers 7

    .line 242
    instance-of v0, p2, Lcom/anythink/core/common/d/l;

    if-eqz v0, :cond_65

    .line 243
    check-cast p2, Lcom/anythink/core/common/d/l;

    .line 244
    iget-boolean v0, p2, Lcom/anythink/core/common/d/l;->isSuccess:Z

    if-eqz v0, :cond_3f

    .line 245
    iget-object v0, p2, Lcom/anythink/core/common/d/l;->token:Ljava/lang/String;

    iput-object v0, p1, Lcom/anythink/core/c/c$b;->o:Ljava/lang/String;

    .line 246
    iget-wide v0, p2, Lcom/anythink/core/common/d/l;->price:D

    iput-wide v0, p1, Lcom/anythink/core/c/c$b;->m:D

    .line 247
    const/4 v0, 0x0

    iput v0, p1, Lcom/anythink/core/c/c$b;->q:I

    .line 248
    iput-wide p3, p1, Lcom/anythink/core/c/c$b;->s:J

    .line 249
    iget-object p3, p0, Lcom/anythink/core/b/c;->e:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    iget p3, p2, Lcom/anythink/core/common/d/l;->d:I

    const/16 p4, 0x42

    if-ne p3, p4, :cond_2c

    .line 252
    iget-wide p3, p2, Lcom/anythink/core/common/d/l;->e:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr p3, v0

    iput-wide p3, p2, Lcom/anythink/core/common/d/l;->f:J

    goto :goto_35

    .line 254
    :cond_2c
    iget-wide p3, p1, Lcom/anythink/core/c/c$b;->x:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    add-long/2addr p3, v0

    iput-wide p3, p2, Lcom/anythink/core/common/d/l;->f:J

    .line 257
    :goto_35
    invoke-static {}, Lcom/anythink/core/b/e;->a()Lcom/anythink/core/b/e;

    move-result-object p3

    iget-object p1, p1, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {p3, p1, p2}, Lcom/anythink/core/b/e;->a(Ljava/lang/String;Lcom/anythink/core/common/d/l;)V

    return-void

    .line 259
    :cond_3f
    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "errorCode:["

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p4, p2, Lcom/anythink/core/common/d/l;->a:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "],errorMsg:["

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-object p2, p2, Lcom/anythink/core/common/d/l;->errorMsg:Ljava/lang/String;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "]"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/anythink/core/b/c;->a(Lcom/anythink/core/c/c$b;Ljava/lang/String;)V

    .line 262
    :cond_65
    return-void
.end method

.method public final a(Z)V
    .registers 2

    .line 65
    iput-boolean p1, p0, Lcom/anythink/core/b/c;->m:Z

    .line 66
    return-void
.end method
