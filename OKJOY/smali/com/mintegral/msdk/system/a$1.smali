.class final Lcom/mintegral/msdk/system/a$1;
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
    .line 170
    iput-object p1, p0, Lcom/mintegral/msdk/system/a$1;->a:Lcom/mintegral/msdk/system/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mintegral/msdk/system/a$1;->a:Lcom/mintegral/msdk/system/a;

    invoke-static {v0}, Lcom/mintegral/msdk/system/a;->a(Lcom/mintegral/msdk/system/a;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/system/a;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 174
    iget-object v0, p0, Lcom/mintegral/msdk/system/a$1;->a:Lcom/mintegral/msdk/system/a;

    invoke-static {v0}, Lcom/mintegral/msdk/system/a;->a(Lcom/mintegral/msdk/system/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.mintegral.msdk.click.AppReceiver"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/system/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 175
    iget-object v0, p0, Lcom/mintegral/msdk/system/a$1;->a:Lcom/mintegral/msdk/system/a;

    iget-object v1, p0, Lcom/mintegral/msdk/system/a$1;->a:Lcom/mintegral/msdk/system/a;

    invoke-static {v1}, Lcom/mintegral/msdk/system/a;->a(Lcom/mintegral/msdk/system/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/system/a;->a(Lcom/mintegral/msdk/system/a;Landroid/content/Context;)V

    .line 177
    :cond_25
    iget-object v0, p0, Lcom/mintegral/msdk/system/a$1;->a:Lcom/mintegral/msdk/system/a;

    invoke-static {v0}, Lcom/mintegral/msdk/system/a;->a(Lcom/mintegral/msdk/system/a;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.alphab.receiver.AlphabReceiver"

    invoke-static {v0, v1}, Lcom/mintegral/msdk/system/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 178
    iget-object v0, p0, Lcom/mintegral/msdk/system/a$1;->a:Lcom/mintegral/msdk/system/a;

    iget-object v1, p0, Lcom/mintegral/msdk/system/a$1;->a:Lcom/mintegral/msdk/system/a;

    invoke-static {v1}, Lcom/mintegral/msdk/system/a;->a(Lcom/mintegral/msdk/system/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/system/a;->b(Lcom/mintegral/msdk/system/a;Landroid/content/Context;)V

    .line 181
    :cond_3e
    return-void
.end method
