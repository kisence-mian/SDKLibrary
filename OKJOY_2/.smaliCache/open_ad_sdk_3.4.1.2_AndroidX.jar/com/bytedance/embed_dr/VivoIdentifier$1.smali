.class Lcom/bytedance/embed_dr/VivoIdentifier$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bun/supplier/IIdentifierListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/embed_dr/VivoIdentifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/bytedance/embed_dr/VivoIdentifier;


# direct methods
.method constructor <init>(Lcom/bytedance/embed_dr/VivoIdentifier;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/bytedance/embed_dr/VivoIdentifier$1;->this$0:Lcom/bytedance/embed_dr/VivoIdentifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnSupport(ZLcom/bun/supplier/IdSupplier;)V
    .registers 6

    .line 24
    :try_start_0
    sget-object v0, Lcom/bytedance/embedapplog/ce;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OaidMiit#OnSupport isSupport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", supplier="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bytedance/embedapplog/bx;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    if-eqz p1, :cond_4b

    if-nez p2, :cond_27

    goto :goto_4b

    .line 28
    :cond_27
    iget-object p1, p0, Lcom/bytedance/embed_dr/VivoIdentifier$1;->this$0:Lcom/bytedance/embed_dr/VivoIdentifier;

    invoke-interface {p2}, Lcom/bun/supplier/IdSupplier;->getOAID()Ljava/lang/String;

    move-result-object p2

    # invokes: Lcom/bytedance/embed_dr/VivoIdentifier;->setupOaid(Ljava/lang/String;)V
    invoke-static {p1, p2}, Lcom/bytedance/embed_dr/VivoIdentifier;->access$000(Lcom/bytedance/embed_dr/VivoIdentifier;Ljava/lang/String;)V

    .line 29
    iget-object p1, p0, Lcom/bytedance/embed_dr/VivoIdentifier$1;->this$0:Lcom/bytedance/embed_dr/VivoIdentifier;

    # getter for: Lcom/bytedance/embed_dr/VivoIdentifier;->mLock:Ljava/lang/Object;
    invoke-static {p1}, Lcom/bytedance/embed_dr/VivoIdentifier;->access$100(Lcom/bytedance/embed_dr/VivoIdentifier;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_37
    .catchall {:try_start_0 .. :try_end_37} :catchall_4c

    .line 30
    :try_start_37
    iget-object p2, p0, Lcom/bytedance/embed_dr/VivoIdentifier$1;->this$0:Lcom/bytedance/embed_dr/VivoIdentifier;

    const/4 v0, 0x0

    # setter for: Lcom/bytedance/embed_dr/VivoIdentifier;->mProloading:Z
    invoke-static {p2, v0}, Lcom/bytedance/embed_dr/VivoIdentifier;->access$202(Lcom/bytedance/embed_dr/VivoIdentifier;Z)Z

    .line 31
    iget-object p2, p0, Lcom/bytedance/embed_dr/VivoIdentifier$1;->this$0:Lcom/bytedance/embed_dr/VivoIdentifier;

    # getter for: Lcom/bytedance/embed_dr/VivoIdentifier;->mLock:Ljava/lang/Object;
    invoke-static {p2}, Lcom/bytedance/embed_dr/VivoIdentifier;->access$100(Lcom/bytedance/embed_dr/VivoIdentifier;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->notifyAll()V

    .line 32
    monitor-exit p1

    .line 35
    goto :goto_50

    .line 32
    :catchall_48
    move-exception p2

    monitor-exit p1
    :try_end_4a
    .catchall {:try_start_37 .. :try_end_4a} :catchall_48

    :try_start_4a
    throw p2
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_4c

    .line 26
    :cond_4b
    :goto_4b
    return-void

    .line 33
    :catchall_4c
    move-exception p1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    :goto_50
    return-void
.end method
