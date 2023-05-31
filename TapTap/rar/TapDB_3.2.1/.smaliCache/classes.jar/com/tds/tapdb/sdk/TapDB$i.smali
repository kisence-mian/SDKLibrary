.class final Lcom/tds/tapdb/sdk/TapDB$i;
.super Landroid/os/ResultReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tds/tapdb/sdk/TapDB;->b(Landroid/content/Context;Z)Lcom/tds/tapdb/sdk/TapDB$x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tds/tapdb/sdk/TapDB$x;

.field final synthetic b:Z

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/tds/tapdb/sdk/TapDB$x;ZLandroid/content/Context;)V
    .registers 5

    iput-object p2, p0, Lcom/tds/tapdb/sdk/TapDB$i;->a:Lcom/tds/tapdb/sdk/TapDB$x;

    iput-boolean p3, p0, Lcom/tds/tapdb/sdk/TapDB$i;->b:Z

    iput-object p4, p0, Lcom/tds/tapdb/sdk/TapDB$i;->c:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .registers 5

    const-string v0, "unified_id_result_param"

    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    :try_start_5
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_38

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_38

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get did success:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tds/tapdb/b/n;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tds/tapdb/sdk/TapDB$i;->a:Lcom/tds/tapdb/sdk/TapDB$x;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/tds/tapdb/sdk/TapDB$x;->a(Ljava/lang/String;)V

    :cond_38
    iget-boolean p1, p0, Lcom/tds/tapdb/sdk/TapDB$i;->b:Z
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3a} :catch_53

    if-eqz p1, :cond_3f

    const-string p1, "wake_taptap"

    goto :goto_41

    :cond_3f
    const-string p1, "service_directly"

    :goto_41
    :try_start_41
    iget-object p2, p0, Lcom/tds/tapdb/sdk/TapDB$i;->c:Landroid/content/Context;

    iget-object v0, p0, Lcom/tds/tapdb/sdk/TapDB$i;->a:Lcom/tds/tapdb/sdk/TapDB$x;

    invoke-static {v0}, Lcom/tds/tapdb/sdk/TapDB$x;->a(Lcom/tds/tapdb/sdk/TapDB$x;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, p1}, Lcom/tds/tapdb/sdk/TapDB;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/tds/tapdb/sdk/TapDB$i;->a:Lcom/tds/tapdb/sdk/TapDB$x;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/tds/tapdb/sdk/TapDB$x;->a(Z)V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_52} :catch_53

    goto :goto_57

    :catch_53
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_57
    return-void
.end method
