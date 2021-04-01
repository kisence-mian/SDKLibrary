.class final Lcom/mintegral/msdk/system/a$2;
.super Ljava/lang/Object;
.source "MIntegralSDKImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/system/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/system/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/system/a;)V
    .registers 2

    .prologue
    .line 185
    iput-object p1, p0, Lcom/mintegral/msdk/system/a$2;->a:Lcom/mintegral/msdk/system/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 188
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 189
    invoke-static {}, Lcom/mintegral/msdk/c/b/a;->a()Lcom/mintegral/msdk/c/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/b/a;->e()V

    .line 190
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 191
    return-void
.end method
