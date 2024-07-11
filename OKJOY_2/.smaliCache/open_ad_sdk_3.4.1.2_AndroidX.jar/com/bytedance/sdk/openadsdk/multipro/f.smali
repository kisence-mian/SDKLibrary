.class public Lcom/bytedance/sdk/openadsdk/multipro/f;
.super Ljava/lang/Object;
.source "TTProviderManager.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/multipro/a;


# static fields
.field private static volatile a:Lcom/bytedance/sdk/openadsdk/multipro/f;

.field private static b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bytedance/sdk/openadsdk/multipro/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/f;->c:Ljava/util/List;

    .line 34
    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/d/c;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/c;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/f;->c:Ljava/util/List;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/a/b;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/multipro/a/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/f;->c:Ljava/util/List;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/c/b;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/multipro/c/b;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/f;->c:Ljava/util/List;

    new-instance v1, Lcom/bytedance/sdk/openadsdk/multipro/c/a;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/multipro/c/a;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_37
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/multipro/a;

    .line 41
    invoke-interface {v1}, Lcom/bytedance/sdk/openadsdk/multipro/a;->b()V

    .line 42
    goto :goto_37

    .line 43
    :cond_47
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method private b(Landroid/net/Uri;)Lcom/bytedance/sdk/openadsdk/multipro/a;
    .registers 7

    .line 65
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 66
    return-object v0

    .line 68
    :cond_4
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/f;->c(Landroid/net/Uri;)Z

    move-result v1

    const-string v2, "TTProviderManager"

    if-nez v1, :cond_12

    .line 69
    const-string p1, "uri is error1"

    invoke-static {v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    return-object v0

    .line 73
    :cond_12
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 75
    array-length v1, p1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_26

    .line 76
    const-string p1, "uri is error2"

    invoke-static {v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    return-object v0

    .line 80
    :cond_26
    const/4 v1, 0x1

    aget-object p1, p1, v1

    .line 81
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_35

    .line 82
    const-string p1, "uri is error3"

    invoke-static {v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-object v0

    .line 86
    :cond_35
    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/f;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bytedance/sdk/openadsdk/multipro/a;

    .line 87
    invoke-interface {v3}, Lcom/bytedance/sdk/openadsdk/multipro/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 88
    return-object v3

    .line 90
    :cond_52
    goto :goto_3b

    .line 92
    :cond_53
    const-string p1, "uri is error4"

    invoke-static {v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    return-object v0
.end method

.method public static b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/f;
    .registers 2

    .line 46
    if-eqz p0, :cond_d

    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/f;->b:Ljava/lang/ref/WeakReference;

    .line 50
    :cond_d
    sget-object p0, Lcom/bytedance/sdk/openadsdk/multipro/f;->a:Lcom/bytedance/sdk/openadsdk/multipro/f;

    if-nez p0, :cond_24

    .line 51
    const-class p0, Lcom/bytedance/sdk/openadsdk/multipro/f;

    monitor-enter p0

    .line 52
    :try_start_14
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/f;->a:Lcom/bytedance/sdk/openadsdk/multipro/f;

    if-nez v0, :cond_1f

    .line 53
    new-instance v0, Lcom/bytedance/sdk/openadsdk/multipro/f;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/multipro/f;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/f;->a:Lcom/bytedance/sdk/openadsdk/multipro/f;

    .line 55
    :cond_1f
    monitor-exit p0

    goto :goto_24

    :catchall_21
    move-exception v0

    monitor-exit p0
    :try_end_23
    .catchall {:try_start_14 .. :try_end_23} :catchall_21

    throw v0

    .line 57
    :cond_24
    :goto_24
    sget-object p0, Lcom/bytedance/sdk/openadsdk/multipro/f;->a:Lcom/bytedance/sdk/openadsdk/multipro/f;

    return-object p0
.end method

.method private c(Landroid/net/Uri;)Z
    .registers 2

    .line 104
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    .line 192
    nop

    .line 194
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/f;->b(Landroid/net/Uri;)Lcom/bytedance/sdk/openadsdk/multipro/a;

    move-result-object v1

    .line 195
    if-eqz v1, :cond_d

    .line 196
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/multipro/a;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_e

    move v0, p1

    .line 200
    :cond_d
    goto :goto_16

    .line 198
    :catchall_e
    move-exception p1

    .line 199
    const-string p2, "TTProviderManager"

    const-string p3, "==provider update error=="

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 202
    :goto_16
    return v0
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 6

    .line 177
    nop

    .line 179
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/f;->b(Landroid/net/Uri;)Lcom/bytedance/sdk/openadsdk/multipro/a;

    move-result-object v1

    .line 180
    if-eqz v1, :cond_d

    .line 181
    invoke-interface {v1, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/multipro/a;->a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_e

    move v0, p1

    .line 185
    :cond_d
    goto :goto_16

    .line 183
    :catchall_e
    move-exception p1

    .line 184
    const-string p2, "TTProviderManager"

    const-string p3, "==provider delete error=="

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 187
    :goto_16
    return v0
.end method

.method public a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13

    .line 131
    nop

    .line 134
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/f;->b(Landroid/net/Uri;)Lcom/bytedance/sdk/openadsdk/multipro/a;

    move-result-object v1

    .line 135
    if-eqz v1, :cond_12

    .line 136
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/bytedance/sdk/openadsdk/multipro/a;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_11
    .catchall {:try_start_2 .. :try_end_11} :catchall_13

    move-object v0, p1

    .line 140
    :cond_12
    goto :goto_1b

    .line 138
    :catchall_13
    move-exception p1

    .line 139
    const-string p2, "TTProviderManager"

    const-string p3, "==provider query error=="

    invoke-static {p2, p3, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 142
    :goto_1b
    return-object v0
.end method

.method public a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 5

    .line 162
    nop

    .line 164
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/f;->b(Landroid/net/Uri;)Lcom/bytedance/sdk/openadsdk/multipro/a;

    move-result-object v1

    .line 165
    if-eqz v1, :cond_d

    .line 166
    invoke-interface {v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/a;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_e

    move-object v0, p1

    .line 170
    :cond_d
    goto :goto_16

    .line 168
    :catchall_e
    move-exception p1

    .line 169
    const-string p2, "TTProviderManager"

    const-string v1, "==provider insert error=="

    invoke-static {p2, v1, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 172
    :goto_16
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 121
    const-string v0, ""

    return-object v0
.end method

.method public a(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5

    .line 147
    nop

    .line 149
    const/4 v0, 0x0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/f;->b(Landroid/net/Uri;)Lcom/bytedance/sdk/openadsdk/multipro/a;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_d

    .line 151
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/openadsdk/multipro/a;->a(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_e

    move-object v0, p1

    .line 155
    :cond_d
    goto :goto_16

    .line 153
    :catchall_e
    move-exception p1

    .line 154
    const-string v1, "TTProviderManager"

    const-string v2, "==provider getType error=="

    invoke-static {v1, v2, p1}, Lcom/bytedance/sdk/openadsdk/utils/u;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 157
    :goto_16
    return-object v0
.end method

.method public a(Landroid/content/Context;)V
    .registers 4

    .line 113
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bytedance/sdk/openadsdk/multipro/a;

    .line 114
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/openadsdk/multipro/a;->a(Landroid/content/Context;)V

    .line 115
    goto :goto_6

    .line 116
    :cond_16
    return-void
.end method

.method public b()V
    .registers 1

    .line 127
    return-void
.end method
