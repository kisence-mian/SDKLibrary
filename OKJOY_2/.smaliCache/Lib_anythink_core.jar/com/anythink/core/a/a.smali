.class public final Lcom/anythink/core/a/a;
.super Ljava/lang/Object;


# static fields
.field private static e:Lcom/anythink/core/a/a;


# instance fields
.field a:Lcom/anythink/core/common/c/f;

.field b:Ljava/text/SimpleDateFormat;

.field c:Ljava/text/SimpleDateFormat;

.field d:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {p1}, Lcom/anythink/core/common/c/c;->a(Landroid/content/Context;)Lcom/anythink/core/common/c/c;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/common/c/f;->a(Lcom/anythink/core/common/c/b;)Lcom/anythink/core/common/c/f;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/a/a;->a:Lcom/anythink/core/common/c/f;

    .line 43
    iput-object p1, p0, Lcom/anythink/core/a/a;->d:Landroid/content/Context;

    .line 44
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMdd"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/anythink/core/a/a;->b:Ljava/text/SimpleDateFormat;

    .line 45
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "yyyyMMddHH"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/anythink/core/a/a;->c:Ljava/text/SimpleDateFormat;

    .line 46
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/core/a/a;
    .registers 2

    .line 35
    sget-object v0, Lcom/anythink/core/a/a;->e:Lcom/anythink/core/a/a;

    if-nez v0, :cond_b

    .line 36
    new-instance v0, Lcom/anythink/core/a/a;

    invoke-direct {v0, p0}, Lcom/anythink/core/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/anythink/core/a/a;->e:Lcom/anythink/core/a/a;

    .line 38
    :cond_b
    sget-object p0, Lcom/anythink/core/a/a;->e:Lcom/anythink/core/a/a;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/d/x$a;
    .registers 8

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 147
    iget-object v2, p0, Lcom/anythink/core/a/a;->b:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 148
    iget-object v3, p0, Lcom/anythink/core/a/a;->c:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 150
    iget-object v1, p0, Lcom/anythink/core/a/a;->a:Lcom/anythink/core/common/c/f;

    invoke-virtual {v1, p1, p2, v2, v0}, Lcom/anythink/core/common/c/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/d/x$a;

    move-result-object p1

    .line 151
    return-object p1
.end method

.method public final a(Ljava/lang/String;)Lcom/anythink/core/common/d/x;
    .registers 7

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 131
    iget-object v2, p0, Lcom/anythink/core/a/a;->b:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 132
    iget-object v3, p0, Lcom/anythink/core/a/a;->c:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/anythink/core/a/a;->a:Lcom/anythink/core/common/c/f;

    invoke-virtual {v1, p1, v2, v0}, Lcom/anythink/core/common/c/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/d/x;

    move-result-object p1

    .line 135
    return-object p1
.end method

.method public final a(I)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/common/d/x;",
            ">;"
        }
    .end annotation

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 161
    iget-object v2, p0, Lcom/anythink/core/a/a;->b:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 162
    iget-object v3, p0, Lcom/anythink/core/a/a;->c:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 163
    iget-object v1, p0, Lcom/anythink/core/a/a;->a:Lcom/anythink/core/common/c/f;

    invoke-virtual {v1, p1, v2, v0}, Lcom/anythink/core/common/c/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public final a()V
    .registers 3

    .line 53
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/a/a$1;

    invoke-direct {v1, p0}, Lcom/anythink/core/a/a$1;-><init>(Lcom/anythink/core/a/a;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 59
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 170
    iget-object v2, p0, Lcom/anythink/core/a/a;->b:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 171
    iget-object v3, p0, Lcom/anythink/core/a/a;->c:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 175
    invoke-virtual {p0, p2, p3}, Lcom/anythink/core/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/d/x$a;

    move-result-object v4

    .line 178
    if-nez v4, :cond_2b

    .line 179
    new-instance v4, Lcom/anythink/core/common/d/x$a;

    invoke-direct {v4}, Lcom/anythink/core/common/d/x$a;-><init>()V

    .line 180
    iput-object p3, v4, Lcom/anythink/core/common/d/x$a;->a:Ljava/lang/String;

    .line 183
    :cond_2b
    iget-object p3, v4, Lcom/anythink/core/common/d/x$a;->c:Ljava/lang/String;

    invoke-static {v2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v5, 0x1

    if-nez p3, :cond_39

    .line 184
    iput v5, v4, Lcom/anythink/core/common/d/x$a;->d:I

    .line 185
    iput-object v2, v4, Lcom/anythink/core/common/d/x$a;->c:Ljava/lang/String;

    goto :goto_3e

    .line 187
    :cond_39
    iget p3, v4, Lcom/anythink/core/common/d/x$a;->d:I

    add-int/2addr p3, v5

    iput p3, v4, Lcom/anythink/core/common/d/x$a;->d:I

    .line 190
    :goto_3e
    iget-object p3, v4, Lcom/anythink/core/common/d/x$a;->b:Ljava/lang/String;

    invoke-static {v3, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_4b

    .line 191
    iput v5, v4, Lcom/anythink/core/common/d/x$a;->e:I

    .line 192
    iput-object v3, v4, Lcom/anythink/core/common/d/x$a;->b:Ljava/lang/String;

    goto :goto_50

    .line 194
    :cond_4b
    iget p3, v4, Lcom/anythink/core/common/d/x$a;->e:I

    add-int/2addr p3, v5

    iput p3, v4, Lcom/anythink/core/common/d/x$a;->e:I

    .line 197
    :goto_50
    iput-wide v0, v4, Lcom/anythink/core/common/d/x$a;->f:J

    .line 199
    iget-object p3, p0, Lcom/anythink/core/a/a;->a:Lcom/anythink/core/common/c/f;

    invoke-virtual {p3, p1, p2, v4}, Lcom/anythink/core/common/c/f;->a(ILjava/lang/String;Lcom/anythink/core/common/d/x$a;)J

    .line 201
    return-void
.end method

.method public final a(Lcom/anythink/core/c/c;Ljava/lang/String;)Z
    .registers 11

    .line 70
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->C()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_14

    .line 71
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->D()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-nez v0, :cond_14

    .line 72
    return v1

    .line 75
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 76
    iget-object v0, p0, Lcom/anythink/core/a/a;->b:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 77
    iget-object v6, p0, Lcom/anythink/core/a/a;->c:Ljava/text/SimpleDateFormat;

    new-instance v7, Ljava/util/Date;

    invoke-direct {v7, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v6, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 79
    iget-object v5, p0, Lcom/anythink/core/a/a;->a:Lcom/anythink/core/common/c/f;

    invoke-virtual {v5, p2, v0, v4}, Lcom/anythink/core/common/c/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/d/x;

    move-result-object p2

    .line 80
    if-eqz p2, :cond_39

    iget v0, p2, Lcom/anythink/core/common/d/x;->c:I

    goto :goto_3a

    :cond_39
    move v0, v1

    .line 81
    :goto_3a
    if-eqz p2, :cond_3f

    iget p2, p2, Lcom/anythink/core/common/d/x;->d:I

    goto :goto_40

    :cond_3f
    move p2, v1

    .line 83
    :goto_40
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->C()J

    move-result-wide v4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_51

    int-to-long v4, v0

    invoke-virtual {p1}, Lcom/anythink/core/c/c;->C()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-gez v0, :cond_63

    .line 84
    :cond_51
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->D()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_65

    int-to-long v2, p2

    invoke-virtual {p1}, Lcom/anythink/core/c/c;->D()J

    move-result-wide p1

    cmp-long p1, v2, p1

    if-gez p1, :cond_63

    goto :goto_65

    .line 87
    :cond_63
    const/4 p1, 0x1

    return p1

    .line 85
    :cond_65
    :goto_65
    return v1
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/c/c$b;)Z
    .registers 10

    .line 99
    iget v0, p2, Lcom/anythink/core/c/c$b;->e:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_b

    iget v0, p2, Lcom/anythink/core/c/c$b;->d:I

    if-ne v0, v2, :cond_b

    .line 100
    return v1

    .line 103
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 104
    iget-object v0, p0, Lcom/anythink/core/a/a;->b:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v5, p0, Lcom/anythink/core/a/a;->c:Ljava/text/SimpleDateFormat;

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 107
    iget-object v4, p0, Lcom/anythink/core/a/a;->a:Lcom/anythink/core/common/c/f;

    iget-object v5, p2, Lcom/anythink/core/c/c$b;->t:Ljava/lang/String;

    invoke-virtual {v4, p1, v5, v0, v3}, Lcom/anythink/core/common/c/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/d/x$a;

    move-result-object p1

    .line 111
    if-nez p1, :cond_34

    .line 112
    new-instance p1, Lcom/anythink/core/common/d/x$a;

    invoke-direct {p1}, Lcom/anythink/core/common/d/x$a;-><init>()V

    .line 115
    :cond_34
    iget v0, p2, Lcom/anythink/core/c/c$b;->e:I

    if-eq v0, v2, :cond_3e

    iget v0, p1, Lcom/anythink/core/common/d/x$a;->e:I

    iget v3, p2, Lcom/anythink/core/c/c$b;->e:I

    if-ge v0, v3, :cond_49

    :cond_3e
    iget v0, p2, Lcom/anythink/core/c/c$b;->d:I

    if-eq v0, v2, :cond_4b

    iget p1, p1, Lcom/anythink/core/common/d/x$a;->d:I

    iget p2, p2, Lcom/anythink/core/c/c$b;->d:I

    if-ge p1, p2, :cond_49

    goto :goto_4b

    .line 120
    :cond_49
    const/4 p1, 0x1

    return p1

    .line 117
    :cond_4b
    :goto_4b
    return v1
.end method
