.class public Lcom/bytedance/sdk/openadsdk/utils/v;
.super Ljava/lang/Object;
.source "MimeDetector.java"


# static fields
.field private static volatile c:Lcom/bytedance/sdk/openadsdk/utils/v;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Z

.field private d:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/utils/v;->b:Z

    .line 91
    if-eqz p1, :cond_15

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/v;->d:Landroid/content/Context;

    if-nez v0, :cond_15

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/v;->d:Landroid/content/Context;

    .line 94
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/v;->a()V

    .line 97
    :cond_15
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/v;->d:Landroid/content/Context;

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/utils/v;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/v;->d:Landroid/content/Context;

    return-object v0
.end method

.method static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/v;
    .registers 3

    .prologue
    .line 80
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/v;->c:Lcom/bytedance/sdk/openadsdk/utils/v;

    if-nez v0, :cond_13

    .line 81
    const-class v1, Lcom/bytedance/sdk/openadsdk/utils/v;

    monitor-enter v1

    .line 82
    :try_start_7
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/v;->c:Lcom/bytedance/sdk/openadsdk/utils/v;

    if-nez v0, :cond_12

    .line 83
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/v;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/v;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/utils/v;->c:Lcom/bytedance/sdk/openadsdk/utils/v;

    .line 85
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 87
    :cond_13
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/v;->c:Lcom/bytedance/sdk/openadsdk/utils/v;

    return-object v0

    .line 85
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 66
    .line 68
    if-eqz p1, :cond_2e

    :try_start_2
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 69
    const-string v0, "\\?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object p1, v0, v1

    .line 70
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2d} :catch_37

    move-result-object p1

    .line 76
    :cond_2e
    :goto_2e
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/v;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/utils/v;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 74
    :catch_37
    move-exception v0

    goto :goto_2e
.end method

.method private a()V
    .registers 5

    .prologue
    .line 199
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/v;->d:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 262
    :cond_4
    :goto_4
    return-void

    .line 202
    :cond_5
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/utils/v;->b:Z

    if-nez v0, :cond_4

    .line 203
    monitor-enter p0

    .line 204
    :try_start_a
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/utils/v;->b:Z

    if-nez v0, :cond_6f

    .line 205
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/v$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/v$1;-><init>(Lcom/bytedance/sdk/openadsdk/utils/v;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 244
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/v;->a:Ljava/util/Map;

    .line 245
    const-string v1, ""

    .line 246
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_63

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    const-string v1, "\\"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 249
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 250
    goto :goto_2a

    .line 252
    :cond_5c
    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/utils/v;->f(Ljava/lang/String;)V

    .line 253
    const-string v0, ""

    move-object v1, v0

    .line 254
    goto :goto_2a

    .line 255
    :cond_63
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6c

    .line 256
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/v;->f(Ljava/lang/String;)V

    .line 258
    :cond_6c
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/utils/v;->b:Z

    .line 260
    :cond_6f
    monitor-exit p0

    goto :goto_4

    :catchall_71
    move-exception v0

    monitor-exit p0
    :try_end_73
    .catchall {:try_start_a .. :try_end_73} :catchall_71

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 324
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    if-eqz p2, :cond_1d

    .line 325
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/v;->a:Ljava/util/Map;

    .line 326
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 327
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/v;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    :cond_1d
    return-void
.end method

.method private static a(C)Z
    .registers 2

    .prologue
    .line 143
    const/16 v0, 0x20

    if-le p0, v0, :cond_12

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_12

    const-string v0, "()<>@,;:/[]?=\\\""

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_12

    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .prologue
    const/16 v5, 0x2f

    const/4 v1, 0x0

    .line 115
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 116
    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 117
    if-gez v0, :cond_11

    move-object v0, v1

    .line 131
    :goto_10
    return-object v0

    .line 119
    :cond_11
    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/v;->c(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_28

    move-object v0, v1

    .line 121
    goto :goto_10

    .line 122
    :cond_28
    if-gez v2, :cond_42

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_30
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 125
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/v;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_49

    move-object v0, v1

    .line 126
    goto :goto_10

    .line 122
    :cond_42
    add-int/lit8 v0, v0, 0x1

    .line 123
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_30

    .line 127
    :cond_49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 128
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_10
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 151
    if-nez v2, :cond_8

    .line 157
    :cond_7
    :goto_7
    return v0

    :cond_8
    move v1, v0

    .line 153
    :goto_9
    if-ge v1, v2, :cond_18

    .line 154
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/v;->a(C)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 153
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 157
    :cond_18
    const/4 v0, 0x1

    goto :goto_7
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/v;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object v0, v1

    .line 177
    :cond_c
    :goto_c
    return-object v0

    .line 165
    :cond_d
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/v;->a()V

    .line 166
    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/v;->a:Ljava/util/Map;

    if-eqz v2, :cond_1c

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/utils/v;->a:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_1c
    move-object v0, v1

    .line 167
    goto :goto_c

    :cond_1e
    move-object v1, v0

    .line 172
    :cond_1f
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/v;->a:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    if-nez v0, :cond_2d

    .line 174
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/v;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 175
    :cond_2d
    if-nez v0, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_c
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 182
    const-string v0, ""

    .line 183
    if-eqz p0, :cond_20

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_20

    .line 184
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 185
    if-ltz v1, :cond_20

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_20

    .line 186
    add-int/lit8 v0, v1, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 189
    :cond_20
    return-object v0
.end method

.method private f(Ljava/lang/String;)V
    .registers 8

    .prologue
    const/16 v5, 0x22

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 275
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x23

    if-ne v1, v4, :cond_17

    .line 321
    :cond_16
    return-void

    .line 279
    :cond_17
    const-string v1, "\\s*#.*"

    const-string v4, ""

    invoke-virtual {v0, v1, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    const/16 v0, 0x3d

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 281
    if-lez v0, :cond_99

    .line 283
    const-string v0, "type="

    .line 284
    const-string v0, "\\btype=(\"\\p{Graph}+?/\\p{Graph}+?\"|\\p{Graph}+/\\p{Graph}+\\b)"

    .line 286
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 287
    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 289
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 290
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v0

    const-string v4, "type="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_57

    .line 292
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 295
    :cond_57
    const-string v4, "exts="

    .line 296
    const-string v4, "\\bexts=(\"[\\p{Graph}|\\p{Blank}]+?\"|\\p{Graph}+\\b)"

    .line 298
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    .line 299
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 301
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 303
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    const-string v4, "exts="

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_87

    .line 305
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 307
    :cond_87
    const-string v2, "[\\p{Blank}|\\p{Punct}]+"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 308
    array-length v4, v2

    move v1, v3

    :goto_8f
    if-ge v1, v4, :cond_16

    aget-object v3, v2, v1

    .line 309
    invoke-direct {p0, v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto :goto_8f

    .line 315
    :cond_99
    const-string v0, "\\s+"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    move v0, v2

    .line 317
    :goto_a0
    array-length v1, v4

    if-ge v0, v1, :cond_16

    .line 318
    add-int/lit8 v1, v0, 0x1

    aget-object v0, v4, v0

    aget-object v2, v4, v3

    invoke-direct {p0, v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/v;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto :goto_a0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 107
    :cond_7
    :goto_7
    return-object v0

    .line 106
    :cond_8
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/v;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/utils/v;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_7
.end method
