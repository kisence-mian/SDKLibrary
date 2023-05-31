.class final Lcom/mintegral/msdk/base/controller/b$2;
.super Ljava/lang/Object;
.source "SDKController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/base/controller/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/controller/b;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/base/controller/b;)V
    .registers 2

    .prologue
    .line 322
    iput-object p1, p0, Lcom/mintegral/msdk/base/controller/b$2;->a:Lcom/mintegral/msdk/base/controller/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .prologue
    .line 325
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 327
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->e()V

    .line 328
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 329
    return-void
.end method
