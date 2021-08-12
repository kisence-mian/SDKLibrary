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

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 5

    .line 107
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 108
    return-void

    .line 111
    :cond_7
    const-string v0, "AdEventProviderImpl"

    const-string v1, "dispatch event"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :try_start_e
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->e()Landroid/content/ContentResolver;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_40

    .line 115
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

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

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 117
    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_40
    .catchall {:try_start_e .. :try_end_40} :catchall_41

    .line 121
    :cond_40
    goto :goto_5c

    .line 119
    :catchall_41
    move-exception p0

    .line 120
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dispatch event Throwable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/bytedance/sdk/openadsdk/utils/u;->f(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_5c
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/util/List;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 125
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_99

    if-eqz p1, :cond_99

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    goto/16 :goto_99

    .line 131
    :cond_10
    :try_start_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_19
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_33

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 133
    invoke-static {v1}, Lcom/bytedance/sdk/openadsdk/multipro/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    goto :goto_19

    .line 135
    :cond_33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/multipro/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?did="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "&track="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 138
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "&replace="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 139
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 140
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->e()Landroid/content/ContentResolver;

    move-result-object p1

    .line 141
    if-eqz p1, :cond_96

    .line 142
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "trackUrl"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 143
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_96
    .catchall {:try_start_10 .. :try_end_96} :catchall_97

    .line 146
    :cond_96
    goto :goto_98

    .line 145
    :catchall_97
    move-exception p0

    .line 147
    :goto_98
    return-void

    .line 126
    :cond_99
    :goto_99
    return-void
.end method

.method public static a(Ljava/lang/String;Z)V
    .registers 5

    .line 192
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 193
    return-void

    .line 197
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->e()Landroid/content/ContentResolver;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_54

    .line 199
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, "&isRealTime="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 201
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 202
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "logStatusDispatch"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 203
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_54
    .catchall {:try_start_7 .. :try_end_54} :catchall_55

    .line 206
    :cond_54
    goto :goto_56

    .line 205
    :catchall_55
    move-exception p0

    .line 207
    :goto_56
    return-void
.end method

.method public static a(Z)V
    .registers 4

    .line 87
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    .line 88
    return-void

    .line 91
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->e()Landroid/content/ContentResolver;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_46

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "?isRealTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "logStatusStart"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 95
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_47

    .line 98
    :cond_46
    goto :goto_48

    .line 97
    :catchall_47
    move-exception p0

    .line 99
    :goto_48
    return-void
.end method

.method public static b(Ljava/lang/String;)V
    .registers 4

    .line 150
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 151
    return-void

    .line 155
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->e()Landroid/content/ContentResolver;

    move-result-object v0

    .line 156
    if-eqz v0, :cond_39

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

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 158
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_3a

    .line 161
    :cond_39
    goto :goto_3b

    .line 160
    :catchall_3a
    move-exception p0

    .line 162
    :goto_3b
    return-void
.end method

.method public static c()V
    .registers 3

    .line 71
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    .line 72
    return-void

    .line 75
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->e()Landroid/content/ContentResolver;

    move-result-object v0

    .line 76
    if-eqz v0, :cond_2b

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
    .catchall {:try_start_7 .. :try_end_2b} :catchall_2c

    .line 81
    :cond_2b
    goto :goto_2d

    .line 80
    :catchall_2c
    move-exception v0

    .line 82
    :goto_2d
    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .registers 4

    .line 176
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 177
    return-void

    .line 181
    :cond_7
    :try_start_7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->e()Landroid/content/ContentResolver;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_39

    .line 183
    invoke-static {p0}, Lcom/bytedance/sdk/openadsdk/multipro/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 184
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "logStatusUpload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 185
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_3a

    .line 188
    :cond_39
    goto :goto_3b

    .line 187
    :catchall_3a
    move-exception p0

    .line 189
    :goto_3b
    return-void
.end method

.method public static d()V
    .registers 3

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
    .catchall {:try_start_0 .. :try_end_24} :catchall_25

    .line 172
    :cond_24
    goto :goto_26

    .line 171
    :catchall_25
    move-exception v0

    .line 173
    :goto_26
    return-void
.end method

.method private static e()Landroid/content/ContentResolver;
    .registers 1

    .line 59
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 60
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_10

    return-object v0

    .line 63
    :cond_f
    goto :goto_11

    .line 62
    :catchall_10
    move-exception v0

    .line 64
    :goto_11
    const/4 v0, 0x0

    return-object v0
.end method

.method private static f()Ljava/lang/String;
    .registers 3

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/e;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "t_event_ad_event"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 324
    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 4

    .line 319
    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 6

    .line 309
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 3

    .line 314
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 221
    const-string v0, "t_event_ad_event"

    return-object v0
.end method

.method public a(Landroid/net/Uri;)Ljava/lang/String;
    .registers 10

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

    const/4 v2, 0x0

    const-string v3, "AdEventProviderImpl"

    if-eqz v1, :cond_26

    .line 236
    const-string p1, "====ad event function will be start===="

    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->a()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/c/b;->a()V

    goto/16 :goto_163

    .line 238
    :cond_26
    const-string v1, "logStatusStart"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "isRealTime"

    if-eqz v1, :cond_54

    .line 240
    const-string v0, "====log stats function will be start===="

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    .line 242
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 243
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->c()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/c/b;->a()V

    goto :goto_52

    .line 245
    :cond_4b
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->b()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/c/b;->a()V

    .line 247
    :goto_52
    goto/16 :goto_163

    :cond_54
    const-string v1, "adEventDispatch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v5, "event"

    if-eqz v1, :cond_7a

    .line 248
    const-string v0, "dispatch FUN_AD_EVENT_DISPATCH"

    invoke-static {v3, v0}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 251
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/multipro/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 252
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/c/a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/c/a;

    move-result-object p1

    .line 253
    if-eqz p1, :cond_78

    .line 254
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->a()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/c/b;->a(Lcom/bytedance/sdk/openadsdk/c/i;)V

    .line 256
    :cond_78
    goto/16 :goto_163

    :cond_7a
    const-string v1, "logStatusDispatch"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b0

    .line 258
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 259
    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 260
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/multipro/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 261
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/g/c/c$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/g/c/c$a;

    move-result-object p1

    .line 262
    if-nez p1, :cond_99

    .line 263
    return-object v2

    .line 265
    :cond_99
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_a7

    .line 266
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->c()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/c/b;->a(Lcom/bytedance/sdk/openadsdk/c/i;)V

    goto :goto_ae

    .line 268
    :cond_a7
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$b;->b()Lcom/bytedance/sdk/openadsdk/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/c/b;->a(Lcom/bytedance/sdk/openadsdk/c/i;)V

    .line 271
    :goto_ae
    goto/16 :goto_163

    :cond_b0
    const-string v1, "trackUrl"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v4, "did"

    if-eqz v1, :cond_104

    .line 273
    :try_start_ba
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 274
    const-string v1, "replace"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 275
    const-string v3, "track"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 276
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/multipro/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 277
    const-string v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 278
    array-length v3, p1

    if-lez v3, :cond_103

    .line 279
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 280
    array-length v4, p1

    const/4 v5, 0x0

    :goto_e6
    if-ge v5, v4, :cond_fa

    aget-object v6, p1, v5

    .line 281
    invoke-static {v6}, Lcom/bytedance/sdk/openadsdk/multipro/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 282
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_f7

    .line 283
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_f7
    add-int/lit8 v5, v5, 0x1

    goto :goto_e6

    .line 286
    :cond_fa
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$d;->a()Lcom/bytedance/sdk/openadsdk/k/a;

    move-result-object p1

    invoke-interface {p1, v0, v3, v1}, Lcom/bytedance/sdk/openadsdk/k/a;->a(Ljava/lang/String;Ljava/util/List;Z)V
    :try_end_101
    .catchall {:try_start_ba .. :try_end_101} :catchall_102

    goto :goto_103

    .line 288
    :catchall_102
    move-exception p1

    .line 289
    :cond_103
    :goto_103
    goto :goto_163

    .line 290
    :cond_104
    const-string v1, "trackFailed"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_132

    .line 291
    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 292
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$d;->a()Lcom/bytedance/sdk/openadsdk/k/a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/k/a;->a(Ljava/lang/String;)V

    .line 293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "track failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    goto :goto_163

    :cond_132
    const-string v1, "logStatusInit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_142

    .line 295
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$c;->a()Lcom/bytedance/sdk/openadsdk/g/c/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bytedance/sdk/openadsdk/g/c/c;->a()V

    goto :goto_163

    .line 296
    :cond_142
    const-string v1, "logStatusUpload"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_163

    .line 297
    invoke-virtual {p1, v5}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 298
    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/multipro/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 299
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_163

    .line 300
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$c;->a()Lcom/bytedance/sdk/openadsdk/g/c/c;

    move-result-object v0

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/multipro/c/a$a;->a(Ljava/lang/String;)Lcom/bytedance/sdk/openadsdk/multipro/c/a$a;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/openadsdk/g/c/c;->a(Lcom/bytedance/sdk/openadsdk/g/a/a;)V

    .line 304
    :cond_163
    :goto_163
    return-object v2
.end method

.method public a(Landroid/content/Context;)V
    .registers 2

    .line 215
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/c/a;->a:Landroid/content/Context;

    .line 216
    return-void
.end method

.method public b()V
    .registers 1

    .line 227
    return-void
.end method
