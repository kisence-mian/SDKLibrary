.class public Lcom/bytedance/sdk/openadsdk/multipro/c/a;
.super Ljava/lang/Object;
.source "AdEventProviderImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/multipro/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/openadsdk/multipro/c/a$a;,
        Lcom/bytedance/sdk/openadsdk/multipro/c/a$c;,
        Lcom/bytedance/sdk/openadsdk/multipro/c/a$d;,
        Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 107
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 122
    :cond_6
    :goto_6
    return-void

    .line 111
    :cond_7
    const-string v0, "AdEventProviderImpl"

    const-string v1, "dispatch event"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :try_start_e
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->e()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_6

    .line 115
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "adEventDispatch"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 117
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_40} :catch_41

    goto :goto_6

    .line 119
    :catch_41
    move-exception v0

    .line 120
    const-string v1, "AdEventProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dispatch event Throwable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 125
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_e

    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 147
    :cond_e
    :goto_e
    return-void

    .line 131
    :cond_f
    :try_start_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 133
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 145
    :catch_32
    move-exception v0

    goto :goto_e

    .line 135
    :cond_34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?did="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&track="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 138
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&replace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 139
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->e()Landroid/content/ContentResolver;

    move-result-object v1

    .line 141
    if-eqz v1, :cond_e

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "trackUrl"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 143
    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_97
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_97} :catch_32

    goto/16 :goto_e
.end method

.method public static a(Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 192
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 207
    :cond_6
    :goto_6
    return-void

    .line 197
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->e()Landroid/content/ContentResolver;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_6

    .line 199
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 200
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "?event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&isRealTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 201
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 202
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "logStatusDispatch"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 203
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_54
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_54} :catch_55

    goto :goto_6

    .line 205
    :catch_55
    move-exception v0

    goto :goto_6
.end method

.method public static a(Z)V
    .registers 5

    .prologue
    .line 87
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    .line 99
    :cond_6
    :goto_6
    return-void

    .line 91
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->e()Landroid/content/ContentResolver;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_6

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?isRealTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "logStatusStart"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_46} :catch_47

    goto :goto_6

    .line 97
    :catch_47
    move-exception v0

    goto :goto_6
.end method

.method public static b(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 150
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 162
    :cond_6
    :goto_6
    return-void

    .line 155
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->e()Landroid/content/ContentResolver;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_6

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "trackFailed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?did="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 158
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_39} :catch_3a

    goto :goto_6

    .line 160
    :catch_3a
    move-exception v0

    goto :goto_6
.end method

.method public static c()V
    .registers 3

    .prologue
    .line 71
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    .line 82
    :cond_6
    :goto_6
    return-void

    .line 75
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->e()Landroid/content/ContentResolver;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_6

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "adEventStart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_2b} :catch_2c

    goto :goto_6

    .line 80
    :catch_2c
    move-exception v0

    goto :goto_6
.end method

.method public static c(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 176
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 189
    :cond_6
    :goto_6
    return-void

    .line 181
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->e()Landroid/content/ContentResolver;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_6

    .line 183
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "logStatusUpload"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "?event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_39} :catch_3a

    goto :goto_6

    .line 187
    :catch_3a
    move-exception v0

    goto :goto_6
.end method

.method public static d()V
    .registers 3

    .prologue
    .line 166
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->e()Landroid/content/ContentResolver;

    move-result-object v0

    .line 167
    if-eqz v0, :cond_24

    .line 168
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "logStatusInit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 169
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_24} :catch_25

    .line 173
    :cond_24
    :goto_24
    return-void

    .line 171
    :catch_25
    move-exception v0

    goto :goto_24
.end method

.method private static e()Landroid/content/ContentResolver;
    .registers 1

    .prologue
    .line 59
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 60
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_d} :catch_f

    move-result-object v0

    .line 64
    :goto_e
    return-object v0

    .line 62
    :catch_f
    move-exception v0

    .line 64
    :cond_10
    const/4 v0, 0x0

    goto :goto_e
.end method

.method private static f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "t_event_ad_event"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 324
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 319
    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 7
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 309
    const/4 v0, 0x0

    return-object v0
.end method

.method public a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 4
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 314
    const/4 v0, 0x0

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 221
    const-string v0, "t_event_ad_event"

    return-object v0
.end method

.method public a(Landroid/net/Uri;)Ljava/lang/String;
    .registers 11
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v8, 0x0

    .line 231
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 232
    const/4 v1, 0x2

    aget-object v0, v0, v1

    .line 234
    const-string v1, "adEventStart"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 236
    const-string v0, "AdEventProviderImpl"

    const-string v1, "====ad event function will be start===="

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->a()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/b;->a()V

    .line 304
    :cond_24
    :goto_24
    return-object v8

    .line 238
    :cond_25
    const-string v1, "logStatusStart"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 240
    const-string v0, "AdEventProviderImpl"

    const-string v1, "====log stats function will be start===="

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v0, "isRealTime"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 242
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 243
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->c()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/b;->a()V

    goto :goto_24

    .line 245
    :cond_4c
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->b()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/c/b;->a()V

    goto :goto_24

    .line 247
    :cond_54
    const-string v1, "adEventDispatch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 248
    const-string v0, "AdEventProviderImpl"

    const-string v1, "dispatch FUN_AD_EVENT_DISPATCH"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v0, "event"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 251
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/c/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/c/a;

    move-result-object v0

    .line 253
    if-eqz v0, :cond_24

    .line 254
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->a()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/c/b;->a(Lcom/bytedance/sdk/openadsdk/c/i;)V

    goto :goto_24

    .line 256
    :cond_7b
    const-string v1, "logStatusDispatch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 258
    const-string v0, "isRealTime"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 259
    const-string v1, "event"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 260
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/multipro/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 261
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/f/b/c$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/f/b/c$a;

    move-result-object v1

    .line 262
    if-eqz v1, :cond_24

    .line 265
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 266
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->c()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/b;->a(Lcom/bytedance/sdk/openadsdk/c/i;)V

    goto/16 :goto_24

    .line 268
    :cond_ac
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->b()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/c/b;->a(Lcom/bytedance/sdk/openadsdk/c/i;)V

    goto/16 :goto_24

    .line 271
    :cond_b5
    const-string v1, "trackUrl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10b

    .line 273
    :try_start_bd
    const-string v0, "did"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 274
    const-string v0, "replace"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 275
    const-string v0, "track"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 276
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 277
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 278
    array-length v0, v3

    if-lez v0, :cond_24

    .line 279
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 280
    array-length v5, v3

    const/4 v0, 0x0

    :goto_eb
    if-ge v0, v5, :cond_ff

    aget-object v6, v3, v0

    .line 281
    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/multipro/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 282
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_fc

    .line 283
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_fc
    add-int/lit8 v0, v0, 0x1

    goto :goto_eb

    .line 286
    :cond_ff
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$d;->a()Lcom/bytedance/sdk/openadsdk/j/a;

    move-result-object v0

    invoke-interface {v0, v1, v4, v2}, Lcom/bytedance/sdk/openadsdk/j/a;->a(Ljava/lang/String;Ljava/util/List;Z)V
    :try_end_106
    .catch Ljava/lang/Throwable; {:try_start_bd .. :try_end_106} :catch_108

    goto/16 :goto_24

    .line 288
    :catch_108
    move-exception v0

    goto/16 :goto_24

    .line 290
    :cond_10b
    const-string v1, "trackFailed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13e

    .line 291
    const-string v0, "did"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$d;->a()Lcom/bytedance/sdk/openadsdk/j/a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/bytedance/sdk/openadsdk/j/a;->a(Ljava/lang/String;)V

    .line 293
    const-string v1, "AdEventProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "track failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_24

    .line 294
    :cond_13e
    const-string v1, "logStatusInit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14f

    .line 295
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$c;->a()Lcom/bytedance/sdk/openadsdk/f/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/f/b/c;->a()V

    goto/16 :goto_24

    .line 296
    :cond_14f
    const-string v1, "logStatusUpload"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 297
    const-string v0, "event"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 299
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_24

    .line 300
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$c;->a()Lcom/bytedance/sdk/openadsdk/f/b/c;

    move-result-object v1

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/multipro/c/a$a;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bytedance/sdk/openadsdk/f/b/c;->a(Lcom/bytedance/sdk/openadsdk/f/a/b;)V

    goto/16 :goto_24
.end method

.method public a(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 215
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->a:Landroid/content/Context;

    .line 216
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 227
    return-void
.end method
