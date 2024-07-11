.class final Lcom/tramini/plugin/a/a/b$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tramini/plugin/a/a/b;->b(Lcom/tramini/plugin/b/a;)V
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

    .line 240
    iput-object p1, p0, Lcom/tramini/plugin/a/a/b$4;->b:Lcom/tramini/plugin/a/a/b;

    iput-object p2, p0, Lcom/tramini/plugin/a/a/b$4;->a:Lcom/tramini/plugin/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    .line 244
    :try_start_0
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b$4;->b:Lcom/tramini/plugin/a/a/b;

    invoke-static {v0}, Lcom/tramini/plugin/a/a/b;->a(Lcom/tramini/plugin/a/a/b;)Landroid/content/Context;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_0 .. :try_end_6} :catchall_68

    if-nez v0, :cond_9

    .line 245
    return-void

    .line 249
    :cond_9
    const/4 v0, 0x0

    :try_start_a
    iget-object v1, p0, Lcom/tramini/plugin/a/a/b$4;->b:Lcom/tramini/plugin/a/a/b;

    invoke-static {v1}, Lcom/tramini/plugin/a/a/b;->b(Lcom/tramini/plugin/a/a/b;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 250
    invoke-static {}, Lcom/tramini/plugin/a/a/b;->a()Lcom/tramini/plugin/a/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tramini/plugin/a/a/b;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/tramini/plugin/a/a/b$4;->b:Lcom/tramini/plugin/a/a/b;

    invoke-static {v2}, Lcom/tramini/plugin/a/a/b;->b(Lcom/tramini/plugin/a/a/b;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 251
    iget-object v1, p0, Lcom/tramini/plugin/a/a/b$4;->b:Lcom/tramini/plugin/a/a/b;

    invoke-static {v1, v0}, Lcom/tramini/plugin/a/a/b;->a(Lcom/tramini/plugin/a/a/b;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;
    :try_end_28
    .catchall {:try_start_a .. :try_end_28} :catchall_29

    .line 255
    :cond_28
    goto :goto_2a

    .line 253
    :catchall_29
    move-exception v1

    .line 256
    :goto_2a
    :try_start_2a
    iget-object v1, p0, Lcom/tramini/plugin/a/a/b$4;->b:Lcom/tramini/plugin/a/a/b;

    new-instance v2, Lcom/tramini/plugin/a/a;

    invoke-direct {v2}, Lcom/tramini/plugin/a/a;-><init>()V

    invoke-static {v1, v2}, Lcom/tramini/plugin/a/a/b;->a(Lcom/tramini/plugin/a/a/b;Landroid/content/BroadcastReceiver;)Landroid/content/BroadcastReceiver;

    .line 258
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 261
    iget-object v2, p0, Lcom/tramini/plugin/a/a/b$4;->a:Lcom/tramini/plugin/b/a;

    if-eqz v2, :cond_41

    invoke-virtual {v2}, Lcom/tramini/plugin/b/a;->d()Ljava/util/List;

    move-result-object v0

    .line 262
    :cond_41
    if-eqz v0, :cond_58

    .line 263
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 264
    if-lez v2, :cond_58

    .line 266
    const/4 v3, 0x0

    :goto_4a
    if-ge v3, v2, :cond_58

    .line 267
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 266
    add-int/lit8 v3, v3, 0x1

    goto :goto_4a

    .line 272
    :cond_58
    iget-object v0, p0, Lcom/tramini/plugin/a/a/b$4;->b:Lcom/tramini/plugin/a/a/b;

    invoke-static {v0}, Lcom/tramini/plugin/a/a/b;->a(Lcom/tramini/plugin/a/a/b;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/tramini/plugin/a/a/b$4;->b:Lcom/tramini/plugin/a/a/b;

    invoke-static {v2}, Lcom/tramini/plugin/a/a/b;->b(Lcom/tramini/plugin/a/a/b;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_67
    .catchall {:try_start_2a .. :try_end_67} :catchall_68

    .line 278
    return-void

    .line 274
    :catchall_68
    move-exception v0

    .line 279
    return-void
.end method
