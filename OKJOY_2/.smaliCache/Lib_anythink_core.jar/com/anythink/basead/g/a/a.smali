.class public final Lcom/anythink/basead/g/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/anythink/basead/g/a/a;


# instance fields
.field private b:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/basead/g/a/a;->b:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/basead/g/a/a;
    .registers 2

    .line 40
    sget-object v0, Lcom/anythink/basead/g/a/a;->a:Lcom/anythink/basead/g/a/a;

    if-nez v0, :cond_b

    .line 41
    new-instance v0, Lcom/anythink/basead/g/a/a;

    invoke-direct {v0, p0}, Lcom/anythink/basead/g/a/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/anythink/basead/g/a/a;->a:Lcom/anythink/basead/g/a/a;

    .line 43
    :cond_b
    sget-object p0, Lcom/anythink/basead/g/a/a;->a:Lcom/anythink/basead/g/a/a;

    return-object p0
.end method

.method private static a(Lcom/anythink/core/common/d/p;)Z
    .registers 4

    .line 184
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/core/common/b/g;->f()Ljava/util/List;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_27

    .line 186
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_27

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 187
    invoke-virtual {p0}, Lcom/anythink/core/common/d/p;->q()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 188
    const/4 p0, 0x1

    return p0

    .line 190
    :cond_26
    goto :goto_e

    .line 193
    :cond_27
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/core/common/d/p;
    .registers 4

    .line 80
    iget-object v0, p0, Lcom/anythink/basead/g/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object p1

    .line 81
    if-nez p1, :cond_e

    .line 82
    const/4 p1, 0x0

    return-object p1

    .line 85
    :cond_e
    invoke-virtual {p1, p2}, Lcom/anythink/core/c/c;->c(Ljava/lang/String;)Lcom/anythink/core/common/d/p;

    move-result-object p1

    .line 86
    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/common/d/r;)Ljava/lang/String;
    .registers 6

    .line 140
    iget-object v0, p0, Lcom/anythink/basead/g/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v0

    .line 141
    invoke-virtual {v0, p1}, Lcom/anythink/core/c/d;->c(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 142
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 143
    if-eqz p1, :cond_3b

    .line 145
    :try_start_11
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/anythink/core/common/d/p;

    .line 146
    invoke-static {}, Lcom/anythink/basead/a/d;->a()Lcom/anythink/basead/a/d;

    invoke-static {v1, p2}, Lcom/anythink/basead/a/d;->a(Lcom/anythink/core/common/d/p;Lcom/anythink/core/common/d/j;)Z

    move-result v2

    if-eqz v2, :cond_35

    .line 147
    invoke-virtual {v1}, Lcom/anythink/core/common/d/p;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/anythink/core/common/d/p;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_35} :catch_37

    .line 149
    :cond_35
    goto :goto_15

    .line 152
    :cond_36
    goto :goto_3b

    .line 151
    :catch_37
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    :cond_3b
    :goto_3b
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;)V
    .registers 9

    .line 50
    iget-object v0, p0, Lcom/anythink/basead/g/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object v0

    .line 52
    if-nez v0, :cond_d

    .line 53
    return-void

    .line 56
    :cond_d
    invoke-virtual {v0}, Lcom/anythink/core/c/c;->f()Ljava/util/List;

    move-result-object v1

    .line 58
    if-nez v1, :cond_14

    .line 59
    return-void

    .line 64
    :cond_14
    invoke-virtual {v0}, Lcom/anythink/core/c/c;->e()Lcom/anythink/core/common/d/r;

    move-result-object v0

    .line 65
    if-nez v0, :cond_1b

    .line 66
    return-void

    .line 68
    :cond_1b
    invoke-static {}, Lcom/anythink/basead/a/d;->a()Lcom/anythink/basead/a/d;

    .line 1064
    if-eqz v1, :cond_35

    .line 1067
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1068
    const/4 v3, 0x0

    :goto_25
    if-ge v3, v2, :cond_35

    .line 1069
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/core/common/d/h;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {p1, v6, v4, v0, v5}, Lcom/anythink/basead/a/d;->a(Ljava/lang/String;ZLcom/anythink/core/common/d/h;Lcom/anythink/core/common/d/j;Lcom/anythink/basead/a/a/a$a;)V

    .line 1068
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 69
    :cond_35
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/anythink/core/common/d/p;Lcom/anythink/core/common/d/j;Lcom/anythink/basead/a/a/a$a;)V
    .registers 6

    .line 162
    invoke-static {p2}, Lcom/anythink/basead/g/a/a;->a(Lcom/anythink/core/common/d/p;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 164
    const-string p1, "20006"

    const-string p2, "The cross-promotion offer was filtered for exclude offers."

    invoke-static {p1, p2}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/anythink/basead/a/a/a$a;->a(Lcom/anythink/basead/c/f;)V

    .line 166
    return-void

    .line 169
    :cond_12
    iget-object v0, p0, Lcom/anythink/basead/g/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/g/a/b;->a(Landroid/content/Context;)Lcom/anythink/basead/g/a/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/anythink/basead/g/a/b;->b(Lcom/anythink/core/common/d/p;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 171
    const-string p1, "20003"

    const-string p2, "Ad is out of cap!"

    invoke-static {p1, p2}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/anythink/basead/a/a/a$a;->a(Lcom/anythink/basead/c/f;)V

    .line 173
    return-void

    .line 174
    :cond_2a
    iget-object v0, p0, Lcom/anythink/basead/g/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/basead/g/a/b;->a(Landroid/content/Context;)Lcom/anythink/basead/g/a/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/anythink/basead/g/a/b;->c(Lcom/anythink/core/common/d/p;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 176
    const-string p1, "20004"

    const-string p2, "Ad is in pacing!"

    invoke-static {p1, p2}, Lcom/anythink/basead/c/g;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/basead/c/f;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/anythink/basead/a/a/a$a;->a(Lcom/anythink/basead/c/f;)V

    .line 178
    return-void

    .line 180
    :cond_42
    invoke-static {}, Lcom/anythink/basead/a/d;->a()Lcom/anythink/basead/a/d;

    invoke-static {p1, p2, p3, p4}, Lcom/anythink/basead/a/d;->a(Ljava/lang/String;Lcom/anythink/core/common/d/h;Lcom/anythink/core/common/d/j;Lcom/anythink/basead/a/a/a$a;)V

    .line 181
    return-void
.end method

.method public final a(Lcom/anythink/core/common/d/p;Lcom/anythink/core/common/d/j;Z)Z
    .registers 6

    .line 205
    iget-object v0, p0, Lcom/anythink/basead/g/a/a;->b:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_3e

    if-nez p1, :cond_8

    goto :goto_3e

    .line 209
    :cond_8
    invoke-static {p1}, Lcom/anythink/basead/g/a/a;->a(Lcom/anythink/core/common/d/p;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 210
    return v1

    .line 213
    :cond_f
    if-eqz p3, :cond_19

    .line 214
    invoke-static {}, Lcom/anythink/basead/a/d;->a()Lcom/anythink/basead/a/d;

    invoke-static {p1, p2}, Lcom/anythink/basead/a/d;->a(Lcom/anythink/core/common/d/p;Lcom/anythink/core/common/d/j;)Z

    move-result p1

    return p1

    .line 216
    :cond_19
    iget-object p3, p0, Lcom/anythink/basead/g/a/a;->b:Landroid/content/Context;

    invoke-static {p3}, Lcom/anythink/basead/g/a/b;->a(Landroid/content/Context;)Lcom/anythink/basead/g/a/b;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/anythink/basead/g/a/b;->b(Lcom/anythink/core/common/d/p;)Z

    move-result p3

    if-nez p3, :cond_3c

    iget-object p3, p0, Lcom/anythink/basead/g/a/a;->b:Landroid/content/Context;

    .line 217
    invoke-static {p3}, Lcom/anythink/basead/g/a/b;->a(Landroid/content/Context;)Lcom/anythink/basead/g/a/b;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/anythink/basead/g/a/b;->c(Lcom/anythink/core/common/d/p;)Z

    move-result p3

    if-nez p3, :cond_3c

    .line 218
    invoke-static {}, Lcom/anythink/basead/a/d;->a()Lcom/anythink/basead/a/d;

    invoke-static {p1, p2}, Lcom/anythink/basead/a/d;->a(Lcom/anythink/core/common/d/p;Lcom/anythink/core/common/d/j;)Z

    move-result p1

    if-eqz p1, :cond_3c

    const/4 p1, 0x1

    return p1

    :cond_3c
    nop

    .line 216
    return v1

    .line 206
    :cond_3e
    :goto_3e
    return v1
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 94
    iget-object v0, p0, Lcom/anythink/basead/g/a/a;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/d;->a(Landroid/content/Context;)Lcom/anythink/core/c/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/anythink/core/c/d;->a(Ljava/lang/String;)Lcom/anythink/core/c/c;

    move-result-object p1

    .line 95
    const-string v0, ""

    if-nez p1, :cond_f

    .line 96
    return-object v0

    .line 99
    :cond_f
    invoke-virtual {p1}, Lcom/anythink/core/c/c;->f()Ljava/util/List;

    move-result-object v1

    .line 100
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 101
    if-eqz v1, :cond_69

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_21

    goto :goto_69

    .line 108
    :cond_21
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_27
    if-ltz v3, :cond_50

    .line 109
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/anythink/core/common/d/p;

    .line 110
    invoke-static {}, Lcom/anythink/basead/a/d;->a()Lcom/anythink/basead/a/d;

    invoke-virtual {p1}, Lcom/anythink/core/c/c;->e()Lcom/anythink/core/common/d/r;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/anythink/basead/a/d;->a(Lcom/anythink/core/common/d/p;Lcom/anythink/core/common/d/j;)Z

    move-result v5

    if-nez v5, :cond_40

    .line 111
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4d

    .line 113
    :cond_40
    iget-object v5, p0, Lcom/anythink/basead/g/a/a;->b:Landroid/content/Context;

    invoke-static {v5}, Lcom/anythink/basead/g/a/b;->a(Landroid/content/Context;)Lcom/anythink/basead/g/a/b;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/anythink/basead/g/a/b;->d(Lcom/anythink/core/common/d/p;)Lcom/anythink/basead/c/d;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    :goto_4d
    add-int/lit8 v3, v3, -0x1

    goto :goto_27

    .line 117
    :cond_50
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_57

    .line 118
    return-object v0

    .line 121
    :cond_57
    new-instance p1, Lcom/anythink/basead/g/a/a$1;

    invoke-direct {p1, p0}, Lcom/anythink/basead/g/a/a$1;-><init>(Lcom/anythink/basead/g/a/a;)V

    invoke-static {v2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 129
    const/4 p1, 0x0

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/anythink/basead/c/d;

    iget-object p1, p1, Lcom/anythink/basead/c/d;->a:Ljava/lang/String;

    .line 131
    return-object p1

    .line 102
    :cond_69
    :goto_69
    return-object v0
.end method
