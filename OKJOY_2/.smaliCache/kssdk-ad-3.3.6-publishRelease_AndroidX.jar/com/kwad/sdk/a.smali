.class public Lcom/kwad/sdk/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/kwad/sdk/plugin/a;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .registers 5

    const-string v0, "AdPluginImpl"

    const-string v1, "\u521d\u6b21\u83b7\u53d6Gid: initGId"

    invoke-static {v0, v1}, Lcom/kwad/sdk/core/d/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/a;->a()Lcom/yxcorp/kuaishou/addfp/a;

    move-result-object v0

    new-instance v1, Lcom/kwad/sdk/a$1;

    invoke-direct {v1, p0, p1}, Lcom/kwad/sdk/a$1;-><init>(Lcom/kwad/sdk/a;Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lcom/yxcorp/kuaishou/addfp/a;->a(Landroid/content/Context;ZLcom/yxcorp/kuaishou/addfp/b;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .registers 2

    const-class v0, Lcom/kwad/sdk/plugin/a;

    return-object v0
.end method

.method public a(Landroid/content/Context;Lcom/kwad/sdk/api/SdkConfig;)V
    .registers 4

    :try_start_0
    invoke-direct {p0, p1}, Lcom/kwad/sdk/a;->a(Landroid/content/Context;)V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_1d

    :catchall_4
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AdPluginImpl initGId error : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdPluginImpl"

    invoke-static {p2, p1}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1d
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_38

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_38

    :cond_9
    invoke-static {p1}, Lcom/kwad/sdk/utils/aa;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_14

    return-void

    :cond_14
    invoke-static {p1, p2}, Lcom/kwad/sdk/utils/aa;->d(Landroid/content/Context;Ljava/lang/String;)V

    :try_start_17
    invoke-static {}, Lcom/yxcorp/kuaishou/addfp/a;->a()Lcom/yxcorp/kuaishou/addfp/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/yxcorp/kuaishou/addfp/a;->a(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_1e
    .catchall {:try_start_17 .. :try_end_1e} :catchall_1f

    goto :goto_38

    :catchall_1f
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AdPluginImpl KWEGIDDFP setEGid error : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AdPluginImpl"

    invoke-static {p2, p1}, Lcom/kwad/sdk/core/d/a;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_38
    :goto_38
    return-void
.end method

.method public b()Lcom/kwad/sdk/core/b/i;
    .registers 2

    new-instance v0, Lcom/kwad/sdk/core/b/a;

    invoke-direct {v0}, Lcom/kwad/sdk/core/b/a;-><init>()V

    return-object v0
.end method
