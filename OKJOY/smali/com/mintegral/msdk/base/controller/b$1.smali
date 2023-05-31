.class final Lcom/mintegral/msdk/base/controller/b$1;
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
    .line 306
    iput-object p1, p0, Lcom/mintegral/msdk/base/controller/b$1;->a:Lcom/mintegral/msdk/base/controller/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 310
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 312
    invoke-static {}, Lcom/mintegral/msdk/base/controller/b;->e()V

    .line 313
    iget-object v0, p0, Lcom/mintegral/msdk/base/controller/b$1;->a:Lcom/mintegral/msdk/base/controller/b;

    iget-object v1, p0, Lcom/mintegral/msdk/base/controller/b$1;->a:Lcom/mintegral/msdk/base/controller/b;

    invoke-static {v1}, Lcom/mintegral/msdk/base/controller/b;->a(Lcom/mintegral/msdk/base/controller/b;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/controller/b;->a(Lcom/mintegral/msdk/base/controller/b;Ljava/lang/String;)V

    .line 314
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 315
    return-void
.end method
