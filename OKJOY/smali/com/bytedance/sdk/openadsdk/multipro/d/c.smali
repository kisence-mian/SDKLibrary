.class public Lcom/bytedance/sdk/openadsdk/multipro/d/c;
.super Ljava/lang/Object;
.source "SPMultiProviderImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/multipro/a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()Landroid/content/Context;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/d/c;->a:Landroid/content/Context;

    if-nez v0, :cond_9

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v0

    :goto_8
    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/d/c;->a:Landroid/content/Context;

    goto :goto_8
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
    const/4 v0, 0x0

    .line 120
    if-nez p2, :cond_4

    .line 124
    :goto_3
    return v0

    .line 123
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/d/c;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_3
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
    const/4 v3, 0x0

    .line 105
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 106
    const/4 v1, 0x2

    aget-object v1, v0, v1

    .line 107
    const-string v2, "clean"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 108
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/c;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sp_file_name"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 115
    :cond_23
    :goto_23
    return v3

    .line 111
    :cond_24
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 112
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/c;->c()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sp_file_name"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_23

    .line 113
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/c;->c()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sp_file_name"

    invoke-virtual {p1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23
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
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x2

    .line 46
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 47
    aget-object v0, v0, v5

    .line 48
    const-string v1, "get_all"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_95

    .line 49
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/c;->c()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sp_file_name"

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 50
    if-eqz v2, :cond_95

    .line 51
    new-instance v1, Landroid/database/MatrixCursor;

    new-array v0, v8, [Ljava/lang/String;

    const-string v3, "cursor_name"

    aput-object v3, v0, v7

    const-string v3, "cursor_type"

    aput-object v3, v0, v6

    const-string v3, "cursor_value"

    aput-object v3, v0, v5

    invoke-direct {v1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 52
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 53
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_43
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_93

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    new-array v4, v8, [Ljava/lang/Object;

    .line 55
    aput-object v0, v4, v7

    .line 56
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v4, v5

    .line 57
    aget-object v0, v4, v5

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_67

    .line 58
    const-string v0, "boolean"

    aput-object v0, v4, v6

    .line 68
    :cond_63
    :goto_63
    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_43

    .line 59
    :cond_67
    aget-object v0, v4, v5

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_72

    .line 60
    const-string v0, "string"

    aput-object v0, v4, v6

    goto :goto_63

    .line 61
    :cond_72
    aget-object v0, v4, v5

    instance-of v0, v0, Ljava/lang/Integer;

    if-eqz v0, :cond_7d

    .line 62
    const-string v0, "int"

    aput-object v0, v4, v6

    goto :goto_63

    .line 63
    :cond_7d
    aget-object v0, v4, v5

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_88

    .line 64
    const-string v0, "long"

    aput-object v0, v4, v6

    goto :goto_63

    .line 65
    :cond_88
    aget-object v0, v4, v5

    instance-of v0, v0, Ljava/lang/Float;

    if-eqz v0, :cond_63

    .line 66
    const-string v0, "float"

    aput-object v0, v4, v6

    goto :goto_63

    :cond_93
    move-object v0, v1

    .line 73
    :goto_94
    return-object v0

    :cond_95
    const/4 v0, 0x0

    goto :goto_94
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

    .line 90
    if-nez p2, :cond_4

    .line 100
    :cond_3
    :goto_3
    return-object v4

    .line 94
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 95
    const/4 v1, 0x2

    aget-object v1, v0, v1

    .line 96
    const/4 v1, 0x3

    aget-object v0, v0, v1

    .line 97
    const-string v1, "value"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_3

    .line 99
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/c;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "sp_file_name"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public a()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 32
    const-string v0, "t_sp"

    return-object v0
.end method

.method public a(Landroid/net/Uri;)Ljava/lang/String;
    .registers 7
    .param p1    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 79
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 80
    const/4 v1, 0x2

    aget-object v1, v0, v1

    .line 81
    const/4 v2, 0x3

    aget-object v0, v0, v2

    .line 82
    const-string v2, "contain"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/o;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "sp_file_name"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    :goto_39
    return-object v0

    :cond_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/c;->c()Landroid/content/Context;

    move-result-object v3

    const-string v4, "sp_file_name"

    invoke-virtual {p1, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_39
.end method

.method public a(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 26
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/d/c;->a:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public b()V
    .registers 1

    .prologue
    .line 38
    return-void
.end method
