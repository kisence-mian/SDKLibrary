.class public Lcom/anythink/china/common/service/ApkDownloadService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/china/common/service/ApkDownloadService$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "extra_url"

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/anythink/china/common/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/china/common/service/ApkDownloadService;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService;->c:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/anythink/china/common/service/ApkDownloadService;)Ljava/util/Map;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService;->c:Ljava/util/Map;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 56
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/china/common/service/ApkDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/china/common/a;->f()Ljava/util/Map;

    move-result-object v0

    .line 57
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/a/c;

    .line 58
    if-nez v0, :cond_15

    .line 120
    :cond_14
    :goto_14
    return-void

    .line 62
    :cond_15
    new-instance v1, Lcom/anythink/china/common/a/b;

    invoke-direct {v1, v0}, Lcom/anythink/china/common/a/b;-><init>(Lcom/anythink/china/common/a/c;)V

    .line 63
    new-instance v0, Lcom/anythink/china/common/service/ApkDownloadService$1;

    invoke-direct {v0, p0}, Lcom/anythink/china/common/service/ApkDownloadService$1;-><init>(Lcom/anythink/china/common/service/ApkDownloadService;)V

    invoke-virtual {v1, v0}, Lcom/anythink/china/common/a/b;->a(Lcom/anythink/china/common/a/a$a;)V

    .line 114
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService;->c:Ljava/util/Map;

    if-eqz v0, :cond_14

    .line 115
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService;->c:Ljava/util/Map;

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_14

    .line 118
    :catch_2c
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_14
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 126
    new-instance v0, Lcom/anythink/china/common/service/ApkDownloadService$a;

    invoke-direct {v0, p0}, Lcom/anythink/china/common/service/ApkDownloadService$a;-><init>(Lcom/anythink/china/common/service/ApkDownloadService;)V

    return-object v0
.end method

.method public onCreate()V
    .registers 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 132
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 142
    sget-object v0, Lcom/anythink/china/common/service/ApkDownloadService;->b:Ljava/lang/String;

    const-string v1, "onDestroy: "

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 144
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 7

    .prologue
    .line 148
    if-eqz p1, :cond_1c

    .line 149
    const-string v0, "extra_url"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1056
    :try_start_8
    invoke-virtual {p0}, Lcom/anythink/china/common/service/ApkDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/china/common/a;->f()Ljava/util/Map;

    move-result-object v0

    .line 1057
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/a/c;

    .line 1058
    if-nez v0, :cond_1e

    .line 153
    :cond_1c
    :goto_1c
    const/4 v0, 0x2

    return v0

    .line 1062
    :cond_1e
    new-instance v2, Lcom/anythink/china/common/a/b;

    invoke-direct {v2, v0}, Lcom/anythink/china/common/a/b;-><init>(Lcom/anythink/china/common/a/c;)V

    .line 1063
    new-instance v0, Lcom/anythink/china/common/service/ApkDownloadService$1;

    invoke-direct {v0, p0}, Lcom/anythink/china/common/service/ApkDownloadService$1;-><init>(Lcom/anythink/china/common/service/ApkDownloadService;)V

    invoke-virtual {v2, v0}, Lcom/anythink/china/common/a/b;->a(Lcom/anythink/china/common/a/a$a;)V

    .line 1114
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService;->c:Ljava/util/Map;

    if-eqz v0, :cond_1c

    .line 1115
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService;->c:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_34} :catch_35

    goto :goto_1c

    .line 1118
    :catch_35
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1c
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .registers 3

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/anythink/china/common/service/ApkDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/china/common/b/a;->a()V

    .line 161
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 162
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 4

    .prologue
    .line 136
    sget-object v0, Lcom/anythink/china/common/service/ApkDownloadService;->b:Ljava/lang/String;

    const-string v1, "onUnbind: "

    invoke-static {v0, v1}, Lcom/anythink/core/b/g/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
