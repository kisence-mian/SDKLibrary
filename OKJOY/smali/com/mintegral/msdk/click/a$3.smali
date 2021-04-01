.class final Lcom/mintegral/msdk/click/a$3;
.super Ljava/lang/Object;
.source "CommonClickControl.java"

# interfaces
.implements Lcom/mintegral/msdk/out/IDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mintegral/msdk/click/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/mintegral/msdk/base/entity/CampaignEx;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Lcom/mintegral/msdk/click/a;


# direct methods
.method constructor <init>(Lcom/mintegral/msdk/click/a;Lcom/mintegral/msdk/base/entity/CampaignEx;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 1863
    iput-object p1, p0, Lcom/mintegral/msdk/click/a$3;->e:Lcom/mintegral/msdk/click/a;

    iput-object p2, p0, Lcom/mintegral/msdk/click/a$3;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iput-boolean p3, p0, Lcom/mintegral/msdk/click/a$3;->b:Z

    iput-object p4, p0, Lcom/mintegral/msdk/click/a$3;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/mintegral/msdk/click/a$3;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onEnd(IILjava/lang/String;)V
    .registers 8

    .prologue
    .line 1889
    const-string v0, "Mintegral SDK M"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "download listener onEnd result = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " file = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-sdkclick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mintegral/msdk/click/a$3;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mintegral/msdk/base/utils/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1891
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/click/a$3;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "isDowning"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1892
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/mintegral/msdk/click/a$3;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "process"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1893
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d4

    .line 1894
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$3;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v1, p0, Lcom/mintegral/msdk/click/a$3;->e:Lcom/mintegral/msdk/click/a;

    invoke-static {v1}, Lcom/mintegral/msdk/click/a;->h(Lcom/mintegral/msdk/click/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "end"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/click/a;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    .line 1895
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/i;->a(Landroid/content/Context;)Lcom/mintegral/msdk/base/b/i;

    move-result-object v0

    invoke-static {v0}, Lcom/mintegral/msdk/base/b/g;->b(Lcom/mintegral/msdk/base/b/h;)Lcom/mintegral/msdk/base/b/g;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/click/a$3;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-virtual {v0, v1}, Lcom/mintegral/msdk/base/b/g;->a(Lcom/mintegral/msdk/base/entity/CampaignEx;)J

    .line 1896
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1897
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_eb

    iget-boolean v1, p0, Lcom/mintegral/msdk/click/a$3;->b:Z

    if-eqz v1, :cond_eb

    .line 1898
    iget-object v1, p0, Lcom/mintegral/msdk/click/a$3;->e:Lcom/mintegral/msdk/click/a;

    invoke-static {v1}, Lcom/mintegral/msdk/click/a;->h(Lcom/mintegral/msdk/click/a;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/mintegral/msdk/click/a$3;->d:Ljava/lang/String;

    iget-object v3, p0, Lcom/mintegral/msdk/click/a$3;->c:Ljava/lang/String;

    invoke-static {v1, v0, v2, v3}, Lcom/mintegral/msdk/click/b;->a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 1899
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/click/a$3;->c:Ljava/lang/String;

    invoke-static {v0, v1, p3}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1904
    :cond_d4
    :goto_d4
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$3;->e:Lcom/mintegral/msdk/click/a;

    invoke-static {v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/a;)Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    move-result-object v0

    if-eqz v0, :cond_ea

    .line 1906
    const/4 v0, 0x1

    if-ne p1, v0, :cond_ea

    .line 1907
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$3;->e:Lcom/mintegral/msdk/click/a;

    invoke-static {v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/a;)Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/click/a$3;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onDownloadFinish(Lcom/mintegral/msdk/out/Campaign;)V

    .line 1910
    :cond_ea
    return-void

    .line 1900
    :cond_eb
    iget-boolean v0, p0, Lcom/mintegral/msdk/click/a$3;->b:Z

    if-nez v0, :cond_d4

    .line 1901
    invoke-static {}, Lcom/mintegral/msdk/base/controller/a;->d()Lcom/mintegral/msdk/base/controller/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mintegral/msdk/base/controller/a;->h()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mintegral/msdk/click/a$3;->c:Ljava/lang/String;

    invoke-static {v0, v1, p3}, Lcom/mintegral/msdk/base/utils/r;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d4
.end method

.method public final onProgressUpdate(I)V
    .registers 2

    .prologue
    .line 1885
    return-void
.end method

.method public final onStart()V
    .registers 4

    .prologue
    .line 1874
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$3;->a:Lcom/mintegral/msdk/base/entity/CampaignEx;

    iget-object v1, p0, Lcom/mintegral/msdk/click/a$3;->e:Lcom/mintegral/msdk/click/a;

    invoke-static {v1}, Lcom/mintegral/msdk/click/a;->h(Lcom/mintegral/msdk/click/a;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "start"

    invoke-static {v0, v1, v2}, Lcom/mintegral/msdk/click/a;->b(Lcom/mintegral/msdk/base/entity/CampaignEx;Landroid/content/Context;Ljava/lang/String;)V

    .line 1875
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$3;->e:Lcom/mintegral/msdk/click/a;

    invoke-static {v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/a;)Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 1876
    iget-object v0, p0, Lcom/mintegral/msdk/click/a$3;->e:Lcom/mintegral/msdk/click/a;

    invoke-static {v0}, Lcom/mintegral/msdk/click/a;->a(Lcom/mintegral/msdk/click/a;)Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mintegral/msdk/out/NativeListener$NativeTrackingListener;->onDownloadStart(Lcom/mintegral/msdk/out/Campaign;)V

    .line 1878
    :cond_1f
    return-void
.end method

.method public final onStatus(I)V
    .registers 2

    .prologue
    .line 1869
    return-void
.end method
