.class public final Lcom/anythink/core/a/a;
.super Ljava/lang/Object;


# static fields
.field private static e:Lcom/anythink/core/a/a;


# instance fields
.field a:Lcom/anythink/core/b/b/f;

.field b:Ljava/text/SimpleDateFormat;

.field c:Ljava/text/SimpleDateFormat;

.field d:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-static {p1}, Lcom/anythink/core/b/b/c;->a(Landroid/content/Context;)Lcom/anythink/core/b/b/c;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/core/b/b/f;->a(Lcom/anythink/core/b/b/b;)Lcom/anythink/core/b/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/a/a;->a:Lcom/anythink/core/b/b/f;

    .line 38
    iput-object p1, p0, Lcom/anythink/core/a/a;->d:Landroid/content/Context;

    .line 39
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anythink/core/a/a;->b:Ljava/text/SimpleDateFormat;

    .line 40
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHH"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/anythink/core/a/a;->c:Ljava/text/SimpleDateFormat;

    .line 41
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/core/a/a;
    .registers 2

    .prologue
    .line 30
    sget-object v0, Lcom/anythink/core/a/a;->e:Lcom/anythink/core/a/a;

    if-nez v0, :cond_b

    .line 31
    new-instance v0, Lcom/anythink/core/a/a;

    invoke-direct {v0, p0}, Lcom/anythink/core/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/anythink/core/a/a;->e:Lcom/anythink/core/a/a;

    .line 33
    :cond_b
    sget-object v0, Lcom/anythink/core/a/a;->e:Lcom/anythink/core/a/a;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/b/c/k$a;
    .registers 8

    .prologue
    .line 138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 139
    iget-object v2, p0, Lcom/anythink/core/a/a;->b:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 140
    iget-object v3, p0, Lcom/anythink/core/a/a;->c:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/anythink/core/a/a;->a:Lcom/anythink/core/b/b/f;

    invoke-virtual {v1, p1, p2, v2, v0}, Lcom/anythink/core/b/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/b/c/k$a;

    move-result-object v0

    .line 143
    return-object v0
.end method

.method public final a(Ljava/lang/String;)Lcom/anythink/core/b/c/k;
    .registers 7

    .prologue
    .line 122
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 123
    iget-object v2, p0, Lcom/anythink/core/a/a;->b:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 124
    iget-object v3, p0, Lcom/anythink/core/a/a;->c:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/anythink/core/a/a;->a:Lcom/anythink/core/b/b/f;

    invoke-virtual {v1, p1, v2, v0}, Lcom/anythink/core/b/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/b/c/k;

    move-result-object v0

    .line 127
    return-object v0
.end method

.method public final a(I)Ljava/util/Map;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/anythink/core/b/c/k;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 153
    iget-object v2, p0, Lcom/anythink/core/a/a;->b:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 154
    iget-object v3, p0, Lcom/anythink/core/a/a;->c:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 155
    iget-object v1, p0, Lcom/anythink/core/a/a;->a:Lcom/anythink/core/b/b/f;

    invoke-virtual {v1, p1, v2, v0}, Lcom/anythink/core/b/b/f;->a(ILjava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .registers 3

    .prologue
    .line 48
    invoke-static {}, Lcom/anythink/core/b/g/a/a;->a()Lcom/anythink/core/b/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/a/a$1;

    invoke-direct {v1, p0}, Lcom/anythink/core/a/a$1;-><init>(Lcom/anythink/core/a/a;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/b/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 54
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    .prologue
    const/4 v7, 0x1

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 162
    iget-object v0, p0, Lcom/anythink/core/a/a;->b:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 163
    iget-object v0, p0, Lcom/anythink/core/a/a;->c:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 167
    invoke-virtual {p0, p2, p3}, Lcom/anythink/core/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/b/c/k$a;

    move-result-object v0

    .line 168
    if-nez v0, :cond_2c

    .line 169
    new-instance v0, Lcom/anythink/core/b/c/k$a;

    invoke-direct {v0}, Lcom/anythink/core/b/c/k$a;-><init>()V

    .line 170
    iput-object p3, v0, Lcom/anythink/core/b/c/k$a;->a:Ljava/lang/String;

    .line 173
    :cond_2c
    iget-object v6, v0, Lcom/anythink/core/b/c/k$a;->c:Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4c

    .line 174
    iput v7, v0, Lcom/anythink/core/b/c/k$a;->d:I

    .line 175
    iput-object v1, v0, Lcom/anythink/core/b/c/k$a;->c:Ljava/lang/String;

    .line 180
    :goto_38
    iget-object v1, v0, Lcom/anythink/core/b/c/k$a;->b:Ljava/lang/String;

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_53

    .line 181
    iput v7, v0, Lcom/anythink/core/b/c/k$a;->e:I

    .line 182
    iput-object v4, v0, Lcom/anythink/core/b/c/k$a;->b:Ljava/lang/String;

    .line 187
    :goto_44
    iput-wide v2, v0, Lcom/anythink/core/b/c/k$a;->f:J

    .line 189
    iget-object v1, p0, Lcom/anythink/core/a/a;->a:Lcom/anythink/core/b/b/f;

    invoke-virtual {v1, v5, p2, v0}, Lcom/anythink/core/b/b/f;->a(ILjava/lang/String;Lcom/anythink/core/b/c/k$a;)J

    .line 193
    return-void

    .line 177
    :cond_4c
    iget v1, v0, Lcom/anythink/core/b/c/k$a;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/anythink/core/b/c/k$a;->d:I

    goto :goto_38

    .line 184
    :cond_53
    iget v1, v0, Lcom/anythink/core/b/c/k$a;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/anythink/core/b/c/k$a;->e:I

    goto :goto_44
.end method

.method public final a(Lcom/anythink/core/c/c;Ljava/lang/String;)Z
    .registers 11

    .prologue
    const-wide/16 v6, -0x1

    const/4 v1, 0x0

    .line 65
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->w()J

    move-result-wide v2

    cmp-long v0, v2, v6

    if-nez v0, :cond_14

    .line 66
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->x()J

    move-result-wide v2

    cmp-long v0, v2, v6

    if-nez v0, :cond_14

    .line 82
    :cond_13
    :goto_13
    return v1

    .line 70
    :cond_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 71
    iget-object v0, p0, Lcom/anythink/core/a/a;->b:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 72
    iget-object v4, p0, Lcom/anythink/core/a/a;->c:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 74
    iget-object v3, p0, Lcom/anythink/core/a/a;->a:Lcom/anythink/core/b/b/f;

    invoke-virtual {v3, p2, v0, v2}, Lcom/anythink/core/b/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/b/c/k;

    move-result-object v3

    .line 75
    if-eqz v3, :cond_61

    iget v0, v3, Lcom/anythink/core/b/c/k;->c:I

    move v2, v0

    .line 76
    :goto_39
    if-eqz v3, :cond_63

    iget v0, v3, Lcom/anythink/core/b/c/k;->d:I

    .line 78
    :goto_3d
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->w()J

    move-result-wide v4

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4e

    int-to-long v2, v2

    invoke-virtual {p1}, Lcom/anythink/core/c/c;->w()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_5f

    .line 79
    :cond_4e
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->x()J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_13

    int-to-long v2, v0

    invoke-virtual {p1}, Lcom/anythink/core/c/c;->x()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-ltz v0, :cond_13

    .line 82
    :cond_5f
    const/4 v1, 0x1

    goto :goto_13

    :cond_61
    move v2, v1

    .line 75
    goto :goto_39

    :cond_63
    move v0, v1

    .line 76
    goto :goto_3d
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/c/c$b;)Z
    .registers 10

    .prologue
    const/4 v1, 0x0

    const/4 v6, -0x1

    .line 94
    iget v0, p2, Lcom/anythink/core/c/c$b;->d:I

    if-ne v0, v6, :cond_c

    iget v0, p2, Lcom/anythink/core/c/c$b;->c:I

    if-ne v0, v6, :cond_c

    move v0, v1

    .line 112
    :goto_b
    return v0

    .line 98
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 99
    iget-object v0, p0, Lcom/anythink/core/a/a;->b:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v4, p0, Lcom/anythink/core/a/a;->c:Ljava/text/SimpleDateFormat;

    new-instance v5, Ljava/util/Date;

    invoke-direct {v5, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 102
    iget-object v3, p0, Lcom/anythink/core/a/a;->a:Lcom/anythink/core/b/b/f;

    iget-object v4, p2, Lcom/anythink/core/c/c$b;->q:Ljava/lang/String;

    invoke-virtual {v3, p1, v4, v0, v2}, Lcom/anythink/core/b/b/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/b/c/k$a;

    move-result-object v0

    .line 103
    if-nez v0, :cond_35

    .line 104
    new-instance v0, Lcom/anythink/core/b/c/k$a;

    invoke-direct {v0}, Lcom/anythink/core/b/c/k$a;-><init>()V

    .line 107
    :cond_35
    iget v2, p2, Lcom/anythink/core/c/c$b;->d:I

    if-eq v2, v6, :cond_3f

    iget v2, v0, Lcom/anythink/core/b/c/k$a;->e:I

    iget v3, p2, Lcom/anythink/core/c/c$b;->d:I

    if-ge v2, v3, :cond_4b

    :cond_3f
    iget v2, p2, Lcom/anythink/core/c/c$b;->c:I

    if-eq v2, v6, :cond_49

    iget v0, v0, Lcom/anythink/core/b/c/k$a;->d:I

    iget v2, p2, Lcom/anythink/core/c/c$b;->c:I

    if-ge v0, v2, :cond_4b

    :cond_49
    move v0, v1

    .line 109
    goto :goto_b

    .line 112
    :cond_4b
    const/4 v0, 0x1

    goto :goto_b
.end method
