.class public Lcom/qq/e/ads/cfg/VideoOption;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qq/e/ads/cfg/VideoOption$VideoADContainerRender;,
        Lcom/qq/e/ads/cfg/VideoOption$VideoPlayPolicy;,
        Lcom/qq/e/ads/cfg/VideoOption$AutoPlayPolicy;,
        Lcom/qq/e/ads/cfg/VideoOption$Builder;
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:I

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private final f:Z

.field private final g:Z


# direct methods
.method private constructor <init>(Lcom/qq/e/ads/cfg/VideoOption$Builder;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->a(Lcom/qq/e/ads/cfg/VideoOption$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qq/e/ads/cfg/VideoOption;->a:Z

    invoke-static {p1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->b(Lcom/qq/e/ads/cfg/VideoOption$Builder;)I

    move-result v0

    iput v0, p0, Lcom/qq/e/ads/cfg/VideoOption;->b:I

    invoke-static {p1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->c(Lcom/qq/e/ads/cfg/VideoOption$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qq/e/ads/cfg/VideoOption;->c:Z

    invoke-static {p1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->d(Lcom/qq/e/ads/cfg/VideoOption$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qq/e/ads/cfg/VideoOption;->d:Z

    invoke-static {p1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->e(Lcom/qq/e/ads/cfg/VideoOption$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qq/e/ads/cfg/VideoOption;->e:Z

    invoke-static {p1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->f(Lcom/qq/e/ads/cfg/VideoOption$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/qq/e/ads/cfg/VideoOption;->f:Z

    invoke-static {p1}, Lcom/qq/e/ads/cfg/VideoOption$Builder;->g(Lcom/qq/e/ads/cfg/VideoOption$Builder;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/qq/e/ads/cfg/VideoOption;->g:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/qq/e/ads/cfg/VideoOption$Builder;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/qq/e/ads/cfg/VideoOption;-><init>(Lcom/qq/e/ads/cfg/VideoOption$Builder;)V

    return-void
.end method


# virtual methods
.method public getAutoPlayMuted()Z
    .registers 2

    iget-boolean v0, p0, Lcom/qq/e/ads/cfg/VideoOption;->a:Z

    return v0
.end method

.method public getAutoPlayPolicy()I
    .registers 2

    iget v0, p0, Lcom/qq/e/ads/cfg/VideoOption;->b:I

    return v0
.end method

.method public getOptions()Lorg/json/JSONObject;
    .registers 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string v1, "autoPlayMuted"

    iget-boolean v2, p0, Lcom/qq/e/ads/cfg/VideoOption;->a:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "autoPlayPolicy"

    iget v2, p0, Lcom/qq/e/ads/cfg/VideoOption;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "detailPageMuted"

    iget-boolean v2, p0, Lcom/qq/e/ads/cfg/VideoOption;->g:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_26} :catch_27

    goto :goto_3e

    :catch_27
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Get video options error: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qq/e/comm/util/GDTLogger;->e(Ljava/lang/String;)V

    :goto_3e
    return-object v0
.end method

.method public isDetailPageMuted()Z
    .registers 2

    iget-boolean v0, p0, Lcom/qq/e/ads/cfg/VideoOption;->g:Z

    return v0
.end method

.method public isEnableDetailPage()Z
    .registers 2

    iget-boolean v0, p0, Lcom/qq/e/ads/cfg/VideoOption;->e:Z

    return v0
.end method

.method public isEnableUserControl()Z
    .registers 2

    iget-boolean v0, p0, Lcom/qq/e/ads/cfg/VideoOption;->f:Z

    return v0
.end method

.method public isNeedCoverImage()Z
    .registers 2

    iget-boolean v0, p0, Lcom/qq/e/ads/cfg/VideoOption;->d:Z

    return v0
.end method

.method public isNeedProgressBar()Z
    .registers 2

    iget-boolean v0, p0, Lcom/qq/e/ads/cfg/VideoOption;->c:Z

    return v0
.end method
