.class public Lcom/anythink/china/common/service/ApkDownloadService;
.super Landroid/app/Service;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/anythink/china/common/service/ApkDownloadService$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "extra_unique_id"

.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/anythink/china/common/a/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    const-class v0, Lcom/anythink/china/common/service/ApkDownloadService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/china/common/service/ApkDownloadService;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService;->c:Ljava/util/Map;

    return-void
.end method

.method static synthetic a(Lcom/anythink/china/common/service/ApkDownloadService;)Ljava/util/Map;
    .registers 1

    .line 26
    iget-object p0, p0, Lcom/anythink/china/common/service/ApkDownloadService;->c:Ljava/util/Map;

    return-object p0
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    .line 63
    :try_start_0
    invoke-virtual {p0}, Lcom/anythink/china/common/service/ApkDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/china/common/a;->f()Ljava/util/Map;

    move-result-object v0

    .line 64
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/anythink/china/common/a/e;

    .line 65
    if-nez v0, :cond_15

    .line 66
    return-void

    .line 69
    :cond_15
    new-instance v1, Lcom/anythink/china/common/a/d;

    invoke-direct {v1, v0}, Lcom/anythink/china/common/a/d;-><init>(Lcom/anythink/china/common/a/e;)V

    .line 70
    new-instance v0, Lcom/anythink/china/common/service/ApkDownloadService$1;

    invoke-direct {v0, p0}, Lcom/anythink/china/common/service/ApkDownloadService$1;-><init>(Lcom/anythink/china/common/service/ApkDownloadService;)V

    invoke-virtual {v1, v0}, Lcom/anythink/china/common/a/d;->a(Lcom/anythink/china/common/a/a$a;)V

    .line 121
    iget-object v0, p0, Lcom/anythink/china/common/service/ApkDownloadService;->c:Ljava/util/Map;

    if-eqz v0, :cond_29

    .line 122
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    .line 126
    :cond_29
    return-void

    .line 125
    :catchall_2a
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 127
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 133
    new-instance p1, Lcom/anythink/china/common/service/ApkDownloadService$a;

    invoke-direct {p1, p0}, Lcom/anythink/china/common/service/ApkDownloadService$a;-><init>(Lcom/anythink/china/common/service/ApkDownloadService;)V

    return-object p1
.end method

.method public onCreate()V
    .registers 1

    .line 138
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 139
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .line 149
    sget-object v0, Lcom/anythink/china/common/service/ApkDownloadService;->b:Ljava/lang/String;

    const-string v1, "onDestroy: "

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 151
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    .line 155
    if-eqz p1, :cond_37

    .line 156
    const-string p2, "extra_unique_id"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 157
    nop

    .line 1063
    :try_start_9
    invoke-virtual {p0}, Lcom/anythink/china/common/service/ApkDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/anythink/china/common/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/anythink/china/common/a;->f()Ljava/util/Map;

    move-result-object p2

    .line 1064
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/anythink/china/common/a/e;

    .line 1065
    if-nez p2, :cond_1e

    .line 1066
    goto :goto_37

    .line 1069
    :cond_1e
    new-instance p3, Lcom/anythink/china/common/a/d;

    invoke-direct {p3, p2}, Lcom/anythink/china/common/a/d;-><init>(Lcom/anythink/china/common/a/e;)V

    .line 1070
    new-instance p2, Lcom/anythink/china/common/service/ApkDownloadService$1;

    invoke-direct {p2, p0}, Lcom/anythink/china/common/service/ApkDownloadService$1;-><init>(Lcom/anythink/china/common/service/ApkDownloadService;)V

    invoke-virtual {p3, p2}, Lcom/anythink/china/common/a/d;->a(Lcom/anythink/china/common/a/a$a;)V

    .line 1121
    iget-object p2, p0, Lcom/anythink/china/common/service/ApkDownloadService;->c:Ljava/util/Map;

    if-eqz p2, :cond_32

    .line 1122
    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_32
    .catchall {:try_start_9 .. :try_end_32} :catchall_33

    .line 1126
    :cond_32
    goto :goto_37

    .line 1125
    :catchall_33
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 160
    :cond_37
    :goto_37
    const/4 p1, 0x2

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .registers 3

    .line 166
    invoke-virtual {p0}, Lcom/anythink/china/common/service/ApkDownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/anythink/china/common/b/a;->a(Landroid/content/Context;)Lcom/anythink/china/common/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/anythink/china/common/b/a;->a()V

    .line 168
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 169
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 4

    .line 143
    sget-object v0, Lcom/anythink/china/common/service/ApkDownloadService;->b:Ljava/lang/String;

    const-string v1, "onUnbind: "

    invoke-static {v0, v1}, Lcom/anythink/core/common/g/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
