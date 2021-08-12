.class Lcom/bytedance/sdk/openadsdk/e/a/u;
.super Ljava/lang/Object;
.source "PermissionConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/e/a/u$b;,
        Lcom/bytedance/sdk/openadsdk/e/a/u$a;,
        Lcom/bytedance/sdk/openadsdk/e/a/u$c;
    }
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/e/a/u$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final b:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Lcom/bytedance/sdk/openadsdk/e/a/u$c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bytedance/sdk/openadsdk/e/a/k$a;

.field private final d:Ljava/lang/String;

.field private volatile e:Z


# direct methods
.method constructor <init>(Ljava/lang/String;ILcom/bytedance/sdk/openadsdk/e/a/k$a;Ljava/util/concurrent/Executor;Lorg/json/JSONObject;)V
    .registers 7

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/u;->a:Ljava/util/Map;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/u;->e:Z

    .line 48
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/e/a/u;->d:Ljava/lang/String;

    .line 49
    if-gtz p2, :cond_1b

    .line 50
    new-instance p2, Landroid/util/LruCache;

    const/16 v0, 0x10

    invoke-direct {p2, v0}, Landroid/util/LruCache;-><init>(I)V

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/e/a/u;->b:Landroid/util/LruCache;

    goto :goto_22

    .line 52
    :cond_1b
    new-instance v0, Landroid/util/LruCache;

    invoke-direct {v0, p2}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/u;->b:Landroid/util/LruCache;

    .line 54
    :goto_22
    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/e/a/u;->c:Lcom/bytedance/sdk/openadsdk/e/a/k$a;

    .line 55
    if-nez p5, :cond_33

    .line 56
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/e/a/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Lcom/bytedance/sdk/openadsdk/e/a/u$1;

    invoke-direct {p2, p0, p4}, Lcom/bytedance/sdk/openadsdk/e/a/u$1;-><init>(Lcom/bytedance/sdk/openadsdk/e/a/u;Ljava/util/concurrent/Executor;)V

    invoke-interface {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/e/a/k$a;->a(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/e/a/k$a$a;)V

    goto :goto_36

    .line 74
    :cond_33
    invoke-virtual {p0, p5}, Lcom/bytedance/sdk/openadsdk/e/a/u;->a(Lorg/json/JSONObject;)V

    .line 76
    :goto_36
    return-void
.end method

.method private a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/e/a/u$c;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/e/a/u$a;
        }
    .end annotation

    .line 137
    new-instance v0, Lcom/bytedance/sdk/openadsdk/e/a/u$c;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/e/a/u$c;-><init>()V

    .line 138
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 139
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/e/a/u;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 142
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6a

    .line 143
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6a

    if-nez v3, :cond_24

    goto :goto_6a

    .line 148
    :cond_24
    invoke-direct {p0, v3}, Lcom/bytedance/sdk/openadsdk/e/a/u;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 149
    if-nez v1, :cond_2b

    .line 150
    return-object v0

    .line 153
    :cond_2b
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/bytedance/sdk/openadsdk/e/a/u$b;

    .line 154
    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/e/a/u$b;->a:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_63

    .line 155
    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/e/a/u$b;->b:Lcom/bytedance/sdk/openadsdk/e/a/w;

    iget-object v4, v0, Lcom/bytedance/sdk/openadsdk/e/a/u$c;->a:Lcom/bytedance/sdk/openadsdk/e/a/w;

    invoke-virtual {v3, v4}, Lcom/bytedance/sdk/openadsdk/e/a/w;->compareTo(Ljava/lang/Enum;)I

    move-result v3

    if-ltz v3, :cond_55

    .line 156
    iget-object v3, v2, Lcom/bytedance/sdk/openadsdk/e/a/u$b;->b:Lcom/bytedance/sdk/openadsdk/e/a/w;

    iput-object v3, v0, Lcom/bytedance/sdk/openadsdk/e/a/u$c;->a:Lcom/bytedance/sdk/openadsdk/e/a/w;

    .line 158
    :cond_55
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/e/a/u$c;->b:Ljava/util/Set;

    iget-object v4, v2, Lcom/bytedance/sdk/openadsdk/e/a/u$b;->c:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 159
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/e/a/u$c;->c:Ljava/util/Set;

    iget-object v2, v2, Lcom/bytedance/sdk/openadsdk/e/a/u$b;->d:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 161
    :cond_63
    goto :goto_2f

    .line 162
    :cond_64
    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/e/a/u;->b:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    return-object v0

    .line 145
    :cond_6a
    :goto_6a
    sget-object p1, Lcom/bytedance/sdk/openadsdk/e/a/w;->a:Lcom/bytedance/sdk/openadsdk/e/a/w;

    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/e/a/u$c;->a:Lcom/bytedance/sdk/openadsdk/e/a/w;

    .line 146
    return-object v0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 173
    const/4 v0, 0x0

    if-nez p0, :cond_4

    .line 174
    return-object v0

    .line 176
    :cond_4
    const-string v1, "[.]"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 177
    array-length v2, v1

    .line 178
    const/4 v3, 0x2

    if-ge v2, v3, :cond_f

    .line 179
    return-object v0

    .line 180
    :cond_f
    if-ne v2, v3, :cond_12

    .line 181
    return-object p0

    .line 183
    :cond_12
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v2, -0x2

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    add-int/lit8 v2, v2, -0x1

    aget-object v0, v1, v2

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(Lorg/json/JSONObject;)V
    .registers 8

    .line 116
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/u;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 118
    :try_start_5
    const-string v0, "content"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 120
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 121
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 122
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 123
    iget-object v5, p0, Lcom/bytedance/sdk/openadsdk/e/a/u;->a:Ljava/util/Map;

    invoke-interface {v5, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const/4 v2, 0x0

    :goto_2a
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_3e

    .line 125
    invoke-virtual {v3, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 126
    invoke-static {v5}, Lcom/bytedance/sdk/openadsdk/e/a/u;->c(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/e/a/u$b;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_3b} :catch_40

    .line 124
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 128
    :cond_3e
    goto :goto_f

    .line 131
    :cond_3f
    goto :goto_5b

    .line 129
    :catch_40
    move-exception v0

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Parse configurations failed, response: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/e/a/i;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 132
    :goto_5b
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/e/a/u;->e:Z

    .line 133
    return-void
.end method

.method private static c(Lorg/json/JSONObject;)Lcom/bytedance/sdk/openadsdk/e/a/u$b;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 195
    new-instance v0, Lcom/bytedance/sdk/openadsdk/e/a/u$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/sdk/openadsdk/e/a/u$b;-><init>(Lcom/bytedance/sdk/openadsdk/e/a/u$1;)V

    .line 196
    const-string v1, "pattern"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/e/a/u$b;->a:Ljava/util/regex/Pattern;

    .line 197
    const-string v1, "group"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/e/a/w;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/e/a/w;

    move-result-object v1

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/e/a/u$b;->b:Lcom/bytedance/sdk/openadsdk/e/a/w;

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/e/a/u$b;->c:Ljava/util/List;

    .line 200
    const-string v1, "included_methods"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 201
    const/4 v2, 0x0

    if-eqz v1, :cond_41

    .line 202
    move v3, v2

    :goto_2f
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_41

    .line 203
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 204
    iget-object v5, v0, Lcom/bytedance/sdk/openadsdk/e/a/u$b;->c:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 207
    :cond_41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/bytedance/sdk/openadsdk/e/a/u$b;->d:Ljava/util/List;

    .line 208
    const-string v1, "excluded_methods"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    .line 209
    if-eqz p0, :cond_63

    .line 210
    nop

    :goto_51
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v2, v1, :cond_63

    .line 211
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 212
    iget-object v3, v0, Lcom/bytedance/sdk/openadsdk/e/a/u$b;->d:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 215
    :cond_63
    return-object v0
.end method

.method private c(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/e/a/u$b;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/openadsdk/e/a/u$a;
        }
    .end annotation

    .line 187
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/u;->e:Z

    if-eqz v0, :cond_d

    .line 190
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/u;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 188
    :cond_d
    new-instance p1, Lcom/bytedance/sdk/openadsdk/e/a/u$a;

    const-string v0, "Permission config is outdated!"

    invoke-direct {p1, v0}, Lcom/bytedance/sdk/openadsdk/e/a/u$a;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.bytedance.ies.web.jsbridge2.PermissionConfig."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/util/Set;)Lcom/bytedance/sdk/openadsdk/e/a/u$c;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/bytedance/sdk/openadsdk/e/a/u$c;"
        }
    .end annotation

    .line 85
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 87
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 88
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 89
    new-instance v2, Landroid/net/Uri$Builder;

    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 90
    invoke-virtual {v2, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 92
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 94
    new-instance v0, Lcom/bytedance/sdk/openadsdk/e/a/u$c;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/e/a/u$c;-><init>()V

    .line 95
    if-eqz v1, :cond_79

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_33

    goto :goto_79

    .line 100
    :cond_33
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_37
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_69

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 101
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_64

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_63

    goto :goto_64

    .line 105
    :cond_63
    goto :goto_37

    .line 102
    :cond_64
    :goto_64
    sget-object p1, Lcom/bytedance/sdk/openadsdk/e/a/w;->c:Lcom/bytedance/sdk/openadsdk/e/a/w;

    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/e/a/u$c;->a:Lcom/bytedance/sdk/openadsdk/e/a/w;

    .line 103
    return-object v0

    .line 106
    :cond_69
    iget-object p2, p0, Lcom/bytedance/sdk/openadsdk/e/a/u;->b:Landroid/util/LruCache;

    invoke-virtual {p2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bytedance/sdk/openadsdk/e/a/u$c;

    .line 107
    if-eqz p2, :cond_74

    .line 108
    return-object p2

    .line 110
    :cond_74
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/e/a/u;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/e/a/u$c;

    move-result-object p1

    .line 111
    return-object p1

    .line 96
    :cond_79
    :goto_79
    sget-object p1, Lcom/bytedance/sdk/openadsdk/e/a/w;->a:Lcom/bytedance/sdk/openadsdk/e/a/w;

    iput-object p1, v0, Lcom/bytedance/sdk/openadsdk/e/a/u$c;->a:Lcom/bytedance/sdk/openadsdk/e/a/w;

    .line 97
    return-object v0
.end method

.method a(Lorg/json/JSONObject;)V
    .registers 4

    .line 79
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/e/a/u;->b(Lorg/json/JSONObject;)V

    .line 80
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/e/a/u;->c:Lcom/bytedance/sdk/openadsdk/e/a/k$a;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/e/a/u;->d:Ljava/lang/String;

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/e/a/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/bytedance/sdk/openadsdk/e/a/k$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method
