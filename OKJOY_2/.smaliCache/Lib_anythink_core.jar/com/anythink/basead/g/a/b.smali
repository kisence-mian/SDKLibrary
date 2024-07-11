.class public final Lcom/anythink/basead/g/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/anythink/basead/g/a/b;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/text/SimpleDateFormat;

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lcom/anythink/basead/c/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/basead/g/a/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/g/a/b;->b:Landroid/content/Context;

    .line 35
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMdd"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/anythink/basead/g/a/b;->c:Ljava/text/SimpleDateFormat;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/anythink/basead/g/a/b;)Landroid/content/Context;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/anythink/basead/g/a/b;->b:Landroid/content/Context;

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/basead/g/a/b;
    .registers 2

    .line 39
    sget-object v0, Lcom/anythink/basead/g/a/b;->a:Lcom/anythink/basead/g/a/b;

    if-nez v0, :cond_b

    .line 40
    new-instance v0, Lcom/anythink/basead/g/a/b;

    invoke-direct {v0, p0}, Lcom/anythink/basead/g/a/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/anythink/basead/g/a/b;->a:Lcom/anythink/basead/g/a/b;

    .line 42
    :cond_b
    sget-object p0, Lcom/anythink/basead/g/a/b;->a:Lcom/anythink/basead/g/a/b;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 5

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 124
    iget-object v2, p0, Lcom/anythink/basead/g/a/b;->c:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/anythink/basead/g/a/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/basead/b/c;->a(Landroid/content/Context;)Lcom/anythink/basead/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/basead/b/c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 126
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 127
    if-eqz v0, :cond_36

    .line 128
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/anythink/basead/c/d;

    .line 129
    iget-object v2, v2, Lcom/anythink/basead/c/d;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 130
    goto :goto_24

    .line 132
    :cond_36
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/anythink/core/common/d/p;)V
    .registers 7

    .line 51
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 52
    iget-object v2, p0, Lcom/anythink/basead/g/a/b;->c:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-virtual {p0, p1}, Lcom/anythink/basead/g/a/b;->d(Lcom/anythink/core/common/d/p;)Lcom/anythink/basead/c/d;

    move-result-object p1

    .line 55
    iget-object v3, p1, Lcom/anythink/basead/c/d;->f:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_22

    .line 57
    iget v2, p1, Lcom/anythink/basead/c/d;->d:I

    add-int/2addr v2, v4

    iput v2, p1, Lcom/anythink/basead/c/d;->d:I

    goto :goto_26

    .line 60
    :cond_22
    iput v4, p1, Lcom/anythink/basead/c/d;->d:I

    .line 61
    iput-object v2, p1, Lcom/anythink/basead/c/d;->f:Ljava/lang/String;

    .line 65
    :goto_26
    iput-wide v0, p1, Lcom/anythink/basead/c/d;->e:J

    .line 66
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/basead/g/a/b$1;

    invoke-direct {v1, p0, p1}, Lcom/anythink/basead/g/a/b$1;-><init>(Lcom/anythink/basead/g/a/b;Lcom/anythink/basead/c/d;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 77
    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 4

    .line 143
    nop

    .line 144
    iget-object v0, p0, Lcom/anythink/basead/g/a/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object p1

    .line 145
    const/4 v0, 0x0

    if-nez p1, :cond_f

    .line 146
    return v0

    .line 149
    :cond_f
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->f()Ljava/util/List;

    move-result-object p1

    .line 151
    if-eqz p1, :cond_37

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_1c

    goto :goto_37

    .line 154
    :cond_1c
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_20
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/d/p;

    .line 155
    invoke-virtual {p0, v1}, Lcom/anythink/basead/g/a/b;->b(Lcom/anythink/core/common/d/p;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 156
    nop

    .line 157
    goto :goto_38

    .line 159
    :cond_34
    goto :goto_20

    .line 154
    :cond_35
    const/4 v0, 0x1

    goto :goto_38

    .line 152
    :cond_37
    :goto_37
    nop

    .line 162
    :goto_38
    return v0
.end method

.method public final b(Lcom/anythink/core/common/d/p;)Z
    .registers 6

    .line 86
    invoke-virtual {p0, p1}, Lcom/anythink/basead/g/a/b;->d(Lcom/anythink/core/common/d/p;)Lcom/anythink/basead/c/d;

    move-result-object v0

    .line 88
    nop

    .line 1178
    iget v1, p1, Lcom/anythink/core/common/d/p;->z:I

    .line 88
    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v1, v3, :cond_c

    .line 89
    return v2

    .line 92
    :cond_c
    iget v0, v0, Lcom/anythink/basead/c/d;->d:I

    .line 2178
    iget p1, p1, Lcom/anythink/core/common/d/p;->z:I

    .line 92
    if-lt v0, p1, :cond_14

    .line 93
    const/4 p1, 0x1

    return p1

    .line 96
    :cond_14
    return v2
.end method

.method public final c(Lcom/anythink/core/common/d/p;)Z
    .registers 6

    .line 106
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 107
    invoke-virtual {p0, p1}, Lcom/anythink/basead/g/a/b;->d(Lcom/anythink/core/common/d/p;)Lcom/anythink/basead/c/d;

    move-result-object v2

    .line 109
    iget-wide v2, v2, Lcom/anythink/basead/c/d;->e:J

    sub-long/2addr v0, v2

    .line 2186
    iget-wide v2, p1, Lcom/anythink/core/common/d/p;->A:J

    .line 109
    cmp-long p1, v0, v2

    if-gtz p1, :cond_13

    .line 110
    const/4 p1, 0x1

    return p1

    .line 113
    :cond_13
    const/4 p1, 0x0

    return p1
.end method

.method public final d(Lcom/anythink/core/common/d/p;)Lcom/anythink/basead/c/d;
    .registers 7

    .line 173
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 174
    iget-object v2, p0, Lcom/anythink/basead/g/a/b;->c:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/anythink/basead/g/a/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/anythink/core/common/d/p;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/basead/c/d;

    .line 176
    const/4 v2, 0x0

    if-nez v1, :cond_54

    .line 177
    iget-object v1, p0, Lcom/anythink/basead/g/a/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/basead/b/c;->a(Landroid/content/Context;)Lcom/anythink/basead/b/c;

    move-result-object v1

    invoke-virtual {p1}, Lcom/anythink/core/common/d/p;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/anythink/basead/b/c;->a(Ljava/lang/String;)Lcom/anythink/basead/c/d;

    move-result-object v1

    .line 178
    if-nez v1, :cond_4b

    .line 179
    new-instance v1, Lcom/anythink/basead/c/d;

    invoke-direct {v1}, Lcom/anythink/basead/c/d;-><init>()V

    .line 180
    invoke-virtual {p1}, Lcom/anythink/core/common/d/p;->e()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/anythink/basead/c/d;->a:Ljava/lang/String;

    .line 181
    nop

    .line 3178
    iget v3, p1, Lcom/anythink/core/common/d/p;->z:I

    .line 181
    iput v3, v1, Lcom/anythink/basead/c/d;->b:I

    .line 182
    nop

    .line 3186
    iget-wide v3, p1, Lcom/anythink/core/common/d/p;->A:J

    .line 182
    iput-wide v3, v1, Lcom/anythink/basead/c/d;->c:J

    .line 183
    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/anythink/basead/c/d;->e:J

    .line 184
    iput v2, v1, Lcom/anythink/basead/c/d;->d:I

    .line 185
    iput-object v0, v1, Lcom/anythink/basead/c/d;->f:Ljava/lang/String;

    .line 187
    :cond_4b
    iget-object v3, p0, Lcom/anythink/basead/g/a/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/anythink/core/common/d/p;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_54
    iget-object p1, v1, Lcom/anythink/basead/c/d;->f:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_60

    .line 192
    iput-object v0, v1, Lcom/anythink/basead/c/d;->f:Ljava/lang/String;

    .line 193
    iput v2, v1, Lcom/anythink/basead/c/d;->d:I

    .line 195
    :cond_60
    return-object v1
.end method
