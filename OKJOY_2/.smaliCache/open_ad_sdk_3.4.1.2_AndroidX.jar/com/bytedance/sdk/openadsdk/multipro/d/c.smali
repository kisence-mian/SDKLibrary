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

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private c()Landroid/content/Context;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/multipro/d/c;->a:Landroid/content/Context;

    if-nez v0, :cond_8

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v0

    :cond_8
    return-object v0
.end method


# virtual methods
.method public a(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5

    .line 120
    const/4 p3, 0x0

    if-nez p2, :cond_4

    .line 121
    return p3

    .line 123
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/d/c;->a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 124
    return p3
.end method

.method public a(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 7

    .line 105
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 106
    const/4 p3, 0x2

    aget-object p3, p2, p3

    .line 107
    const-string v0, "clean"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x0

    const-string v1, "sp_file_name"

    if-eqz p3, :cond_24

    .line 108
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/c;->c()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 109
    return v0

    .line 111
    :cond_24
    const/4 p3, 0x3

    aget-object p2, p2, p3

    .line 112
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/c;->c()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2, p2}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_40

    .line 113
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/c;->c()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p1, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :cond_40
    return v0
.end method

.method public a(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8

    .line 46
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    const-string p3, "/"

    invoke-virtual {p2, p3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 47
    const/4 p3, 0x2

    aget-object p2, p2, p3

    .line 48
    const-string p4, "get_all"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_90

    .line 49
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/c;->c()Landroid/content/Context;

    move-result-object p2

    const-string p4, "sp_file_name"

    invoke-virtual {p1, p4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 50
    if-eqz p1, :cond_90

    .line 51
    new-instance p2, Landroid/database/MatrixCursor;

    const-string p4, "cursor_name"

    const-string p5, "cursor_type"

    const-string v0, "cursor_value"

    filled-new-array {p4, p5, v0}, [Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 52
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p4

    .line 53
    invoke-interface {p4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_3c
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_8f

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    .line 54
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 55
    const/4 v1, 0x0

    aput-object p5, v0, v1

    .line 56
    invoke-interface {p1, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    aput-object p5, v0, p3

    .line 57
    aget-object p5, v0, p3

    instance-of p5, p5, Ljava/lang/Boolean;

    const/4 v1, 0x1

    if-eqz p5, :cond_60

    .line 58
    const-string p5, "boolean"

    aput-object p5, v0, v1

    goto :goto_8b

    .line 59
    :cond_60
    aget-object p5, v0, p3

    instance-of p5, p5, Ljava/lang/String;

    if-eqz p5, :cond_6b

    .line 60
    const-string p5, "string"

    aput-object p5, v0, v1

    goto :goto_8b

    .line 61
    :cond_6b
    aget-object p5, v0, p3

    instance-of p5, p5, Ljava/lang/Integer;

    if-eqz p5, :cond_76

    .line 62
    const-string p5, "int"

    aput-object p5, v0, v1

    goto :goto_8b

    .line 63
    :cond_76
    aget-object p5, v0, p3

    instance-of p5, p5, Ljava/lang/Long;

    if-eqz p5, :cond_81

    .line 64
    const-string p5, "long"

    aput-object p5, v0, v1

    goto :goto_8b

    .line 65
    :cond_81
    aget-object p5, v0, p3

    instance-of p5, p5, Ljava/lang/Float;

    if-eqz p5, :cond_8b

    .line 66
    const-string p5, "float"

    aput-object p5, v0, v1

    .line 68
    :cond_8b
    :goto_8b
    invoke-virtual {p2, v0}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 69
    goto :goto_3c

    .line 70
    :cond_8f
    return-object p2

    .line 73
    :cond_90
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 7

    .line 90
    const/4 v0, 0x0

    if-nez p2, :cond_4

    .line 91
    return-object v0

    .line 94
    :cond_4
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 95
    const/4 v2, 0x2

    aget-object v2, v1, v2

    .line 96
    const/4 v2, 0x3

    aget-object v1, v1, v2

    .line 97
    const-string v2, "value"

    invoke-virtual {p2, v2}, Landroid/content/ContentValues;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    .line 98
    if-eqz p2, :cond_29

    .line 99
    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/c;->c()Landroid/content/Context;

    move-result-object v2

    const-string v3, "sp_file_name"

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v1, p2}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    :cond_29
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    .line 32
    const-string v0, "t_sp"

    return-object v0
.end method

.method public a(Landroid/net/Uri;)Ljava/lang/String;
    .registers 7

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

    const-string v3, "sp_file_name"

    const-string v4, ""

    if-eqz v2, :cond_3a

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/p;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1, v0}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 85
    :cond_3a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/bytedance/sdk/openadsdk/multipro/d/c;->c()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {p1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/multipro/d/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/content/Context;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/multipro/d/c;->a:Landroid/content/Context;

    .line 27
    return-void
.end method

.method public b()V
    .registers 1

    .line 38
    return-void
.end method
