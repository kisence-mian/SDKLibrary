.class Lcom/JoyFramework/d/ay;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/JoyFramework/d/au;


# direct methods
.method constructor <init>(Lcom/JoyFramework/d/au;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 279
    iput-object p1, p0, Lcom/JoyFramework/d/ay;->d:Lcom/JoyFramework/d/au;

    iput-object p2, p0, Lcom/JoyFramework/d/ay;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/JoyFramework/d/ay;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/JoyFramework/d/ay;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 284
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/JoyFramework/d/az;

    invoke-direct {v1, p0}, Lcom/JoyFramework/d/az;-><init>(Lcom/JoyFramework/d/ay;)V

    iget-object v2, p0, Lcom/JoyFramework/d/ay;->d:Lcom/JoyFramework/d/au;

    .line 290
    invoke-static {v2}, Lcom/JoyFramework/d/au;->d(Lcom/JoyFramework/d/au;)I

    move-result v2

    int-to-long v2, v2

    .line 284
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_19

    .line 294
    :goto_18
    return-void

    .line 291
    :catch_19
    move-exception v0

    .line 292
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_18
.end method
