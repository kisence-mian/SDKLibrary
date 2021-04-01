.class Lcom/didi/virtualapk/internal/LoadedPlugin$1;
.super Ljava/lang/Object;
.source "LoadedPlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/didi/virtualapk/internal/LoadedPlugin;->invokeApplication()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

.field final synthetic val$temp:[Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/didi/virtualapk/internal/LoadedPlugin;[Ljava/lang/Exception;)V
    .registers 3
    .param p1, "this$0"    # Lcom/didi/virtualapk/internal/LoadedPlugin;

    .prologue
    .line 290
    iput-object p1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$1;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iput-object p2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$1;->val$temp:[Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 293
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$1;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v1, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;

    if-eqz v1, :cond_8

    .line 301
    :goto_7
    return-void

    .line 297
    :cond_8
    :try_start_8
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$1;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v2, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$1;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$1;->this$0:Lcom/didi/virtualapk/internal/LoadedPlugin;

    iget-object v4, v4, Lcom/didi/virtualapk/internal/LoadedPlugin;->mPluginManager:Lcom/didi/virtualapk/PluginManager;

    invoke-virtual {v4}, Lcom/didi/virtualapk/PluginManager;->getInstrumentation()Lcom/didi/virtualapk/internal/VAInstrumentation;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/didi/virtualapk/internal/LoadedPlugin;->makeApplication(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    move-result-object v2

    iput-object v2, v1, Lcom/didi/virtualapk/internal/LoadedPlugin;->mApplication:Landroid/app/Application;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_1b} :catch_1c

    goto :goto_7

    .line 298
    :catch_1c
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/didi/virtualapk/internal/LoadedPlugin$1;->val$temp:[Ljava/lang/Exception;

    aput-object v0, v1, v5

    goto :goto_7
.end method
