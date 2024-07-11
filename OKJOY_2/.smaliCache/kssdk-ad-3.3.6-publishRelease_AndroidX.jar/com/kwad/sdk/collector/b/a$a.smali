.class Lcom/kwad/sdk/collector/b/a$a;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/sdk/collector/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/kwad/sdk/collector/b/a$1;)V
    .registers 2

    invoke-direct {p0}, Lcom/kwad/sdk/collector/b/a$a;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)Z
    .registers 3

    invoke-static {p1}, Lcom/kwad/sdk/utils/v;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method static synthetic a(Lcom/kwad/sdk/collector/b/a$a;Landroid/content/Context;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/kwad/sdk/collector/b/a$a;->a(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Landroid/app/Service;)V
    .registers 3

    if-eqz p1, :cond_a

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/kwad/sdk/collector/b/a$a;->a:Ljava/lang/ref/WeakReference;

    goto :goto_d

    :cond_a
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/kwad/sdk/collector/b/a$a;->a:Ljava/lang/ref/WeakReference;

    :goto_d
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object v0, p0, Lcom/kwad/sdk/collector/b/a$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Service;

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_12

    return-void

    :cond_12
    iget-object v1, p1, Landroid/os/Message;->replyTo:Landroid/os/Messenger;

    iget p1, p1, Landroid/os/Message;->what:I

    packed-switch p1, :pswitch_data_24

    goto :goto_22

    :pswitch_1a
    new-instance p1, Lcom/kwad/sdk/collector/b/a$a$1;

    invoke-direct {p1, p0, v1, v0}, Lcom/kwad/sdk/collector/b/a$a$1;-><init>(Lcom/kwad/sdk/collector/b/a$a;Landroid/os/Messenger;Landroid/app/Service;)V

    invoke-static {v0, p1}, Lcom/kwad/sdk/utils/AppStatusHelper;->a(Landroid/content/Context;Lcom/kwad/sdk/utils/AppStatusHelper$b;)V

    :goto_22
    return-void

    nop

    :pswitch_data_24
    .packed-switch 0x64
        :pswitch_1a
    .end packed-switch
.end method
