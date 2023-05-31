.class public Lcom/kwad/sdk/c/f/k;
.super Lcom/kwad/sdk/core/request/k/a;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/kwad/sdk/c/f/k$a;
    }
.end annotation


# instance fields
.field private c:Lcom/kwad/sdk/core/response/model/AdTemplate;

.field d:I

.field private e:Lcom/kwad/sdk/c/f/k$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private f:Lorg/json/JSONObject;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/kwad/sdk/core/response/model/AdTemplate;ILcom/kwad/sdk/c/f/k$a;Lorg/json/JSONObject;)V
    .registers 5
    .param p1    # Lcom/kwad/sdk/core/response/model/AdTemplate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/kwad/sdk/c/f/k$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/kwad/sdk/core/request/k/a;-><init>()V

    iput-object p1, p0, Lcom/kwad/sdk/c/f/k;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    iput p2, p0, Lcom/kwad/sdk/c/f/k;->d:I

    iput-object p3, p0, Lcom/kwad/sdk/c/f/k;->e:Lcom/kwad/sdk/c/f/k$a;

    iput-object p4, p0, Lcom/kwad/sdk/c/f/k;->f:Lorg/json/JSONObject;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/kwad/sdk/c/f/k$a;)Ljava/lang/String;
    .registers 5
    .param p2    # Lcom/kwad/sdk/c/f/k$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-object p1

    :cond_9
    iget v0, p2, Lcom/kwad/sdk/c/f/k$a;->b:I

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "itemClickType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/kwad/sdk/c/f/k$a;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/c/f/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8
.end method

.method private a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;
    .registers 6
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    if-nez p2, :cond_9

    :cond_8
    :goto_8
    return-object p1

    :cond_9
    :try_start_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "extData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-static {v1, v2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/c/f/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_29
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_29} :catch_2b

    move-result-object p1

    goto :goto_8

    :catch_2b
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_8
.end method

.method private b(Ljava/lang/String;Lcom/kwad/sdk/c/f/k$a;)Ljava/lang/String;
    .registers 5
    .param p2    # Lcom/kwad/sdk/c/f/k$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p2, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-object p1

    :cond_9
    iget v0, p2, Lcom/kwad/sdk/c/f/k$a;->c:I

    if-eqz v0, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "itemCloseType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/kwad/sdk/c/f/k$a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/c/f/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_26
    iget v0, p2, Lcom/kwad/sdk/c/f/k$a;->a:I

    if-lez v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "photoPlaySecond="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p2, Lcom/kwad/sdk/c/f/k$a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/kwad/sdk/c/f/k;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_8
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    :try_start_0
    new-instance v5, Ljava/net/URI;

    invoke-direct {v5, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2a

    move-object v4, p2

    :goto_10
    new-instance v0, Ljava/net/URI;

    invoke-virtual {v5}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5}, Ljava/net/URI;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Ljava/net/URI;->getFragment()Ljava/lang/String;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_29
    return-object p1

    :cond_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_40
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_40} :catch_42

    move-result-object v4

    goto :goto_10

    :catch_42
    move-exception v0

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_29
.end method


# virtual methods
.method protected a()V
    .registers 1

    return-void
.end method

.method protected b()V
    .registers 1

    return-void
.end method

.method e()Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v1, 0x0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/kwad/sdk/c/f/k;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iget-object v2, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adTrackInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_52

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adTrackInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdTrackInfo;

    iget v4, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdTrackInfo;->type:I

    iget v5, p0, Lcom/kwad/sdk/c/f/k;->d:I

    if-ne v4, v5, :cond_1a

    iget-object v4, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdTrackInfo;->urls:[Ljava/lang/String;

    if-eqz v4, :cond_1a

    move-object v2, v0

    :goto_31
    if-eqz v2, :cond_52

    iget v0, v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdTrackInfo;->type:I

    const/4 v4, 0x2

    if-ne v0, v4, :cond_53

    iget-object v0, p0, Lcom/kwad/sdk/c/f/k;->e:Lcom/kwad/sdk/c/f/k$a;

    if-eqz v0, :cond_53

    iget-object v0, v0, Lcom/kwad/sdk/c/f/k$a;->d:Lcom/kwad/sdk/e/g$a;

    :goto_3e
    iget-object v2, v2, Lcom/kwad/sdk/core/response/model/AdInfo$AdTrackInfo;->urls:[Ljava/lang/String;

    array-length v4, v2

    const/4 v1, 0x0

    :goto_42
    if-ge v1, v4, :cond_52

    aget-object v5, v2, v1

    invoke-static {v5, v0}, Lcom/kwad/sdk/e/g;->b(Ljava/lang/String;Lcom/kwad/sdk/e/g$a;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    :cond_50
    move-object v2, v1

    goto :goto_31

    :cond_52
    return-object v3

    :cond_53
    move-object v0, v1

    goto :goto_3e
.end method

.method public j()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/kwad/sdk/c/f/k;->c:Lcom/kwad/sdk/core/response/model/AdTemplate;

    invoke-static {v0}, Lcom/kwad/sdk/c/g/b/b;->a(Lcom/kwad/sdk/core/response/model/AdTemplate;)Lcom/kwad/sdk/core/response/model/AdInfo;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/c/f/k;->d:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_16

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->showUrl:Ljava/lang/String;

    :goto_f
    iget-object v1, p0, Lcom/kwad/sdk/c/f/k;->f:Lorg/json/JSONObject;

    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/c/f/k;->a(Ljava/lang/String;Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_16
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2e

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->clickUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/kwad/sdk/c/f/k;->e:Lcom/kwad/sdk/c/f/k$a;

    if-eqz v1, :cond_27

    iget-object v1, v1, Lcom/kwad/sdk/c/f/k$a;->d:Lcom/kwad/sdk/e/g$a;

    invoke-static {v0, v1}, Lcom/kwad/sdk/e/g;->a(Ljava/lang/String;Lcom/kwad/sdk/e/g$a;)Ljava/lang/String;

    move-result-object v0

    :cond_27
    iget-object v1, p0, Lcom/kwad/sdk/c/f/k;->e:Lcom/kwad/sdk/c/f/k$a;

    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/c/f/k;->a(Ljava/lang/String;Lcom/kwad/sdk/c/f/k$a;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f

    :cond_2e
    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo;->adBaseInfo:Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;

    iget-object v0, v0, Lcom/kwad/sdk/core/response/model/AdInfo$AdBaseInfo;->convUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/kwad/sdk/c/f/k;->e:Lcom/kwad/sdk/c/f/k$a;

    invoke-direct {p0, v0, v1}, Lcom/kwad/sdk/c/f/k;->b(Ljava/lang/String;Lcom/kwad/sdk/c/f/k$a;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/kwad/sdk/c/f/k;->d:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "__ACTION__"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_f
.end method
