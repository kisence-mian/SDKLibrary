.class final Lcom/mintegral/msdk/base/utils/c$1;
.super Ljava/lang/Thread;
.source "CommonDeviceUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mintegral/msdk/base/utils/c;->b(Landroid/content/Context;)Ljava/lang/String;
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
    .line 144
    iput-object p1, p0, Lcom/mintegral/msdk/base/utils/c$1;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .prologue
    .line 148
    :try_start_0
    new-instance v0, Lcom/mintegral/msdk/oaid/a;

    iget-object v1, p0, Lcom/mintegral/msdk/base/utils/c$1;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mintegral/msdk/oaid/a;-><init>(Landroid/content/Context;)V

    .line 149
    new-instance v1, Lcom/mintegral/msdk/base/utils/c$1$1;

    invoke-direct {v1, p0}, Lcom/mintegral/msdk/base/utils/c$1$1;-><init>(Lcom/mintegral/msdk/base/utils/c$1;)V

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/oaid/a;->a(Lcom/mintegral/msdk/oaid/b;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_f} :catch_10

    .line 164
    :goto_f
    return-void

    .line 161
    :catch_10
    move-exception v0

    .line 162
    const-string v1, "CommonDeviceUtil"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/mintegral/msdk/base/utils/g;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method
