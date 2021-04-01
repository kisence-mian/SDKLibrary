.class public Lcom/bytedance/sdk/openadsdk/multipro/a/b;
.super Ljava/lang/Object;
.source "DBMultiProviderImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/multipro/a;


# static fields
.field private static final b:Ljava/lang/Object;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/multipro/a/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private b(Landroid/net/Uri;)Z
    .registers 5

    .prologue
    .line 51
    if-eqz p1, :cond_c

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_c
    const/4 v0, 0x1

    .line 52
    :goto_d
    if-eqz v0, :cond_16

    .line 53
    const-string v1, "DBMultiProviderImpl"

    const-string v2, "==check uri is null=="

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_16
    return v0

    .line 51
    :cond_17
    const/4 v0, 0x0

    goto :goto_d
.end method

.method private c()Landroid/content/Context;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/a/b;->a:Landroid/content/Context;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/a/b;->a:Landroid/content/Context;

    goto :goto_8
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 10
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
    const/4 v0, 0x0

    .line 170
    const-string v1, "DBMultiProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/a/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 173
    :try_start_20
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/a/b;->b(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 174
    monitor-exit v1

    .line 188
    :goto_27
    return v0

    .line 177
    :cond_28
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 178
    if-eqz v2, :cond_38

    array-length v3, v2

    const/4 v4, 0x4

    if-ge v3, v4, :cond_3d

    .line 179
    :cond_38
    monitor-exit v1

    goto :goto_27

    .line 189
    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_20 .. :try_end_3c} :catchall_3a

    throw v0

    .line 181
    :cond_3d
    const/4 v3, 0x2

    :try_start_3e
    aget-object v3, v2, v3

    .line 182
    const/4 v4, 0x3

    aget-object v2, v2, v4

    .line 184
    const-string v4, "ttopensdk.db"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 185
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/a/b;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e;->a()Lcom/bytedance/sdk/openadsdk/core/f$c;

    move-result-object v0

    invoke-virtual {v0, v2, p2, p3, p4}, Lcom/bytedance/sdk/openadsdk/core/f$c;->a(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    monitor-exit v1

    goto :goto_27

    .line 188
    :cond_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_3e .. :try_end_5e} :catchall_3a

    goto :goto_27
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 9
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
    const/4 v0, 0x0

    .line 145
    const-string v1, "DBMultiProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/a/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 148
    :try_start_20
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/a/b;->b(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 149
    monitor-exit v1

    .line 164
    :goto_27
    return v0

    .line 152
    :cond_28
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 153
    if-eqz v2, :cond_38

    array-length v3, v2

    const/4 v4, 0x4

    if-ge v3, v4, :cond_3d

    .line 154
    :cond_38
    monitor-exit v1

    goto :goto_27

    .line 165
    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_20 .. :try_end_3c} :catchall_3a

    throw v0

    .line 156
    :cond_3d
    const/4 v3, 0x2

    :try_start_3e
    aget-object v3, v2, v3

    .line 157
    const/4 v4, 0x3

    aget-object v2, v2, v4

    .line 159
    const-string v4, "ttopensdk.db"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    .line 160
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/a/b;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e;->a()Lcom/bytedance/sdk/openadsdk/core/f$c;

    move-result-object v0

    invoke-virtual {v0, v2, p2, p3}, Lcom/bytedance/sdk/openadsdk/core/f$c;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    monitor-exit v1

    goto :goto_27

    .line 164
    :cond_5d
    monitor-exit v1
    :try_end_5e
    .catchall {:try_start_3e .. :try_end_5e} :catchall_3a

    goto :goto_27
.end method

.method public a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 15
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
    const/4 v0, 0x0

    .line 65
    const-string v1, "DBMultiProviderImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v8, Lcom/bytedance/sdk/openadsdk/multipro/a/b;->b:Ljava/lang/Object;

    monitor-enter v8

    .line 67
    :try_start_20
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/a/b;->b(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 68
    monitor-exit v8

    .line 82
    :goto_27
    return-object v0

    .line 71
    :cond_28
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 72
    if-eqz v1, :cond_38

    array-length v2, v1

    const/4 v3, 0x4

    if-ge v2, v3, :cond_3d

    .line 73
    :cond_38
    monitor-exit v8

    goto :goto_27

    .line 83
    :catchall_3a
    move-exception v0

    monitor-exit v8
    :try_end_3c
    .catchall {:try_start_20 .. :try_end_3c} :catchall_3a

    throw v0

    .line 75
    :cond_3d
    const/4 v2, 0x2

    :try_start_3e
    aget-object v2, v1, v2

    .line 76
    const/4 v3, 0x3

    aget-object v1, v1, v3

    .line 78
    const-string v3, "ttopensdk.db"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 79
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/a/b;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e;->a()Lcom/bytedance/sdk/openadsdk/core/f$c;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v7, p5

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/sdk/openadsdk/core/f$c;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    monitor-exit v8

    goto :goto_27

    .line 82
    :cond_63
    monitor-exit v8
    :try_end_64
    .catchall {:try_start_3e .. :try_end_64} :catchall_3a

    goto :goto_27
.end method

.method public a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 8
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/ContentValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 121
    const-string v0, "DBMultiProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insert: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/a/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    :try_start_20
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/a/b;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 125
    monitor-exit v1

    .line 139
    :goto_27
    return-object v4

    .line 128
    :cond_28
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 129
    if-eqz v0, :cond_38

    array-length v2, v0

    const/4 v3, 0x4

    if-ge v2, v3, :cond_3d

    .line 130
    :cond_38
    monitor-exit v1

    goto :goto_27

    .line 140
    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_20 .. :try_end_3c} :catchall_3a

    throw v0

    .line 132
    :cond_3d
    const/4 v2, 0x2

    :try_start_3e
    aget-object v2, v0, v2

    .line 133
    const/4 v3, 0x3

    aget-object v0, v0, v3

    .line 135
    const-string v3, "ttopensdk.db"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 136
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/a/b;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e;->a()Lcom/bytedance/sdk/openadsdk/core/f$c;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3, p2}, Lcom/bytedance/sdk/openadsdk/core/f$c;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 139
    :cond_5b
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_3e .. :try_end_5c} :catchall_3a

    goto :goto_27
.end method

.method public a()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 42
    const-string v0, "t_db"

    return-object v0
.end method

.method public a(Landroid/net/Uri;)Ljava/lang/String;
    .registers 7
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    .line 88
    const-string v0, "DBMultiProviderImpl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/t;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    sget-object v1, Lcom/bytedance/sdk/openadsdk/multipro/a/b;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 90
    :try_start_20
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/openadsdk/multipro/a/b;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 91
    monitor-exit v1

    .line 115
    :goto_27
    return-object v4

    .line 94
    :cond_28
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_38

    array-length v2, v0

    const/4 v3, 0x5

    if-ge v2, v3, :cond_3d

    .line 96
    :cond_38
    monitor-exit v1

    goto :goto_27

    .line 116
    :catchall_3a
    move-exception v0

    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_20 .. :try_end_3c} :catchall_3a

    throw v0

    .line 98
    :cond_3d
    const/4 v2, 0x2

    :try_start_3e
    aget-object v2, v0, v2

    .line 99
    const/4 v3, 0x3

    aget-object v3, v0, v3

    .line 100
    const/4 v3, 0x4

    aget-object v0, v0, v3

    .line 102
    const-string v3, "ttopensdk.db"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6b

    .line 103
    const-string v2, "execSQL"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 104
    const-string v0, "sql"

    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/a/b;->c()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bytedance/sdk/openadsdk/core/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bytedance/sdk/openadsdk/core/e;->a()Lcom/bytedance/sdk/openadsdk/core/f$c;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->a(Ljava/lang/String;)V

    .line 115
    :cond_6b
    :goto_6b
    monitor-exit v1

    goto :goto_27

    .line 106
    :cond_6d
    const-string v2, "transactionBegin"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    .line 107
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/a/b;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e;->a()Lcom/bytedance/sdk/openadsdk/core/f$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->a()V

    goto :goto_6b

    .line 108
    :cond_85
    const-string v2, "transactionSetSuccess"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 109
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/a/b;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e;->a()Lcom/bytedance/sdk/openadsdk/core/f$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->b()V

    goto :goto_6b

    .line 110
    :cond_9d
    const-string v2, "transactionEnd"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6b

    .line 111
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/a/b;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/e;->a(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/e;->a()Lcom/bytedance/sdk/openadsdk/core/f$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/openadsdk/core/f$c;->c()V
    :try_end_b4
    .catchall {:try_start_3e .. :try_end_b4} :catchall_3a

    goto :goto_6b
.end method

.method public a(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 36
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/a/b;->a:Landroid/content/Context;

    .line 37
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 48
    return-void
.end method
