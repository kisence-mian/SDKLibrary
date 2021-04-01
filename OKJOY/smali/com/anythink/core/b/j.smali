.class public Lcom/anythink/core/b/j;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/lang/String;

.field private static b:Lcom/anythink/core/b/j;


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/anythink/core/b/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/core/b/j;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/core/b/j;->c:Landroid/content/Context;

    .line 29
    return-void
.end method

.method static synthetic a(Lcom/anythink/core/b/j;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/anythink/core/b/j;->c:Landroid/content/Context;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/anythink/core/b/j;
    .registers 3

    .prologue
    .line 32
    sget-object v0, Lcom/anythink/core/b/j;->b:Lcom/anythink/core/b/j;

    if-nez v0, :cond_13

    .line 33
    const-class v1, Lcom/anythink/core/b/j;

    monitor-enter v1

    .line 34
    :try_start_7
    sget-object v0, Lcom/anythink/core/b/j;->b:Lcom/anythink/core/b/j;

    if-nez v0, :cond_12

    .line 35
    new-instance v0, Lcom/anythink/core/b/j;

    invoke-direct {v0, p0}, Lcom/anythink/core/b/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/anythink/core/b/j;->b:Lcom/anythink/core/b/j;

    .line 37
    :cond_12
    monitor-exit v1
    :try_end_13
    .catchall {:try_start_7 .. :try_end_13} :catchall_16

    .line 39
    :cond_13
    sget-object v0, Lcom/anythink/core/b/j;->b:Lcom/anythink/core/b/j;

    return-object v0

    .line 37
    :catchall_16
    move-exception v0

    :try_start_17
    monitor-exit v1
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    throw v0
.end method

.method static synthetic a(Lcom/anythink/core/b/j;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/b/c/b;)V
    .registers 9

    .prologue
    .line 21
    .line 1130
    iget-object v0, p0, Lcom/anythink/core/b/j;->c:Landroid/content/Context;

    if-eqz v0, :cond_3c

    .line 1135
    :try_start_4
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1136
    const-string v1, "common"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1137
    const-string v1, "data"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1138
    const-string v1, "adsourceId"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1139
    const-string v1, "networkType"

    invoke-virtual {p5}, Lcom/anythink/core/b/c/b;->x()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1140
    const-string v1, "format"

    invoke-virtual {p5}, Lcom/anythink/core/b/c/b;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1142
    iget-object v1, p0, Lcom/anythink/core/b/j;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1143
    iget-object v1, p0, Lcom/anythink/core/b/j;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3c
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_3c} :catch_3d

    .line 1146
    :cond_3c
    :goto_3c
    return-void

    :catch_3d
    move-exception v0

    goto :goto_3c
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/core/b/c/b;)V
    .registers 9

    .prologue
    .line 130
    iget-object v0, p0, Lcom/anythink/core/b/j;->c:Landroid/content/Context;

    if-nez v0, :cond_5

    .line 148
    :goto_4
    return-void

    .line 135
    :cond_5
    :try_start_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 136
    const-string v1, "common"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    const-string v1, "data"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    const-string v1, "adsourceId"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 139
    const-string v1, "networkType"

    invoke-virtual {p5}, Lcom/anythink/core/b/c/b;->x()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 140
    const-string v1, "format"

    invoke-virtual {p5}, Lcom/anythink/core/b/c/b;->F()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    iget-object v1, p0, Lcom/anythink/core/b/j;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    iget-object v1, p0, Lcom/anythink/core/b/j;->c:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_3d} :catch_3e

    goto :goto_4

    .line 148
    :catch_3e
    move-exception v0

    goto :goto_4
.end method


# virtual methods
.method public final a(ILcom/anythink/core/b/c/c;Lcom/anythink/core/c/a;)V
    .registers 5

    .prologue
    .line 44
    :try_start_0
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    new-instance v0, Lcom/anythink/core/b/j$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/anythink/core/b/j$1;-><init>(Lcom/anythink/core/b/j;Lcom/anythink/core/b/c/c;ILcom/anythink/core/c/a;)V

    invoke-static {v0}, Lcom/anythink/core/b/a/e;->b(Ljava/lang/Runnable;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_b} :catch_c

    .line 102
    :goto_b
    return-void

    :catch_c
    move-exception v0

    goto :goto_b
.end method

.method public final a(Lcom/anythink/core/c/a;)V
    .registers 3

    .prologue
    .line 105
    invoke-static {}, Lcom/anythink/core/b/a/e;->a()Lcom/anythink/core/b/a/e;

    new-instance v0, Lcom/anythink/core/b/j$2;

    invoke-direct {v0, p0, p1}, Lcom/anythink/core/b/j$2;-><init>(Lcom/anythink/core/b/j;Lcom/anythink/core/c/a;)V

    invoke-static {v0}, Lcom/anythink/core/b/a/e;->b(Ljava/lang/Runnable;)V

    .line 127
    return-void
.end method
