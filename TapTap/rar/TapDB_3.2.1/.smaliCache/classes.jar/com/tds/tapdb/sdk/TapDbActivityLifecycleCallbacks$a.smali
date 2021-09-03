.class Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks$a;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;


# direct methods
.method constructor <init>(Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks$a;->a:Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x64

    if-eq v0, v1, :cond_4d

    const/16 v1, 0x96

    if-eq v0, v1, :cond_47

    const/16 v1, 0xc8

    if-eq v0, v1, :cond_41

    const/16 p1, 0x12c

    if-eq v0, p1, :cond_13

    goto :goto_52

    :cond_13
    iget-object v0, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks$a;->a:Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;

    invoke-static {v0}, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->a(Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    iget-object v1, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks$a;->a:Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;

    invoke-static {v1}, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->b(Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;)Lcom/tds/tapdb/sdk/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tds/tapdb/sdk/a;->a(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks$a;->a:Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;

    invoke-static {v0}, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->b(Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;)Lcom/tds/tapdb/sdk/a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/tds/tapdb/sdk/a;->a(J)Z

    :cond_35
    iget-object v0, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks$a;->a:Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;

    invoke-static {v0}, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->c(Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_52

    :cond_41
    iget-object v0, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks$a;->a:Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;

    invoke-static {v0, p1}, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->c(Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;Landroid/os/Message;)V

    goto :goto_52

    :cond_47
    iget-object v0, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks$a;->a:Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;

    invoke-static {v0, p1}, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->b(Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;Landroid/os/Message;)V

    goto :goto_52

    :cond_4d
    iget-object v0, p0, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks$a;->a:Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;

    invoke-static {v0, p1}, Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;->a(Lcom/tds/tapdb/sdk/TapDbActivityLifecycleCallbacks;Landroid/os/Message;)V

    :goto_52
    return-void
.end method
