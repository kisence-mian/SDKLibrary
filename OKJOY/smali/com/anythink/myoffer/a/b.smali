.class public final Lcom/anythink/myoffer/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/anythink/myoffer/a/b;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/text/SimpleDateFormat;

.field private d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/anythink/myoffer/c/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/myoffer/a/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/a/b;->b:Landroid/content/Context;

    .line 27
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anythink/myoffer/a/b;->c:Ljava/text/SimpleDateFormat;

    .line 28
    return-void
.end method

.method static synthetic a(Lcom/anythink/myoffer/a/b;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/anythink/myoffer/a/b;->b:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/myoffer/a/b;
    .registers 2

    .prologue
    .line 31
    sget-object v0, Lcom/anythink/myoffer/a/b;->a:Lcom/anythink/myoffer/a/b;

    if-nez v0, :cond_b

    .line 32
    new-instance v0, Lcom/anythink/myoffer/a/b;

    invoke-direct {v0, p0}, Lcom/anythink/myoffer/a/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/anythink/myoffer/a/b;->a:Lcom/anythink/myoffer/a/b;

    .line 34
    :cond_b
    sget-object v0, Lcom/anythink/myoffer/a/b;->a:Lcom/anythink/myoffer/a/b;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 5

    .prologue
    .line 115
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 116
    iget-object v2, p0, Lcom/anythink/myoffer/a/b;->c:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/anythink/myoffer/a/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/myoffer/b/c;->a(Landroid/content/Context;)Lcom/anythink/myoffer/b/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/anythink/myoffer/b/c;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 118
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 119
    if-eqz v0, :cond_36

    .line 120
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/myoffer/c/b;

    .line 121
    iget-object v0, v0, Lcom/anythink/myoffer/c/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_24

    .line 124
    :cond_36
    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/anythink/myoffer/c/a;)V
    .registers 7

    .prologue
    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 44
    iget-object v2, p0, Lcom/anythink/myoffer/a/b;->c:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 45
    invoke-virtual {p0, p1}, Lcom/anythink/myoffer/a/b;->d(Lcom/anythink/myoffer/c/a;)Lcom/anythink/myoffer/c/b;

    move-result-object v3

    .line 47
    iget-object v4, v3, Lcom/anythink/myoffer/c/b;->f:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 49
    iget v2, v3, Lcom/anythink/myoffer/c/b;->d:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v3, Lcom/anythink/myoffer/c/b;->d:I

    .line 57
    :goto_21
    iput-wide v0, v3, Lcom/anythink/myoffer/c/b;->e:J

    .line 58
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/myoffer/a/b$1;

    invoke-direct {v1, p0, v3}, Lcom/anythink/myoffer/a/b$1;-><init>(Lcom/anythink/myoffer/a/b;Lcom/anythink/myoffer/c/b;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 69
    return-void

    .line 52
    :cond_30
    const/4 v4, 0x1

    iput v4, v3, Lcom/anythink/myoffer/c/b;->d:I

    .line 53
    iput-object v2, v3, Lcom/anythink/myoffer/c/b;->f:Ljava/lang/String;

    goto :goto_21
.end method

.method public final a(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/anythink/myoffer/a/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/myoffer/b/a;->a(Landroid/content/Context;)Lcom/anythink/myoffer/b/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/myoffer/b/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 135
    const/4 v2, 0x1

    .line 137
    if-eqz v0, :cond_14

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_16

    :cond_14
    move v0, v1

    .line 148
    :goto_15
    return v0

    .line 140
    :cond_16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/myoffer/c/a;

    .line 141
    invoke-virtual {p0, v0}, Lcom/anythink/myoffer/a/b;->b(Lcom/anythink/myoffer/c/a;)Z

    move-result v0

    if-nez v0, :cond_1a

    move v0, v1

    .line 143
    goto :goto_15

    :cond_2e
    move v0, v2

    goto :goto_15
.end method

.method public final b(Lcom/anythink/myoffer/c/a;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-virtual {p0, p1}, Lcom/anythink/myoffer/a/b;->d(Lcom/anythink/myoffer/c/a;)Lcom/anythink/myoffer/c/b;

    move-result-object v1

    .line 1332
    iget v2, p1, Lcom/anythink/myoffer/c/a;->a:I

    .line 80
    const/4 v3, -0x1

    if-ne v2, v3, :cond_b

    .line 88
    :cond_a
    :goto_a
    return v0

    .line 84
    :cond_b
    iget v1, v1, Lcom/anythink/myoffer/c/b;->d:I

    .line 2332
    iget v2, p1, Lcom/anythink/myoffer/c/a;->a:I

    .line 84
    if-lt v1, v2, :cond_a

    .line 85
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public final c(Lcom/anythink/myoffer/c/a;)Z
    .registers 6

    .prologue
    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 99
    invoke-virtual {p0, p1}, Lcom/anythink/myoffer/a/b;->d(Lcom/anythink/myoffer/c/a;)Lcom/anythink/myoffer/c/b;

    move-result-object v2

    .line 101
    iget-wide v2, v2, Lcom/anythink/myoffer/c/b;->e:J

    sub-long/2addr v0, v2

    .line 2340
    iget-wide v2, p1, Lcom/anythink/myoffer/c/a;->b:J

    .line 101
    cmp-long v0, v0, v2

    if-gtz v0, :cond_13

    .line 102
    const/4 v0, 0x1

    .line 105
    :goto_12
    return v0

    :cond_13
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public final d(Lcom/anythink/myoffer/c/a;)Lcom/anythink/myoffer/c/b;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 159
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 160
    iget-object v2, p0, Lcom/anythink/myoffer/a/b;->c:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 161
    iget-object v0, p0, Lcom/anythink/myoffer/a/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/anythink/myoffer/c/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/myoffer/c/b;

    .line 162
    if-nez v0, :cond_52

    .line 163
    iget-object v0, p0, Lcom/anythink/myoffer/a/b;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/myoffer/b/c;->a(Landroid/content/Context;)Lcom/anythink/myoffer/b/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/anythink/myoffer/c/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/anythink/myoffer/b/c;->a(Ljava/lang/String;)Lcom/anythink/myoffer/c/b;

    move-result-object v0

    .line 164
    if-nez v0, :cond_49

    .line 165
    new-instance v0, Lcom/anythink/myoffer/c/b;

    invoke-direct {v0}, Lcom/anythink/myoffer/c/b;-><init>()V

    .line 166
    invoke-virtual {p1}, Lcom/anythink/myoffer/c/a;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/anythink/myoffer/c/b;->a:Ljava/lang/String;

    .line 3332
    iget v2, p1, Lcom/anythink/myoffer/c/a;->a:I

    .line 167
    iput v2, v0, Lcom/anythink/myoffer/c/b;->b:I

    .line 3340
    iget-wide v2, p1, Lcom/anythink/myoffer/c/a;->b:J

    .line 168
    iput-wide v2, v0, Lcom/anythink/myoffer/c/b;->c:J

    .line 169
    const-wide/16 v2, 0x0

    iput-wide v2, v0, Lcom/anythink/myoffer/c/b;->e:J

    .line 170
    iput v4, v0, Lcom/anythink/myoffer/c/b;->d:I

    .line 171
    iput-object v1, v0, Lcom/anythink/myoffer/c/b;->f:Ljava/lang/String;

    .line 173
    :cond_49
    iget-object v2, p0, Lcom/anythink/myoffer/a/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Lcom/anythink/myoffer/c/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    :cond_52
    iget-object v2, v0, Lcom/anythink/myoffer/c/b;->f:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5e

    .line 178
    iput-object v1, v0, Lcom/anythink/myoffer/c/b;->f:Ljava/lang/String;

    .line 179
    iput v4, v0, Lcom/anythink/myoffer/c/b;->d:I

    .line 181
    :cond_5e
    return-object v0
.end method
