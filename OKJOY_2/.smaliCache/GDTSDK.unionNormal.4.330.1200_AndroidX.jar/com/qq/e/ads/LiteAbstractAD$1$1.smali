.class Lcom/qq/e/ads/LiteAbstractAD$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qq/e/ads/LiteAbstractAD$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/qq/e/comm/pi/POFactory;

.field private synthetic b:Lcom/qq/e/ads/LiteAbstractAD$1;


# direct methods
.method constructor <init>(Lcom/qq/e/ads/LiteAbstractAD$1;Lcom/qq/e/comm/pi/POFactory;)V
    .registers 3

    iput-object p1, p0, Lcom/qq/e/ads/LiteAbstractAD$1$1;->b:Lcom/qq/e/ads/LiteAbstractAD$1;

    iput-object p2, p0, Lcom/qq/e/ads/LiteAbstractAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    :try_start_0
    iget-object v0, p0, Lcom/qq/e/ads/LiteAbstractAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/qq/e/ads/LiteAbstractAD$1$1;->b:Lcom/qq/e/ads/LiteAbstractAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/LiteAbstractAD$1;->d:Lcom/qq/e/ads/LiteAbstractAD;

    iget-object v1, p0, Lcom/qq/e/ads/LiteAbstractAD$1$1;->b:Lcom/qq/e/ads/LiteAbstractAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/LiteAbstractAD$1;->d:Lcom/qq/e/ads/LiteAbstractAD;

    iget-object v2, p0, Lcom/qq/e/ads/LiteAbstractAD$1$1;->b:Lcom/qq/e/ads/LiteAbstractAD$1;

    iget-object v2, v2, Lcom/qq/e/ads/LiteAbstractAD$1;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/qq/e/ads/LiteAbstractAD$1$1;->a:Lcom/qq/e/comm/pi/POFactory;

    iget-object v4, p0, Lcom/qq/e/ads/LiteAbstractAD$1$1;->b:Lcom/qq/e/ads/LiteAbstractAD$1;

    iget-object v4, v4, Lcom/qq/e/ads/LiteAbstractAD$1;->b:Ljava/lang/String;

    iget-object v5, p0, Lcom/qq/e/ads/LiteAbstractAD$1$1;->b:Lcom/qq/e/ads/LiteAbstractAD$1;

    iget-object v5, v5, Lcom/qq/e/ads/LiteAbstractAD$1;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/qq/e/ads/LiteAbstractAD;->a(Landroid/content/Context;Lcom/qq/e/comm/pi/POFactory;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qq/e/ads/LiteAbstractAD;->a(Lcom/qq/e/ads/LiteAbstractAD;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/qq/e/ads/LiteAbstractAD$1$1;->b:Lcom/qq/e/ads/LiteAbstractAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/LiteAbstractAD$1;->d:Lcom/qq/e/ads/LiteAbstractAD;

    iget-object v1, p0, Lcom/qq/e/ads/LiteAbstractAD$1$1;->b:Lcom/qq/e/ads/LiteAbstractAD$1;

    iget-object v1, v1, Lcom/qq/e/ads/LiteAbstractAD$1;->d:Lcom/qq/e/ads/LiteAbstractAD;

    invoke-static {v1}, Lcom/qq/e/ads/LiteAbstractAD;->a(Lcom/qq/e/ads/LiteAbstractAD;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/LiteAbstractAD;->a(Ljava/lang/Object;)V

    goto :goto_4b

    :cond_31
    iget-object v0, p0, Lcom/qq/e/ads/LiteAbstractAD$1$1;->b:Lcom/qq/e/ads/LiteAbstractAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/LiteAbstractAD$1;->d:Lcom/qq/e/ads/LiteAbstractAD;

    const v1, 0x30da6

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/LiteAbstractAD;->a(I)V
    :try_end_3b
    .catchall {:try_start_0 .. :try_end_3b} :catchall_3c

    return-void

    :catchall_3c
    move-exception v0

    const-string v1, "Exception while init Core"

    invoke-static {v1, v0}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    iget-object v0, p0, Lcom/qq/e/ads/LiteAbstractAD$1$1;->b:Lcom/qq/e/ads/LiteAbstractAD$1;

    iget-object v0, v0, Lcom/qq/e/ads/LiteAbstractAD$1;->d:Lcom/qq/e/ads/LiteAbstractAD;

    const/16 v1, 0x7d1

    invoke-virtual {v0, v1}, Lcom/qq/e/ads/LiteAbstractAD;->a(I)V

    :goto_4b
    return-void
.end method
