.class public final Lcom/anythink/core/common/b/h;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/anythink/core/common/b/h;


# instance fields
.field final a:I

.field b:Landroid/content/Context;

.field c:I

.field private e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const/16 v0, -0x64

    iput v0, p0, Lcom/anythink/core/common/b/h;->a:I

    .line 39
    const/4 v0, 0x2

    iput v0, p0, Lcom/anythink/core/common/b/h;->c:I

    .line 41
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v1, p0, Lcom/anythink/core/common/b/h;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    if-eqz p1, :cond_1a

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/b/h;->b:Landroid/content/Context;

    .line 47
    :cond_1a
    iget-object p1, p0, Lcom/anythink/core/common/b/h;->b:Landroid/content/Context;

    sget-object v1, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    const-string v2, "UPLOAD_DATA_LEVEL"

    invoke-static {p1, v1, v2, v0}, Lcom/anythink/core/common/g/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/anythink/core/common/b/h;->c:I

    .line 49
    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/anythink/core/common/b/h;
    .registers 3

    const-class v0, Lcom/anythink/core/common/b/h;

    monitor-enter v0

    .line 52
    :try_start_3
    sget-object v1, Lcom/anythink/core/common/b/h;->d:Lcom/anythink/core/common/b/h;

    if-nez v1, :cond_e

    .line 53
    new-instance v1, Lcom/anythink/core/common/b/h;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/b/h;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/anythink/core/common/b/h;->d:Lcom/anythink/core/common/b/h;

    .line 55
    :cond_e
    sget-object p0, Lcom/anythink/core/common/b/h;->d:Lcom/anythink/core/common/b/h;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    .line 51
    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/anythink/core/common/b/h;)Ljava/util/concurrent/ConcurrentHashMap;
    .registers 1

    .line 32
    iget-object p0, p0, Lcom/anythink/core/common/b/h;->e:Ljava/util/concurrent/ConcurrentHashMap;

    return-object p0
.end method


# virtual methods
.method public final a()I
    .registers 2

    .line 65
    iget v0, p0, Lcom/anythink/core/common/b/h;->c:I

    return v0
.end method

.method public final a(I)V
    .registers 5

    .line 59
    iput p1, p0, Lcom/anythink/core/common/b/h;->c:I

    .line 60
    iget-object v0, p0, Lcom/anythink/core/common/b/h;->b:Landroid/content/Context;

    sget-object v1, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    const-string v2, "UPLOAD_DATA_LEVEL"

    invoke-static {v0, v1, v2, p1}, Lcom/anythink/core/common/g/m;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    return-void
.end method

.method public final a(Landroid/content/Context;Lcom/anythink/core/api/ATGDPRAuthCallback;)V
    .registers 5

    .line 164
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/b/h$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/anythink/core/common/b/h$1;-><init>(Lcom/anythink/core/common/b/h;Lcom/anythink/core/api/ATGDPRAuthCallback;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/b/g;->a(Ljava/lang/Runnable;)V

    .line 173
    return-void
.end method

.method public final a(Lcom/anythink/core/api/NetTrafficeCallback;)V
    .registers 6

    .line 181
    iget-object v0, p0, Lcom/anythink/core/common/b/h;->b:Landroid/content/Context;

    sget-object v1, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    const-string v2, "EU_INFO"

    const/16 v3, -0x64

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/g/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 182
    const/4 v1, 0x0

    if-ne v0, v3, :cond_1d

    .line 183
    new-instance v0, Lcom/anythink/core/common/e/f;

    invoke-direct {v0}, Lcom/anythink/core/common/e/f;-><init>()V

    new-instance v2, Lcom/anythink/core/common/b/h$2;

    invoke-direct {v2, p0, p1}, Lcom/anythink/core/common/b/h$2;-><init>(Lcom/anythink/core/common/b/h;Lcom/anythink/core/api/NetTrafficeCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/anythink/core/common/e/f;->a(ILcom/anythink/core/common/e/g;)V

    return-void

    .line 239
    :cond_1d
    const/4 v2, 0x1

    if-ne v0, v2, :cond_26

    .line 240
    if-eqz p1, :cond_2b

    .line 241
    invoke-interface {p1, v2}, Lcom/anythink/core/api/NetTrafficeCallback;->onResultCallback(Z)V

    return-void

    .line 244
    :cond_26
    if-eqz p1, :cond_2b

    .line 245
    invoke-interface {p1, v1}, Lcom/anythink/core/api/NetTrafficeCallback;->onResultCallback(Z)V

    .line 249
    :cond_2b
    return-void
.end method

.method public final b(I)V
    .registers 4

    .line 252
    invoke-static {}, Lcom/anythink/core/common/g/a/a;->a()Lcom/anythink/core/common/g/a/a;

    move-result-object v0

    new-instance v1, Lcom/anythink/core/common/b/h$3;

    invoke-direct {v1, p0, p1}, Lcom/anythink/core/common/b/h$3;-><init>(Lcom/anythink/core/common/b/h;I)V

    invoke-virtual {v0, v1}, Lcom/anythink/core/common/g/a/a;->a(Ljava/lang/Runnable;)V

    .line 274
    return-void
.end method

.method public final b()Z
    .registers 6

    .line 74
    iget-object v0, p0, Lcom/anythink/core/common/b/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 77
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->p()Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_34

    .line 86
    :cond_1d
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->E()I

    move-result v3

    if-nez v3, :cond_24

    .line 87
    return v2

    .line 90
    :cond_24
    iget v3, p0, Lcom/anythink/core/common/b/h;->c:I

    .line 93
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->C()I

    move-result v4

    if-ne v4, v2, :cond_30

    .line 94
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->B()I

    move-result v3

    .line 97
    :cond_30
    if-nez v3, :cond_33

    .line 98
    return v2

    .line 100
    :cond_33
    return v1

    .line 78
    :cond_34
    :goto_34
    iget v0, p0, Lcom/anythink/core/common/b/h;->c:I

    if-ne v0, v2, :cond_39

    .line 79
    return v1

    .line 81
    :cond_39
    return v2
.end method

.method public final c()Z
    .registers 6

    .line 111
    iget-object v0, p0, Lcom/anythink/core/common/b/h;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/core/c/b;->a(Landroid/content/Context;)Lcom/anythink/core/c/b;

    move-result-object v0

    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/anythink/core/common/b/g;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/anythink/core/c/b;->b(Ljava/lang/String;)Lcom/anythink/core/c/a;

    move-result-object v0

    .line 114
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_45

    invoke-virtual {v0}, Lcom/anythink/core/c/a;->p()Z

    move-result v3

    if-eqz v3, :cond_1d

    goto :goto_45

    .line 122
    :cond_1d
    iget v3, p0, Lcom/anythink/core/common/b/h;->c:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2a

    .line 124
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->E()I

    move-result v0

    if-nez v0, :cond_29

    .line 125
    return v2

    .line 127
    :cond_29
    return v1

    .line 130
    :cond_2a
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->C()I

    move-result v3

    if-ne v3, v2, :cond_38

    .line 132
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->B()I

    move-result v0

    .line 133
    if-nez v0, :cond_37

    .line 134
    return v2

    .line 136
    :cond_37
    return v1

    .line 139
    :cond_38
    iget v3, p0, Lcom/anythink/core/common/b/h;->c:I

    if-nez v3, :cond_3d

    .line 140
    return v2

    .line 143
    :cond_3d
    invoke-virtual {v0}, Lcom/anythink/core/c/a;->E()I

    move-result v0

    if-nez v0, :cond_44

    .line 144
    return v2

    .line 146
    :cond_44
    return v1

    .line 115
    :cond_45
    :goto_45
    iget v0, p0, Lcom/anythink/core/common/b/h;->c:I

    if-ne v0, v2, :cond_4a

    .line 116
    return v1

    .line 118
    :cond_4a
    return v2
.end method

.method public final c(I)Z
    .registers 4

    .line 277
    iget-object v0, p0, Lcom/anythink/core/common/b/h;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/anythink/core/common/b/h;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1f

    goto :goto_21

    .line 280
    :cond_1f
    const/4 p1, 0x1

    return p1

    .line 278
    :cond_21
    :goto_21
    const/4 p1, 0x0

    return p1
.end method

.method public final d()Z
    .registers 5

    .line 158
    iget-object v0, p0, Lcom/anythink/core/common/b/h;->b:Landroid/content/Context;

    sget-object v1, Lcom/anythink/core/common/b/e;->n:Ljava/lang/String;

    const-string v2, "EU_INFO"

    const/16 v3, -0x64

    invoke-static {v0, v1, v2, v3}, Lcom/anythink/core/common/g/m;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 159
    const/4 v1, 0x1

    if-ne v0, v1, :cond_10

    return v1

    :cond_10
    const/4 v0, 0x0

    return v0
.end method
