.class Lcom/ssjj/fnsdk/core/share/process/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/ssjj/fnsdk/core/SsjjFNListener;


# instance fields
.field final synthetic a:Lcom/ssjj/fnsdk/core/share/process/ShareManager;

.field private final synthetic b:Lcom/ssjj/fnsdk/core/SsjjFNParams;

.field private final synthetic c:Lcom/ssjj/fnsdk/core/share/process/ActionData;

.field private final synthetic d:Landroid/content/Context;

.field private final synthetic e:Lcom/ssjj/fnsdk/core/SsjjFNListener;


# direct methods
.method constructor <init>(Lcom/ssjj/fnsdk/core/share/process/ShareManager;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/share/process/ActionData;Landroid/content/Context;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V
    .registers 6

    iput-object p1, p0, Lcom/ssjj/fnsdk/core/share/process/d;->a:Lcom/ssjj/fnsdk/core/share/process/ShareManager;

    iput-object p2, p0, Lcom/ssjj/fnsdk/core/share/process/d;->b:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    iput-object p3, p0, Lcom/ssjj/fnsdk/core/share/process/d;->c:Lcom/ssjj/fnsdk/core/share/process/ActionData;

    iput-object p4, p0, Lcom/ssjj/fnsdk/core/share/process/d;->d:Landroid/content/Context;

    iput-object p5, p0, Lcom/ssjj/fnsdk/core/share/process/d;->e:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V
    .registers 7

    if-nez p1, :cond_56

    iget-object p1, p0, Lcom/ssjj/fnsdk/core/share/process/d;->b:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    const-string p2, "savePath"

    invoke-virtual {p1, p2}, Lcom/ssjj/fnsdk/core/SsjjFNParams;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/process/d;->a:Lcom/ssjj/fnsdk/core/share/process/ShareManager;

    invoke-static {p2, p1}, Lcom/ssjj/fnsdk/core/share/process/ShareManager;->a(Lcom/ssjj/fnsdk/core/share/process/ShareManager;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_45

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "/game_share/p"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/ssjj/fnsdk/core/FNInfo;->getFNGid()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/process/d;->c:Lcom/ssjj/fnsdk/core/share/process/ActionData;

    iget-object p2, p2, Lcom/ssjj/fnsdk/core/share/process/ActionData;->action:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ".jpg"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_45
    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/process/d;->d:Landroid/content/Context;

    iget-object p3, p0, Lcom/ssjj/fnsdk/core/share/process/d;->c:Lcom/ssjj/fnsdk/core/share/process/ActionData;

    iget-object v0, p0, Lcom/ssjj/fnsdk/core/share/process/d;->b:Lcom/ssjj/fnsdk/core/SsjjFNParams;

    new-instance v1, Lcom/ssjj/fnsdk/core/share/process/e;

    iget-object v2, p0, Lcom/ssjj/fnsdk/core/share/process/d;->e:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    invoke-direct {v1, p0, v2, p1}, Lcom/ssjj/fnsdk/core/share/process/e;-><init>(Lcom/ssjj/fnsdk/core/share/process/d;Lcom/ssjj/fnsdk/core/SsjjFNListener;Ljava/lang/String;)V

    invoke-static {p2, p1, p3, v0, v1}, Lcom/ssjj/fnsdk/core/share/process/MergeUtil;->processImageAsync(Landroid/content/Context;Ljava/lang/String;Lcom/ssjj/fnsdk/core/share/process/ActionData;Lcom/ssjj/fnsdk/core/SsjjFNParams;Lcom/ssjj/fnsdk/core/SsjjFNListener;)V

    goto :goto_71

    :cond_56
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "\u4e0b\u8f7d\u8d44\u6e90\u5931\u8d25 "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ssjj/fnsdk/core/LogUtil;->e(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/ssjj/fnsdk/core/share/process/d;->e:Lcom/ssjj/fnsdk/core/SsjjFNListener;

    if-eqz p2, :cond_71

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-interface {p2, p3, p1, v0}, Lcom/ssjj/fnsdk/core/SsjjFNListener;->onCallback(ILjava/lang/String;Lcom/ssjj/fnsdk/core/SsjjFNParams;)V

    :cond_71
    :goto_71
    return-void
.end method
