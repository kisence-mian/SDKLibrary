.class public Lcom/anythink/myoffer/e/c/a;
.super Lcom/anythink/myoffer/e/a/d;


# static fields
.field public static final j:Ljava/lang/String;


# instance fields
.field private k:Lcom/anythink/myoffer/e/c/b;

.field private l:Lcom/anythink/myoffer/c/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    const-class v0, Lcom/anythink/myoffer/e/c/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/myoffer/e/c/a;->j:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 28
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/anythink/myoffer/e/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 32
    invoke-direct/range {p0 .. p5}, Lcom/anythink/myoffer/e/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/anythink/myoffer/e/c/a;)Lcom/anythink/myoffer/e/c/b;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a;->k:Lcom/anythink/myoffer/e/c/b;

    return-object v0
.end method

.method static synthetic b(Lcom/anythink/myoffer/e/c/a;)Lcom/anythink/myoffer/c/a;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a;->l:Lcom/anythink/myoffer/c/a;

    return-object v0
.end method

.method static synthetic c(Lcom/anythink/myoffer/e/c/a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/anythink/myoffer/e/c/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/anythink/myoffer/e/c/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 6

    .prologue
    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 44
    :cond_10
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a;->k:Lcom/anythink/myoffer/e/c/b;

    if-eqz v0, :cond_21

    .line 45
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a;->k:Lcom/anythink/myoffer/e/c/b;

    const-string v1, "30001"

    const-string v2, "offerid\u3001placementid can not be null!"

    invoke-static {v1, v2}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/myoffer/e/c/b;->onAdLoadFailed(Lcom/anythink/network/myoffer/MyOfferError;)V

    .line 87
    :cond_21
    :goto_21
    return-void

    .line 49
    :cond_22
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/myoffer/a/a;->a(Landroid/content/Context;)Lcom/anythink/myoffer/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/myoffer/e/c/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/myoffer/e/c/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/myoffer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/myoffer/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/e/c/a;->l:Lcom/anythink/myoffer/c/a;

    .line 51
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a;->l:Lcom/anythink/myoffer/c/a;

    if-nez v0, :cond_60

    .line 52
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a;->k:Lcom/anythink/myoffer/e/c/b;

    if-eqz v0, :cond_21

    .line 53
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a;->k:Lcom/anythink/myoffer/e/c/b;

    const-string v1, "30001"

    const-string v2, "No fill, offer = null!"

    invoke-static {v1, v2}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/myoffer/e/c/b;->onAdLoadFailed(Lcom/anythink/network/myoffer/MyOfferError;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_48

    goto :goto_21

    .line 80
    :catch_48
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    iget-object v1, p0, Lcom/anythink/myoffer/e/c/a;->k:Lcom/anythink/myoffer/e/c/b;

    if-eqz v1, :cond_21

    .line 83
    iget-object v1, p0, Lcom/anythink/myoffer/e/c/a;->k:Lcom/anythink/myoffer/e/c/b;

    const-string v2, "-9999"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/anythink/myoffer/e/c/b;->onAdLoadFailed(Lcom/anythink/network/myoffer/MyOfferError;)V

    goto :goto_21

    .line 57
    :cond_60
    :try_start_60
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a;->e:Lcom/anythink/myoffer/c/c;

    if-nez v0, :cond_76

    .line 58
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a;->k:Lcom/anythink/myoffer/e/c/b;

    if-eqz v0, :cond_21

    .line 59
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a;->k:Lcom/anythink/myoffer/e/c/b;

    const-string v1, "30002"

    const-string v2, "No fill, setting = null!"

    invoke-static {v1, v2}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/myoffer/e/c/b;->onAdLoadFailed(Lcom/anythink/network/myoffer/MyOfferError;)V

    goto :goto_21

    .line 65
    :cond_76
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/myoffer/a/a;->a(Landroid/content/Context;)Lcom/anythink/myoffer/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/myoffer/e/c/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/myoffer/e/c/a;->l:Lcom/anythink/myoffer/c/a;

    iget-object v3, p0, Lcom/anythink/myoffer/e/c/a;->e:Lcom/anythink/myoffer/c/c;

    new-instance v4, Lcom/anythink/myoffer/e/c/a$1;

    invoke-direct {v4, p0}, Lcom/anythink/myoffer/e/c/a$1;-><init>(Lcom/anythink/myoffer/e/c/a;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anythink/myoffer/a/a;->a(Ljava/lang/String;Lcom/anythink/myoffer/c/a;Lcom/anythink/myoffer/c/c;Lcom/anythink/myoffer/a/a/d$a;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_8a} :catch_48

    goto :goto_21
.end method

.method public final a(Lcom/anythink/myoffer/e/c/b;)V
    .registers 2

    .prologue
    .line 37
    iput-object p1, p0, Lcom/anythink/myoffer/e/c/a;->k:Lcom/anythink/myoffer/e/c/b;

    .line 38
    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a;->a:Landroid/content/Context;

    if-nez v0, :cond_16

    .line 94
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a;->k:Lcom/anythink/myoffer/e/c/b;

    if-eqz v0, :cond_15

    .line 95
    iget-object v0, p0, Lcom/anythink/myoffer/e/c/a;->k:Lcom/anythink/myoffer/e/c/b;

    const-string v1, "30001"

    const-string v2, "context = null!"

    invoke-static {v1, v2}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/myoffer/e/c/b;->onVideoShowFailed(Lcom/anythink/network/myoffer/MyOfferError;)V

    .line 174
    :cond_15
    :goto_15
    return-void

    .line 100
    :cond_16
    const-string v0, "extra_request_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 101
    const-string v0, "extra_scenario"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 102
    const-string v0, "extra_orientation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 105
    invoke-static {}, Lcom/anythink/myoffer/e/a/c;->a()Lcom/anythink/myoffer/e/a/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/anythink/myoffer/e/c/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/anythink/myoffer/e/c/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/anythink/myoffer/e/c/a$2;

    invoke-direct {v4, p0}, Lcom/anythink/myoffer/e/c/a$2;-><init>(Lcom/anythink/myoffer/e/c/a;)V

    invoke-virtual {v0, v1, v4}, Lcom/anythink/myoffer/e/a/c;->a(Ljava/lang/String;Lcom/anythink/myoffer/e/a/c$b;)V

    .line 165
    iget-object v1, p0, Lcom/anythink/myoffer/e/c/a;->a:Landroid/content/Context;

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/anythink/myoffer/e/c/a;->l:Lcom/anythink/myoffer/c/a;

    iget-object v6, p0, Lcom/anythink/myoffer/e/c/a;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/anythink/myoffer/e/c/a;->c:Ljava/lang/String;

    iget-object v8, p0, Lcom/anythink/myoffer/e/c/a;->e:Lcom/anythink/myoffer/c/c;

    invoke-static/range {v1 .. v11}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/anythink/myoffer/c/a;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/myoffer/c/c;IJ)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6d} :catch_6e

    goto :goto_15

    .line 167
    :catch_6e
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 169
    iget-object v1, p0, Lcom/anythink/myoffer/e/c/a;->k:Lcom/anythink/myoffer/e/c/b;

    if-eqz v1, :cond_15

    .line 170
    iget-object v1, p0, Lcom/anythink/myoffer/e/c/a;->k:Lcom/anythink/myoffer/e/c/b;

    const-string v2, "-9999"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/anythink/myoffer/e/c/b;->onVideoShowFailed(Lcom/anythink/network/myoffer/MyOfferError;)V

    goto :goto_15
.end method

.method public final b()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 180
    :try_start_1
    iget-object v1, p0, Lcom/anythink/myoffer/e/c/a;->a:Landroid/content/Context;

    if-nez v1, :cond_d

    .line 181
    sget-object v1, Lcom/anythink/myoffer/e/c/a;->j:Ljava/lang/String;

    const-string v2, "isReady() context = null!"

    invoke-static {v1, v2}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    :goto_c
    return v0

    .line 183
    :cond_d
    iget-object v1, p0, Lcom/anythink/myoffer/e/c/a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 184
    sget-object v1, Lcom/anythink/myoffer/e/c/a;->j:Ljava/lang/String;

    const-string v2, "isReady() mPlacementId = null!"

    invoke-static {v1, v2}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1d

    goto :goto_c

    .line 201
    :catch_1d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    .line 186
    :cond_22
    :try_start_22
    iget-object v1, p0, Lcom/anythink/myoffer/e/c/a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 187
    sget-object v1, Lcom/anythink/myoffer/e/c/a;->j:Ljava/lang/String;

    const-string v2, "isReady() mOfferId = null!"

    invoke-static {v1, v2}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 191
    :cond_32
    iget-object v1, p0, Lcom/anythink/myoffer/e/c/a;->l:Lcom/anythink/myoffer/c/a;

    if-nez v1, :cond_52

    .line 192
    iget-object v1, p0, Lcom/anythink/myoffer/e/c/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/myoffer/a/a;->a(Landroid/content/Context;)Lcom/anythink/myoffer/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/myoffer/e/c/a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/myoffer/e/c/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/anythink/myoffer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/myoffer/c/a;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/myoffer/e/c/a;->l:Lcom/anythink/myoffer/c/a;

    .line 193
    iget-object v1, p0, Lcom/anythink/myoffer/e/c/a;->l:Lcom/anythink/myoffer/c/a;

    if-nez v1, :cond_52

    .line 194
    sget-object v1, Lcom/anythink/myoffer/e/c/a;->j:Ljava/lang/String;

    const-string v2, "isReady() MyOffer no exist!"

    invoke-static {v1, v2}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 199
    :cond_52
    iget-object v1, p0, Lcom/anythink/myoffer/e/c/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/myoffer/a/a;->a(Landroid/content/Context;)Lcom/anythink/myoffer/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/myoffer/e/c/a;->l:Lcom/anythink/myoffer/c/a;

    iget-boolean v3, p0, Lcom/anythink/myoffer/e/c/a;->f:Z

    invoke-virtual {v1, v2, v3}, Lcom/anythink/myoffer/a/a;->a(Lcom/anythink/myoffer/c/a;Z)Z
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_5f} :catch_1d

    move-result v0

    goto :goto_c
.end method
