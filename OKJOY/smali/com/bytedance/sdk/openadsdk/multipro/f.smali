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
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private static c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bytedance/sdk/openadsdk/multipro/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/f;->c:Ljava/util/List;

    .line 34
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/f;->c:Ljava/util/List;

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

    move-result-object v1

    :goto_39
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/multipro/a;

    .line 41
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/multipro/a;->b()V

    goto :goto_39

    .line 43
    :cond_49
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    return-void
.end method

.method private b(Landroid/net/Uri;)Lcom/bytedance/sdk/openadsdk/multipro/a;
    .registers 7

    .prologue
    const/4 v1, 0x0

    .line 65
    if-nez p1, :cond_5

    move-object v0, v1

    .line 94
    :goto_4
    return-object v0

    .line 68
    :cond_5
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/f;->c(Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 69
    const-string v0, "TTProviderManager"

    const-string v2, "uri is error1"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 70
    goto :goto_4

    .line 73
    :cond_14
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 75
    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2b

    .line 76
    const-string v0, "TTProviderManager"

    const-string v2, "uri is error2"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 77
    goto :goto_4

    .line 80
    :cond_2b
    const/4 v2, 0x1

    aget-object v2, v0, v2

    .line 81
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 82
    const-string v0, "TTProviderManager"

    const-string v2, "uri is error3"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 83
    goto :goto_4

    .line 86
    :cond_3d
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/multipro/a;

    .line 87
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/multipro/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_43

    goto :goto_4

    .line 92
    :cond_5a
    const-string v0, "TTProviderManager"

    const-string v2, "uri is error4"

    invoke-static {v0, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 94
    goto :goto_4
.end method

.method public static b(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/multipro/f;
    .registers 3

    .prologue
    .line 46
    if-eqz p0, :cond_d

    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/f;->b:Ljava/lang/ref/WeakReference;

    .line 50
    :cond_d
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/f;->a:Lcom/bytedance/sdk/openadsdk/multipro/f;

    if-nez v0, :cond_20

    .line 51
    const-class v1, Lcom/bytedance/sdk/openadsdk/multipro/f;

    monitor-enter v1

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
    monitor-exit v1
    :try_end_20
    .catchall {:try_start_14 .. :try_end_20} :catchall_23

    .line 57
    :cond_20
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/f;->a:Lcom/bytedance/sdk/openadsdk/multipro/f;

    return-object v0

    .line 55
    :catchall_23
    move-exception v0

    :try_start_24
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    throw v0
.end method

.method private c(Landroid/net/Uri;)Z
    .registers 3

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
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
    .line 192
    const/4 v0, 0x0

    .line 194
    :try_start_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/f;->b(Landroid/net/Uri;)Lcom/bytedance/sdk/openadsdk/multipro/a;

    move-result-object v1

    .line 195
    if-eqz v1, :cond_b

    .line 196
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/multipro/a;->a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_c

    move-result v0

    .line 202
    :cond_b
    :goto_b
    return v0

    .line 198
    :catch_c
    move-exception v1

    .line 199
    const-string v2, "TTProviderManager"

    const-string v3, "==provider update error=="

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 8
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
    .line 177
    const/4 v0, 0x0

    .line 179
    :try_start_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/f;->b(Landroid/net/Uri;)Lcom/bytedance/sdk/openadsdk/multipro/a;

    move-result-object v1

    .line 180
    if-eqz v1, :cond_b

    .line 181
    invoke-interface {v1, p1, p2, p3}, Lcom/bytedance/sdk/openadsdk/multipro/a;->a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_c

    move-result v0

    .line 187
    :cond_b
    :goto_b
    return v0

    .line 183
    :catch_c
    move-exception v1

    .line 184
    const-string v2, "TTProviderManager"

    const-string v3, "==provider delete error=="

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 13
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
    .line 131
    const/4 v6, 0x0

    .line 134
    :try_start_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/f;->b(Landroid/net/Uri;)Lcom/bytedance/sdk/openadsdk/multipro/a;

    move-result-object v0

    .line 135
    if-eqz v0, :cond_19

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 136
    invoke-interface/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/multipro/a;->a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_f} :catch_11

    move-result-object v0

    .line 142
    :goto_10
    return-object v0

    .line 138
    :catch_11
    move-exception v0

    .line 139
    const-string v1, "TTProviderManager"

    const-string v2, "==provider query error=="

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_19
    move-object v0, v6

    goto :goto_10
.end method

.method public a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 7
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 162
    const/4 v0, 0x0

    .line 164
    :try_start_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/f;->b(Landroid/net/Uri;)Lcom/bytedance/sdk/openadsdk/multipro/a;

    move-result-object v1

    .line 165
    if-eqz v1, :cond_b

    .line 166
    invoke-interface {v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/a;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v0

    .line 172
    :cond_b
    :goto_b
    return-object v0

    .line 168
    :catch_c
    move-exception v1

    .line 169
    const-string v2, "TTProviderManager"

    const-string v3, "==provider insert error=="

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public a()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 121
    const-string v0, ""

    return-object v0
.end method

.method public a(Landroid/net/Uri;)Ljava/lang/String;
    .registers 6
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 147
    const/4 v0, 0x0

    .line 149
    :try_start_1
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/f;->b(Landroid/net/Uri;)Lcom/bytedance/sdk/openadsdk/multipro/a;

    move-result-object v1

    .line 150
    if-eqz v1, :cond_b

    .line 151
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/openadsdk/multipro/a;->a(Landroid/net/Uri;)Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v0

    .line 157
    :cond_b
    :goto_b
    return-object v0

    .line 153
    :catch_c
    move-exception v1

    .line 154
    const-string v2, "TTProviderManager"

    const-string v3, "==provider getType error=="

    invoke-static {v2, v3, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_b
.end method

.method public a(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 113
    sget-object v0, Lcom/bytedance/sdk/openadsdk/multipro/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bytedance/sdk/openadsdk/multipro/a;

    .line 114
    invoke-interface {v0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/a;->a(Landroid/content/Context;)V

    goto :goto_6

    .line 116
    :cond_16
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 127
    return-void
.end method
