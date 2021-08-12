.class public Lcom/anythink/core/common/l;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lcom/anythink/core/common/l;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 30
    const-class v0, Lcom/anythink/core/common/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/common/l;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/anythink/core/common/l;->c:Landroid/content/Context;

    .line 37
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/common/l;)Landroid/content/Context;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/anythink/core/common/l;->c:Landroid/content/Context;

    return-object p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/anythink/core/common/l;
    .registers 3

    const-class v0, Lcom/anythink/core/common/l;

    monitor-enter v0

    .line 40
    :try_start_3
    sget-object v1, Lcom/anythink/core/common/l;->b:Lcom/anythink/core/common/l;

    if-nez v1, :cond_18

    .line 41
    monitor-enter v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_1c

    .line 42
    :try_start_8
    sget-object v1, Lcom/anythink/core/common/l;->b:Lcom/anythink/core/common/l;

    if-nez v1, :cond_13

    .line 43
    new-instance v1, Lcom/anythink/core/common/l;

    invoke-direct {v1, p0}, Lcom/anythink/core/common/l;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/anythink/core/common/l;->b:Lcom/anythink/core/common/l;

    .line 45
    :cond_13
    monitor-exit v0

    goto :goto_18

    :catchall_15
    move-exception p0

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_8 .. :try_end_17} :catchall_15

    :try_start_17
    throw p0

    .line 47
    :cond_18
    :goto_18
    sget-object p0, Lcom/anythink/core/common/l;->b:Lcom/anythink/core/common/l;
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1c

    monitor-exit v0

    return-object p0

    .line 39
    :catchall_1c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static synthetic a(Lcom/anythink/core/common/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/d/d;)V
    .registers 7

    .line 29
    nop

    .line 1141
    iget-object v0, p0, Lcom/anythink/core/common/l;->c:Landroid/content/Context;

    if-eqz v0, :cond_3f

    .line 1146
    :try_start_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1147
    const-string p1, "common"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1148
    const-string p1, "data"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1149
    const-string p1, "adsourceId"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1150
    const-string p1, "networkType"

    invoke-virtual {p5}, Lcom/anythink/core/common/d/d;->y()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1151
    const-string p1, "format"

    invoke-virtual {p5}, Lcom/anythink/core/common/d/d;->G()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1153
    iget-object p1, p0, Lcom/anythink/core/common/l;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1154
    iget-object p0, p0, Lcom/anythink/core/common/l;->c:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_3e

    .line 1157
    return-void

    .line 1155
    :catchall_3e
    move-exception p0

    .line 29
    :cond_3f
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/common/d/d;)V
    .registers 7

    .line 141
    iget-object v0, p0, Lcom/anythink/core/common/l;->c:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 142
    return-void

    .line 146
    :cond_5
    :try_start_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    const-string p1, "common"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string p1, "data"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    const-string p1, "adsourceId"

    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    const-string p1, "networkType"

    invoke-virtual {p5}, Lcom/anythink/core/common/d/d;->y()I

    move-result p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    const-string p1, "format"

    invoke-virtual {p5}, Lcom/anythink/core/common/d/d;->G()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 153
    iget-object p1, p0, Lcom/anythink/core/common/l;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    iget-object p1, p0, Lcom/anythink/core/common/l;->c:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3d
    .catchall {:try_start_5 .. :try_end_3d} :catchall_3e

    .line 157
    return-void

    .line 155
    :catchall_3e
    move-exception p1

    .line 159
    return-void
.end method


# virtual methods
.method public final a(ILcom/anythink/core/common/d/e;Lcom/anythink/core/c/a;)V
    .registers 5

    .line 52
    :try_start_0
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    new-instance v0, Lcom/anythink/core/common/l$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/anythink/core/common/l$1;-><init>(Lcom/anythink/core/common/l;Lcom/anythink/core/common/d/e;ILcom/anythink/core/c/a;)V

    invoke-static {v0}, Lcom/anythink/core/common/b/g;->b(Ljava/lang/Runnable;)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    .line 109
    return-void

    .line 107
    :catchall_c
    move-exception p1

    .line 110
    return-void
.end method

.method public final a(Lcom/anythink/core/c/a;)V
    .registers 3

    .line 113
    invoke-static {}, Lcom/anythink/core/common/b/g;->a()Lcom/anythink/core/common/b/g;

    new-instance v0, Lcom/anythink/core/common/l$2;

    invoke-direct {v0, p0, p1}, Lcom/anythink/core/common/l$2;-><init>(Lcom/anythink/core/common/l;Lcom/anythink/core/c/a;)V

    invoke-static {v0}, Lcom/anythink/core/common/b/g;->b(Ljava/lang/Runnable;)V

    .line 138
    return-void
.end method
