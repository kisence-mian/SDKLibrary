.class Lcom/qq/e/ads/AbstractAD$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/e/ads/AbstractAD$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/qq/e/comm/pi/POFactory;

.field private synthetic b:Lcom/qq/e/ads/AbstractAD$1;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/AbstractAD$1;Lcom/qq/e/comm/pi/POFactory;)V
    .registers 3
    .param p1, "this$1"    # Lcom/qq/e/ads/AbstractAD$1;

    .prologue
    .local p0, "this":Lcom/qq/e/ads/AbstractAD$1$1;, "Lcom/qq/e/ads/AbstractAD$1$1;"
    iput-object p1, p0, Lcom/qq/e/ads/AbstractAD$1$1;->b:Lcom/qq/e/ads/AbstractAD$1;

    iput-object p2, p0, Lcom/qq/e/ads/AbstractAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    const/4 v6, 0x1

    :try_start_1
    iget-object v0, p0, Lcom/qq/e/ads/AbstractAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    if-eqz v0, :cond_6c

    iget-object v0, p0, Lcom/qq/e/ads/AbstractAD$1$1;->b:Lcom/qq/e/ads/AbstractAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/AbstractAD$1;->e:Lcom/qq/e/ads/AbstractAD;

    iget-object v1, p0, Lcom/qq/e/ads/AbstractAD$1$1;->b:Lcom/qq/e/ads/AbstractAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/AbstractAD$1;->e:Lcom/qq/e/ads/AbstractAD;

    iget-object v2, p0, Lcom/qq/e/ads/AbstractAD$1$1;->b:Lcom/qq/e/ads/AbstractAD$1;

    iget-object v2, v2, Lcom/qq/e/ads/AbstractAD$1;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/qq/e/ads/AbstractAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    iget-object v4, p0, Lcom/qq/e/ads/AbstractAD$1$1;->b:Lcom/qq/e/ads/AbstractAD$1;

    iget-object v4, v4, Lcom/qq/e/ads/AbstractAD$1;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/qq/e/ads/AbstractAD$1$1;->b:Lcom/qq/e/ads/AbstractAD$1;

    iget-object v5, v5, Lcom/qq/e/ads/AbstractAD$1;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/qq/e/ads/AbstractAD;->a(Landroid/content/Context;Lcom/qq/e/comm/pi/POFactory;Ljava/lang/String;Ljava/lang/String;)Lcom/qq/e/comm/pi/ADI;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qq/e/ads/AbstractAD;->a(Lcom/qq/e/ads/AbstractAD;Lcom/qq/e/comm/pi/ADI;)Lcom/qq/e/comm/pi/ADI;

    iget-object v0, p0, Lcom/qq/e/ads/AbstractAD$1$1;->b:Lcom/qq/e/ads/AbstractAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/AbstractAD$1;->e:Lcom/qq/e/ads/AbstractAD;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qq/e/ads/AbstractAD;->a(Lcom/qq/e/ads/AbstractAD;Z)Z

    iget-object v0, p0, Lcom/qq/e/ads/AbstractAD$1$1;->b:Lcom/qq/e/ads/AbstractAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/AbstractAD$1;->e:Lcom/qq/e/ads/AbstractAD;

    invoke-static {v0}, Lcom/qq/e/ads/AbstractAD;->a(Lcom/qq/e/ads/AbstractAD;)Lcom/qq/e/ads/cfg/BrowserType;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/qq/e/ads/AbstractAD$1$1;->b:Lcom/qq/e/ads/AbstractAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/AbstractAD$1;->e:Lcom/qq/e/ads/AbstractAD;

    iget-object v1, p0, Lcom/qq/e/ads/AbstractAD$1$1;->b:Lcom/qq/e/ads/AbstractAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/AbstractAD$1;->e:Lcom/qq/e/ads/AbstractAD;

    invoke-static {v1}, Lcom/qq/e/ads/AbstractAD;->a(Lcom/qq/e/ads/AbstractAD;)Lcom/qq/e/ads/cfg/BrowserType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/AbstractAD;->setBrowserType(Lcom/qq/e/ads/cfg/BrowserType;)V

    :cond_43
    iget-object v0, p0, Lcom/qq/e/ads/AbstractAD$1$1;->b:Lcom/qq/e/ads/AbstractAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/AbstractAD$1;->e:Lcom/qq/e/ads/AbstractAD;

    invoke-static {v0}, Lcom/qq/e/ads/AbstractAD;->b(Lcom/qq/e/ads/AbstractAD;)Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    move-result-object v0

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/qq/e/ads/AbstractAD$1$1;->b:Lcom/qq/e/ads/AbstractAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/AbstractAD$1;->e:Lcom/qq/e/ads/AbstractAD;

    iget-object v1, p0, Lcom/qq/e/ads/AbstractAD$1$1;->b:Lcom/qq/e/ads/AbstractAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/AbstractAD$1;->e:Lcom/qq/e/ads/AbstractAD;

    invoke-static {v1}, Lcom/qq/e/ads/AbstractAD;->b(Lcom/qq/e/ads/AbstractAD;)Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/AbstractAD;->setDownAPPConfirmPolicy(Lcom/qq/e/ads/cfg/DownAPPConfirmPolicy;)V

    :cond_5c
    iget-object v0, p0, Lcom/qq/e/ads/AbstractAD$1$1;->b:Lcom/qq/e/ads/AbstractAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/AbstractAD$1;->e:Lcom/qq/e/ads/AbstractAD;

    iget-object v1, p0, Lcom/qq/e/ads/AbstractAD$1$1;->b:Lcom/qq/e/ads/AbstractAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/AbstractAD$1;->e:Lcom/qq/e/ads/AbstractAD;

    invoke-static {v1}, Lcom/qq/e/ads/AbstractAD;->c(Lcom/qq/e/ads/AbstractAD;)Lcom/qq/e/comm/pi/ADI;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/AbstractAD;->a(Lcom/qq/e/comm/pi/ADI;)V

    :goto_6b
    return-void

    :cond_6c
    iget-object v0, p0, Lcom/qq/e/ads/AbstractAD$1$1;->b:Lcom/qq/e/ads/AbstractAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/AbstractAD$1;->e:Lcom/qq/e/ads/AbstractAD;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/qq/e/ads/AbstractAD;->a(Lcom/qq/e/ads/AbstractAD;Z)Z

    iget-object v0, p0, Lcom/qq/e/ads/AbstractAD$1$1;->b:Lcom/qq/e/ads/AbstractAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/AbstractAD$1;->e:Lcom/qq/e/ads/AbstractAD;

    iget-object v1, p0, Lcom/qq/e/ads/AbstractAD$1$1;->b:Lcom/qq/e/ads/AbstractAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/AbstractAD$1;->d:Lcom/qq/e/ads/AbstractAD$BasicADListener;

    const v2, 0x30da6

    invoke-virtual {v0, v1, v2}, Lcom/qq/e/ads/AbstractAD;->a(Lcom/qq/e/ads/AbstractAD$BasicADListener;I)V
    :try_end_82
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_82} :catch_83

    goto :goto_6b

    :catch_83
    move-exception v0

    const-string v1, "Exception while init Core"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/qq/e/comm/managers/GDTADManager;->getInstance()Lcom/qq/e/comm/managers/GDTADManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qq/e/comm/managers/GDTADManager;->getPM()Lcom/qq/e/comm/managers/plugin/PM;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/qq/e/comm/managers/plugin/PM;->autoRollbackPlugin(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/qq/e/ads/AbstractAD$1$1;->b:Lcom/qq/e/ads/AbstractAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/AbstractAD$1;->e:Lcom/qq/e/ads/AbstractAD;

    invoke-static {v0, v6}, Lcom/qq/e/ads/AbstractAD;->a(Lcom/qq/e/ads/AbstractAD;Z)Z

    iget-object v0, p0, Lcom/qq/e/ads/AbstractAD$1$1;->b:Lcom/qq/e/ads/AbstractAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/AbstractAD$1;->e:Lcom/qq/e/ads/AbstractAD;

    iget-object v1, p0, Lcom/qq/e/ads/AbstractAD$1$1;->b:Lcom/qq/e/ads/AbstractAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/AbstractAD$1;->d:Lcom/qq/e/ads/AbstractAD$BasicADListener;

    const/16 v2, 0x7d1

    invoke-virtual {v0, v1, v2}, Lcom/qq/e/ads/AbstractAD;->a(Lcom/qq/e/ads/AbstractAD$BasicADListener;I)V

    goto :goto_6b
.end method
