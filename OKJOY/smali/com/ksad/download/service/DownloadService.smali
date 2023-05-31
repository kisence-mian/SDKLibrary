.class public Lcom/ksad/download/service/DownloadService;
.super Landroid/app/Service;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ksad/download/service/DownloadService$a;
    }
.end annotation


# instance fields
.field private a:Lcom/ksad/download/d;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/ksad/download/service/DownloadService$a;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/ksad/download/service/DownloadService;->b:Ljava/util/Map;

    new-instance v0, Lcom/ksad/download/service/DownloadService$a;

    invoke-direct {v0, p0}, Lcom/ksad/download/service/DownloadService$a;-><init>(Lcom/ksad/download/service/DownloadService;)V

    iput-object v0, p0, Lcom/ksad/download/service/DownloadService;->c:Lcom/ksad/download/service/DownloadService$a;

    return-void
.end method

.method static synthetic a(Lcom/ksad/download/service/DownloadService;)Lcom/ksad/download/d;
    .registers 2

    iget-object v0, p0, Lcom/ksad/download/service/DownloadService;->a:Lcom/ksad/download/d;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .registers 6

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    const-string v0, "download_service_type_tag"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v0, "download_service_id_tag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "download_service_args_tag"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/ksad/download/DownloadTask$DownloadRequest;

    iget-object v1, p0, Lcom/ksad/download/service/DownloadService;->b:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    packed-switch v2, :pswitch_data_56

    goto :goto_2

    :pswitch_24
    iget-object v1, p0, Lcom/ksad/download/service/DownloadService;->a:Lcom/ksad/download/d;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/ksad/download/d;->a(Lcom/ksad/download/DownloadTask$DownloadRequest;Lcom/ksad/download/c;)I

    move-result v0

    iget-object v1, p0, Lcom/ksad/download/service/DownloadService;->b:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catch_35
    move-exception v0

    goto :goto_2

    :pswitch_37
    iget-object v0, p0, Lcom/ksad/download/service/DownloadService;->a:Lcom/ksad/download/d;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ksad/download/d;->a(I)V

    goto :goto_2

    :pswitch_41
    iget-object v0, p0, Lcom/ksad/download/service/DownloadService;->a:Lcom/ksad/download/d;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ksad/download/d;->e(I)V

    goto :goto_2

    :pswitch_4b
    iget-object v0, p0, Lcom/ksad/download/service/DownloadService;->a:Lcom/ksad/download/d;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/ksad/download/d;->d(I)V
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_54} :catch_35

    goto :goto_2

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_24
        :pswitch_4b
        :pswitch_41
        :pswitch_37
    .end packed-switch
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .registers 5

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Lcom/ksad/download/d;->e()Lcom/ksad/download/d;

    move-result-object v0

    iput-object v0, p0, Lcom/ksad/download/service/DownloadService;->a:Lcom/ksad/download/d;

    iget-object v0, p0, Lcom/ksad/download/service/DownloadService;->c:Lcom/ksad/download/service/DownloadService$a;

    const/4 v1, 0x1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onDestroy()V
    .registers 1

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 5

    invoke-direct {p0, p1}, Lcom/ksad/download/service/DownloadService;->a(Landroid/content/Intent;)V

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
