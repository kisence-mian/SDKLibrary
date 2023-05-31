.class final Lcom/tramini/plugin/a/a/b$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/a/b;->a(Lcom/tramini/plugin/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tramini/plugin/b/a;

.field final synthetic b:Lcom/tramini/plugin/a/a/b;


# direct methods
.method constructor <init>(Lcom/tramini/plugin/a/a/b;Lcom/tramini/plugin/b/a;)V
    .registers 3

    .prologue
    .line 122
    iput-object p1, p0, Lcom/tramini/plugin/a/a/b$2;->b:Lcom/tramini/plugin/a/a/b;

    iput-object p2, p0, Lcom/tramini/plugin/a/a/b$2;->a:Lcom/tramini/plugin/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 127
    :try_start_1
    iget-object v1, p0, Lcom/tramini/plugin/a/a/b$2;->b:Lcom/tramini/plugin/a/a/b;

    invoke-static {v1}, Lcom/tramini/plugin/a/a/b;->a(Lcom/tramini/plugin/a/a/b;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    if-eqz v1, :cond_20

    .line 128
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tramini/plugin/a/a/b;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tramini/plugin/a/a/b$2;->b:Lcom/tramini/plugin/a/a/b;

    invoke-static {v2}, Lcom/tramini/plugin/a/a/b;->a(Lcom/tramini/plugin/a/a/b;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 129
    iget-object v1, p0, Lcom/tramini/plugin/a/a/b$2;->b:Lcom/tramini/plugin/a/a/b;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/tramini/plugin/a/a/b;->a(Lcom/tramini/plugin/a/a/b;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_20} :catch_6c

    .line 134
    :cond_20
    :goto_20
    :try_start_20
    iget-object v1, p0, Lcom/tramini/plugin/a/a/b$2;->b:Lcom/tramini/plugin/a/a/b;

    new-instance v2, Lcom/tramini/plugin/a/a;

    invoke-direct {v2}, Lcom/tramini/plugin/a/a;-><init>()V

    invoke-static {v1, v2}, Lcom/tramini/plugin/a/a/b;->a(Lcom/tramini/plugin/a/a/b;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 136
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 137
    const-string v1, "one.start.action"

    invoke-virtual {v3, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/tramini/plugin/a/a/b$2;->a:Lcom/tramini/plugin/b/a;

    if-eqz v1, :cond_58

    iget-object v0, p0, Lcom/tramini/plugin/a/a/b$2;->a:Lcom/tramini/plugin/b/a;

    invoke-virtual {v0}, Lcom/tramini/plugin/b/a;->c()Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    .line 140
    :goto_3f
    if-eqz v2, :cond_5a

    .line 141
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 142
    if-lez v4, :cond_5a

    .line 144
    const/4 v0, 0x0

    move v1, v0

    :goto_49
    if-ge v1, v4, :cond_5a

    .line 145
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_49

    :cond_58
    move-object v2, v0

    .line 139
    goto :goto_3f

    .line 150
    :cond_5a
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b$2;->b:Lcom/tramini/plugin/a/a/b;

    invoke-static {v0}, Lcom/tramini/plugin/a/a/b;->b(Lcom/tramini/plugin/a/a/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/tramini/plugin/a/a/b$2;->b:Lcom/tramini/plugin/a/a/b;

    invoke-static {v1}, Lcom/tramini/plugin/a/a/b;->a(Lcom/tramini/plugin/a/a/b;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_69
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_69} :catch_6a

    .line 157
    :goto_69
    return-void

    :catch_6a
    move-exception v0

    goto :goto_69

    :catch_6c
    move-exception v1

    goto :goto_20
.end method
