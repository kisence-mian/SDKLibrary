.class final Lcom/mintegral/msdk/c/c$1$1;
.super Ljava/lang/Object;
.source "SettingRequestController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/c/c$1;->a(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/c/c$1;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/c/c$1;)V
    .registers 2

    .prologue
    .line 59
    iput-object p1, p0, Lcom/mintegral/msdk/c/c$1$1;->a:Lcom/mintegral/msdk/c/c$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    .prologue
    .line 62
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 63
    invoke-static {}, Lcom/mintegral/msdk/c/b/a;->a()Lcom/mintegral/msdk/c/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/c/b/a;->e()V

    .line 64
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 65
    return-void
.end method
