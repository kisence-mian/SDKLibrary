.class public Lcom/anythink/myoffer/e/b/a;
.super Lcom/anythink/myoffer/e/a/d;


# static fields
.field public static final j:Ljava/lang/String;


# instance fields
.field private k:Lcom/anythink/myoffer/e/b/b;

.field private l:Lcom/anythink/myoffer/c/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 21
    const-class v0, Lcom/anythink/myoffer/e/b/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/anythink/myoffer/e/b/a;->j:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11

    .prologue
    .line 27
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/anythink/myoffer/e/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 6

    .prologue
    .line 31
    invoke-direct/range {p0 .. p5}, Lcom/anythink/myoffer/e/a/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 32
    return-void
.end method

.method static synthetic a(Lcom/anythink/myoffer/e/b/a;)Lcom/anythink/myoffer/e/b/b;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a;->k:Lcom/anythink/myoffer/e/b/b;

    return-object v0
.end method

.method static synthetic b(Lcom/anythink/myoffer/e/b/a;)Lcom/anythink/myoffer/c/a;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a;->l:Lcom/anythink/myoffer/c/a;

    return-object v0
.end method

.method static synthetic c(Lcom/anythink/myoffer/e/b/a;)Landroid/content/Context;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic d(Lcom/anythink/myoffer/e/b/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/anythink/myoffer/e/b/a;)Ljava/lang/String;
    .registers 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a;->c:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 6

    .prologue
    .line 42
    :try_start_0
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 43
    :cond_10
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a;->k:Lcom/anythink/myoffer/e/b/b;

    if-eqz v0, :cond_21

    .line 44
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a;->k:Lcom/anythink/myoffer/e/b/b;

    const-string v1, "30001"

    const-string v2, "offerid\u3001placementid can not be null!"

    invoke-static {v1, v2}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/myoffer/e/b/b;->onAdLoadFailed(Lcom/anythink/network/myoffer/MyOfferError;)V

    .line 84
    :cond_21
    :goto_21
    return-void

    .line 48
    :cond_22
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/myoffer/a/a;->a(Landroid/content/Context;)Lcom/anythink/myoffer/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/myoffer/e/b/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/myoffer/e/b/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/anythink/myoffer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/myoffer/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/anythink/myoffer/e/b/a;->l:Lcom/anythink/myoffer/c/a;

    .line 49
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a;->l:Lcom/anythink/myoffer/c/a;

    if-nez v0, :cond_60

    .line 50
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a;->k:Lcom/anythink/myoffer/e/b/b;

    if-eqz v0, :cond_21

    .line 51
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a;->k:Lcom/anythink/myoffer/e/b/b;

    const-string v1, "30001"

    const-string v2, "No fill, offer = null!"

    invoke-static {v1, v2}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/myoffer/e/b/b;->onAdLoadFailed(Lcom/anythink/network/myoffer/MyOfferError;)V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_48

    goto :goto_21

    .line 77
    :catch_48
    move-exception v0

    .line 78
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 79
    iget-object v1, p0, Lcom/anythink/myoffer/e/b/a;->k:Lcom/anythink/myoffer/e/b/b;

    if-eqz v1, :cond_21

    .line 80
    iget-object v1, p0, Lcom/anythink/myoffer/e/b/a;->k:Lcom/anythink/myoffer/e/b/b;

    const-string v2, "-9999"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/anythink/myoffer/e/b/b;->onAdLoadFailed(Lcom/anythink/network/myoffer/MyOfferError;)V

    goto :goto_21

    .line 55
    :cond_60
    :try_start_60
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a;->e:Lcom/anythink/myoffer/c/c;

    if-nez v0, :cond_76

    .line 56
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a;->k:Lcom/anythink/myoffer/e/b/b;

    if-eqz v0, :cond_21

    .line 57
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a;->k:Lcom/anythink/myoffer/e/b/b;

    const-string v1, "30002"

    const-string v2, "No fill, setting = null!"

    invoke-static {v1, v2}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/myoffer/e/b/b;->onAdLoadFailed(Lcom/anythink/network/myoffer/MyOfferError;)V

    goto :goto_21

    .line 62
    :cond_76
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/anythink/myoffer/a/a;->a(Landroid/content/Context;)Lcom/anythink/myoffer/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/anythink/myoffer/e/b/a;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/anythink/myoffer/e/b/a;->l:Lcom/anythink/myoffer/c/a;

    iget-object v3, p0, Lcom/anythink/myoffer/e/b/a;->e:Lcom/anythink/myoffer/c/c;

    new-instance v4, Lcom/anythink/myoffer/e/b/a$1;

    invoke-direct {v4, p0}, Lcom/anythink/myoffer/e/b/a$1;-><init>(Lcom/anythink/myoffer/e/b/a;)V

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/anythink/myoffer/a/a;->a(Ljava/lang/String;Lcom/anythink/myoffer/c/a;Lcom/anythink/myoffer/c/c;Lcom/anythink/myoffer/a/a/d$a;)V
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_8a} :catch_48

    goto :goto_21
.end method

.method public final a(Lcom/anythink/myoffer/e/b/b;)V
    .registers 2

    .prologue
    .line 36
    iput-object p1, p0, Lcom/anythink/myoffer/e/b/a;->k:Lcom/anythink/myoffer/e/b/b;

    .line 37
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
    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a;->a:Landroid/content/Context;

    if-nez v0, :cond_16

    .line 91
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a;->k:Lcom/anythink/myoffer/e/b/b;

    if-eqz v0, :cond_15

    .line 92
    iget-object v0, p0, Lcom/anythink/myoffer/e/b/a;->k:Lcom/anythink/myoffer/e/b/b;

    const-string v1, "30001"

    const-string v2, "context = null!"

    invoke-static {v1, v2}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/anythink/myoffer/e/b/b;->onVideoShowFailed(Lcom/anythink/network/myoffer/MyOfferError;)V

    .line 168
    :cond_15
    :goto_15
    return-void

    .line 97
    :cond_16
    const-string v0, "extra_request_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 98
    const-string v0, "extra_scenario"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 99
    const-string v0, "extra_orientation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 102
    invoke-static {}, Lcom/anythink/myoffer/e/a/c;->a()Lcom/anythink/myoffer/e/a/c;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/anythink/myoffer/e/b/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/anythink/myoffer/e/b/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/anythink/myoffer/e/b/a$2;

    invoke-direct {v4, p0}, Lcom/anythink/myoffer/e/b/a$2;-><init>(Lcom/anythink/myoffer/e/b/a;)V

    invoke-virtual {v0, v1, v4}, Lcom/anythink/myoffer/e/a/c;->a(Ljava/lang/String;Lcom/anythink/myoffer/e/a/c$b;)V

    .line 159
    iget-object v1, p0, Lcom/anythink/myoffer/e/b/a;->a:Landroid/content/Context;

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/anythink/myoffer/e/b/a;->l:Lcom/anythink/myoffer/c/a;

    iget-object v6, p0, Lcom/anythink/myoffer/e/b/a;->b:Ljava/lang/String;

    iget-object v7, p0, Lcom/anythink/myoffer/e/b/a;->c:Ljava/lang/String;

    iget-object v8, p0, Lcom/anythink/myoffer/e/b/a;->e:Lcom/anythink/myoffer/c/c;

    invoke-static/range {v1 .. v11}, Lcom/anythink/myoffer/ui/MyOfferAdActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ILcom/anythink/myoffer/c/a;Ljava/lang/String;Ljava/lang/String;Lcom/anythink/myoffer/c/c;IJ)V
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6d} :catch_6e

    goto :goto_15

    .line 161
    :catch_6e
    move-exception v0

    .line 162
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 163
    iget-object v1, p0, Lcom/anythink/myoffer/e/b/a;->k:Lcom/anythink/myoffer/e/b/b;

    if-eqz v1, :cond_15

    .line 164
    iget-object v1, p0, Lcom/anythink/myoffer/e/b/a;->k:Lcom/anythink/myoffer/e/b/b;

    const-string v2, "-9999"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/anythink/network/myoffer/MyOfferErrorCode;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/network/myoffer/MyOfferError;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/anythink/myoffer/e/b/b;->onVideoShowFailed(Lcom/anythink/network/myoffer/MyOfferError;)V

    goto :goto_15
.end method

.method public final b()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 174
    :try_start_1
    iget-object v1, p0, Lcom/anythink/myoffer/e/b/a;->a:Landroid/content/Context;

    if-nez v1, :cond_d

    .line 175
    sget-object v1, Lcom/anythink/myoffer/e/b/a;->j:Ljava/lang/String;

    const-string v2, "isReady() context = null!"

    invoke-static {v1, v2}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    :goto_c
    return v0

    .line 177
    :cond_d
    iget-object v1, p0, Lcom/anythink/myoffer/e/b/a;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    .line 178
    sget-object v1, Lcom/anythink/myoffer/e/b/a;->j:Ljava/lang/String;

    const-string v2, "isReady() mPlacementId = null!"

    invoke-static {v1, v2}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1c} :catch_1d

    goto :goto_c

    .line 195
    :catch_1d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    .line 180
    :cond_22
    :try_start_22
    iget-object v1, p0, Lcom/anythink/myoffer/e/b/a;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 181
    sget-object v1, Lcom/anythink/myoffer/e/b/a;->j:Ljava/lang/String;

    const-string v2, "isReady() mOfferId = null!"

    invoke-static {v1, v2}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 185
    :cond_32
    iget-object v1, p0, Lcom/anythink/myoffer/e/b/a;->l:Lcom/anythink/myoffer/c/a;

    if-nez v1, :cond_52

    .line 186
    iget-object v1, p0, Lcom/anythink/myoffer/e/b/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/myoffer/a/a;->a(Landroid/content/Context;)Lcom/anythink/myoffer/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/myoffer/e/b/a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/anythink/myoffer/e/b/a;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/anythink/myoffer/a/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/anythink/myoffer/c/a;

    move-result-object v1

    iput-object v1, p0, Lcom/anythink/myoffer/e/b/a;->l:Lcom/anythink/myoffer/c/a;

    .line 187
    iget-object v1, p0, Lcom/anythink/myoffer/e/b/a;->l:Lcom/anythink/myoffer/c/a;

    if-nez v1, :cond_52

    .line 188
    sget-object v1, Lcom/anythink/myoffer/e/b/a;->j:Ljava/lang/String;

    const-string v2, "isReady() MyOffer no exist!"

    invoke-static {v1, v2}, Lcom/anythink/core/b/g/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c

    .line 193
    :cond_52
    iget-object v1, p0, Lcom/anythink/myoffer/e/b/a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/anythink/myoffer/a/a;->a(Landroid/content/Context;)Lcom/anythink/myoffer/a/a;

    move-result-object v1

    iget-object v2, p0, Lcom/anythink/myoffer/e/b/a;->l:Lcom/anythink/myoffer/c/a;

    iget-boolean v3, p0, Lcom/anythink/myoffer/e/b/a;->f:Z

    invoke-virtual {v1, v2, v3}, Lcom/anythink/myoffer/a/a;->a(Lcom/anythink/myoffer/c/a;Z)Z
    :try_end_5f
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_5f} :catch_1d

    move-result v0

    goto :goto_c
.end method
