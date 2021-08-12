.class public Lcom/bytedance/sdk/openadsdk/utils/w;
.super Ljava/lang/Object;
.source "MimeDetector.java"


# static fields
.field private static volatile c:Lcom/bytedance/sdk/openadsdk/utils/w;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
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

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/utils/w;->b:Z

    .line 91
    if-eqz p1, :cond_15

    .line 92
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/w;->d:Landroid/content/Context;

    if-nez v0, :cond_15

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/w;->d:Landroid/content/Context;

    .line 94
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/w;->a()V

    .line 97
    :cond_15
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/w;->d:Landroid/content/Context;

    .line 98
    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/openadsdk/utils/w;)Landroid/content/Context;
    .registers 1

    .line 54
    iget-object p0, p0, Lcom/bytedance/sdk/openadsdk/utils/w;->d:Landroid/content/Context;

    return-object p0
.end method

.method static a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/w;
    .registers 3

    .line 80
    sget-object v0, Lcom/bytedance/sdk/openadsdk/utils/w;->c:Lcom/bytedance/sdk/openadsdk/utils/w;

    if-nez v0, :cond_17

    .line 81
    const-class v0, Lcom/bytedance/sdk/openadsdk/utils/w;

    monitor-enter v0

    .line 82
    :try_start_7
    sget-object v1, Lcom/bytedance/sdk/openadsdk/utils/w;->c:Lcom/bytedance/sdk/openadsdk/utils/w;

    if-nez v1, :cond_12

    .line 83
    new-instance v1, Lcom/bytedance/sdk/openadsdk/utils/w;

    invoke-direct {v1, p0}, Lcom/bytedance/sdk/openadsdk/utils/w;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/utils/w;->c:Lcom/bytedance/sdk/openadsdk/utils/w;

    .line 85
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception p0

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw p0

    .line 87
    :cond_17
    :goto_17
    sget-object p0, Lcom/bytedance/sdk/openadsdk/utils/w;->c:Lcom/bytedance/sdk/openadsdk/utils/w;

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 66
    nop

    .line 68
    if-eqz p1, :cond_31

    :try_start_3
    const-string v0, "http"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_31

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

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

    if-eqz v0, :cond_31

    .line 71
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2f

    goto :goto_31

    .line 74
    :catchall_2f
    move-exception v0

    goto :goto_32

    .line 75
    :cond_31
    :goto_31
    nop

    .line 76
    :goto_32
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/w;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/utils/w;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a()V
    .registers 6

    .line 199
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/w;->d:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 200
    return-void

    .line 202
    :cond_5
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/utils/w;->b:Z

    if-nez v0, :cond_71

    .line 203
    monitor-enter p0

    .line 204
    :try_start_a
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/utils/w;->b:Z

    if-nez v0, :cond_6c

    .line 205
    new-instance v0, Lcom/bytedance/sdk/openadsdk/utils/w$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/w$1;-><init>(Lcom/bytedance/sdk/openadsdk/utils/w;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 244
    new-instance v1, Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/bytedance/sdk/openadsdk/utils/w;->a:Ljava/util/Map;

    .line 245
    const-string v1, ""

    .line 246
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_61

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 247
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    const-string v2, "\\"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 249
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 250
    goto :goto_2a

    .line 252
    :cond_5b
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/w;->f(Ljava/lang/String;)V

    .line 253
    const-string v1, ""

    .line 254
    goto :goto_2a

    .line 255
    :cond_61
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 256
    invoke-direct {p0, v1}, Lcom/bytedance/sdk/openadsdk/utils/w;->f(Ljava/lang/String;)V

    .line 258
    :cond_6a
    iput-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/utils/w;->b:Z

    .line 260
    :cond_6c
    monitor-exit p0

    goto :goto_71

    :catchall_6e
    move-exception v0

    monitor-exit p0
    :try_end_70
    .catchall {:try_start_a .. :try_end_70} :catchall_6e

    throw v0

    .line 262
    :cond_71
    :goto_71
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

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

    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/w;->a:Ljava/util/Map;

    .line 326
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 327
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/w;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    :cond_1d
    return-void
.end method

.method private static a(C)Z
    .registers 2

    .line 143
    const/16 v0, 0x20

    if-le p0, v0, :cond_12

    const/16 v0, 0x7f

    if-ge p0, v0, :cond_12

    const-string v0, "()<>@,;:/[]?=\\\""

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    if-gez p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 115
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 116
    const/16 v2, 0x3b

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 117
    const/4 v3, 0x0

    if-gez v1, :cond_10

    .line 118
    return-object v3

    .line 119
    :cond_10
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 120
    invoke-static {v4}, Lcom/bytedance/sdk/openadsdk/utils/w;->c(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 121
    return-object v3

    .line 122
    :cond_26
    add-int/lit8 v1, v1, 0x1

    if-gez v2, :cond_2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_33

    .line 123
    :cond_2f
    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    .line 124
    :goto_33
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    .line 125
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/utils/w;->c(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_44

    .line 126
    return-object v3

    .line 127
    :cond_44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 128
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Ljava/lang/String;)Z
    .registers 5

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    .line 151
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 152
    return v1

    .line 153
    :cond_8
    move v2, v1

    :goto_9
    if-ge v2, v0, :cond_19

    .line 154
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lcom/bytedance/sdk/openadsdk/utils/w;->a(C)Z

    move-result v3

    if-nez v3, :cond_16

    .line 155
    return v1

    .line 153
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 157
    :cond_19
    const/4 p0, 0x1

    return p0
.end method

.method private d(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 161
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/w;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 162
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 163
    return-object v1

    .line 165
    :cond_c
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/utils/w;->a()V

    .line 166
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/w;->a:Ljava/util/Map;

    if-eqz v0, :cond_31

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_31

    .line 172
    :cond_1a
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/w;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 173
    if-nez v0, :cond_28

    .line 174
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/w;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 175
    :cond_28
    if-nez v0, :cond_30

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 177
    :cond_30
    return-object v0

    .line 167
    :cond_31
    :goto_31
    return-object v1
.end method

.method private static e(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 182
    nop

    .line 183
    if-eqz p0, :cond_20

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_20

    .line 184
    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 185
    if-ltz v0, :cond_20

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_20

    .line 186
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_22

    .line 189
    :cond_20
    const-string p0, ""

    :goto_22
    return-object p0
.end method

.method private f(Ljava/lang/String;)V
    .registers 7

    .line 275
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_af

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x23

    if-ne v1, v2, :cond_15

    goto/16 :goto_af

    .line 279
    :cond_15
    const-string v1, "\\s*#.*"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 280
    const/16 v1, 0x3d

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 281
    const/4 v2, 0x1

    if-lez v1, :cond_99

    .line 283
    nop

    .line 284
    nop

    .line 286
    const-string v1, "\\btype=(\"\\p{Graph}+?/\\p{Graph}+?\"|\\p{Graph}+/\\p{Graph}+\\b)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 287
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 289
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_98

    .line 290
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v1

    const-string v3, "type="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 291
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x22

    if-ne v3, v4, :cond_57

    .line 292
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 295
    :cond_57
    nop

    .line 296
    nop

    .line 298
    const-string v3, "\\bexts=(\"[\\p{Graph}|\\p{Blank}]+?\"|\\p{Graph}+\\b)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 299
    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 301
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_98

    .line 302
    nop

    .line 303
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object p1

    const-string v3, "exts="

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 304
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_87

    .line 305
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 307
    :cond_87
    const-string v2, "[\\p{Blank}|\\p{Punct}]+"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 308
    array-length v2, p1

    :goto_8e
    if-ge v0, v2, :cond_98

    aget-object v3, p1, v0

    .line 309
    invoke-direct {p0, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_8e

    .line 313
    :cond_98
    goto :goto_ae

    .line 315
    :cond_99
    const-string v1, "\\s+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 316
    nop

    .line 317
    :goto_a0
    array-length v1, p1

    if-ge v2, v1, :cond_ae

    .line 318
    add-int/lit8 v1, v2, 0x1

    aget-object v2, p1, v2

    aget-object v3, p1, v0

    invoke-direct {p0, v2, v3}, Lcom/bytedance/sdk/openadsdk/utils/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v1

    goto :goto_a0

    .line 321
    :cond_ae
    :goto_ae
    return-void

    .line 277
    :cond_af
    :goto_af
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return-object v1

    .line 106
    :cond_8
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/utils/w;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    goto :goto_17

    :cond_13
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/utils/w;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_17
    return-object v1
.end method
