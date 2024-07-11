.class Lcom/kwad/sdk/utils/AppStatusHelper$c;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/utils/AppStatusHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/utils/AppStatusHelper$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/utils/AppStatusHelper$c;-><init>()V

    return-void
.end method

.method private static a(Ljava/util/ArrayList;)V
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/kwad/sdk/utils/AppStatusHelper$AppRunningInfo;",
            ">;)V"
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-static {p0}, Lcom/kwad/sdk/utils/AppStatusHelper$a;->a(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_c

    invoke-static {p0}, Lcom/kwad/sdk/core/report/e;->a(Lorg/json/JSONArray;)V

    :cond_c
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_5e

    goto :goto_5d

    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3c

    const/4 v0, 0x0

    :try_start_10
    const-string v1, "data"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_18} :catch_1a

    move-object v0, p1

    goto :goto_1b

    :catch_1a
    move-exception p1

    :goto_1b
    if-eqz v0, :cond_3c

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClientHandler: handleMessage data size: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "AppStatusHelper"

    invoke-static {v1, p1}, Lcom/kwad/sdk/core/d/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/kwad/sdk/utils/AppStatusHelper$c;->a(Ljava/util/ArrayList;)V

    :cond_3c
    invoke-static {}, Lcom/kwad/sdk/utils/AppStatusHelper;->d()Ljava/lang/ref/WeakReference;

    move-result-object p1

    if-eqz p1, :cond_5d

    invoke-static {}, Lcom/kwad/sdk/utils/AppStatusHelper;->d()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5d

    invoke-static {}, Lcom/kwad/sdk/utils/AppStatusHelper;->d()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {}, Lcom/kwad/sdk/utils/AppStatusHelper;->e()Landroid/content/ServiceConnection;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/kwad/sdk/collector/b/a;->b(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    :cond_5d
    :goto_5d
    return-void

    :pswitch_data_5e
    .packed-switch 0x65
        :pswitch_9
    .end packed-switch
.end method
