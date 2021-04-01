.class final Lcom/mintegral/msdk/base/utils/c$2;
.super Ljava/lang/Object;
.source "CommonDeviceUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/base/utils/c;->r(Landroid/content/Context;)Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 677
    iput-object p1, p0, Lcom/mintegral/msdk/base/utils/c$2;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 681
    const/4 v0, 0x0

    .line 682
    :try_start_1
    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->L()I

    move-result v1

    const/16 v2, 0x11

    if-le v1, v2, :cond_f

    .line 683
    iget-object v0, p0, Lcom/mintegral/msdk/base/utils/c$2;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 685
    :cond_f
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_27

    invoke-static {}, Lcom/mintegral/msdk/base/utils/c;->M()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 686
    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 687
    iget-object v0, p0, Lcom/mintegral/msdk/base/utils/c$2;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/mintegral/msdk/base/utils/c;->B(Landroid/content/Context;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_27} :catch_28

    .line 692
    :cond_27
    :goto_27
    return-void

    .line 690
    :catch_28
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_27
.end method
